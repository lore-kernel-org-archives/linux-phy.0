Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 064D8C4167B
	for <linux-phy@archiver.kernel.org>; Wed,  6 Dec 2023 18:58:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zay623YfcGvMALbbolsisCjoY/QWWdUxdk49q8ngKE0=; b=4hBMGX/rg0k4xw
	6pqmmDYk2eGLJ03vNPcCuLEcdAmu7p0qARwxP0k0QpumpwVklcVIER0C+lrpGFBWnB77hkHt9y+Tg
	SAdWD+NGv8wXIN+gHBFyVXhnKA3VyvOPH67UF4gfLCBfIRg9B93OAPR07mFSWGFj6gaOdIEaB4VVO
	pYPl7wxRR6WPJ2GgK+HEfUtEujktRqWkYwj6gBMPerY5nQC+F+B+DIYmWtmb9d1eEVn6lfmt998sN
	WEPzBzEFqDzhE1c7EEebj7d0QaavoKlqjZ+0OBZFLS7pPea4/61IhHmUKtYG9wKrLoBCg8DZhFHRJ
	NghRZaPuxXIv+R6rSYrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAx66-00B5YH-2O;
	Wed, 06 Dec 2023 18:58:14 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAx62-00B5Vo-0y;
	Wed, 06 Dec 2023 18:58:12 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 73A46E0007;
	Wed,  6 Dec 2023 18:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701889086;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cUror6Zovej/o+q+rAuuqniKbeAQpbMhZQ2xAZRjM6U=;
	b=lHD4O3jig6uyxTqELk5Gy2q6UKohpFRsE0loQJ43ShLvd88HSx94xoiiTGs/uRgVUnSnez
	8cu6VRs3Bc/VAkroGIkOkx9fbvzCIv3jcTqU8EFnghax0EsXMsAIMLJBqJh5548qct7nuP
	0zGjX48NhCO/JSZdPX941pTH+Drg2G2PQT2NdNiuP6obdDMdnE/SCwyOoX8dugsFWoxEkW
	G6X86iVsJAQKLOh2dTdXXBf990JtCEf1J1ho8iqrHN4jzeQPQ69UtgJbEnUlYoDfub0nnD
	ErrJX/WnplCNXD/9Vmn6Bp9xQImfHXbO9aS7cI0YoUs4nSM9G8ESjvNBgeI5Tg==
Date: Wed, 6 Dec 2023 19:58:02 +0100
From: Maxime Chevallier <maxime.chevallier@bootlin.com>
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Daniel Golle <daniel@makrotopia.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>, Mark
 Lee <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Andrew Lunn <andrew@lunn.ch>,
 Heiner Kallweit <hkallweit1@gmail.com>, Alexander Couzens <lynxis@fe80.eu>,
 Qingfang Deng <dqfext@gmail.com>, SkyLake Huang
 <SkyLake.Huang@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [RFC PATCH v2 5/8] net: pcs: add driver for MediaTek USXGMII
 PCS
Message-ID: <20231206195802.5d2562e7@device.home>
In-Reply-To: <ZXC2MFn7pVX/KNmJ@shell.armlinux.org.uk>
References: <cover.1701826319.git.daniel@makrotopia.org>
	<3cd8af5e44554c2db2d7898494ee813967206bd9.1701826319.git.daniel@makrotopia.org>
	<20231206105838.069ae288@device.home>
	<ZXC2MFn7pVX/KNmJ@shell.armlinux.org.uk>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: maxime.chevallier@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_105810_475118_15B41407 
X-CRM114-Status: GOOD (  14.70  )
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

On Wed, 6 Dec 2023 17:58:08 +0000
"Russell King (Oracle)" <linux@armlinux.org.uk> wrote:

> On Wed, Dec 06, 2023 at 10:58:38AM +0100, Maxime Chevallier wrote:
> > On Wed, 6 Dec 2023 01:44:38 +0000
> > Daniel Golle <daniel@makrotopia.org> wrote:  
> > > +	/* Read USXGMII link status */
> > > +	state->link = FIELD_GET(RG_PCS_RX_LINK_STATUS,
> > > +				mtk_r32(mpcs, RG_PCS_RX_STATUS0));
> > > +
> > > +	/* Continuously repeat re-configuration sequence until link comes up */
> > > +	if (!state->link) {
> > > +		mtk_usxgmii_pcs_config(pcs, mpcs->neg_mode,
> > > +				       state->interface, NULL, false);
> > > +		return;  
> > 
> > .pcs_get_state() isn't called only for link state polling,but also when querying
> > the link state from ethtool, from phylink_ethtool_ksettings_get().
> > 
> > As mtk_usxgmii_pcs_config triggers a pcs reset and reconfiguration, won't this disrupt
> > the link ?   
> 
> Highly likely if there's a race, but note that mtk_usxgmii_pcs_config()
> only gets called if the link is *down*. I guess some IPs need a bit of
> kicking to work properly.
> 
Ah right that's true, it should be OK then.

Thanks,

Maxime

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
