Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3B0AC43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 14:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0zMza/LAlMxbdtS4yKshi5bPNj3W8/9fZIj6IY8MLo=; b=PsGKchFjVWzWTj
	pL6xtObTExRWdZ21/nmp7tYK2eQNLeX74nwhzqvsrux5WOxCLoCQ1JcKeYftN2t8QRzqI9MnFTNf7
	1nwrFziGFscDuFxuTMhO15jp8nimYosu6G8tXiftiqkEFDP0iSdqKOeZVWfVRN9pMxdDqSYTxZzKe
	sZjeSCcqtSHo8Z1GVkBQcto967GXrUjUoUmar4i45iIe/SO5s0NQexUNfzT83YqtQ3Wy8t0RTiHMl
	FuryE6/SbfbtTqN8Pk0AdOI6BmS3MwJaLJESMnbIWghTCexi8aDmPd5XP63qecNQXMxTLssXP79Ll
	B4icH7LmGHGWEnxCUcZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6tb-0000000FBjC-2uCS;
	Tue, 07 Jul 2026 14:35:35 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh6ta-0000000FBiy-0V3P
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 14:35:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DCAD742E60;
	Tue,  7 Jul 2026 14:35:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D661F000E9;
	Tue,  7 Jul 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434933;
	bh=yoJyL3+5kI5tecVgVKNUxAu+uoe7KSfvJLUpR4/oxHM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=auu5775DszXK1pFPaGL+dZztza5GOmZOrrvsNyTTYssuNtQGFH/KFvNPbgJNZhBgd
	 9YSFdW1i9seJC7VGP8Pi8IEkhUxQgtBB4S+iKiTY8uFLzfxmVKFopq1f+jwplJ/VIN
	 EsgbxyhhD6S3lVMCcUzQkOzSu3FRmz8lwJQIKU3eV1weMHLFAwoLqrAEmXWoTL6vOz
	 UelEjso1NfAJBmoXLglBK+4SCBV6YDFqlhxGU3SlqihmOZ4+D/bCyNjnv8cc4Jd9ui
	 8oedsVP1+kGQMe8zU4kPQejZ9fp3A7SBP3ZnXIpsOQG26vJma5ssMFGOtJuB9AjZVx
	 Z6VAuRNURqRcQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260707141931.191172-2-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-2-angelogioacchino.delregno@collabora.com>
