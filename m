Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4015ECF8875
	for <linux-phy@archiver.kernel.org>; Thu, 20 Nov 2025 15:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0wVK5bjatVPeht+ZZA7s+JUzVX7SX31bipg2t44yLw=; b=rt/ph5S/45pu/T
	xrC1ttTtb6YaOlGUfthmgjMAlb7M3T6rPlcwSLUbc0qEQi0QSYnxJzQYhv0j4x730oiG47h7I8YG6
	doAMgZcOzK+p1MsFwKumBb2hk2YoJWgsAqB9APQt0jSAz1gbwgiAPcpGn1pLw2Pm4kol7Qs7qpNO5
	Z08R7vFw4O+j5XpDJ4GeZtCCAIOBH4hy4Zt92AyKBolHkJV608WMKsIvFJ2+qauyZO2CvbjMm+epk
	ACen9yFKi/aXaymn7RzkifLJwBpdyWW0v4E9aWDs2ncHScDbXWxjlUQql2HePG6fzw2tTjCTviy+v
	ixcFsqOTG15rZeyAufmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6lm-00000006vqp-41aL;
	Thu, 20 Nov 2025 15:40:26 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vM6lj-00000006vpn-0hkG;
	Thu, 20 Nov 2025 15:40:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4C11360137;
	Thu, 20 Nov 2025 15:40:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AC6EC4CEF1;
	Thu, 20 Nov 2025 15:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763653222;
	bh=tNNmZ2QL/T1AtHJf3KMxZyhhMvxqTgXsdcTVHNZESwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i4NueJCx9r7KrKIBLF+cUWlHEImFEFp6i4HTJfMhvWzE0AhQ79mVl9GJ5OUOETAfM
	 v62QWN+2FK0HlefMQ7hG+2OPPC0f9N+/gkosLtmKA10LtlP8Bb6C0zwAuL//WSEnXI
	 MT/BFVyE4z4b/wO3+IbcPDwRX7sIFXsco2qbEug2EQ4KzlmW5vKE5c8ACO1XaJXN4h
	 qnbhCjeCCgO/PPPzTjLptR4lFLi1Oh5evb4wDshNYs3UoCfHEbsrc4bUgNU43cgYSE
	 4+k2PcHFO4ggtL4T/WYyj66+4LfcwwcuIGBfwfs8EOo4ZCJdE0o7PmsRZlYtEdCVlQ
	 kjnswH7RBQq/Q==
Date: Thu, 20 Nov 2025 15:40:12 +0000
From: Lee Jones <lee@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Cc: patchwork-bot+netdevbpf@kernel.org,
	Sjoerd Simons <sjoerd@collabora.com>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com, ryder.lee@mediatek.com,
	jianjun.wang@mediatek.com, bhelgaas@google.com,
	lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
	chunfeng.yun@mediatek.com, vkoul@kernel.org, kishon@kernel.org,
	andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
	pabeni@redhat.com, lorenzo@kernel.org, nbd@nbd.name,
	kernel@collabora.com, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, netdev@vger.kernel.org,
	daniel@makrotopia.org, bryan@bryanhinton.com,
	conor.dooley@microchip.com
Subject: Re: [PATCH v4 00/11] arm64: dts: mediatek: Add Openwrt One AP
 functionality
Message-ID: <20251120154012.GJ661940@google.com>
References: <20251115-openwrt-one-network-v4-0-48cbda2969ac@collabora.com>
 <176360700676.1051457.11874224265724256534.git-patchwork-notify@kernel.org>
 <20251120152829.GH661940@google.com>
 <20251120073639.3fd7cc7c@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251120073639.3fd7cc7c@kernel.org>
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

