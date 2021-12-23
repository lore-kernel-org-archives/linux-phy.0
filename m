Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD8D6C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 23 Dec 2021 12:41:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+9pwLOIFaInIP7EO2CDATa7C411G7GooTUZnPW28OY=; b=jTmjSswGURREM5
	or9bcAqU4Quf99tQyogY/EqkNY4FzMpZ6PxeMNND65Ge4Uq5CEyG8/lLmHORjNh5wk4OOA1Wvs4Eu
	bq7NJSbi1o9Oc8jux/MJAZ5YpLtAORvMJ/n3eR2dUBZnrC+bRYQqCkNKOLpQ1F7DelL58k2oOAXAy
	BizohaucWHzuen5YnPAFboBWhoeTtyqzx9WhNCf05jDcvGV0HdarrJY8rwyd8EwgHnAi92GIoK6vJ
	Z+xgyxRpFsIG5OiIa9/PvjtvinvUJ4LbVpAb0kwaLwenHzXQ9O8JMrYptOk5wLODv1ovoXi5RoP1q
	ns4hGJSJVbxqCHMUK0og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0NP3-00CiPV-5B; Thu, 23 Dec 2021 12:41:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0NP0-00CiOP-Hc
 for linux-phy@lists.infradead.org; Thu, 23 Dec 2021 12:40:59 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E241C61E87;
 Thu, 23 Dec 2021 12:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03C34C36AE5;
 Thu, 23 Dec 2021 12:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1640263256;
 bh=CFYjAz1FDmGMG2s7ubgZfRMYK8Ma+K8On9nBD7t6Uhk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=E6Iuo34VXlgDASZWuNdGVDAGOVQCO8UVSjm+YgkhqrU65HgPKZu45WQrbvgoisS27
 M6+C6Awc8prziYYGByy0F+fdoV2A8+00mBuP838O/6f4ZQZ0n97OBm5KqRBjjHzRqb
 Vb60eqQmzBn4dJzUEG5xWOpexlmwTlVtRZRdGjVYNN2JROAPD1p4hIRYFGu6M0Pgv7
 tEem+ksSp2gVrFgiXNXE5HTYKYfi18kNm6XAb5S82avrpx3tfTEwiisTRkhtSz2vkf
 NseCFdLU6xir3j12BK9bFCTW237kQA5fmOn7EX7Dyhsah5zFRv4mfbgFmI0wENa3oH
 6Ev5fCAA4WtRg==
Date: Thu, 23 Dec 2021 18:10:52 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marek =?iso-8859-1?Q?Beh=FAn?= <kabel@kernel.org>
Cc: linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 pali@kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH phy v2 2/6] phy: marvell: phy-mvebu-a3700-comphy: Add
 native kernel implementation
Message-ID: <YcRuVCdXztTTrJs7@matsya>
References: <20211208024038.8797-1-kabel@kernel.org>
 <20211208024038.8797-3-kabel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208024038.8797-3-kabel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_044058_687032_376ED7C3 
