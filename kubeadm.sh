#!/usr/bin/env bash


pullImages() {
	kubeadm config images pull
}
$1
