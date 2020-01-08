class profile::ssh_server {
        package {'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwTjZWJ3+0aIvPUYelnUI8YDc3Q8kTss/l5peEgeyshJakShkA8kPzaIiM2xybU32c5/HWXKCbNDg7rnjop0TQ97gyV3NG9Od2HI+dna2uyp3VDYJo2cjUT4R9Z6clY/Uam4kYUkikFN1DIAy30eIcbcng6UaBmN13NIStp59Y0glfqi6h58zAbnsbXcF+gYUOcCnVhO8FVMkH5ufdlknKVJoRVi0/3QDPlLZA+kgAqHTKycZaZLk0qvm5wHWe/Cj92ozez+C6XTQo/H2IHE5Co1wHRNu6iAE90Vmn4BYZQbuWHQXpmvjMrRMD+PiUxkoo7K7/MiL4DPV8b2rR0eSv',
        }
       }
