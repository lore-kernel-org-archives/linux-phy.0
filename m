Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC22EEEAA77
	for <linux-phy@archiver.kernel.org>; Thu, 14 Sep 2023 21:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71VyFuF3Qmk2x53iO3SB6SCyeNEGOXTTtj+Y8qEBw6g=; b=0E8+px00vYNQc9
	q0QU8m1rnSrW7Jx1xm+nkXcd6qsGDEiQowvyxsmQPkBjbruAh3Wbjdnrx7jqgVrpJsEIuUi1HQayx
	Pye8sn7zS2v6xJ6l/d0rWu233Tz0OT9kMYgj46owOmPtxZfBwOqddeBSMwUBahwyAivE9m1/i2APM
	abbXcsAUHGvp+O0t51jdhAtUibZzHSD/rSEre4D9jAzMN2slgweBtvv0846tKRNYVkJRX4KmGXcXj
	80mqIrd9kMKs5udyeRuQHvELl6YEh8RzqmOrKCMl61nDo1m5xVSFwlnLb8rhlfZu6hgsApNL9TUJa
	KDH/JKF2wO680IqQtLgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgthN-009Ifh-0q;
	Thu, 14 Sep 2023 21:16:29 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgthE-009Ice-08;
	Thu, 14 Sep 2023 21:16:21 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B7B9F20003;
	Thu, 14 Sep 2023 21:16:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1694726175;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J2uByTSc6ef2wK15Maeotg/rSPIQ8wdVeYHF0MmEwJ8=;
	b=ER65GMMSKPyr6+QvCoJU06vqzBVSGGkY0KbyPJ/2OanGNONbd+JcMb3bpegvJY2Qy/7G8w
	w/jWn/U4WB9q3++/Hsb4hUmiULOZTsWGNC1RcPQvxTyl5AtkmD58/SOxhrFrxiZqYPstU6
	mLUqYYJnOdCEFEJhuu3wOg98GftsQzOKHZrQT+hmMTcdveRV2q6DAW9rbm0YWKEZ4bcN0E
	/SCJQFNraGGeZ5Uu+ik+F5a0NVwol3T1eeuH+NK39v8trS2M78Slntk5cU1JFQSCHUw7Xq
	60TEcebW9ilV30MsUIRP6MwhpV9wdxk3Yue7bHRYuwaLzC2ELAyYuMICYUn/Ow==
Date: Thu, 14 Sep 2023 23:16:10 +0200
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio
 Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de, Richard
 Leitner <richard.leitner@skidata.com>, Sandor Yu <Sandor.yu@nxp.com>
Subject: Re: [PATCH v3 2/2] phy: freescale: add Samsung HDMI PHY
Message-ID: <20230914231610.2c339f7e@booty>
In-Reply-To: <20230906184211.1857585-2-l.stach@pengutronix.de>
References: <20230906184211.1857585-1-l.stach@pengutronix.de>
	<20230906184211.1857585-2-l.stach@pengutronix.de>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-GND-Sasl: luca.ceresoli@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_141620_216947_862E072D 
X-CRM114-Status: GOOD (  11.14  )
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

Hi Lucas,

[+Cc: Sandor]

On Wed,  6 Sep 2023 20:42:11 +0200
Lucas Stach <l.stach@pengutronix.de> wrote:

> This adds the driver for the Samsung HDMI PHY found on the
> i.MX8MP SoC. Based on downstream implementation from
> Sandor Yu <Sandor.yu@nxp.com>.
> 
> Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com> (v2)

Also for v3:
[On custom board based on MSC SM2S-IMX8PLUS SMARC module]
Tested-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

I have a few notes however, see below.

> +#define PHY_REG_14		0x38
> +#define  REG14_TOL_MASK		GENMASK(7, 4)
> +#define  REG14_RP_CODE_MASK	GENMASK(2, 1)

According to the latest reference manual currently available on the NXP
website (Rev. 1, 06/2021), this should be GENMASK(3, 1). This is
somewhat nitpicking as the only possible value documented is 2. But
let's continue...

> +#define PHY_REG_33		0x84
> +#define  REG33_MODE_SET_DONE	BIT(7)
> +#define  REG33_FIX_DA		BIT(1)

Here the reference manual is very different:

MODE_SET_DONE BIT(4)
TX_INV2       BIT(3)
TX_INV1       BIT(2)
TX_INV0       BIT(1)
MON_RXD       BIT(0)
bits 7-5 are reserved

...which is strange: in the code you are always writing 0 in bit 4,
which according to the docs means MODE_SET_DONE is always "Assert
forced global reset". Thus I guess your definitions come from the
downstream driver which, as it sadly happens, is more authoritative
than the docs. :-/

Sandor, can you confirm this, or provide any clarifications?

Otherwise LGTM.

Luca

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
