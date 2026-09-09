Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92EB1C79FB6
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:32:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4uw0FZcr8uzCLHe+WBJyDFyjKHrHE1ZVrPb4VSvQXJg=; b=xPheuKB8bllBx8
	MAQWgUbviBXv0rqMSCy+oe7kgCRzId8qpEMqXXvnQCFjt3eIV0bQ05SjeOlHueLlhrAIXX8X/EvR9
	VFS+AlqWZqosS0bkE8VDoBwbiWfhTFrUGjU95/NU+e2y8JLtqEpJf3U+shnNTd7vdjRo/dsR/bXOK
	HkRBU++S6wL71L6Mh0dFIz9cM9jxKnDaNVsl739kjydwikOm5lAtZjMP3TTdGI1Z/4l5Rx2hDpcVD
	5LIMv+a88WjaNa4dLAc5tSrzsNVH7vgm2ZgsSaVeYS4MDNvWuLmh6KrTyjgDW6rfp+w2V9ocaU6PW
	DkpNbT2/dd/H2YjordLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KHc-0000000CAyx-10qQ;
	Wed, 09 Sep 2026 15:32:20 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4KHb-0000000CAyV-15Uj
	for linux-phy@lists.infradead.org;
	Wed, 09 Sep 2026 15:32:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7A6AE601EF;
	Wed,  9 Sep 2026 15:32:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D08CE1F00A3A;
	Wed,  9 Sep 2026 15:32:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788967938;
	bh=IzQ4BNbF6faCBeB/IFPsIGfhclYL1yNQY5hzJO1XqG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ABQ99Fcr8z6PssIHhGeNIOA/6HUbkQzaWVgO6zSij2p6NYH7OmNRNz3AVuDosKmBs
	 1JNogt/yg00/i/cMm5P/kBQQEMczqsp8eP2H+w52XZ4cPzIserfY9oa5Vh8qLs76pk
	 SuiIEskCsG8ElEFvueS0iCgg9TnVVYM8YEPvx/SCZCkl2eh5G5n/XhfBY5EQpj2bVx
	 /DwaaLm+v4SvMn+rX+l8XyWdF8k5QQkt0t/8Cjp5P1af27FsO6NdqmnIO7B/6+/01z
	 dHRa59ZxK8pf2P6Hr5mmVgUNclXsS7l1qhHL5SACfOtkCkc822XNTwgEvo/xudpxvH
	 vvM7goXuY0qfg==
Date: Wed, 9 Sep 2026 17:32:09 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [PATCH v5 3/7] phy: cpcap-usb: fix IRQ teardown race
Message-ID: <af7ikpyy7rheb5d46wpwn6v6sfwh4ncmgb2bcwzbl5flyikseu@mj5q24u4omun>
References: <20260711204210.197144-1-ivo.g.dimitrov.75@gmail.com>
 <20260711204210.197144-4-ivo.g.dimitrov.75@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260711204210.197144-4-ivo.g.dimitrov.75@gmail.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBKdWwgMTEsIDIwMjYgYXQgMTE6NDI6MDZQTSArMDMwMCwgSXZheWxvIERpbWl0cm92
IHdyb3RlOgo+IHRoZXJlIGlzIGEgcmFjZSBiZXR3ZWVuIElSUSBoYW5kbGVyIGFuZCByZW1vdmU6
Cj4gCj4gSVJRIHRocmVhZDoKPiAgICAgZGRhdGEtPmFjdGl2ZSA9PSAxCj4gCj4gcmVtb3ZlKCk6
Cj4gICAgIGRkYXRhLT5hY3RpdmUgPSAwCj4gICAgIGNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygp
Cj4gCj4gSVJRIHRocmVhZDoKPiAgICAgc2NoZWR1bGVfZGVsYXllZF93b3JrKCkKPiAKPiBUaGUg
SVJRIGhhbmRsZXIgY2FuIHRoZXJlZm9yZSBxdWV1ZSBkZXRlY3Qgd29yayBhZnRlciBpdCBoYXMg
YmVlbiBjYW5jZWxlZAo+IGR1cmluZyByZW1vdmUoKS4gRnJlZSB0aGUgSVJRIGhhbmRsZXJzIGJl
Zm9yZSBjYW5jZWxpbmcgZGV0ZWN0IHdvcmsgdG8KPiBwcmV2ZW50IG5ldyB3b3JrIGZyb20gYmVp
bmcgc2NoZWR1bGVkIGR1cmluZyB0ZWFyZG93bi4KPiAKPiBSZXBvcnRlZCBieSBTYXNoaWtvCgpB
ZGQgYSBwcm9wZXIgdGFnLgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBJdmF5bG8gRGltaXRyb3YgPGl2
by5nLmRpbWl0cm92Ljc1QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9waHkvbW90b3JvbGEv
cGh5LWNwY2FwLXVzYi5jIHwgMTYgKysrKysrKysrKysrKysrLQo+ICAxIGZpbGUgY2hhbmdlZCwg
MTUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMgYi9kcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHkt
Y3BjYXAtdXNiLmMKPiBpbmRleCA3Y2IwMjBkZDM0MjMuLjc0MTE0NWM4OWU1YiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMKPiArKysgYi9kcml2ZXJz
L3BoeS9tb3Rvcm9sYS9waHktY3BjYXAtdXNiLmMKPiBAQCAtMzkzLDYgKzM5MywxOSBAQCBzdGF0
aWMgaW50IGNwY2FwX3VzYl9pbml0X2ludGVycnVwdHMoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldiwKPiAgCXJldHVybiAwOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBjcGNhcF91c2JfZmlu
aV9pbnRlcnJ1cHRzKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCgpzL2ZpbmkvZnJlZQoK
LSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+Cu
teCuruCvjQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcGh5Cg==