X-CRM114-Status: GOOD (  14.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 08-12-21, 03:40, Marek Beh=FAn wrote:
> From: Pali Roh=E1r <pali@kernel.org>

> +/* COMPHY registers */
> +#define COMPHY_POWER_PLL_CTRL		0x01
> +#define PU_IVREF_BIT			BIT(15)
> +#define PU_PLL_BIT			BIT(14)
> +#define PU_RX_BIT			BIT(13)
> +#define PU_TX_BIT			BIT(12)
> +#define PU_TX_INTP_BIT			BIT(11)
> +#define PU_DFE_BIT			BIT(10)
> +#define RESET_DTL_RX_BIT		BIT(9)
> +#define PLL_LOCK_BIT			BIT(8)
> +#define REF_FREF_SEL_MASK		GENMASK(4, 0)
> +#define REF_FREF_SEL_SERDES_25MHZ	(0x1 << 0)
> +#define REF_FREF_SEL_SERDES_40MHZ	(0x3 << 0)
> +#define REF_FREF_SEL_SERDES_50MHZ	(0x4 << 0)
> +#define REF_FREF_SEL_PCIE_USB3_25MHZ	(0x2 << 0)
> +#define REF_FREF_SEL_PCIE_USB3_40MHZ	(0x3 << 0)
> +#define COMPHY_MODE_MASK		GENMASK(7, 5)
> +#define COMPHY_MODE_SATA		(0x0 << 5)
> +#define COMPHY_MODE_PCIE		(0x3 << 5)
> +#define COMPHY_MODE_SERDES		(0x4 << 5)
> +#define COMPHY_MODE_USB3		(0x5 << 5)

Any reason why these are not using GENMASK. I guess documentation would
define these as BIT x-y right?

> +/* Changes to 40M1G25 mode data required for running 40M3G125 init mode =
*/
> +static struct gbe_phy_init_data_fix gbe_phy_init_fix[] =3D {
> +	{0x005, 0x07CC}, {0x015, 0x0000}, {0x01B, 0x0000}, {0x01D, 0x0000},
> +	{0x01E, 0x0000}, {0x01F, 0x0000}, {0x020, 0x0000}, {0x021, 0x0030},
> +	{0x026, 0x0888}, {0x04D, 0x0152}, {0x04F, 0xA020}, {0x050, 0x07CC},
> +	{0x053, 0xE9CA}, {0x055, 0xBD97}, {0x071, 0x3015}, {0x076, 0x03AA},
> +	{0x07C, 0x0FDF}, {0x0C2, 0x3030}, {0x0C3, 0x8000}, {0x0E2, 0x5550},
> +	{0x0E3, 0x12A4}, {0x0E4, 0x7D00}, {0x0E6, 0x0C83}, {0x101, 0xFCC0},
> +	{0x104, 0x0C10}

empty space after { and before } makes it look neater and it typically
the convention followed at many places

> +/* PHY selector configures with corresponding modes */
> +static int
> +mvebu_a3700_comphy_set_phy_selector(struct mvebu_a3700_comphy_lane *lane)
> +{
> +	u32 old, new, clr =3D 0, set =3D 0;
> +	unsigned long flags;
> +
> +	switch (lane->mode) {
> +	case PHY_MODE_SATA:
> +		/* SATA must be in Lane2 */
> +		if (lane->id =3D=3D 2)
> +			clr =3D COMPHY_SELECTOR_USB3_PHY_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_ETHERNET:
> +		if (lane->id =3D=3D 0)
> +			clr =3D COMPHY_SELECTOR_USB3_GBE1_SEL_BIT;
> +		else if (lane->id =3D=3D 1)
> +			clr =3D COMPHY_SELECTOR_PCIE_GBE0_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_USB_HOST_SS:
> +		if (lane->id =3D=3D 2)
> +			set =3D COMPHY_SELECTOR_USB3_PHY_SEL_BIT;
> +		else if (lane->id =3D=3D 0)
> +			set =3D COMPHY_SELECTOR_USB3_GBE1_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	case PHY_MODE_PCIE:
> +		/* PCIE must be in Lane1 */
> +		if (lane->id =3D=3D 1)
> +			set =3D COMPHY_SELECTOR_PCIE_GBE0_SEL_BIT;
> +		else
> +			goto error;
> +		break;
> +
> +	default:
> +		goto error;
> +	}
> +
> +	raw_spin_lock_irqsave(&lane->priv->lock, flags);
> +
> +	old =3D readl(lane->priv->comphy_regs + COMPHY_SELECTOR_PHY_REG);
> +	new =3D (old & ~clr) | set;
> +	writel(new, lane->priv->comphy_regs + COMPHY_SELECTOR_PHY_REG);
> +
> +	raw_spin_unlock_irqrestore(&lane->priv->lock, flags);

any reason to use raw_ variant? why not spin_lock_irqsave()

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
