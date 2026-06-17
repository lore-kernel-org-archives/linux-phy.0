Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F174CD98F0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 12:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3jzRlAvbMS4PO93S55ryEyDMN65oeegQnxAP31x6UM=; b=OG4yd/eOFEX61e
	n68taGPbr+q6k6TL2AuyCqdo508E5BSBNb5h7pW6nvmtiTMJbg42gXAyKXxAGGbxb49epA6Tnv5GZ
	UD+tIXJ+sTtS2XLq9S+kOlZpfp5QSFXN+vADG7YT+karWtCExHsHcdHxricghYZ2Bzc8tbf74c8TF
	By0jIbYzQWgfvbYhhZtw76H67rEhXAoGMPj0+thdZ6/r3U9hqBX2y6LHs1QqCs5VWxLYJ/tSJB0Hy
	m6IJqEnbmUyWwwWNBj3p/ufF8xrJ0q98gAAA2H1sLss9oSapR3O8onxhc/y2J34t93FOoQ4Xag2+F
	Rm9xiJOfW6tGDytn3TpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpQU-0000000HLQE-0MWj;
	Wed, 17 Jun 2026 12:31:26 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpQS-0000000HLQ6-44lt
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 12:31:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 67B9B40A0E;
	Wed, 17 Jun 2026 12:31:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D76D91F000E9;
	Wed, 17 Jun 2026 12:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781699484;
	bh=eazbb0s9Zzrv47U0UWMgcTY7KPZuo6+Xj9akgfjv5Bk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lV7H05RqKV8yrqDAxr0l/CiM7ocXK2eVD+uvb1y5HnhiUNMxBKvxkpf6YHnZNQKeK
	 d0XlVnYcO3eeLYm747KXYOpxgDUBBeI6mR4YBxRkE1hDi4fMNcFmIsDvEzQll6x5FJ
	 ctA56dkA06EnQH9o7iViG3BieafHxy3g0Q4l19sVjD2F3TWmBrsp+dcBUvrqA/Ljou
	 eAuXTuVgEegrtYGu8R512E7an1AhjbS3/yPuZNZYO2dClHBrU8gMDSTTf4hlcpIiXz
	 +/s2hef34Xn4l7znAbcG7En0ByCafjO36iu4b7Q9WxIh7PUf+nnrgeh1nhFcb3kh7C
	 zEErXy/inB9lQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/3] phy: rockchip: phy-rockchip-inno-csidphy: fix
 rk1808 hsfreq table
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: devicetree@vger.kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org, vkoul@kernel.org, robh@kernel.org, olteanv@gmail.com, linux-phy@lists.infradead.org
In-Reply-To: <20260617-feature-mipi-csi-dphy-4k60-v1-1-4611ff00b0ff@wolfvision.net>
References: <20260617-feature-mipi-csi-dphy-4k60-v1-0-4611ff00b0ff@wolfvision.net>
 <20260617-feature-mipi-csi-dphy-4k60-v1-1-4611ff00b0ff@wolfvision.net>
