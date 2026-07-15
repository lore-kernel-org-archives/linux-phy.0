Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F33AC44501
	for <linux-phy@archiver.kernel.org>; Wed, 15 Jul 2026 11:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxQyf/U5btFqpvcxZdqs607ygDsYZn3H7GdCOlSr0RA=; b=2WlT92LKZ2VCPF
	zYHlDi/OaVYtl6qW037ntJgqCSM34FmDF/HCdV4M4CHMCEjT0Ec6+Dn1fH1hy4SqjUek8HJtibEaR
	1OtHMrvXyzuT20NCfxPRS8KWVxAxLCNvo4rBoamN31Fw/AT12Ik9pkoM/eZzlKU7gIxbHQYeZTuqN
	QbUBlano/5G93JkRoWUwbB2PMdW4YjP5Ykj/nWsIZ5ROVrWvUqOz0gLSsGHAFvpT3UngybOyl+rwl
	v2HkFWwxj9gcHQzgJmRMU6bR79uUUZf43xphQdLXoBtzooBlzKbNSBaDy5E0nfCr5w804PKv/+9Pp
	jA2zjLmYs6Kjs/G6g38Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy24-0000000Ec2a-0GqI;
	Wed, 15 Jul 2026 11:44:08 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjy23-0000000Ec2L-1AlE
	for linux-phy@lists.infradead.org;
	Wed, 15 Jul 2026 11:44:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 86C1A601C6;
	Wed, 15 Jul 2026 11:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEA621F000E9;
	Wed, 15 Jul 2026 11:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784115846;
	bh=r+/6qQC6HLRiLXIPUgApYTcI4qIN+f3MQWNzB9RdFOg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H73eGrODA4mU6vuc/JaRiPfIR3+5OVbE+r4y/QOfFIG3XJjUSaGNZFMKovX7fzGv0
	 mp2VUydPN5xw83e94q6a/Qis/Bs9viTjGB88xqZC8Ek+/CmU77y8zGExxSXRh+vE63
	 YFvEF2hNgiyQjFZRqgBm0j/wr9IyAVQ2DmQ50No4cRjMln1t5yuD68+hDZa0Q57J+P
	 Aw/5txnHbu9H15yI63381id4QpeCTuW1mUm0DxdeCCiuw9t+vK8R8I57PQ4tCfamxc
	 4ij8Ce93yzirnqgIBHrDwcOmq7UDWAA5Cn8lmgcU45F/0SJy/H7i80RLJ4Z20yKXpz
	 RAIFPh1keCoMg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/6] phy: fsl-imx8mq-usb: keep PHY power domain
 runtime always-on for i.MX8MP
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: olteanv@gmail.com, vkoul@kernel.org, Frank.Li@kernel.org, linux-phy@lists.infradead.org, imx@lists.linux.dev, neil.armstrong@linaro.org
In-Reply-To: <20260715-imx8mp-usb-phy-improvement-v6-6-00d95e270e4c@nxp.com>
References: <20260715-imx8mp-usb-phy-improvement-v6-0-00d95e270e4c@nxp.com>
 <20260715-imx8mp-usb-phy-improvement-v6-6-00d95e270e4c@nxp.com>
