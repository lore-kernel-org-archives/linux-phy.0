Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 650FBC55167
	for <linux-phy@archiver.kernel.org>; Fri, 31 Jul 2026 08:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kibm11xb5+UjWuuTt7o7/GQOdQw1QC7gJzSUE8SqatM=; b=Ye0v63mLlZZgPV
	nch9pyG9wUP2YFo0osK5a/cALSb5EdNkZKPYkbarb1buY4RQr3BxA+dWuFSz54JrpM8Dp/jhZqg5k
	5+8QQKaRIb5/Y0bIpHuAzIll+iVOIw6o/PNsKBpjIrZPwYfiDrDQieHCuFxwhKTVVwltfAx7Ua/Cs
	FuO2fGdaf+jP9hgIkLxhecAkX4puWSg/tMS7NZNQO7lmzHfmA0NPmwZgVKS1s2cufBy70LP7c6F4x
	7Ii9yvqMmHyYM+n44nkxdNKcGVygWVLvWYhoaOVTsPJjzpOrnCC46Tn0SycfGowQ1QuIsXpVDAsoB
	1oCJxOon277yCWZs/Agw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiSu-0000000C38A-3a1u;
	Fri, 31 Jul 2026 08:19:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpiSt-0000000C384-2lvk
	for linux-phy@lists.infradead.org;
	Fri, 31 Jul 2026 08:19:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C86B3600AD;
	Fri, 31 Jul 2026 08:19:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ABF41F000E9;
	Fri, 31 Jul 2026 08:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785485974;
	bh=Sm1aurHLJz4Ko3R6CdTMGHXFMOX+9IYL+HfV7dGOgE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d5IFK89Qtt/iFMGuo8sJheqlXVM46rKycLPsjQnhwD5y68mik0Tv/xIYgT+ewW+06
	 Fqr0B4yzbEI0UBuvrVh0X3AufdHhr/N8Og/5nlQXc044g1vHutwpHEyns2acmomTqH
	 9fWm1pqCZEdIAPSoa5T0m+mZOY2tEyrddH4jXFT/szoYnpeqACm0bLKhBwIbdI6VYt
	 728hhwt56+62R51iiTq+k3EeuU7sfA/wpxTbS0MkG66hVZu3bDLU+hBzuAdwI1cZwu
	 9tvuFRiTQGIxzofYZpUvHEE0wQxCbeKYKR05P+a7NfBQukTuiooHqWCpCa/51+WUGv
	 H3w4YnjThinWg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/6] phy: fsl-imx8mq-usb: fix typec switch leak on
 probe error path
To: "Xu Yang" <xu.yang_2@oss.nxp.com>
Cc: Frank.Li@kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, imx@lists.linux.dev, neil.armstrong@linaro.org, olteanv@gmail.com
In-Reply-To: <20260731-imx8mp-usb-phy-improvement-v8-1-2ec8d6b3854d@nxp.com>
References: <20260731-imx8mp-usb-phy-improvement-v8-0-2ec8d6b3854d@nxp.com>
 <20260731-imx8mp-usb-phy-improvement-v8-1-2ec8d6b3854d@nxp.com>