Date: Wed, 17 Jun 2026 12:31:23 +0000
Message-Id: <20260617123123.D76D91F000E9@smtp.kernel.org>
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
IFtIaWdoXSBWYWxpZCBsb3ctZnJlcXVlbmN5IHJhbmdlcyBtYXBwaW5nIHRvIGNvbmZpZ3VyYXRp
b24gYml0IDB4MDAgYXJlIGluY29ycmVjdGx5IHJlamVjdGVkIGFzIGVycm9ycy4KLS0KCmNvbW1p
dCA3M2U4NjgzOTY1MjU1YzM0NGJlYzQxYjQ0ZDQ4MGMxY2VjZTMzYjU3CkF1dGhvcjogR2VyYWxk
IExvYWNrZXIgPGdlcmFsZC5sb2Fja2VyQHdvbGZ2aXNpb24ubmV0PgoKcGh5OiByb2NrY2hpcDog
cGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeTogZml4IHJrMTgwOCBoc2ZyZXEgdGFibGUKClRoaXMg
Y29tbWl0IGV4dGVuZHMgdGhlIGZpbmFsIGVudHJ5IGluIHRoZSByazE4MDggaHNmcmVxIHRhYmxl
IHRvIGV4YWN0bHkKMjUwMCBNYnBzLiBUaGlzIGFsbG93cyB0aGUgUkszNTg4LCB3aGljaCByZXVz
ZXMgdGhpcyBhcnJheSwgdG8gZnVsbHkKc3VwcG9ydCByYXRlcyB1cCB0byAyNTAwIE1icHMuCgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lk
cGh5LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMK
PiBpbmRleCBjNzlmYjUzZDhlZTVjLi41MjgxZjhkZWEwYWQzIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+ICsrKyBiL2RyaXZl
cnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1pbm5vLWNzaWRwaHkuYwo+IEBAIC0xNzAsNyAr
MTcwLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoc2ZyZXFfcmFuZ2UgcmsxODA4X21pcGlkcGh5
X2hzZnJlcV9yYW5nZXNbXSA9IHsKPiAgCXsgMjk5LCAweDA2fSwgeyAzOTksIDB4MDh9LCB7IDQ5
OSwgMHgwYn0sIHsgNTk5LCAweDBlfSwKPiAgCXsgNjk5LCAweDEwfSwgeyA3OTksIDB4MTJ9LCB7
IDk5OSwgMHgxNn0sIHsxMTk5LCAweDFlfSwKPiAgCXsxMzk5LCAweDIzfSwgezE1OTksIDB4MmR9
LCB7MTc5OSwgMHgzMn0sIHsxOTk5LCAweDM3fSwKPiAtCXsyMTk5LCAweDNjfSwgezIzOTksIDB4
NDF9LCB7MjQ5OSwgMHg0Nn0KPiArCXsyMTk5LCAweDNjfSwgezIzOTksIDB4NDF9LCB7MjUwMCwg
MHg0Nn0KPiAgfTsKPiAgCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaHNmcmVxX3JhbmdlIHJrMzMy
Nl9taXBpZHBoeV9oc2ZyZXFfcmFuZ2VzW10gPSB7CgpbU2V2ZXJpdHk6IEhpZ2hdClRoaXMgaXMg
YSBwcmUtZXhpc3RpbmcgaXNzdWUsIGJ1dCB3aGlsZSBsb29raW5nIGF0IHRoZXNlIGZyZXF1ZW5j
eSByYW5nZQp0YWJsZXMgaXQgYXBwZWFycyB0aGF0IHZhbGlkIGxvdy1mcmVxdWVuY3kgY29uZmln
dXJhdGlvbnMgYXJlIGluY29ycmVjdGx5CnJlamVjdGVkIGFzIGVycm9ycy4KCkluIHJvY2tjaGlw
X2lubm9fY3NpZHBoeV9jb25maWd1cmUoKSwgdGhlIGNvZGUgaXRlcmF0ZXMgdGhyb3VnaCB0aGUK
aHNmcmVxX3JhbmdlcyB0byBmaW5kIHRoZSBjZmdfYml0OgoKZHJpdmVycy9waHkvcm9ja2NoaXAv
cGh5LXJvY2tjaGlwLWlubm8tY3NpZHBoeS5jOnJvY2tjaGlwX2lubm9fY3NpZHBoeV9jb25maWd1
cmUoKSB7CiAgICAuLi4KICAgIGlmICghaHNmcmVxKQogICAgICAgIHJldHVybiAtRUlOVkFMOwog
ICAgLi4uCn0KClRoZSByazMzMjZfbWlwaWRwaHlfaHNmcmVxX3JhbmdlcyB0YWJsZSBkZWZpbmVz
IGFuIGVudHJ5IGZvciBmcmVxdWVuY2llcyB1cAp0byAxMDkgTWJwcyB3aXRoIGEgdmFsaWQgY2Zn
X2JpdCBvZiAweDAwOgoKICAgIHsgMTA5LCAweDAwfSwgeyAxNDksIDB4MDF9LCB7IDE5OSwgMHgw
Mn0sIHsgMjQ5LCAweDAzfSwKCklmIHRoZSBkYXRhIHJhdGUgZmFsbHMgaW50byB0aGlzIGxvd2Vz
dCByYW5nZSwgaHNmcmVxIGlzIGNvcnJlY3RseSBzZXQKdG8gMHgwMCwgYnV0IHRoZSBzdWJzZXF1
ZW50IGlmICghaHNmcmVxKSBjaGVjayBldmFsdWF0ZXMgdG8gdHJ1ZSBhbmQKaW5jb3JyZWN0bHkg
cmV0dXJucyAtRUlOVkFMIGluc3RlYWQgb2YgYXBwbHlpbmcgdGhlIGNvbmZpZ3VyYXRpb24uCgpB
IHNpbWlsYXIgaXNzdWUgYXBwZWFycyBpbiBya19kcGh5X2NvbmZpZ3VyZSgpIGluc2lkZSAKZHJp
dmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWRwaHktcngwLmMgd2l0aCB0YWJsZXMgbGlr
ZQpyazMzOTlfbWlwaWRwaHlfaHNmcmVxX3JhbmdlcyB3aGljaCBoYXMgeyA4OSwgMHgwMCB9LgoK
Q291bGQgdGhpcyB2YWxpZGF0aW9uIGJlIG1vZGlmaWVkIHRvIHZlcmlmeSBpZiBhIHZhbGlkIG1h
dGNoIHdhcyBmb3VuZCAKZHVyaW5nIGl0ZXJhdGlvbiByYXRoZXIgdGhhbiBjaGVja2luZyBpZiB0
aGUgcmVzdWx0aW5nIGNvbmZpZ3VyYXRpb24gYml0IAppcyBub24temVybz8KCi0tIApTYXNoaWtv
IEFJIHJldmlldyDCtyBodHRwczovL3Nhc2hpa28uZGV2LyMvcGF0Y2hzZXQvMjAyNjA2MTctZmVh
dHVyZS1taXBpLWNzaS1kcGh5LTRrNjAtdjEtMC00NjExZmYwMGIwZmZAd29sZnZpc2lvbi5uZXQ/
cGFydD0xCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdApsaW51eC1waHlAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1waHkK
