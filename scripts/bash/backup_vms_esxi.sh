#!/bin/sh
BACKUP_ROOT="/vmfs/volumes/ESXIbackups/vms"
DATE=$(date +%Y%m%d)

backup_vm() {
  VM_NAME="$1"
  VM_FOLDER="$2"
    
 echo "==== Iniciando backup da VM: $VM_NAME ===="
     
 VM_ID=$(vim-cmd vmsvc/getallvms | grep "$VM_NAME" | awk '{print $1}')
 if [ -z "$VM_ID" ]; then
  echo "VM '$VM_NAME' não encontrada. Pulando..."
  return
 fi
              
 BACKUP_PATH="${BACKUP_ROOT}/${VM_NAME}_${DATE}"
 mkdir -p "$BACKUP_PATH"
                
 # Criar snapshot
 echo "Criando snapshot para $VM_NAME..."
 vim-cmd vmsvc/snapshot.create $VM_ID "backup-snap" "Backup automático $DATE" 0 0
 sleep 10
                    
 # Copiar disco
 echo "Copiando disco da VM..."
 vmkfstools -i "${VM_FOLDER}/${VM_NAME}.vmdk" "${BACKUP_PATH}/${VM_NAME}.vmdk" -d thin
                       
 # Copiar VMX
 echo "Copiando arquivo VMX..."
 cp "${VM_FOLDER}/${VM_NAME}.vmx" "${BACKUP_PATH}/${VM_NAME}.vmx"
                          
 # Remover snapshot
 echo "Removendo snapshot..."
 vim-cmd vmsvc/snapshot.removeall $VM_ID
                             
 echo "Backup da VM $VM_NAME concluído em $DATE"
 echo "========================================="
 }
                                
 # Backup das VMs
 #backup_vm "Active Directory" "/vmfs/volumes/RAID/Active Directory"
 backup_vm "Inventory" "/vmfs/volumes/RAID/Inventory"
                                   