Date: Fri, 31 Jul 2026 08:19:33 +0000
Message-Id: <20260731081934.1ABF41F000E9@smtp.kernel.org>
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
MiBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBQcmUtZXhpc3RpbmcgcmFjZSBjb25kaXRpb24gd2hlcmUgYGlteF9waHktPnRjYWAg
aXMgZGVyZWZlcmVuY2VkIGJ5IHRoZSBUeXBlLUMgc3dpdGNoJ3MgYC5zZXQoKWAgY2FsbGJhY2sg
YmVmb3JlIGl0IGlzIGFjdHVhbGx5IGFzc2lnbmVkIGluIHRoZSBwcm9iZSBwYXRoLgotIFtIaWdo
XSBMaWZldGltZSBtaXNtYXRjaCBiZXR3ZWVuIHRoZSBkZXZyZXMtYWxsb2NhdGVkIHByb3ZpZGVy
IGRhdGEgYW5kIHRoZSByZWdpc3RlcmVkIHR5cGVjIHN3aXRjaCBjYWxsYmFjaywgbGVhZGluZyB0
byBVc2UtQWZ0ZXItRnJlZS4KLS0KCi0tLSBQYXRjaCBbMV06IFtQQVRDSCB2OCAxLzZdIHBoeTog
ZnNsLWlteDhtcS11c2I6IGZpeCB0eXBlYyBzd2l0Y2ggbGVhayBvbiBwcm9iZSBlcnJvciBwYXRo
IC0tLQpjb21taXQgYzQ2NGQ3YTEzZjA1ZDkxNTNmYjEwMDdhNjFkOGY0MjkwZDFhMTk2ZgpBdXRo
b3I6IEZlbGl4IEd1IDx1c3RjLmd1QGdtYWlsLmNvbT4KCnBoeTogZnNsLWlteDhtcS11c2I6IGZp
eCB0eXBlYyBzd2l0Y2ggbGVhayBvbiBwcm9iZSBlcnJvciBwYXRoCgpUaGlzIGNvbW1pdCBmaXhl
cyBhIHR5cGVjIHN3aXRjaCBsZWFrIHdoZW4gcHJvYmUgZmFpbHMgYWZ0ZXIKaW14OTVfdXNiX3Bo
eV9nZXRfdGNhKCkgc3VjY2VlZHMuIEl0IHVzZXMgZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0KCkK
c28gdGhlIHN3aXRjaCBpcyBjbGVhbmVkIHVwIG9uIGJvdGggcHJvYmUgZmFpbHVyZSBhbmQgZHJp
dmVyIHJlbW92YWwuCgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZz
bC1pbXg4bXEtdXNiLmMgYi9kcml2ZXJzL3BoeS9mcmVlc2NhbGUvcGh5LWZzbC1pbXg4bXEtdXNi
LmMKPiBpbmRleCBiMDVkODBlODQ5YTE0Li45YTMzYzA2ZDZmYzM5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwo+ICsrKyBiL2RyaXZlcnMv
cGh5L2ZyZWVzY2FsZS9waHktZnNsLWlteDhtcS11c2IuYwoKWyAuLi4gXQoKPiBAQCAtMjY2LDE3
ICsyNjcsMTEgQEAgc3RhdGljIHN0cnVjdCB0Y2FfYmxrICppbXg5NV91c2JfcGh5X2dldF90Y2Eo
c3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCXRjYS0+b3JpZW50YXRpb24gPSBUWVBF
Q19PUklFTlRBVElPTl9OT1JNQUw7Cj4gIAl0Y2EtPnN3ID0gdGNhX2Jsa19nZXRfdHlwZWNfc3dp
dGNoKHBkZXYsIGlteF9waHkpOwoKW1NldmVyaXR5OiBIaWdoXQpUaGlzIGlzIGEgcHJlLWV4aXN0
aW5nIGlzc3VlLCBidXQgZG9lcyByZWdpc3RlcmluZyB0aGUgc3dpdGNoIGhlcmUgZXhwb3NlIGl0
IAp0byBjb25zdW1lcnMgYmVmb3JlIHdlIGFyZSBmdWxseSBpbml0aWFsaXplZD8KCkJ5IHJlZ2lz
dGVyaW5nIHRoZSBzd2l0Y2ggaW4gdGNhX2Jsa19nZXRfdHlwZWNfc3dpdGNoKCksIHRoZSBkZXZp
Y2UgYmVjb21lcwppbW1lZGlhdGVseSBkaXNjb3ZlcmFibGUuIElmIGEgY29uc3VtZXIgYWNxdWly
ZXMgaXQgYW5kIGludm9rZXMgdGhlIGNhbGxiYWNrOgoKdGNhX2Jsa190eXBlY19zd2l0Y2hfc2V0
KCkKICAgc3RydWN0IHRjYV9ibGsgKnRjYSA9IGlteF9waHktPnRjYTsKICAgLi4uCiAgIGlmICh0
Y2EtPm9yaWVudGF0aW9uID09IG9yaWVudGF0aW9uKQoKU2luY2UgaW14X3BoeS0+dGNhIGlzIG5v
dCBhc3NpZ25lZCB1bnRpbCBpbXg4bXFfdXNiX3BoeV9wcm9iZSgpIGZpbmlzaGVzCmhhbmRsaW5n
IHRoZSByZXR1cm4gZnJvbSBpbXg5NV91c2JfcGh5X2dldF90Y2EoKSwgd29uJ3QgdGhpcyBjYXVz
ZSBhIE5VTEwKcG9pbnRlciBkZXJlZmVyZW5jZSBpZiB0aGUgY2FsbGJhY2sgaXMgaW52b2tlZCBk
dXJpbmcgdGhpcyB3aW5kb3c/Cgo+ICAKPiAtCXJldHVybiB0Y2E7Cj4gLX0KPiAtCj4gLXN0YXRp
YyB2b2lkIGlteDk1X3VzYl9waHlfcHV0X3RjYShzdHJ1Y3QgaW14OG1xX3VzYl9waHkgKmlteF9w
aHkpCj4gLXsKPiAtCXN0cnVjdCB0Y2FfYmxrICp0Y2EgPSBpbXhfcGh5LT50Y2E7Cj4gLQo+IC0J
aWYgKCF0Y2EpCj4gLQkJcmV0dXJuOwo+ICsJcmV0ID0gZGV2bV9hZGRfYWN0aW9uX29yX3Jlc2V0
KCZwZGV2LT5kZXYsIHRjYV9ibGtfcHV0X3R5cGVjX3N3aXRjaCwgdGNhLT5zdyk7CgpbU2V2ZXJp
dHk6IEhpZ2hdClRoaXMgaXMgYWxzbyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IGRvZXMgdXNp
bmcgZGV2cmVzIHRvIHVucmVnaXN0ZXIgdGhlIApzd2l0Y2ggaW50cm9kdWNlIGEgcG90ZW50aWFs
IHVzZS1hZnRlci1mcmVlPwoKSWYgYSBjb25zdW1lciBkcml2ZXIgKGxpa2UgVENQTSkgb2J0YWlu
cyBhIHJlZmVyZW5jZSB0byB0aGUgc3dpdGNoLCBhbmQgdGhlClBIWSBkcml2ZXIgaXMgc3Vic2Vx
dWVudGx5IHVuYm91bmQgb3IgcHJvYmUgZmFpbHM6CgoxLiBkZXZyZXMgY2FsbHMgdGNhX2Jsa19w
dXRfdHlwZWNfc3dpdGNoKCkgdG8gdW5yZWdpc3RlciB0aGUgc3dpdGNoLgoKMi4gdHlwZWNfc3dp
dGNoX3VucmVnaXN0ZXIoKSByZW1vdmVzIHRoZSBkZXZpY2UgZnJvbSBzeXNmcyBhbmQgZHJvcHMg
dGhlIAogICBwcm92aWRlcidzIHJlZmVyZW5jZSwgYnV0IHRoZSBjb25zdW1lcidzIHJlZmVyZW5j
ZSBrZWVwcyB0aGUgc3dfZGV2IAogICBhbGl2ZS4KCjMuIGRldnJlcyB0aGVuIGZyZWVzIHRoZSBw
cm92aWRlciBkYXRhIChpbXhfcGh5KSB3aGljaCB3YXMgYWxsb2NhdGVkIHdpdGggCiAgIGRldm1f
a3phbGxvYygpLgoKSWYgdGhlIGNvbnN1bWVyIGxhdGVyIGNhbGxzIHR5cGVjX3N3aXRjaF9zZXQo
KSwgdGhlIGNhbGxiYWNrIHdpbGwgYWNjZXNzCmlteF9waHktPnRjYSwgd2hpY2ggaGFzIGFscmVh
ZHkgYmVlbiBmcmVlZC4gQ291bGQgdGhpcyBsZWFkIHRvIG1lbW9yeQpjb3JydXB0aW9uPwoKPiAr
CWlmIChyZXQpCj4gKwkJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiAgCj4gLQl0Y2FfYmxrX3B1dF90
eXBlY19zd2l0Y2godGNhLT5zdyk7Cj4gKwlyZXR1cm4gdGNhOwo+ICB9CgotLSAKU2FzaGlrbyBB
SSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMxLWlteDht
cC11c2ItcGh5LWltcHJvdmVtZW50LXY4LTAtMmVjOGQ2YjM4NTRkQG54cC5jb20/cGFydD0xCgot
LSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
