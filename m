Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CC52C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 27 Nov 2023 13:28:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qa00vqfquFkSZc5JqoRNFd6+yVLaJcHGjFVy//4zMtk=; b=IMX72g7AsIwpqm
	bhaEBaFBb8fVhlRsCvh6Lc/H/HIE3r2a5Z4Jcm+BWJaZ3Cy5is2xQAqS+prCnua+3no+Ut7xTLU3h
	0WYWISXj+P5MVtUqiRod2zCfOnegVrcAwmLyH9w9l9PJVHMv4l/mdn0TnlO8ygLg2qHYGaiJunUUn
	nEHDBuS/TpIFRgFrGcnLIqRXkq6EnMg/NZtrj2vUno+TYEeFeAPehwgJi+dyPLzKcfVhzrr99B2RY
	AfLf/tQnMvT0JMIJ9PnDGuCZQFF8FLyUMZGpuU2leEdZPOo7nO3tLfkgHogAIXc7XX81QasVJS9qh
	nCXgT5t1Tz+fHHmM98/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bem-002Zpg-00;
	Mon, 27 Nov 2023 13:28:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7bed-002ZkV-1U
	for linux-phy@lists.infradead.org;
	Mon, 27 Nov 2023 13:28:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7beF-0001b0-KC; Mon, 27 Nov 2023 14:27:39 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7beE-00BxH9-MI; Mon, 27 Nov 2023 14:27:38 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1r7beE-000DEU-1v;
	Mon, 27 Nov 2023 14:27:38 +0100
Message-ID: <9b3cdf0da11d59579cbf3ffe959c2a4ebba5672d.camel@pengutronix.de>
Subject: Re: [RFC PATCH 8/8] net: ethernet: mtk_eth_soc: add paths and
 SerDes modes for MT7988
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Daniel Golle <daniel@makrotopia.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Conor Dooley <conor+dt@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 John Crispin <john@phrozen.org>,  Sean Wang <sean.wang@mediatek.com>, Mark
 Lee <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>,  Russell King
 <linux@armlinux.org.uk>, Alexander Couzens <lynxis@fe80.eu>,
 netdev@vger.kernel.org,  devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,  linux-phy@lists.infradead.org
Date: Mon, 27 Nov 2023 14:27:38 +0100
In-Reply-To: <cad139116f916ae4f63d3df9900835af3f6b5cd2.1699565880.git.daniel@makrotopia.org>
References: <cover.1699565880.git.daniel@makrotopia.org>
	 <cad139116f916ae4f63d3df9900835af3f6b5cd2.1699565880.git.daniel@makrotopia.org>
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_052803_508898_1A242F97 
X-CRM114-Status: GOOD (  12.85  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Do, 2023-11-09 at 21:52 +0000, Daniel Golle wrote:
> MT7988 comes with a built-in 2.5G PHY as well as SerDes lanes to
> connect external PHYs or transceivers in USXGMII, 10GBase-R, 5GBase-R,
> 2500Base-X, 1000Base-X and Cisco SGMII interface modes.
> 
> Implement support for configuring for the new paths to SerDes interfaces
> and the internal 2.5G PHY.
> 
> Add USXGMII PCS driver for 10GBase-R, 5GBase-R and USXGMII mode, and
> setup the new PHYA on MT7988 to access the also still existing old
> LynxI PCS for 1000Base-X, 2500Base-X and Cisco SGMII PCS interface
> modes.
> 
> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
[...]
> diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
> index 9ae3b8a71d0e6..ba5998ef7965e 100644
> --- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
> +++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
> @@ -15,6 +15,7 @@
>  #include <linux/u64_stats_sync.h>
>  #include <linux/refcount.h>
>  #include <linux/phylink.h>
> +#include <linux/reset.h>

I can't see what this is required for?

regards
Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
