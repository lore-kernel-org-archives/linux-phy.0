Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60D56C3DA49
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jul 2024 11:04:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHsg5JDz01dzIjrK8fNAyaBCco+JaQS3avC6oNd1GTE=; b=0XIouQvJEoY47W
	AeLoW7o4+who1e2uf58kRRUYerLOwLn9P2syNxwTQfk7fQPLGq9KyDwQCQUOUuTTzz5iX+ql3Rd1Q
	ii4QO0IuTdy2NcxTPRw09IzYWnz1v9LdJOpd0+9Djk5M/keY9ScWp0SLeD4oNQxlyCjk+2yfVmdow
	89KP1F+kaXn3x5NlKAc62AqmVuEzDVlcQl25uo41itAhMfa6nVgUb2KBsBwkiTv2GeMQJRRVLyQYC
	sb3aD/kW9hggeRNkFh+3OfoQhTa+dVx14498QBxo4F9OsUQAsp9bbDi+ouw69+vTjEkd2hHP7AVlo
	u0CEnHYBmv6tesfZpd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWwGP-00000000hur-0Rmu;
	Thu, 25 Jul 2024 11:04:01 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWwFz-00000000hqL-3v7l;
	Thu, 25 Jul 2024 11:03:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id EACE0CE1347;
	Thu, 25 Jul 2024 11:03:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 852EEC116B1;
	Thu, 25 Jul 2024 11:03:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721905413;
	bh=RCVBCoKT1vSGM8CC/3jXNwaZrAHFv8eiwDk/Yatez5A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQZq/HxDlxXi454xs8++s7E0GK+Or3EhCt84LW+1FAh+0XxXIyzXpdvMhUaz05Erg
	 eU/3VZZAPv7mYiJp9rp7QkovXV121b8w/u1gYV64LcuUMRDYmW8VnS6PrynN9x6Mwn
	 CupjHgtyI+1rgpnqCsAIFzwIiZ6aiW5kW0PUGS5mESDLkSb/hSsPjZVrIBNF2TZWwU
	 HyOFwiVJ4kEECUa9/nTk8KRTOEIdVXWt+aAXxtGU1tJkRfRKC6PxCI9m/HCwejrsA9
	 eSvpRIT+dFjOtf3eqLcKmurZySnkFiCIJoRkJfkplOSQNsj/uN7s9M5vNCIh7x4Ybt
	 jl9jC+hOjmu+w==
Date: Thu, 25 Jul 2024 16:33:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Josua Mayer <josua@solid-run.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
	Konstantin Porotchkin <kostap@marvell.com>,
	Yazan Shhady <yazan.shhady@solid-run.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH RFC v3 5/6] phy: mvebu-cp110-utmi: add support for
 armada-380 utmi phys
Message-ID: <ZqIxAf2yPL32HLaP@matsya>
References: <20240720-a38x-utmi-phy-v3-0-4c16f9abdbdc@solid-run.com>
 <20240720-a38x-utmi-phy-v3-5-4c16f9abdbdc@solid-run.com>
 <ZqH0KDVjCILr3A6r@matsya>
 <f4835ad8-08c1-49f0-ae85-4f870ad90a8e@solid-run.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f4835ad8-08c1-49f0-ae85-4f870ad90a8e@solid-run.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_040336_380553_5BDBB963 
X-CRM114-Status: GOOD (  19.61  )
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

On 25-07-24, 08:38, Josua Mayer wrote:
> Am 25.07.24 um 08:43 schrieb Vinod Koul:
> > On 20-07-24, 16:19, Josua Mayer wrote:

> >> +struct mvebu_cp110_utmi_port;
> > why forward declare and not move the structs instead?
> Seemed like the smaller change / more readable as diff.
> I can move the struct instead!

Yes and that can be preparatory as well :-)
 
