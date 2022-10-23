# init
kubebuilder init --domain kkk777-7.github.io --repo github.com/kkk777-7/foo-controller-kubebuilder

make
# api
kubebuilder create api --group samplecontroller --version v1alpha1 --kind Foo

make install
make docker-build
make docker-push
make deploy

k apply -f config/samples/samplecontroller_v1alpha1_foo.yaml