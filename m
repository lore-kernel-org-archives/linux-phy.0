Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63B78CD98F0
	for <linux-phy@archiver.kernel.org>; Wed, 17 Jun 2026 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIc3AJnvXYpNvhE0walxV2vtJWxXfm5z2oR2eRfGwzM=; b=uJOBoXrw97hPku
	lWMJWQ6bfFyLS+KAHxD0hxbrwJW5DXF/JXiTzqg20N+csqj1eOZBBTL/7JYvvyVju6ouulqDA2xxr
	3LCK0kiepzYZ7YL/HphVi17lyrCGBin2kdGKT7J+iCYxQef7cKzhG+ym64rqodxgS9hM7x2i8D1ma
	rHZGkk/TRgU3iBeqoAHsx+nQpD7ycBtBQBZg8MLldvP4M/krm8/Xp7zxHqbWjIv8l/KF6eQ7EYvfh
	iVLsZtWri/I/HwuVgU4twtXXpM3/xIwP2gYq+VPQlD3ioXmEpY9fmAChkEApvntprVvr1bf5Fju07
	+kEShlw1eanKIvJborIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpRQ-0000000HLTE-0kHO;
	Wed, 17 Jun 2026 12:32:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZpRO-0000000HLT0-3rXD
	for linux-phy@lists.infradead.org;
	Wed, 17 Jun 2026 12:32:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id AAD834374C;
	Wed, 17 Jun 2026 12:32:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3818E1F000E9;
	Wed, 17 Jun 2026 12:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781699542;
	bh=cvBZCD+ESZXuE0hqtc7yYxl9khsYkQUqRu69GHQbo9c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nhRCnVWNxFW/vIkLzgOoLH8L7JneoCmav2faJv9FLjQZPbzXhFMpXfZ7wT1o8WyUg
	 9CEamXoSD0366pGEfeVf45IEwWd1bi8RKCr0abS8W8EPLeaqBhioldMXSsRJWbW/Fe
	 Hno3RUOEbiUy7MIhy2BHbfEtEv33ecUPl5I6UYX7ieu4CUNe+fYv/vsD9RTT/ErvIR
	 wgigJ3UHBA1HHdHnaX5XfrIoBkxbjTaCwvZqJwXmkKdYWuwBaSMLEHKd96COJPzROb
	 nSCdDBjTIdNpRwNoBmF/csW4zrODnZcQIKPoz4zoLdWvMNPdxZXiZcTQyPsMta96k/
	 UvWFl36qpqMdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] phy: rockchip: phy-rockchip-inno-csidphy: add clock
 lane phase tuning
To: "Gerald Loacker" <gerald.loacker@wolfvision.net>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, robh@kernel.org
In-Reply-To: <20260617-feature-mipi-csi-dphy-4k60-v1-3-4611ff00b0ff@wolfvision.net>
References: <20260617-feature-mipi-csi-dphy-4k60-v1-0-4611ff00b0ff@wolfvision.net>
 <20260617-feature-mipi-csi-dphy-4k60-v1-3-4611ff00b0ff@wolfvision.net>
Date: Wed, 17 Jun 2026 12:32:21 +0000
Message-Id: <20260617123222.3818E1F000E9@smtp.kernel.org>
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
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW0xvd10gVGhlIG1hY3JvIGBDU0lE
UEhZX0NMS19QSEFTRV9ERUZBVUxUYCBpcyBkZWZpbmVkIGJ1dCBuZXZlciB1c2VkLgotLQoKY29t
bWl0IGJmYmI0OThiZGQwYzZhYWQ5YzgwZDZmZTMxYjM0ZjhhMDMyNjFjNzYKQXV0aG9yOiBHZXJh
bGQgTG9hY2tlciA8Z2VyYWxkLmxvYWNrZXJAd29sZnZpc2lvbi5uZXQ+CgpwaHk6IHJvY2tjaGlw
OiBwaHktcm9ja2NoaXAtaW5uby1jc2lkcGh5OiBhZGQgY2xvY2sgbGFuZSBwaGFzZSB0dW5pbmcK
ClRoaXMgY29tbWl0IGFkZHMgc3VwcG9ydCBmb3IgcGFyc2luZyBhbmQgYXBwbHlpbmcgdGhlIG9w
dGlvbmFsCidyb2NrY2hpcCxjbGstbGFuZS1waGFzZScgZGV2aWNlIHRyZWUgcHJvcGVydHkuIEl0
IGFsbG93cyBmb3IgYm9hcmQtc3BlY2lmaWMKdHVuaW5nIG9mIHRoZSBjbG9jayBsYW5lIHNhbXBs
aW5nIHBoYXNlLiBJZiB0aGUgcHJvcGVydHkgaXMgYWJzZW50LCB0aGUgZHJpdmVyCnJlbGllcyBv
biB0aGUgaGFyZHdhcmUgZGVmYXVsdCB3aXRob3V0IGFjdGl2ZWx5IHdyaXRpbmcgdG8gdGhlIHJl
Z2lzdGVyLgoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LWlubm8tY3NpZHBoeS5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8t
Y3NpZHBoeS5jCj4gaW5kZXggNTI4MWY4ZGVhMGFkMy4uM2ExNTg0MGU4NmNhZCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiAr
KysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtaW5uby1jc2lkcGh5LmMKPiBA
QCAtNjksNiArNjksMTAgQEAKPiAgI2RlZmluZSBSSzE4MDhfQ1NJRFBIWV9DTEtfQ0FMSUJfRU4J
CTB4MTY4Cj4gICNkZWZpbmUgUkszNTY4X0NTSURQSFlfQ0xLX0NBTElCX0VOCQkweDE2OAo+ICAK
PiArI2RlZmluZSBDU0lEUEhZX0xBTkVfQ0xLXzNfUEhBU0UJCTB4MzgKPiArI2RlZmluZSBDU0lE
UEhZX0NMS19QSEFTRV9NQVNLCQkJR0VOTUFTSyg2LCA0KQo+ICsjZGVmaW5lIENTSURQSFlfQ0xL
X1BIQVNFX0RFRkFVTFQJCTMKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQg
aXQgbG9va3MgbGlrZSBDU0lEUEhZX0NMS19QSEFTRV9ERUZBVUxUIGlzIGRlZmluZWQKaGVyZSBi
dXQgbmV2ZXIgYWN0dWFsbHkgdXNlZCBpbiB0aGUgZHJpdmVyIGNvZGUuCgpTaW5jZSB0aGUgZmFs
bGJhY2sgbG9naWMgY29ycmVjdGx5IHJlbGllcyBvbiBsZWF2aW5nIHRoZSBoYXJkd2FyZSBhdCBp
dHMKZGVmYXVsdCBzdGF0ZSB3aGVuIHRoZSBkZXZpY2UgdHJlZSBwcm9wZXJ0eSBpcyBtaXNzaW5n
IChieSBpbml0aWFsaXppbmcKY2xrX3BoYXNlIHRvIC0xKSwgY291bGQgdGhpcyB1bnVzZWQgbWFj
cm8gYmUgcmVtb3ZlZCB0byBhdm9pZCBrZWVwaW5nCmRlYWQgY29kZSBhcm91bmQ/CgotLSAKU2Fz
aGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9zYXNoaWtvLmRldi8jL3BhdGNoc2V0LzIwMjYwNjE3
LWZlYXR1cmUtbWlwaS1jc2ktZHBoeS00azYwLXYxLTAtNDYxMWZmMDBiMGZmQHdvbGZ2aXNpb24u
bmV0P3BhcnQ9MwoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcGh5Cg==
