FROM centos:centos8

RUN yum update -y && \
    yum install -y epel-release && \
    dnf -y install dnf-plugins-core && \
    dnf config-manager --set-enabled powertools && \
    yum update -y && \
    yum install mariadb-server -y && \
    yum install -y openssl openssl-devel pam-devel numactl numactl-devel hwloc hwloc-devel lua lua-devel readline-devel rrdtool-devel ncurses-devel man2html libibmad libibumad && \
    yum install -y slurm slurm-slurmd slurm-slurmdbd slurm-slurmctld slurm-torque slurm-pmi slurm-libs torque-libs && \
    yum install -y slurm-torque perl-Switch && \
    yum install -y sudo man && \
    yum clean all && \
    rm -rf /var/cache/yum

#https://southgreenplatform.github.io/trainings/hpc/slurminstallation/

RUN yum install -y vim

RUN yum install -y openssh-server
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa && \
    ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa

RUN create-munge-key

WORKDIR /root
ADD slurm.conf /etc/slurm/slurm.conf
ADD start_slurm.sh /root/
ADD test_slurm.sh /root/
ADD container_entrypoint.sh /opt/scripts/entrypoint.sh
RUN chmod 755 /opt/scripts/entrypoint.sh

ENTRYPOINT /opt/scripts/entrypoint.sh
