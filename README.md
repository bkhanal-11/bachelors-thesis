# Non-Linearity in Wireless Communications and Deep Learning

The main goal of the project/thesis was to model a physical layer of a simple wireless communications
system with Autoencoders. During the phase of the research, I was able created a new mathematical model of 4PAM
constellation mapping which was subjected non-linear noise rather than usual gaussian noise (AWGN). 
For higher order constellation, deep learning was used to learn the constellation mapping that would adopt 
to the non-linear noise introduced.

## Abstract

Deep Learning has been known to optimize real world problems with robust
mathematical models. One of such applications could be modeling a physical
layer for Wireless Communcations using Neural Networks (NN). This thesis
proposes the use of Autoencoder to represent a simple communications system.
During transmission of a signal, non-linearity is introduced due to hardware
impairments and ampliﬁcation of signal. Also, self-interference caused from
full-duplex communication system adds non-linearity. In these cases, the con-
stellation from conventional modulation schemes are not optimal.
This thesis will focus on modeling such distortions as non-linear Additive-
White Gaussian Noise (AWGN) channel and ﬁnding the optimal constellation
to overcome this non-linearity using deep learning methods. The quality of
the NN is assessed with the help of Bit Error Rate (BER) plots. We see
that the Autoencoder is able to match the performance of standard constel-
lation in linear noise while it outperforms those constellation in non-linear
noise. The results are then veriﬁed using analysis on constellation of simple
Pulse-amplitude Modulation (PAM).

To cite this work use the following:

```
@mastersthesis{nlwc,
    author={Khanal B.},
    title={Non-Linearity in Wireless Communications and Deep Learning},
    year= {2020},
    type={Bachelor's thesis},
    school={Jacobs University Bremen}
}
```