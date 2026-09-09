Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1FEDC79FB7
	for <linux-phy@archiver.kernel.org>; Wed,  9 Sep 2026 15:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F17BAkshz4bFT9nr63oNNQRRpdJWNPA8LyvL13XKSGo=; b=S9UWy0pnyJZNIq
	vqVzr0EvmF6AWFWMvMOlKmE7gBifOcP/7lddAlulGalRz6xXZuyqtKvWHXqh3qCFt5UQRt42Zz3Up
	2bI0CzJo1gD7h/A6MxneZW8O4cPm0si1xzWqMSNkjPGDymrmKnqXzjcdINE5aVy85exFxje2FTp5G
	rxXqvJe6Z1JYGU+cO9uFWS8qHhBhnc3NDq7TsbuN3AoWFpN4v3CW8CtjEc1LaT/Z38ft8E4wK98/2
	SO1M70b9+9pdIYAGTFsukE717dcKoDdnw++WXPAOO/jX+KqLEUWOPt8Yh7CYty8C353KieISVKY7R
	U11sHhGWhhvqeBJXj56g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JwO-0000000C63O-1H92;
	Wed, 09 Sep 2026 15:10:24 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4JwN-0000000C62h-1dRm;
	Wed, 09 Sep 2026 15:10:23 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CA01240495;
	Wed,  9 Sep 2026 15:10:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 182901F00A3A;
	Wed,  9 Sep 2026 15:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788966622;
	bh=Ps4txA8yulxz+H1CKcCcyIHdAlFgi+8pO1Fx1PzdrZ4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=E0eUjy9U1WelmB5b8fbXhgJZ7f4PHeAMYS1RMPk1Djb2tBXQxprgaRbBJC/JE4BEG
	 MLuXVb1TDVAHoN9VloKqWH1KXnFM9384urAMajSDTJsSx/LLzCI+D9ZY5cf7JYzHa8
	 6GuqgNOPOKNSdEZK58ST5n9oof8BJWYxwaAR3SdWyzaiFtM/0qh2vg/cZ/3mky7f0E
	 fExYtiqcbzxkqa5+S2buBB/Y3QvRKOz/8NZHHNbzKmQalyjVPn1J+rEIXHhshXK6Xg
	 wP5zkz+M8NKvvwPO35n5d9xE8Gk9FQHX6aQ1iy1SFCXYJcFBdzsyquebQCc86O+YkG
	 HjFjG5VDpe0rg==
Date: Wed, 9 Sep 2026 17:10:12 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: mediatek,tphy: Add support for MT8189
 SoC
Message-ID: <h3b5r5wm5pey65jauir32ciw3lskbrlbcuyqa2xwaxqx2q3kz5@nxqjientp4dq>
References: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260701-mt8189-dt-bindings-tphy-v1-1-5848a2be8303@collabora.com>
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

T24gV2VkLCBKdWwgMDEsIDIwMjYgYXQgMDU6MzY6NDlQTSArMDIwMCwgTG91aXMtQWxleGlzIEV5
cmF1ZCB3cm90ZToKPiBBZGQgYSBjb21wYXRpYmxlIHN0cmluZyBmb3IgdGhlIE1lZGlhVGVrIE1U
ODE4OSBTb0MsIHRoYXQgaW50ZWdyYXRlcyBhCj4gTWVkaWFUZWsgZ2VuZXJpYyBULVBIWSB2ZXJz
aW9uIDMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTG91aXMtQWxleGlzIEV5cmF1ZCA8bG91aXNhbGV4
aXMuZXlyYXVkQGNvbGxhYm9yYS5jb20+CgpBY2tlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFt
IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCu
ruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIAps
aW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBz
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
