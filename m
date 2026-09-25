Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 609F1C9830E
	for <linux-phy@archiver.kernel.org>; Fri, 25 Sep 2026 15:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvjH4TRP/18kPhHzTRzL4ycxu+mn+T5TtxjNi1pnxjs=; b=u+SjTgbL9kIww0
	Qs/rRciodt9pzd+ITtusO0UEFOdgLqd6iwGDFGK5Yfn94HK4k7H9n83lZA1sLQg5DQKAUnltosiL+
	+Va8ddrDk8IWN99zojS8PgNBarwFiKCMqFSEIQta7X+kY8d+CKPlYyP5cUlLE1dMHlHH529Dazj2f
	5HBqGRyJYJRoH3rZZFLawVWSQ14Xh+gMsXYPkMBC4g2pLVEFdIHKxmQh9U2z0f4Z48yDEmk6QllWD
	PrjvQWBFKnj++EldSVqix5Umm2XVv1KF55Ua7hEq7gVJDZDpiYlZUz1ABvAKW8XFvEYVEnsuJPTJy
	MAvXXs94aXbuP7nxeing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8HR-0000000Ds3S-3hlK;
	Fri, 25 Sep 2026 15:56:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA8HP-0000000Ds2p-2MOb
	for linux-phy@lists.infradead.org;
	Fri, 25 Sep 2026 15:56:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id ED37144510;
	Fri, 25 Sep 2026 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA2F31F000FF;
	Fri, 25 Sep 2026 15:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790351766;
	bh=wLzqrKrylWwaZoKuIZ7pN6lIcao69TTCOJBgl31p/F0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PTcp6flGCb+DgBIjmq0yvxvHpwIZg3iv+NqbNfQ/nQg3ZM1933WNw6NbovYQ45Xzo
	 frTIr/f92xe/+PureQtvu6LoS9VDS2n2+jc3KOQ/a2vupwtuUzDBbhYBlOsHsYx1ae
	 igl7r2NQ6z4g1iS06AeR2vZdOrhoCueUl6PuSP+LVRwrfhIjJ6Y5u2upZrnZ0Rg1a9
	 qMPgcgr3qzVPja/eb3exQDS2XpRWgzdFbPadOLcA8Y9fGUXEg31GMAQ/oC6S/7wkBT
	 m67w5PHs9Ft0NUw6ZR/1PnpyKCe10UUcMZajz02nkVXnWKw0wTroaxUxYgh8fp03rh
	 A/ZCIXq3eQnGw==
Date: Fri, 25 Sep 2026 17:55:46 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Abel Vesa <abelvesa@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/3] phy: qcom: Add USB PHY support for Nord SoC
Message-ID: <pakxkriepxobwla7wb3l25xr7b7zcx77n5ydl3wigs2jrxwoou@s7os4rdqtufc>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
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

T24gTW9uLCBTZXAgMjEsIDIwMjYgYXQgMDE6NDc6MDRQTSArMDIwMCwgQmFydG9zeiBHb2xhc3pl
d3NraSB3cm90ZToKPiBUaGUgc2VyaWVzIGRvY3VtZW50cyBOb3JkIGluIHFjb20sc25wcy1ldXNi
Mi1waHkgYW5kCj4gcWNvbSxzYzgyODB4cC1xbXAtdXNiNDNkcC1waHkgYmluZGluZ3MsIHVwZGF0
ZXMgcW1wLWNvbWJvIFBIWSBkcml2ZXIgZm9yCj4gTm9yZCBTb0Mgc3VwcG9ydC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBCYXJ0b3N6IEdvbGFzemV3c2tpIDxiYXJ0b3N6LmdvbGFzemV3c2tpQG9zcy5x
dWFsY29tbS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFu
bmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+Cu
teCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCi0tIApsaW51eC1waHkg
bWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
