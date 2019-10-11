FROM gcr.io/jenkinsxio/builder-maven:latest

RUN curl -s https://api.github.com/repos/kubernetes-sigs/kustomize/releases/latest |grep browser_download |grep linux |cut -d '"' -f 4 |xargs curl -O -L \
&& mv kustomize_kustomize\.v*_linux_amd64 kustomize && chmod u+x kustomize
