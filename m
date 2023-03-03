Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9849CC7EE2D
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 17:11:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lU15KHmfK+N9dqHMCfehe43nP11X1IYm2bphbPe0Hsg=; b=gR1KRXLY1vc7VV
	+rzQKmc5X/QXPRFFNar37VL2D+H8NgWNa0OQRD3zscjerFLpcFgbCx8wwNMTQ1wiUurY/DGW1gphu
	aye4KHuQ0moapfsM+zaw+pDdo00zT3PsK4tPj486FOcza9fIO9BCTRp/SdptXoCQ2g4iU7DezhyH8
	Ak5W5ubfAF2uzuq8mmb1un16H48L4AHpAYAHLvJInJx5HzoNO0loAUiJe1dMNy1PfD3d2DxLeHGZx
	Xmd671MCECNh62u4Qao9XW8+FcIyhP93cHPmNrkzy5AH6njD7gXpLtmGonG1M9mweCGGp5cOOpy4S
	YUo1n1KioS5KLAHJdF7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8wU-006sM9-Ve; Fri, 03 Mar 2023 17:11:39 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY8wQ-006sJf-UI
	for linux-phy@lists.infradead.org; Fri, 03 Mar 2023 17:11:36 +0000
Received: from booty (unknown [77.244.183.192])
	(Authenticated sender: luca.ceresoli@bootlin.com)
	by mail.gandi.net (Postfix) with ESMTPSA id 87E1B240004;
	Fri,  3 Mar 2023 17:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1677863489;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=7p+2qFxfA3hi2Sxi1T8gdqTb+o1wt0d5Nk82g+yVk70=;
	b=hSxyHkCzEVv32MNMx//slQvkiKBObSEMHbUiRMbQZoaarxFf8sltMYT4imbOz8Dk6g14ID
	nNSxLyUCkO/eI1Qpe3dX5nC8Hd/cZ/GE43AD/K9BItsNQa3nFL7Uf5KQKSfQlgRa6cDrbU
	/OtUCRzHNiJX5CILVH4Q2b0x9NxkGUwQidnjeAla+mRC+PlQ8W7fHQZTvQSNzxDDfjveyz
	c0xxjn8yDUIx89TqJfVeKk0pGRVykMeOQ0iZLx4yQivffWE/Hh2SMDwEXCBkm5MmcTkWEy
	G/ZBQXUtwnnQ8PWcTlilmrToyTE32pSc7dCkTpd7PFaN8+BQLb4wJB49fhcuHA==
Date: Fri, 3 Mar 2023 18:11:25 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 patchwork-lst@pengutronix.de, Inki Dae <inki.dae@samsung.com>, Seung-Woo
 Kim <sw0312.kim@samsung.com>, Kyungmin Park <kyungmin.park@samsung.com>,
 Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v2 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230303181125.4b0a40c0@booty>
In-Reply-To: <20221215201100.2897501-2-l.stach@pengutronix.de>
References: <20221215201100.2897501-1-l.stach@pengutronix.de>
	<20221215201100.2897501-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_091135_156104_42572753 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
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

On Thu, 15 Dec 2022 21:11:00 +0100
Lucas Stach <l.stach@pengutronix.de> wrote:

> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Co-developed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
