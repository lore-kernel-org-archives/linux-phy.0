Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1D9EC4451B
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jul 2026 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdYvRgBWyTMp7bGNRqIM5WTn5Dz+yiJtZFDekLpJnPU=; b=0GmXNtV0z/QdZU
	TM6/CCxxT1cvufxGPNdVxyAXd+Izy4Hq8BKuA9Qj9+9hQjc4vrFYAbRsVNAdBlhsuNF2uUqD1TzCo
	EuY5hKcCdx9yn7YoAzH1mRS5yJ1BCXoC2wQzy9qi1yNLUFUjKhR9dHhjsJF3ivYkIKRdC4OA3HxeW
	PtO140qJGDtLENrGabJ7QcVUtoc/zVWB/yq5xOTFSVOoJTcz7fmd/bBupTYu/gkIfwqKuUboyD6aq
	em4jG/+VOsWHBCBA6uVXmHNPq04PzZM9SRnyN43K+CNzWbyeQdhBp4XCODwM+bgiHzQW2saf06Mis
	Qcp34lPdSvlxG/GTvKrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl1Tf-00000003xvx-1vwz;
	Sat, 18 Jul 2026 09:36:59 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wl1Te-00000003xvr-405Q
	for linux-phy@lists.infradead.org;
	Sat, 18 Jul 2026 09:36:58 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 736C940F10;
	Sat, 18 Jul 2026 09:36:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 111191F000E9;
	Sat, 18 Jul 2026 09:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784367418;
	bh=T6pdw/mkihOKQESakimbMw8bn8o3LUv5NtKVXUW5xU4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LVp43yI5k9Io09Ci3oyjdbWS132yDebneDCmLbmefTgJaA0bW4vxy0sQ/Qain0n+K
	 jwXk1lsF+UbGKd+W/uE1PQOeuUsLgfiqcYOPTgfQaiNoD7MYTFNdNj+MxwOzrJY8ii
	 R6W9dx+GX+b8f8XuTEkC3k0PW2qRbFx/Yd+FEm26JP9LtaDMtF2cFNo7IwiDwR456c
	 ecUVNPCmsig2CtE6AHi6ukzRaVsMGREJIWpcJGcn7e/D85x50v8D4PNjce5tODiI59
	 /QRumr+SZotNHLVgZ7RyypsRQFCi90//HQ0fVZ9I+1oTyW7AIvOg6AP9bUTGPPjuBi
	 cdaK51BDWtoLA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] phy: qcom: m31-eusb2: Fix return value of init call
