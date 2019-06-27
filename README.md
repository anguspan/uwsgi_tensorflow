# for API base 
     nginx
    
    uwsgi
    
    tensorfow  1.10.1


#  Dockerfle not clean test
    remove 
    ``` 
    && find / -depth -type d -name tests -exec rm -rf {} \; \
    && find / -depth -type d -name test -exec rm -rf {} \; \
    ```
    
     because
     ```
     tensorflow will use test
     from tensorflow import test
     ```
