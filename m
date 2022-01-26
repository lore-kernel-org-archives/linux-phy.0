Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EAB5C5AC75
	for <linux-phy@archiver.kernel.org>; Wed, 26 Jan 2022 00:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEwcJs7Mvg2n7TmkJ/hcDu2zSOAH1gRJYL2CC3da708=; b=o8kVnvVWx1rbyn
	gxs+mTWcBLWRCjaaiQu90Tq7+8ZSb6BotFhq0xREkD9p10HGXpmB7uLPa8pYn9kVROKKvN+SB3E9c
	9yzbLFar/CCwG3U7moYG4RAr4JEDBKUea0XAmxSYgQsbsB2tIM5Azz33alap3aCf/c5lzerEqI1Hl
	v+BEm30AZiFSLn5xfAoWcA4O6Cf1pFXwldCEtRysSB6cfCfY02UltMiwOPpOR4Y298NmBKVknW3ur
	0c5zC0CENmORbV5HaLym49KSc/uiZ+hMWwSvlMP88dr3XEaJ1uHztHKzE5cSvilEwGYCiAO3JzVlU
	c09zCyczdYeFI5M3e3SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCW9S-009jWX-Si; Wed, 26 Jan 2022 00:27:06 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCW9Q-009jVp-9j
 for linux-phy@lists.infradead.org; Wed, 26 Jan 2022 00:27:05 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6B78071;
 Wed, 26 Jan 2022 01:26:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1643156817;
 bh=FtaCmjYq2RjI/ulFRPg0YU3jDKSu6E784ktHN7eVdgs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=gOiFHTBtQucnf+yxqgl5qYai7i27Zjsrbb35hjNVvPiknAAozX78d+E7gjUqSfjCV
 ZmORkcccOXPYnl7RGYpmIXqqXyLJeUSVzFo7FyOxtwFE7otJhn2oGTu50jhyYiGTs9
 1sZuE5Iyvl5wfYXPn8RTuUYifSmZe4cCVJZrMJlg=
Date: Wed, 26 Jan 2022 02:26:38 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Robert Hancock <robert.hancock@calian.com>
Cc: linux-phy@lists.infradead.org, anurag.kumar.vulisha@xilinx.com,
 kishon@ti.com, vkoul@kernel.org, michal.simek@xilinx.com
Subject: Re: [PATCH] phy: xilinx: zynqmp: Fix bus width setting for SGMII
Message-ID: <YfCVPtqrIG7pXU+8@pendragon.ideasonboard.com>
References: <20220126001600.1592218-1-robert.hancock@calian.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220126001600.1592218-1-robert.hancock@calian.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_162704_533103_46F9B3D0 
X-CRM114-Status: GOOD (  18.99  )
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

Hi Robert,

Thank you for the patch.

On Tue, Jan 25, 2022 at 06:16:00PM -0600, Robert Hancock wrote:
> TX_PROT_BUS_WIDTH and RX_PROT_BUS_WIDTH are single registers with
> separate bit fields for each lane. The code in xpsgtr_phy_init_sgmii was
> not preserving the existing register value for other lanes, so enabling
> the PHY in SGMII mode on one lane zeroed out the settings for all other
> lanes, causing other PS-GTR peripherals such as USB3 to malfunction.
> 
> Use xpsgtr_clr_set to only manipulate the desired bits in the register.
> 
> Fixes: 4a33bea00314 ("phy: zynqmp: Add PHY driver for the Xilinx ZynqMP Gigabit Transceiver")
> Signed-off-by: Robert Hancock <robert.hancock@calian.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
>  drivers/phy/xilinx/phy-zynqmp.c | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
> index f478d8a17115..9be9535ad7ab 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -134,7 +134,8 @@
>  #define PROT_BUS_WIDTH_10		0x0
>  #define PROT_BUS_WIDTH_20		0x1
>  #define PROT_BUS_WIDTH_40		0x2
> -#define PROT_BUS_WIDTH_SHIFT		2
> +#define PROT_BUS_WIDTH_SHIFT(n)		((n) * 2)
> +#define PROT_BUS_WIDTH_MASK(n)		GENMASK((n) * 2 + 1, (n) * 2)
>  
>  /* Number of GT lanes */
>  #define NUM_LANES			4
> @@ -445,12 +446,12 @@ static void xpsgtr_phy_init_sata(struct xpsgtr_phy *gtr_phy)
>  static void xpsgtr_phy_init_sgmii(struct xpsgtr_phy *gtr_phy)
>  {
>  	struct xpsgtr_dev *gtr_dev = gtr_phy->dev;
> +	u32 mask = PROT_BUS_WIDTH_MASK(gtr_phy->lane);
> +	u32 val = PROT_BUS_WIDTH_10 << PROT_BUS_WIDTH_SHIFT(gtr_phy->lane);
>  
>  	/* Set SGMII protocol TX and RX bus width to 10 bits. */
> -	xpsgtr_write(gtr_dev, TX_PROT_BUS_WIDTH,
> -		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
> -	xpsgtr_write(gtr_dev, RX_PROT_BUS_WIDTH,
> -		     PROT_BUS_WIDTH_10 << (gtr_phy->lane * PROT_BUS_WIDTH_SHIFT));
> +	xpsgtr_clr_set(gtr_dev, TX_PROT_BUS_WIDTH, mask, val);
> +	xpsgtr_clr_set(gtr_dev, RX_PROT_BUS_WIDTH, mask, val);
>  
>  	xpsgtr_bypass_scrambler_8b10b(gtr_phy);
>  }

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
