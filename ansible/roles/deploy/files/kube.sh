kubectl apply -f kubedeploy.yaml
sleep 10
nohup kubectl port-forward deploy/posio 8000:5000 --address='0.0.0.0' &