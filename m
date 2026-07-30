Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C895CC54FD2
	for <linux-phy@archiver.kernel.org>; Thu, 30 Jul 2026 10:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FowlymHJQYCnTc8wPOY4gaiMqlbMvfi8mtmIL+ayEKY=; b=xjF3yWwo5xXR7b
	MgOlxMVbD14tWMIRorcroggpEyJjPBIL2qVMhTemW6U3E+LTd+vEB3OSykyIbU1t++9rRBnXOK4eZ
	I7BvcSP/UFm9vJZwnVjJ1Br4X82i9GpRdcNixT77xB9L4UoqWbVTLYb7EgUujnTQQx9AB7amLffyH
	J1vopfoVllChvXeVFFn2YTYrrMoSR3uzVwCGCSEoqbe2mxExVTg00BPTLE9EEGRXbsPxFqGAH3G0A
	4FQxCCciRnKF7FtcSIkWhee9rax8jnfLLbm2E9vz/1m6FSwYPycb02mnk6gbS9cf8vLPikEVYXpQN
	fT61TnB3KMhObUpGNOoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpO5j-0000000AE2E-1UkR;
	Thu, 30 Jul 2026 10:34:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpO5i-0000000AE1x-1JtY
	for linux-phy@lists.infradead.org;
	Thu, 30 Jul 2026 10:34:18 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0B08640508;
	Thu, 30 Jul 2026 10:34:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68B2F1F00A3A;
	Thu, 30 Jul 2026 10:34:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785407657;
	bh=PRaGGaF7JcUJAdXA15IjjKSObsBHz3MiJmG58IerBrc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KYbB3fXxH1p7Mwp5xGR4iF/0DvJJQwTJSwB85f17CWM+7Uve5xl4CK52jsdrNzkCQ
	 DZuYS5epTn3LRQo9Q1c7j5lZKQ2CUzpHDM20BToEaVyWaklFJSI9ItCONXQlfCLhUJ
	 zQs5bUlJaCBhiDM/0X8k4/cUdj1oNTcqJ7oIuWN/d3b7lVWREBPD1yLi6dGRznGhoE
	 Vlx92XAGzGuKseLk663nvp15/WRK1N+2iWJWS7nUfaVsgKu7nPUQ0mmVdKWMoDVjql
	 EF7JZiiK4yYGUQm03nLHf4g0pckSSM2sNF1tNPMFC5SkRTScaZZNDAvxyTtpq0cNew
	 vvjx3JPfDRd9Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 15/26] scsi: ufs: mediatek: Rework
 _ufs_mtk_clk_scale error paths
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, olteanv@gmail.com, linux-scsi@vger.kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260730-mt8196-ufs-v10-15-bc5ecef202dc@collabora.com>
References: <20260730-mt8196-ufs-v10-0-bc5ecef202dc@collabora.com>
 <20260730-mt8196-ufs-v10-15-bc5ecef202dc@collabora.com>
