Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A765C531CB
	for <linux-phy@archiver.kernel.org>; Thu, 23 Jul 2026 11:31:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgdMt4F10VPb3UlnYqBpUZ0pvTdL1IZxy8YHJtn2+ao=; b=Sju7EaIVz4s3RE
	gk1aFERct94ncZHX5XEUjbE2IcuQDvTbCX04mJ0iwpdfuUPDft+7iejMSdVyLpR/TlrZflyS/GJKD
	CHIdF+MwDe98xD3G+OY+IcHF73SsogY0qgikAGzGVn1njssNowblJgIm7xCSfMkfXKwTKybKHHacP
	FQK51UAM7Q+YBrzuYa7Xac2AbVB7xmR4wCue9cRRMUPn5LUF3677xnuUGsuQru7bjCi1fvCQSRPIZ
	2F6ZlrskX08wFjZpR+vb2CdZrhcju+VW/XS6PDBcHfY1UdS/IMc3hMQrU4eB+97QvrDaMuPtXboy9
	PzCVWdSc6M64Z/9dzuOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmreR-0000000E9vt-3OuI;
	Thu, 23 Jul 2026 11:31:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmreP-0000000E9vf-32Hs
	for linux-phy@lists.infradead.org;
	Thu, 23 Jul 2026 11:31:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AD07A40334;
	Thu, 23 Jul 2026 11:31:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1152C1F000E9;
	Thu, 23 Jul 2026 11:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784806300;
	bh=zTHmzbpmqcAkcVzqNFSrhGQW6IhnCGf+SrtuCSFJ24w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NhCTzTbIdxxXsQpPQuPUVm80tZmjDffm3qFZLd5uAt9RfWfTt5tEQxdk+M1+hS+RL
	 C6Yr0IkKpYXBy2ZYutGT6/Fxr1JKEft7nCJULIMvASwCsYPe8v+/WK97XcsPOhAn0r
	 unCrdtRgLT6RQGNaFtv0BqW3CdOxavmSWme2qkzTydhwaUvirlAC2WhOHOMhRdR5Sc
	 Lt4BcEWp7h/rXw5i7T9hJlYzGcsHwk7mq7W/qq8/M4yL9G17Xf7IImQyIwZ7Y/cdNc
	 QVBDT9cO0Vy60PSLV4ggM5kFBYvnfdaOW58Skj2NVDISB8iU1BWgaKmNKTsbjv8eDU
	 HKJi4pLPYpsig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/5] usb: dwc3: qcom: Modify interrupt handling for
 eUSB2 Phy targets
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260723-eusb2-int-handling-v5-v5-5-f32ea6c1a318@oss.qualcomm.com>
References: <20260723-eusb2-int-handling-v5-v5-0-f32ea6c1a318@oss.qualcomm.com>
 <20260723-eusb2-int-handling-v5-v5-5-f32ea6c1a318@oss.qualcomm.com>
