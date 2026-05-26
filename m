Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C03CCD5BC8
	for <linux-phy@archiver.kernel.org>; Tue, 26 May 2026 10:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3oqFQXbZ+0kk+1bsKGODx+j0qgLpXn+92PSqMzNiZMY=; b=T260nvJFV8Ijvl
	rhp9EHx0hooCCt44elWdonCY5oe0kcn4pPY7YMMZstj+x19gD1QN9TYli8O7Ifnr0o40hRm2ieT2I
	8nhNRI2W4E0w73acgORlgNqL021wEPKp8tuOuKBEVe1fCV+eBdNypgvY7kbH9EPI28uQAuh4DRLFG
	/dP6QXQoQ3nRMZIRmPnANjaeaOp9nrSdX2JCDcal55FhyMb6R0VvbzfIQrpHF4UD1of+gki0oqt87
	amHo4VDDWUGz6wH6hTIaS/CFm7JxKqTCIc9OCgBx9igcNZRmWwvVjQjI/9Ql8C/DLhRKhrnC6/a+M
	hd9LBUBIiUcZvErMLdvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRock-00000001bEt-0DT9;
	Tue, 26 May 2026 10:02:58 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRoci-00000001bEc-2k2z
	for linux-phy@lists.infradead.org;
	Tue, 26 May 2026 10:02:56 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id BD6D7600AB;
	Tue, 26 May 2026 10:02:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D1BC1F000E9;
	Tue, 26 May 2026 10:02:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779789775;
	bh=xDZWQhbtSIJ/t1BgVUxCNNTdkuOLBAeDeVenBa2bTDE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RUwt3JAVnFM+j8Bk4hzF9EHs8SNyOX4gwepuQvWHT3LixCUxuN12Um1rmzBmvm7FA
	 mBXvIjWOvhyZ8l31+hA2Io+xr2Q5UIPS/xz2duP7sAl8/HuJKiAG9ZEFHaPI3V68+P
	 5VJ2S2tCsoKsslSCe74II18T3FKCLdyvAeBcWnVPNa6LgA5avDCPtuJbRu34YPFuaR
	 Tw8gFQ/XxMXPS0YJD6RJpYvNfLgxA5OhsTe4hctmU9pVLxVBq9hExYmYCKWYPrncAq
	 gssHapQokxRWWVe9bcesf0PzP+HHJr75oNdMGT+VniuwkfQMLpF1Pl2FUvUHE8eqwh
	 DCq7VVETCE3zQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] phy: qcom-qmp-ufs: Add UFS PHY support on Hawi