Date: Thu, 30 Jul 2026 10:34:16 +0000
Message-Id: <20260730103417.68B2F1F00A3A@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6CgpQcmUtZXhpc3RpbmcgaXNzdWVzOgot
IFtIaWdoXSBGYWlsdXJlcyBkdXJpbmcgaGFyZHdhcmUgb3BlcmF0aW9ucyBpbiBgX3Vmc19tdGtf
Y2xrX3NjYWxlYCBhcmUgbm90IHByb3BhZ2F0ZWQgdG8gY2FsbGVycywgY2F1c2luZyBzb2Z0d2Fy
ZSBzdGF0ZSB0cmFja2luZyBhbmQgdGhlIFVGUyBjb3JlIHRvIGRlc3luY2hyb25pemUgZnJvbSB0
aGUgYWN0dWFsIGhhcmR3YXJlIHN0YXRlLgotLQoKLS0tIFBhdGNoIFsxNV06IFtQQVRDSCB2MTAg
MTUvMjZdIHNjc2k6IHVmczogbWVkaWF0ZWs6IFJld29yayBfdWZzX210a19jbGtfc2NhbGUgZXJy
b3IgcGF0aHMgLS0tCmNvbW1pdCBmYzhkOTZkMTE1MWMxN2JjNDBlNzQxMzc4Y2FmMTdkZDQ5Yzcx
MjQ4CkF1dGhvcjogTmljb2xhcyBGcmF0dGFyb2xpIDxuaWNvbGFzLmZyYXR0YXJvbGlAY29sbGFi
b3JhLmNvbT4KCnNjc2k6IHVmczogbWVkaWF0ZWs6IFJld29yayBfdWZzX210a19jbGtfc2NhbGUg
ZXJyb3IgcGF0aHMKClRoaXMgY29tbWl0IHJld29ya3MgdGhlIGVycm9yIHBhdGhzIGluIF91ZnNf
bXRrX2Nsa19zY2FsZSB0byBwcmludCBlcnJvcnMKYXQgdGhlIGNvcnJlY3QgbG9nIGxldmVsIGFu
ZCBhZGRzIG1pc3NpbmcgZ290b3MgaW4gdGhlIHNjYWxlIHVwIGNhc2UuCgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3Vmcy9ob3N0L3Vmcy1tZWRpYXRlay5jIGIvZHJpdmVycy91ZnMvaG9zdC91ZnMt
bWVkaWF0ZWsuYwo+IGluZGV4IGI0ODY3YzljMjc0MzQuLmNjNGI1ZjRjNGEwNzkgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy91ZnMvaG9zdC91ZnMtbWVkaWF0ZWsuYwo+ICsrKyBiL2RyaXZlcnMvdWZz
L2hvc3QvdWZzLW1lZGlhdGVrLmMKClsgLi4uIF0KCj4gQEAgLTE5ODksNTEgKzE5ODksNDggQEAg
c3RhdGljIHZvaWQgX3Vmc19tdGtfY2xrX3NjYWxlKHN0cnVjdCB1ZnNfaGJhICpoYmEsIGJvb2wg
c2NhbGVfdXApCj4gIAkJaWYgKGNsa19iaW5kX3Zjb3JlKSB7Cj4gIAkJCXJldCA9IHJlZ3VsYXRv
cl9zZXRfdm9sdGFnZShyZWcsIHZvbHQsIElOVF9NQVgpOwo+ICAJCQlpZiAocmV0KSB7Cj4gLQkJ
CQlkZXZfaW5mbyhoYmEtPmRldiwKPiAtCQkJCQkiRmFpbGVkIHRvIHNldCB2Y29yZSB0byAlZFxu
Iiwgdm9sdCk7Cj4gKwkJCQlkZXZfZXJyKGhiYS0+ZGV2LCAiRmFpbGVkIHRvIHNldCB2Y29yZSB0
byAlZFxuIiwgdm9sdCk7Cj4gIAkJCQlnb3RvIG91dDsKCltTZXZlcml0eTogSGlnaF0KVGhpcyBp
cyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHNpbmNlIHRoZSBlcnJvciBwYXRocyBhcmUgYmVp
bmcgcmV3b3JrZWQKaGVyZSwgc2hvdWxkIF91ZnNfbXRrX2Nsa19zY2FsZSgpIGJlIGNoYW5nZWQg
dG8gcmV0dXJuIGFuIGludCBzbyB0aGVzZQplcnJvcnMgY2FuIGJlIHByb3BhZ2F0ZWQ/CgpDdXJy
ZW50bHksIF91ZnNfbXRrX2Nsa19zY2FsZSgpIHJldHVybnMgdm9pZC4gV2hlbiBoYXJkd2FyZSBv
cGVyYXRpb25zIGxpa2UKcmVndWxhdG9yX3NldF92b2x0YWdlKCkgb3IgY2xrX3NldF9wYXJlbnQo
KSBmYWlsLCB0aGUgZnVuY3Rpb24ganVtcHMgb3V0CmJ1dCBkcm9wcyB0aGUgZXJyb3IgY29kZS4K
ClRoZSBjYWxsZXIgdWZzX210a19jbGtfc2NhbGUoKSB0aGVuIHVuY29uZGl0aW9uYWxseSB1cGRh
dGVzIHRoZSBzb2Z0d2FyZQp0cmFja2luZyBzdGF0ZSBhc3N1bWluZyBzdWNjZXNzOgoKdWZzX210
a19jbGtfc2NhbGUoKSB7CiAgICAgICAgLi4uCiAgICAgICAgaWYgKHNjYWxlX3VwKQogICAgICAg
ICAgICAgICAgX3Vmc19tdGtfY2xrX3NjYWxlKGhiYSwgdHJ1ZSk7CiAgICAgICAgZWxzZQogICAg
ICAgICAgICAgICAgX3Vmc19tdGtfY2xrX3NjYWxlKGhiYSwgZmFsc2UpOwoKICAgICAgICBob3N0
LT5jbGtfc2NhbGVfdXAgPSBzY2FsZV91cDsKCiAgICAgICAgLyogTXVzdCBhbHdheXMgc2V0IGJl
Zm9yZSBjbGtfc2V0X3JhdGUoKSAqLwogICAgICAgIGlmIChzY2FsZV91cCkKICAgICAgICAgICAg
ICAgIGNsa2ktPmN1cnJfZnJlcSA9IGNsa2ktPm1heF9mcmVxOwogICAgICAgIC4uLgp9CgpDb3Vs
ZCB0aGlzIGRlc3luY2hyb25pemUgdGhlIGRyaXZlciBhbmQgZGV2ZnJlcSBzdGF0ZSBmcm9tIHRo
ZSBoYXJkd2FyZSwKcG90ZW50aWFsbHkgY2F1c2luZyB0aGUgVUZTIGNvcmUgdG8gb3ZlcmRyaXZl
IHRoZSB3cm9uZyBjbG9jayBwYXJlbnQgb3IKZmFpbCB0byBzY2FsZSBmcmVxdWVuY2llcyBwcm9w
ZXJseT8KCj4gIAkJCX0KPiAgCQl9CgotLSAKU2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9z
YXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNzMwLW10ODE5Ni11ZnMtdjEwLTAtYmM1ZWNlZjIw
MmRjQGNvbGxhYm9yYS5jb20/cGFydD0xNQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGlu
dXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