Date: Thu, 23 Jul 2026 11:31:39 +0000
Message-Id: <20260723113140.1152C1F000E9@smtp.kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MyBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFJlc291cmNlIGxlYWsg
b24gZGV2bV9waHlfZ2V0KCkgZXJyb3IgcGF0aCBpbiBkd2MzX3Fjb21fcHJvYmUoKS4KLSBbSGln
aF0gUHJvYmUgZmFpbHMgZHVlIHRvIHVuaGFuZGxlZCAtRU5PU1lTIHdoZW4gQ09ORklHX0dFTkVS
SUNfUEhZIGlzIGRpc2FibGVkLgotIFtMb3ddIENvbW1lbnQgZGVzY3JpYmluZyBEUC9ETSBpbnRl
cnJ1cHQgcG9sYXJpdHkgY29udHJhZGljdHMgbmV3IGVVU0IyIGxvZ2ljLgotLQoKLS0tIFBhdGNo
IFs1XTogW1BBVENIIHY1IDUvNV0gdXNiOiBkd2MzOiBxY29tOiBNb2RpZnkgaW50ZXJydXB0IGhh
bmRsaW5nIGZvciBlVVNCMiBQaHkgdGFyZ2V0cyAtLS0KY29tbWl0IGU3YWFjOGI2NTVkZTAzYjhl
ODFiZmE3Mjc5MjI5NjA1MDBjYjlhZTMKQXV0aG9yOiBLcmlzaG5hIEt1cmFwYXRpIDxrcmlzaG5h
Lmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+Cgp1c2I6IGR3YzM6IHFjb206IE1vZGlmeSBpbnRl
cnJ1cHQgaGFuZGxpbmcgZm9yIGVVU0IyIFBoeSB0YXJnZXRzCgpUaGlzIGNvbW1pdCBtb2RpZmll
cyB0aGUgaW50ZXJydXB0IGhhbmRsaW5nIGxvZ2ljIGluIHRoZSBEV0MzIFF1YWxjb21tCmRyaXZl
ciB0byBzdXBwb3J0IGVVU0IyIFBIWSB0YXJnZXRzLiBJdCBxdWVyaWVzIHRoZSBQSFkgdHlwZSBk
dXJpbmcKcHJvYmUgYW5kIGNvbmZpZ3VyZXMgcmVtb3RlIHdha2V1cCBpbnRlcnJ1cHQgcG9sYXJp
dGllcyBiYXNlZCBvbiB0aGUKZVVTQjIgc3BlY2lmaWNhdGlvbiBmb3IgZGlmZmVyZW50IGRldmlj
ZSBzcGVlZHMuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3VzYi9kd2MzL2R3YzMtcWNvbS5jIGIv
ZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYwo+IGluZGV4IGY0M2Y3M2FjMzZmZjEuLjRjNTU5
Yjk3YzYyNzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy91c2IvZHdjMy9kd2MzLXFjb20uYwo+ICsr
KyBiL2RyaXZlcnMvdXNiL2R3YzMvZHdjMy1xY29tLmMKWyAuLi4gXQo+IEBAIC0yODksOCArMjk4
LDEwIEBAIHN0YXRpYyB2b2lkIGR3YzNfcWNvbV9kaXNhYmxlX3BvcnRfaW50ZXJydXB0cyhzdHJ1
Y3QgZHdjM19xY29tX3BvcnQgKnBvcnQpCj4gIAlkd2MzX3Fjb21fZGlzYWJsZV93YWtldXBfaXJx
KHBvcnQtPnNzX3BoeV9pcnEpOwo+ICB9Cj4gIAo+IC1zdGF0aWMgdm9pZCBkd2MzX3Fjb21fZW5h
YmxlX3BvcnRfaW50ZXJydXB0cyhzdHJ1Y3QgZHdjM19xY29tX3BvcnQgKnBvcnQpCj4gK3N0YXRp
YyB2b2lkIGR3YzNfcWNvbV9lbmFibGVfcG9ydF9pbnRlcnJ1cHRzKHN0cnVjdCBkd2MzX3Fjb20g
KnFjb20sIGludCBwb3J0X2luZGV4KQo+ICB7Cj4gKwlzdHJ1Y3QgZHdjM19xY29tX3BvcnQgKnBv
cnQgPSAmcWNvbS0+cG9ydHNbcG9ydF9pbmRleF07Cj4gKwo+ICAJZHdjM19xY29tX2VuYWJsZV93
YWtldXBfaXJxKHBvcnQtPnF1c2IyX3BoeV9pcnEsIDApOwo+ICAKPiAgCS8qCj4gQEAgLTMwMywx
MiArMzE0LDIwIEBAIHN0YXRpYyB2b2lkIGR3YzNfcWNvbV9lbmFibGVfcG9ydF9pbnRlcnJ1cHRz
KHN0cnVjdCBkd2MzX3Fjb21fcG9ydCAqcG9ydCkKPiAgCSAqLwoKW1NldmVyaXR5OiBMb3ddClRo
aXMgaXNuJ3QgYSBidWcsIGJ1dCBkb2VzIHRoaXMgY29tbWVudCBibG9jayBuZWVkIHRvIGJlIHVw
ZGF0ZWQ/ICBUaGUgbmV3bHkKYWRkZWQgZVVTQjIgbG9naWMgYmVsb3cgY29uZmlndXJlcyB0aGVz
ZSBsaW5lcyBhcyByaXNpbmcgZWRnZSwgd2hpY2gKY29udHJhZGljdHMgdGhlIGJlaGF2aW9yIGRl
c2NyaWJlZCBpbiB0aGlzIGNvbW1lbnQuCgo+ICAKPiAgCWlmIChwb3J0LT51c2IyX3NwZWVkID09
IFVTQl9TUEVFRF9MT1cpIHsKPiAtCQlkd2MzX3Fjb21fZW5hYmxlX3dha2V1cF9pcnEocG9ydC0+
ZG1faHNfcGh5X2lycSwKPiAtCQkJCQkgICAgSVJRX1RZUEVfRURHRV9GQUxMSU5HKTsKPiArCQlp
ZiAocWNvbS0+aGFzX2V1c2IyX3BoeSkKPiArCQkJZHdjM19xY29tX2VuYWJsZV93YWtldXBfaXJx
KHBvcnQtPmRwX2hzX3BoeV9pcnEsCj4gKwkJCQkJCSAgICBJUlFfVFlQRV9FREdFX1JJU0lORyk7
ClsgLi4uIF0KPiBAQCAtNjgzLDYgKzcwMywxOSBAQCBzdGF0aWMgaW50IGR3YzNfcWNvbV9wcm9i
ZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAJaWYgKGlnbm9yZV9waXBlX2NsaykK
PiAgCQlkd2MzX3Fjb21fc2VsZWN0X3V0bWlfY2xrKHFjb20pOwo+ICAKPiArCWlmIChxY29tLT5u
dW1fcG9ydHMgPT0gMSkKPiArCQlwaHkgPSBkZXZtX3BoeV9nZXQoZGV2LCAidXNiMi1waHkiKTsK
PiArCWVsc2UKPiArCQlwaHkgPSBkZXZtX3BoeV9nZXQoZGV2LCAidXNiMi0wIik7Cj4gKwo+ICsJ
aWYgKElTX0VSUihwaHkpKSB7Cj4gKwkJaWYgKFBUUl9FUlIocGh5KSAhPSAtRU5PREVWKQoKW1Nl
dmVyaXR5OiBIaWdoXQpJZiB0aGUga2VybmVsIGlzIGNvbXBpbGVkIHdpdGhvdXQgQ09ORklHX0dF
TkVSSUNfUEhZLCBkZXZtX3BoeV9nZXQoKSB3aWxsCnJldHVybiAtRU5PU1lTLiBTaW5jZSB0aGlz
IGNoZWNrIG9ubHkgaWdub3JlcyAtRU5PREVWLCB3aWxsIHRoaXMgY2F1c2UgdGhlCnByb2JlIHRv
IGZhaWwgZW50aXJlbHkgZm9yIGNvbmZpZ3VyYXRpb25zIHdpdGhvdXQgZ2VuZXJpYyBQSFkgc3Vw
cG9ydD8KCj4gKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgUFRSX0VSUihwaHkpLAo+ICsJ
CQkJCSAgICAgImZhaWxlZCB0byBnZXQgdXNiMiBwaHlcbiIpOwoKW1NldmVyaXR5OiBIaWdoXQpE
b2VzIHRoaXMgcmV0dXJuIGRpcmVjdGx5IHdpdGhvdXQganVtcGluZyB0byB0aGUgY2xrX2Rpc2Fi
bGUgZXJyb3IgbGFiZWw/CgpFYXJsaWVyIGluIGR3YzNfcWNvbV9wcm9iZSgpLCBjbGtfYnVsa19w
cmVwYXJlX2VuYWJsZSgpIGlzIGNhbGxlZC4gIElmCmRldm1fcGh5X2dldCgpIGZhaWxzIHdpdGgg
YW4gZXJyb3IgbGlrZSAtRVBST0JFX0RFRkVSLCB3aWxsIHRoaXMgbGVhayB0aGUKY2xvY2sgcHJl
cGFyZSBhbmQgZW5hYmxlIGNvdW50cz8KCj4gKwkJcGh5ID0gTlVMTDsKPiArCX0KPiArCXFjb20t
Pmhhc19ldXNiMl9waHkgPSBwaHkgJiYgKHBoeV9nZXRfdHlwZShwaHkpID09IFBIWV9UWVBFX0VV
U0IyKTsKPiArCj4gIAlxY29tLT5tb2RlID0gdXNiX2dldF9kcl9tb2RlKGRldik7CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzIz
LWV1c2IyLWludC1oYW5kbGluZy12NS12NS0wLWYzMmVhNmMxYTMxOEBvc3MucXVhbGNvbW0uY29t
P3BhcnQ9NQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
