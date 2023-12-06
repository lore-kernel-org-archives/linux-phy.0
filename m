Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E80C1C4167B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Dec 2023 19:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hugDtjHW3oXVYrPuZc4gc2CAeuIkAILwVy2OPMk4ThE=; b=my6KyQMe18q7ug
	bigeg99uk4pf9vw+aWE6ib34CwGOdAxkWPn416OoSTSNTYzUMcV1g0xKAsuBi7VsdiKkfWS5x2JkT
	gKwq1bw25WPPDZaMm1E4Z28MzoFKmpoYAusmAJ4yMyQ2iok8a51qOPPdWqkQR4aOfJTw1ZI/W8QCS
	qKj2F2hbZOwWHadbRuVnY5Ez05ltzZLjnVa8UEKC5FK13F4fNk10fYpCMDADWWXt8/fahBS94zCUg
	R4Yo3UKgepRWlSssb+RDvFhpKqsOUFG5NF3sa8UZNcdY1YX4fQZNEhkbzJpn7lvmdVrx7dvGHwgfw
	sMQLx+iEVBmelM/ntJ4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAxx3-00B9wv-23;
	Wed, 06 Dec 2023 19:52:57 +0000
Received: from pidgin.makrotopia.org ([185.142.180.65])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAxx0-00B9u4-0i;
	Wed, 06 Dec 2023 19:52:55 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.96.2)
	(envelope-from <daniel@makrotopia.org>)
	id 1rAxwa-0007c0-2h;
	Wed, 06 Dec 2023 19:52:30 +0000
Date: Wed, 6 Dec 2023 19:52:23 +0000
From: Daniel Golle <daniel@makrotopia.org>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: "David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Felix Fietkau <nbd@nbd.name>, John Crispin <john@phrozen.org>,
	Sean Wang <sean.wang@mediatek.com>,
	Mark Lee <Mark-MC.Lee@mediatek.com>,
	Lorenzo Bianconi <lorenzo@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Alexander Couzens <lynxis@fe80.eu>,
	Qingfang Deng <dqfext@gmail.com>,
	SkyLake Huang <SkyLake.Huang@mediatek.com>,
	Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v2 8/8] net: ethernet: mtk_eth_soc: add paths and
 SerDes modes for MT7988
Message-ID: <ZXDQ94Xh3gzL3IR9@makrotopia.org>
References: <cover.1701826319.git.daniel@makrotopia.org>
 <3ccc33fa14310ab47e90ff8e6ce46f1562bb838e.1701826319.git.daniel@makrotopia.org>
 <ZXDDtmRklS6o994V@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZXDDtmRklS6o994V@shell.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_115254_259219_5B50F973 
X-CRM114-Status: GOOD (  15.50  )
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

On Wed, Dec 06, 2023 at 06:55:50PM +0000, Russell King (Oracle) wrote:
> On Wed, Dec 06, 2023 at 01:45:17AM +0000, Daniel Golle wrote:
> > @@ -516,6 +538,21 @@ static struct phylink_pcs *mtk_mac_select_pcs(struct phylink_config *config,
> >  	struct mtk_eth *eth = mac->hw;
> >  	unsigned int sid;
> >  
> > +	if (mtk_is_netsys_v3_or_greater(eth)) {
> > +		switch (interface) {
> > +		case PHY_INTERFACE_MODE_1000BASEX:
> > +		case PHY_INTERFACE_MODE_2500BASEX:
> > +		case PHY_INTERFACE_MODE_SGMII:
> > +			return mtk_pcs_lynxi_select_pcs(mac->sgmii_pcs_of_node, interface);
> > +		case PHY_INTERFACE_MODE_5GBASER:
> > +		case PHY_INTERFACE_MODE_10GBASER:
> > +		case PHY_INTERFACE_MODE_USXGMII:
> > +			return mtk_usxgmii_select_pcs(mac->usxgmii_pcs_of_node, interface);
> 
> From what I can see, neither of these two "select_pcs" methods that
> you're calling makes any use of the "interface" you pass to them.
> I'm not sure what they _could_ do with it either, given that what
> you're effectively doing here is getting the phylink_pcs structure from
> the driver, and each one only has a single phylink_pcs.

Yes, you are right, the interface parameter isn't used, I will drop
it from both mtk_*_select_pcs() prototypes.

In the long run we may want something like
struct phylink_pcs *of_pcs_get(struct device_node *np, phy_interface_t interface)
provided by a to-be-built drivers/net/pcs/core.c...

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