To: palash.kambar@oss.qualcomm.com
Cc: olteanv@gmail.com, linux-phy@lists.infradead.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
References: <20260526090956.2340262-4-palash.kambar@oss.qualcomm.com>
Date: Tue, 26 May 2026 10:02:54 +0000
Message-Id: <20260526100255.0D1BC1F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBIYXdpIFVGUyBQ
SFkgY29uZmlndXJhdGlvbiAoYGhhd2lfdWZzcGh5X2NmZ2ApIGxhY2tzIGEgZmFsbGJhY2sgb3Zl
cmxheSBmb3IgYFVGU19IU19HNGAsIHByZXZlbnRpbmcgcHJvcGVyIGluaXRpYWxpemF0aW9uIGZv
ciBVRlMgMy4xIG9yIGxvd2VyIGRldmljZXMuCi0gW0hpZ2hdIEluY29ycmVjdCBIU0dFQVJfQ0FQ
QUJJTElUWSB2YWx1ZSBjb25maWd1cmVkIGZvciB0aGUgVUZTIEhTIEdlYXIgNSBvdmVybGF5Lgot
LQoKY29tbWl0IDExNzRhN2Q5ZDQwNGNmODRlY2Y2YmE4MjI4ZmNhYjI0ZTI2ZWY0ZGYKQXV0aG9y
OiBQYWxhc2ggS2FtYmFyIDxwYWxhc2gua2FtYmFyQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFj
b20tcW1wLXVmczogQWRkIFVGUyBQSFkgc3VwcG9ydCBvbiBIYXdpCgpUaGlzIGNvbW1pdCBhZGRz
IHRoZSBpbml0aWFsaXphdGlvbiBzZXF1ZW5jZSB0YWJsZXMgYW5kIGNvbmZpZ3VyYXRpb24KZm9y
IHRoZSBVRlMgUU1QIFBIWSBmb3VuZCBpbiB0aGUgSGF3aSBTb0MuCgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1xbXAtdWZzLmMgYi9kcml2ZXJzL3BoeS9xdWFs
Y29tbS9waHktcWNvbS1xbXAtdWZzLmMKPiBpbmRleCA3NzFiYzdjMmFiNTA1Li4yZmFjM2E3ZWI4
MjAxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMu
Ywo+ICsrKyBiL2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLXFtcC11ZnMuYwoKWyAuLi4g
XQoKPiBAQCAtMTg0NCw2ICsxODY3LDExOSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHFtcF9waHlf
Y2ZnIHNtODc1MF91ZnNwaHlfY2ZnID0gewo+ICAKPiAgfTsKPiAgCgpbIC4uLiBdCgo+ICtzdGF0
aWMgY29uc3Qgc3RydWN0IHFtcF9waHlfaW5pdF90YmwgaGF3aV91ZnNwaHlfZzVfcGNzW10gPSB7
Cj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19QTExfQ05UTCwgMHgzYiksCj4g
KwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19UWF9IU0dFQVJfQ0FQQUJJTElUWSwg
MHgwNiksCj4gKwlRTVBfUEhZX0lOSVRfQ0ZHKFFQSFlfVjdfUENTX1VGU19SWF9IU0dFQVJfQ0FQ
QUJJTElUWSwgMHgwNiksCgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjb2RlIGFkdmVydGlz
ZSBhbiBpbmNvcnJlY3QgZ2VhciBjYXBhYmlsaXR5PwoKVGhlIG92ZXJsYXkgaXMgbmFtZWQgZzVf
cGNzIGFuZCB0aGUgbWF4aW11bSBzdXBwb3J0ZWQgZ2VhciBpcyBVRlNfSFNfRzUsIGJ1dAp0aGVz
ZSBjYXBhYmlsaXR5IHJlZ2lzdGVycyBhcmUgYmVpbmcgcHJvZ3JhbW1lZCB3aXRoIDB4MDYuIFRo
aXMgdHlwaWNhbGx5IG1hcHMKdG8gYSBHZWFyIDYgY2FwYWJpbGl0eSwgd2hpY2ggY291bGQgY2F1
c2UgbGluayB0cmFpbmluZyBmYWlsdXJlcyBvciBtaXNtYXRjaGVzCmR1cmluZyBVRlMgbmVnb3Rp
YXRpb24gaWYgdGhlIHZhbHVlIHNob3VsZCBhY3R1YWxseSBiZSAweDA1LgoKPiArfTsKPiArCj4g
K3N0YXRpYyBjb25zdCBzdHJ1Y3QgcW1wX3BoeV9jZmcgaGF3aV91ZnNwaHlfY2ZnID0gewo+ICsJ
LmxhbmVzCQkJPSAyLAo+ICsKPiArCS5vZmZzZXRzCQk9ICZxbXBfdWZzX29mZnNldHNfdjcsCj4g
KwkubWF4X3N1cHBvcnRlZF9nZWFyCT0gVUZTX0hTX0c1LAo+ICsKPiArCS50YmxzID0gewo+ICsJ
CS5zZXJkZXMJCT0gaGF3aV91ZnNwaHlfc2VyZGVzLAo+ICsJCS5zZXJkZXNfbnVtCT0gQVJSQVlf
U0laRShoYXdpX3Vmc3BoeV9zZXJkZXMpLAo+ICsJCS50eAkJPSBoYXdpX3Vmc3BoeV90eCwKPiAr
CQkudHhfbnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfdHgpLAo+ICsJCS5yeAkJPSBoYXdp
X3Vmc3BoeV9yeCwKPiArCQkucnhfbnVtCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfcngpLAo+
ICsJCS5wY3MJCT0gaGF3aV91ZnNwaHlfcGNzLAo+ICsJCS5wY3NfbnVtCT0gQVJSQVlfU0laRSho
YXdpX3Vmc3BoeV9wY3MpLAo+ICsJfSwKPiArCj4gKwkudGJsc19oc19vdmVybGF5WzBdID0gewo+
ICsJCS5wY3MJCT0gaGF3aV91ZnNwaHlfZzVfcGNzLAo+ICsJCS5wY3NfbnVtCT0gQVJSQVlfU0la
RShoYXdpX3Vmc3BoeV9nNV9wY3MpLAo+ICsJCS5tYXhfZ2Vhcgk9IFVGU19IU19HNSwKPiArCX0s
CgpbU2V2ZXJpdHk6IEhpZ2hdCkRvZXMgdGhpcyBjb25maWd1cmF0aW9uIGxhY2sgYSBmYWxsYmFj
ayBvdmVybGF5IGZvciBVRlNfSFNfRzQ/CgpJZiB0aGUgVUZTIGhvc3QgY29udHJvbGxlciBuZWdv
dGlhdGVzIEdlYXIgNCAoZm9yIGEgVUZTIDMuMSBkZXZpY2UpIG9yIGxvd2VyLApxbXBfdWZzX2dl
dF9nZWFyX292ZXJsYXkoKSB3aWxsIGF0dGVtcHQgdG8gZmluZCB0aGUgY2xvc2VzdCBoaWdoZXIg
c3VwcG9ydGVkCmdlYXIgb3ZlcmxheS4gQmVjYXVzZSBmbG9vcl9tYXhfZ2VhciBpcyBpbml0aWFs
aXplZCB0byBjZmctPm1heF9zdXBwb3J0ZWRfZ2VhcgooNSksIHRoZSBmYWxsYmFjayBjb25kaXRp
b24gbWF4X2dlYXIgPCBmbG9vcl9tYXhfZ2VhciBldmFsdWF0ZXMgdG8gNSA8IDUgKGZhbHNlKQpm
b3IgdGhpcyBzaW5nbGUgYXZhaWxhYmxlIG92ZXJsYXkuCgpUaGlzIHJlc3VsdHMgaW4gcW1wX3Vm
c19nZXRfZ2Vhcl9vdmVybGF5KCkgcmV0dXJuaW5nIC1FSU5WQUwgd2l0aCBubyBvdmVybGF5CmFw
cGxpZWQsIGxlYXZpbmcgY3JpdGljYWwgUENTIHJlZ2lzdGVycyB1bmluaXRpYWxpemVkIGFuZCBj
YXVzaW5nIGxpbmsKZXN0YWJsaXNobWVudCB0byBmYWlsLiBTaG91bGQgYSBHNCBvdmVybGF5IGJl
IGFkZGVkIGhlcmUgc2ltaWxhciB0byBvdGhlcgpHNS1jYXBhYmxlIFBIWXMgbGlrZSBzbTg3NTBf
dWZzcGh5X2NmZz8KCj4gKwo+ICsJLnZyZWdfbGlzdAkJPSBoYXdpX3Vmc3BoeV92cmVnX2wsCj4g
KwkubnVtX3ZyZWdzCQk9IEFSUkFZX1NJWkUoaGF3aV91ZnNwaHlfdnJlZ19sKSwKPiArCS5yZWdz
CQkJPSB1ZnNwaHlfdjdfcmVnc19sYXlvdXQsCj4gK307CgotLSAKU2FzaGlrbyBBSSByZXZpZXcg
wrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNTI2MDkwOTU2LjIzNDAyNjIt
MS1wYWxhc2gua2FtYmFyQG9zcy5xdWFsY29tbS5jb20/cGFydD0zCgotLSAKbGludXgtcGh5IG1h
aWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
