function newmachine
    ansible-playbook -e @vault.yml -e "HOSTS=$argv" newmachine.yml

end