T24gVGh1LCAyMCBOb3YgMjAyNSwgSmFrdWIgS2ljaW5za2kgd3JvdGU6Cgo+IE9uIFRodSwgMjAg
Tm92IDIwMjUgMTU6Mjg6MjkgKzAwMDAgTGVlIEpvbmVzIHdyb3RlOgo+ID4gPiBIZXJlIGlzIHRo
ZSBzdW1tYXJ5IHdpdGggbGlua3M6Cj4gPiA+ICAgLSBbdjQsMDEvMTFdIGR0LWJpbmRpbmdzOiBt
ZmQ6IHN5c2NvbjogQWRkIG10Nzk4MS10b3BtaXNjCj4gPiA+ICAgICAobm8gbWF0Y2hpbmcgY29t
bWl0KSAgCj4gPiAKPiA+IEkgdGhvdWdodCB0aGlzIGRheXMgb2YgTmV0IHJhbmRvbWx5IHBpY2tp
bmcgdXAgTUZEIHBhdGNoZXMgd2VyZSBiZWhpbmQgdXMhCj4gCj4gVGFrZSBhbm90aGVyIGxvb2sg
YXQgdGhlIG1lc3NhZ2UuIFdlIHBpY2tlZCBvdXQganVzdCBvbmUgb2YgdGhlIGNoYW5nZXMKPiBo
ZXJlLgoKQWggc3VwZXIhCgpUaGFua3MgZm9yIHRoZSBjbGFyaWZpY2F0aW9uIGFuZCBhcG9sb2dp
ZXMgZm9yIG1pc3JlYWRpbmcgdGhlIG91dHB1dC4KCj4gPiA+ICAgLSBbdjQsMDIvMTFdIGR0LWJp
bmRpbmdzOiBQQ0k6IG1lZGlhdGVrLWdlbjM6IEFkZCBNVDc5ODEgUENJZSBjb21wYXRpYmxlCj4g
PiA+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4gPiAgIC0gW3Y0LDAzLzExXSBkdC1iaW5k
aW5nczogcGh5OiBtZWRpYXRlayx0cGh5OiBBZGQgc3VwcG9ydCBmb3IgTVQ3OTgxCj4gPiA+ICAg
ICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4gPiAgIC0gW3Y0LDA0LzExXSBhcm02NDogZHRzOiBt
ZWRpYXRlazogbXQ3OTgxYjogQWRkIFBDSWUgYW5kIFVTQiBzdXBwb3J0Cj4gPiA+ICAgICAobm8g
bWF0Y2hpbmcgY29tbWl0KQo+ID4gPiAgIC0gW3Y0LDA1LzExXSBhcm02NDogZHRzOiBtZWRpYXRl
azogbXQ3OTgxYi1vcGVud3J0LW9uZTogRW5hYmxlIFBDSWUgYW5kIFVTQgo+ID4gPiAgICAgKG5v
IG1hdGNoaW5nIGNvbW1pdCkKPiA+ID4gICAtIFt2NCwwNi8xMV0gZHQtYmluZGluZ3M6IG5ldDog
bWVkaWF0ZWssbmV0OiBDb3JyZWN0IGJpbmRpbmdzIGZvciBNVDc5ODEKPiA+ID4gICAgIGh0dHBz
Oi8vZ2l0Lmtlcm5lbC5vcmcvbmV0ZGV2L25ldC1uZXh0L2MvYmM0MWZiYmY2ZmFhCj4gPiA+ICAg
LSBbdjQsMDcvMTFdIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDc5ODFiOiBBZGQgRXRoZXJuZXQg
YW5kIFdpRmkgb2ZmbG9hZCBzdXBwb3J0Cj4gPiA+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+
ID4gPiAgIC0gW3Y0LDA4LzExXSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYi1vcGVud3J0
LW9uZTogRW5hYmxlIEV0aGVybmV0Cj4gPiA+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4g
PiAgIC0gW3Y0LDA5LzExXSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYjogRGlzYWJsZSB3
aWZpIGJ5IGRlZmF1bHQKPiA+ID4gICAgIChubyBtYXRjaGluZyBjb21taXQpCj4gPiA+ICAgLSBb
djQsMTAvMTFdIGFybTY0OiBkdHM6IG1lZGlhdGVrOiBtdDc5ODFiOiBBZGQgd2lmaSBtZW1vcnkg
cmVnaW9uCj4gPiA+ICAgICAobm8gbWF0Y2hpbmcgY29tbWl0KQo+ID4gPiAgIC0gW3Y0LDExLzEx
XSBhcm02NDogZHRzOiBtZWRpYXRlazogbXQ3OTgxYi1vcGVud3J0LW9uZTogRW5hYmxlIHdpZmkK
PiA+ID4gICAgIChubyBtYXRjaGluZyBjb21taXQpCgpUaGlzIGlzIGEgdmVyeSBvZGQgd2F5IG9m
IHByZXNlbnRpbmcgdGhhdCBvbmUgcGF0Y2ggZnJvbSB0aGUgc2V0IHdhcyBtZXJnZWQuCgpOb3Qg
c3VyZSBJJ3ZlIHNlZW4gdGhpcyBiZWZvcmUuICBJcyBpdCBuZXc/CgpJdCdzIHZlcnkgY29uZnVz
aW5nLiAgSXMgaXQgYSBjb3JlIFBXIHRoaW5nIGFuZCAvIG9yIGNhbiBpdCBiZSBjb25maWd1cmVk
PwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