Date: Tue, 07 Jul 2026 14:35:33 +0000
Message-Id: <20260707143533.65D661F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0hpZ2hdIFRoZSBwcm9wb3NlZCBQ
SFkgYmluZGluZyBpbmNvcnJlY3RseSBtb2RlbHMgdGhlIFBIWSBhcyBhIHN0YW5kYWxvbmUgZGV2
aWNlIG5vZGUgd2l0aCBhbiBvdmVybGFwcGluZyBgcmVnYCByZWdpb24gdGhhdCBjb25mbGljdHMg
d2l0aCB0aGUgZXhpc3RpbmcgRFAvZURQIFRYIGNvbnRyb2xsZXIuCi0tCgotLS0gUGF0Y2ggWzFd
OiBbUEFUQ0ggdjIgMDEvMTJdIGR0LWJpbmRpbmdzOiBwaHk6IERvY3VtZW50IE1UODE5NSBhbmQg
TVQ4MTk2IERpc3BsYXlQb3J0IFBIWXMgLS0tCmNvbW1pdCA2OTdlM2QxNDUxMGIwODI5NzNiZmQy
NTdkOTY0MDE1MDE0ZGFlN2I5CkF1dGhvcjogQW5nZWxvR2lvYWNjaGlubyBEZWwgUmVnbm8gPGFu
Z2Vsb2dpb2FjY2hpbm8uZGVscmVnbm9AY29sbGFib3JhLmNvbT4KCmR0LWJpbmRpbmdzOiBwaHk6
IERvY3VtZW50IE1UODE5NSBhbmQgTVQ4MTk2IERpc3BsYXlQb3J0IFBIWXMKICAgIApUaGlzIGFk
ZHMgYmluZGluZ3MgZm9yIHRoZSBEaXNwbGF5UG9ydCBhbmQgRW1iZWRkZWQgRGlzcGxheVBvcnQg
UEhZcyBmb3VuZAppbiB0aGUgTWVkaWFUZWsgTVQ4MTk1IGFuZCBNVDgxOTYgU29Dcy4gSXQgaW5j
bHVkZXMgcHJvcGVydGllcyBmb3IgdmFyeWluZwppbXBlZGFuY2UgY2FsaWJyYXRpb25zIHRvIG9w
dGltaXplIHRoZSBFWUUgc2lnbmFsIHBhdHRlcm4uCgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L21lZGlhdGVrLG10ODE5NS1kcC1waHkueWFtbCBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvbWVkaWF0ZWssbXQ4MTk1LWRw
LXBoeS55YW1sCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9tZWRpYXRlayxtdDgxOTUtZHAt
cGh5LnlhbWwKWyAuLi4gXQo+ICtyZXF1aXJlZDoKPiArICAtIGNvbXBhdGlibGUKPiArICAtIHJl
Zwo+ICsgIC0gIiNwaHktY2VsbHMiClsgLi4uIF0KPiArZXhhbXBsZXM6Cj4gKyAgLSB8Cj4gKyAg
ICBwaHlAMWM1MDAwMDAgewo+ICsgICAgICAgIGNvbXBhdGlibGUgPSAibWVkaWF0ZWssbXQ4MTk1
LWRwLXBoeSI7Cj4gKyAgICAgICAgcmVnID0gPDB4MWM1MDAwMDAgMHgyMDAwPjsKW1NldmVyaXR5
OiBIaWdoXQpXaWxsIHRoaXMgcmVnIHJlZ2lvbiBjb25mbGljdCB3aXRoIHRoZSBleGlzdGluZyBE
UC9lRFAgVFggY29udHJvbGxlcj8KClRoZSBleGlzdGluZyBNVDgxOTUgRFAgY29udHJvbGxlciBu
b2RlIChlZHBfdHggaW4gbXQ4MTk1LmR0c2kpIGFscmVhZHkgdXNlcwp0aGUgYmFzZSBhZGRyZXNz
IDB4MWM1MDAwMDAgZm9yIGl0cyByZWdpb24sIGFuZCB0aGUgbW9ub2xpdGhpYyBtdGtfZHAuYwpk
cml2ZXIgcmVxdWVzdHMgdGhpcyBlbnRpcmUgZXhjbHVzaXZlIHJlZ2lvbi4KCklmIHRoZSBQSFkg
aXMgbW9kZWxlZCBhcyBhIHN0YW5kYWxvbmUgc2libGluZyBub2RlIHdpdGggYW4gb3ZlcmxhcHBp
bmcgbWVtb3J5CmJvdW5kLCBpdCBzZWVtcyB0aGUga2VybmVsJ3MgZGV2bV9wbGF0Zm9ybV9pb3Jl
bWFwX3Jlc291cmNlIHdpbGwgZmFpbCB3aXRoCi1FQlVTWSBkdXJpbmcgZHJpdmVyIHByb2JlIGFu
ZCBicmVhayB0aGUgZGlzcGxheSBjb250cm9sbGVyLgoKU2hvdWxkIHRoZSBQSFkgaW5zdGVhZCBi
ZSBtb2RlbGVkIGFzIGEgY2hpbGQgbm9kZSB3aXRob3V0IGFuIGFic29sdXRlIHJlZywgb3IKc2hv
dWxkIHRoZXNlIGNhbGlicmF0aW9uIHByb3BlcnRpZXMgYmUgbWVyZ2VkIGRpcmVjdGx5IGludG8g
dGhlIGV4aXN0aW5nCm1lZGlhdGVrLGRwLnlhbWwgY29udHJvbGxlciBiaW5kaW5nPwoKPiArICAg
ICAgICAjcGh5LWNlbGxzID0gPDA+Owo+ICsgICAgICAgIG52bWVtLWNlbGxzID0gPCZlZHBfZ2xi
X2JpYXNfdHJpbT4sIDwmZWRwX2Nsa3R4X2ltcHNlbD4sClsgLi4uIF0KCi0tIApTYXNoaWtvIEFJ
IHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA3MDcxNDE5MzEu
MTkxMTcyLTEtYW5nZWxvZ2lvYWNjaGluby5kZWxyZWdub0Bjb2xsYWJvcmEuY29tP3BhcnQ9MQoK
LS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