Date: Wed, 15 Jul 2026 11:44:05 +0000
Message-Id: <20260715114405.CEA621F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBkcml2ZXIgdW5j
b25kaXRpb25hbGx5IGZhaWxzIHByb2JlIGlmIGRldl9wbV9nZW5wZF9ycG1fYWx3YXlzX29uKCkg
cmV0dXJucyBhbiBlcnJvci4gVGhpcyBicmVha3MgYmFja3dhcmQgY29tcGF0aWJpbGl0eSBvbiBj
b25maWd1cmF0aW9ucyB3aXRob3V0IGdlbmVyaWMgcG93ZXIgZG9tYWlucyBvciB3aGVuIHRoZSBk
ZXZpY2UgdHJlZSBsYWNrcyBhIHBvd2VyLWRvbWFpbnMgcHJvcGVydHkuCi0tCgotLS0gUGF0Y2gg
WzZdOiBbUEFUQ0ggdjYgNi82XSBwaHk6IGZzbC1pbXg4bXEtdXNiOiBrZWVwIFBIWSBwb3dlciBk
b21haW4gcnVudGltZSBhbHdheXMtb24gZm9yIGkuTVg4TVAgLS0tCmNvbW1pdCAxNDUxNGY4ZTMz
MDYwMDM3YTczNGFjYWQyMTk5ZTdmZWJjNTZkZWY4CkF1dGhvcjogWHUgWWFuZyA8eHUueWFuZ18y
QG54cC5jb20+ClN1YmplY3Q6IHBoeTogZnNsLWlteDhtcS11c2I6IGtlZXAgUEhZIHBvd2VyIGRv
bWFpbiBydW50aW1lIGFsd2F5cy1vbiBmb3IgaS5NWDhNUAoKVGhpcyBjb21taXQgbWFya3MgdGhl
IFBIWSBwb3dlciBkb21haW4gYXMgcnVudGltZSBhbHdheXMtb24gZm9yIHRoZSBpLk1YOE1QCnBs
YXRmb3JtIHRvIHByZXZlbnQgaXQgZnJvbSBiZWluZyBwb3dlcmVkIG9mZiBkdXJpbmcgcnVudGlt
ZSBzdXNwZW5kLiBUaGlzIGlzCmludGVuZGVkIHRvIHByZXNlcnZlIFVTQiB3YWtldXAgZnVuY3Rp
b25hbGl0eSBvbiBpLk1YOE1QLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvZnJlZXNjYWxl
L3BoeS1mc2wtaW14OG1xLXVzYi5jIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14
OG1xLXVzYi5jCj4gLS0tIGEvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVz
Yi5jCj4gKysrIGIvZHJpdmVycy9waHkvZnJlZXNjYWxlL3BoeS1mc2wtaW14OG1xLXVzYi5jCgpb
IC4uLiBdCgo+IEBAIC03MzksNiArNzQyLDEyIEBAIHN0YXRpYyBpbnQgaW14OG1xX3VzYl9waHlf
cHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgCWlmICghcGh5X2RhdGEpCj4g
IAkJcmV0dXJuIC1FSU5WQUw7Cj4gIAo+ICsJaWYgKHBoeV9kYXRhLT5uZWVkX2dlbnBkX3JwbV9v
bikgewo+ICsJCXJldCA9IGRldl9wbV9nZW5wZF9ycG1fYWx3YXlzX29uKGRldiwgdHJ1ZSk7Cj4g
KwkJaWYgKHJldCkKPiArCQkJcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCByZXQsICJmYWlsZWQg
dG8gc2V0IGdlbnBkIHJwbSBhbHdheXMgb25cbiIpOwoKW1NldmVyaXR5OiBIaWdoXQpEb2VzIHRo
aXMgY29kZSBjYXVzZSBwcm9iZSB0byBmYWlsIHVubmVjZXNzYXJpbHkgd2hlbiBnZW5lcmljIHBv
d2VyIGRvbWFpbnMKYXJlIGRpc2FibGVkIG9yIG5vdCBjb25maWd1cmVkIGluIHRoZSBkZXZpY2Ug
dHJlZT8KCklmIHRoZSBrZXJuZWwgaXMgY29tcGlsZWQgd2l0aG91dCBDT05GSUdfUE1fR0VORVJJ
Q19ET01BSU5TLApkZXZfcG1fZ2VucGRfcnBtX2Fsd2F5c19vbigpIHdpbGwgcmV0dXJuIC1FT1BO
T1RTVVBQLiBTaW1pbGFybHksIGlmIHRoZQpkZXZpY2UgdHJlZSBsYWNrcyBhICdwb3dlci1kb21h
aW5zJyBwcm9wZXJ0eSBmb3IgdGhlIFBIWSBub2RlLCBpdCBtYXkgcmV0dXJuCi1FTk9ERVYuCgpT
aW5jZSB0aGUgcG93ZXIgZG9tYWluIHdvbid0IGJlIHJ1bnRpbWUtc3VzcGVuZGVkIGJ5IHRoZSBn
ZW5lcmljIHBvd2VyIGRvbWFpbgpmcmFtZXdvcmsgaW4gdGhlc2UgY2FzZXMsIHRoZSB3YWtldXAg
aXNzdWUgdGhpcyBwYXRjaCBpbnRlbmRzIHRvIGZpeCBkb2Vzbid0CmV4aXN0LgoKU2hvdWxkIHRo
aXMgY2hlY2sgaWdub3JlIG5vbi1mYXRhbCBlcnJvcnMgbGlrZSAtRU9QTk9UU1VQUCBhbmQgLUVO
T0RFViB0bwpwcmVzZXJ2ZSBiYWNrd2FyZCBjb21wYXRpYmlsaXR5IHdpdGggb2xkZXIgZGV2aWNl
IHRyZWVzIGFuZCBtaW5pbWFsIGtlcm5lbApjb25maWd1cmF0aW9ucz8KCj4gKwl9Cj4gKwo+ICAJ
aW14X3BoeS0+cGh5ID0gZGV2bV9waHlfY3JlYXRlKGRldiwgTlVMTCwgcGh5X2RhdGEtPm9wcyk7
Cj4gIAlpZiAoSVNfRVJSKGlteF9waHktPnBoeSkpCj4gIAkJcmV0dXJuIFBUUl9FUlIoaW14X3Bo
eS0+cGh5KTsKCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMv
cGF0Y2hzZXQvMjAyNjA3MTUtaW14OG1wLXVzYi1waHktaW1wcm92ZW1lbnQtdjYtMC0wMGQ5NWUy
NzBlNGNAbnhwLmNvbT9wYXJ0PTYKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBo
eUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXBoeQo=