> >
> >>  	reg &= ~(PLL_REFDIV_MASK | PLL_FBDIV_MASK | PLL_SEL_LPFR_MASK);
> >>  	reg |= (PLL_REFDIV_VAL << PLL_REFDIV_OFFSET) |
> >>  	       (PLL_FBDIV_VAL << PLL_FBDIV_OFFSET);
> >> -	writel(reg, PORT_REGS(port) + UTMI_PLL_CTRL_REG);
> >> +	writel(reg, port->regs + UTMI_PLL_CTRL_REG);
> >>  
> >>  	/* Impedance Calibration Threshold Setting */
> >> -	reg = readl(PORT_REGS(port) + UTMI_CAL_CTRL_REG);
> >> +	reg = readl(port->regs + UTMI_CAL_CTRL_REG);
> >>  	reg &= ~IMPCAL_VTH_MASK;
> >>  	reg |= IMPCAL_VTH_VAL << IMPCAL_VTH_OFFSET;
> >> -	writel(reg, PORT_REGS(port) + UTMI_CAL_CTRL_REG);
> >> +	writel(reg, port->regs + UTMI_CAL_CTRL_REG);
> >>  
> >>  	/* Set LS TX driver strength coarse control */
> >> -	reg = readl(PORT_REGS(port) + UTMI_TX_CH_CTRL_REG);
> >> +	reg = readl(port->regs + UTMI_TX_CH_CTRL_REG);
> >>  	reg &= ~TX_AMP_MASK;
> >>  	reg |= TX_AMP_VAL << TX_AMP_OFFSET;
> >> -	writel(reg, PORT_REGS(port) + UTMI_TX_CH_CTRL_REG);
> >> +	writel(reg, port->regs + UTMI_TX_CH_CTRL_REG);
> >>  
> >>  	/* Disable SQ and enable analog squelch detect */
> >> -	reg = readl(PORT_REGS(port) + UTMI_RX_CH_CTRL0_REG);
> >> +	reg = readl(port->regs + UTMI_RX_CH_CTRL0_REG);
> >>  	reg &= ~SQ_DET_EN;
> >>  	reg |= SQ_ANA_DTC_SEL;
> >> -	writel(reg, PORT_REGS(port) + UTMI_RX_CH_CTRL0_REG);
> >> +	writel(reg, port->regs + UTMI_RX_CH_CTRL0_REG);
> >>  
> >>  	/*
> >>  	 * Set External squelch calibration number and
> >>  	 * enable the External squelch calibration
> >>  	 */
> >> -	reg = readl(PORT_REGS(port) + UTMI_RX_CH_CTRL1_REG);
> >> +	reg = readl(port->regs + UTMI_RX_CH_CTRL1_REG);
> >>  	reg &= ~SQ_AMP_CAL_MASK;
> >>  	reg |= (SQ_AMP_CAL_VAL << SQ_AMP_CAL_OFFSET) | SQ_AMP_CAL_EN;
> >> -	writel(reg, PORT_REGS(port) + UTMI_RX_CH_CTRL1_REG);
> >> +	writel(reg, port->regs + UTMI_RX_CH_CTRL1_REG);
> >>  
> >>  	/*
> >>  	 * Set Control VDAT Reference Voltage - 0.325V and
> >>  	 * Control VSRC Reference Voltage - 0.6V
> >>  	 */
> >> -	reg = readl(PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
> >> +	reg = readl(port->regs + UTMI_CHGDTC_CTRL_REG);
> >>  	reg &= ~(VDAT_MASK | VSRC_MASK);
> >>  	reg |= (VDAT_VAL << VDAT_OFFSET) | (VSRC_VAL << VSRC_OFFSET);
> >> -	writel(reg, PORT_REGS(port) + UTMI_CHGDTC_CTRL_REG);
> >> +	writel(reg, port->regs + UTMI_CHGDTC_CTRL_REG);
> >>  }
> >>  
> >>  static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
> >> @@ -166,22 +178,38 @@ static int mvebu_cp110_utmi_phy_power_off(struct phy *phy)
> >>  	struct mvebu_cp110_utmi_port *port = phy_get_drvdata(phy);
> >>  	struct mvebu_cp110_utmi *utmi = port->priv;
> >>  	int i;
> >> +	int reg;
> >>  
> >>  	/* Power down UTMI PHY port */
> >> -	regmap_clear_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
> >> -			  UTMI_PHY_CFG_PU_MASK);
> >> +	if (!IS_ERR(port->regs_cfg)) {
> >> +		reg = readl(port->regs_cfg);
> >> +		reg &= ~(UTMI_PHY_CFG_PU_MASK);
> >> +		writel(reg, port->regs_cfg);
> >> +	} else
> >> +		regmap_clear_bits(utmi->syscon, SYSCON_UTMI_CFG_REG(port->id),
> >> +				  UTMI_PHY_CFG_PU_MASK);
> > why are we doing both raw register read/write and regmap ops... that
> > does not sound correct to me
> Indeed.
> 
> The next question would be why for Armada 8K / CP110 syscon was chosen.
> From what I could find the registers accessed by utmi driver
> are not accessed by other drivers.
> 
> I am adding raw register access as an alternative,
> 
> to keep supporting old device-tree specifying syscon handle.
> 
> I considered writing helper functions for the if-not-error-syscon-else-raw,
> but between set_bits, clear_bits, global and per-port regs
> would have ended up with too many.

Aha, please add the comment so we know why it was done like this few
years later

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