To: "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260718-m31-eusb2-fix-v1-1-8588a1b94d76@oss.qualcomm.com>
References: <20260718-m31-eusb2-fix-v1-1-8588a1b94d76@oss.qualcomm.com>
Date: Sat, 18 Jul 2026 09:36:57 +0000
Message-Id: <20260718093658.111191F000E9@smtp.kernel.org>
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
IFtIaWdoXSBIYXJkd2FyZSBpbml0aWFsaXphdGlvbiBmYWlsdXJlcyBkdXJpbmcgcmVnaXN0ZXIg
Y29uZmlndXJhdGlvbiBpbiBgbTMxZXVzYjJfcGh5X2luaXRgIGFyZSBpZ25vcmVkLCBsZWFkaW5n
IHRvIGEgc2lsZW50IGZhaWx1cmUuCi0tCgotLS0gUGF0Y2ggWzFdOiBbUEFUQ0hdIHBoeTogcWNv
bTogbTMxLWV1c2IyOiBGaXggcmV0dXJuIHZhbHVlIG9mIGluaXQgY2FsbCAtLS0KY29tbWl0IDY1
ZjY2NmZlMzBjYmM1NGIzN2VlNjgyZjMwNjRhMjRmY2MyNGIxNmYKQXV0aG9yOiBLcmlzaG5hIEt1
cmFwYXRpIDxrcmlzaG5hLmt1cmFwYXRpQG9zcy5xdWFsY29tbS5jb20+CgpwaHk6IHFjb206IG0z
MS1ldXNiMjogRml4IHJldHVybiB2YWx1ZSBvZiBpbml0IGNhbGwKICAgIApUaGUgaW5pdCBjYWxs
IHByZXZpb3VzbHkgcmV0dXJuZWQgMCBldmVuIHdoZW4gcmVwZWF0ZXIgaW5pdGlhbGl6YXRpb24g
b3IgY2xvY2sKZW5hYmxlbWVudCBmYWlsZWQuIFRoaXMgcGF0Y2ggdXBkYXRlcyB0aGUgZmFpbHVy
ZSBwYXRoIHRvIHJldHVybiB0aGUgYWN0dWFsCmVycm9yIHZhbHVlLgoKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbTMxLWV1c2IyLmMgYi9kcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1tMzEtZXVzYjIuYwo+IGluZGV4IDBiZWM4NjU3MTQ5YzkuLjI3NWRm
MzgyNTZkZTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbTMx
LWV1c2IyLmMKPiArKysgYi9kcml2ZXJzL3BoeS9xdWFsY29tbS9waHktcWNvbS1tMzEtZXVzYjIu
YwpbIC4uLiBdCj4gIAltMzFldXNiMl9waHlfd3JpdGVfc2VxdWVuY2UocGh5LCBkYXRhLT5zZXR1
cF9zZXEsIGRhdGEtPnNldHVwX3NlcV9ucmVncyk7Cj4gIAltMzFldXNiMl9waHlfd3JpdGVfcmVh
ZGJhY2socGh5LT5iYXNlLAo+ICAJCQkJICAgIFVTQl9QSFlfSFNfUEhZX0NUUkxfQ09NTU9OMCwg
RlNFTCwKPiAgCQkJCSAgICBGSUVMRF9QUkVQKEZTRUwsIGRhdGEtPmZzZWwpKTsKPiAgCW0zMWV1
c2IyX3BoeV93cml0ZV9zZXF1ZW5jZShwaHksIGRhdGEtPm92ZXJyaWRlX3NlcSwgZGF0YS0+b3Zl
cnJpZGVfc2VxX25yZWdzKTsKPiAgCW0zMWV1c2IyX3BoeV93cml0ZV9zZXF1ZW5jZShwaHksIGRh
dGEtPnJlc2V0X3NlcSwgZGF0YS0+cmVzZXRfc2VxX25yZWdzKTsKPiAgCj4gIAlyZXR1cm4gMDsK
CltTZXZlcml0eTogSGlnaF0KVGhpcyBpcyBhIHByZS1leGlzdGluZyBpc3N1ZSwgYnV0IHNpbmNl
IHRoaXMgcGF0Y2ggZml4ZXMgZXJyb3IgaGFuZGxpbmcgaW4gCm0zMWV1c2IyX3BoeV9pbml0KCks
IHNob3VsZCB3ZSBhbHNvIGNoZWNrIHRoZSByZXR1cm4gdmFsdWVzIG9mIHRoZXNlIHJlZ2lzdGVy
IApjb25maWd1cmF0aW9uIGZ1bmN0aW9ucz8KCklmIG0zMWV1c2IyX3BoeV93cml0ZV9zZXF1ZW5j
ZSgpIG9yIG0zMWV1c2IyX3BoeV93cml0ZV9yZWFkYmFjaygpIGZhaWxzLCB0aGUgCmVycm9yIGlz
IGN1cnJlbnRseSBpZ25vcmVkLiBUaGUgZnVuY3Rpb24gc3VjY2Vzc2Z1bGx5IHJldHVybnMgMCB3
aXRob3V0IApleGVjdXRpbmcgdGhlIGRpc2FibGVfcmVwZWF0ZXIgYW5kIGRpc2FibGVfdnJlZyBj
bGVhbnVwIHBhdGhzLiBUaGlzIGNvdWxkIGxlYXZlIAp0aGUgUEhZIGhhcmR3YXJlIGluIGFuIGlu
Y29ycmVjdGx5IGluaXRpYWxpemVkIHN0YXRlLgoKPiAgCj4gIGRpc2FibGVfcmVwZWF0ZXI6Cj4g
IAlwaHlfZXhpdChwaHktPnJlcGVhdGVyKTsKPiAgZGlzYWJsZV92cmVnOgo+ICAJcmVndWxhdG9y
X2J1bGtfZGlzYWJsZShNMzFfRVVTQl9OVU1fVlJFR1MsIHBoeS0+dnJlZ3MpOwo+ICAKPiAtCXJl
dHVybiAwOwo+ICsJcmV0dXJuIHJldDsKPiAgfQoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0
dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2MDcxOC1tMzEtZXVzYjItZml4LXYxLTEt
ODU4OGExYjk0ZDc2QG9zcy5xdWFsY29tbS5jb20/cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxp
bmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
