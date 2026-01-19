Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 512D5D29C2E
	for <linux-phy@archiver.kernel.org>; Mon, 19 Jan 2026 14:27:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JIIHZNKU42IA5n6i5IHrsUi2JLOtzhZBlJ8sC+uyNN0=; b=3f096bAo2fGv3y
	DZx7HfOHnfNqa+SyH5jsJkMERZpoxVBynLIfDxdjT3L5YfzeEk3jJ0b7OkGf7/jJ/eBtSuU/OR3FR
	4UfQ3EKnMj1jh+kRO5zaMCd8XVqwOqb+qk0SU2P8GYuTJA5J5iNTzKcgLOoc8Hx8NVUMp5J5kvIoJ
	eTRrHvjktAxh7QeKFkBlMsj9Mjh1ZsRt15cRZS5nllMT+roSKyBzf6f72L4Pi/lX/4M0gXwoliJAy
	TG/aplb+Z/LWLe0RteuBi5cband4ztVmaU8NSb+C6bissBKTP5KBIs1gbDpvznB7e8Kswxdtt0eYi
	k6a1F3XqrWE8UPXH9H8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqEQ-00000002G4Y-3gF9;
	Mon, 19 Jan 2026 14:27:50 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhqEO-00000002G1F-3UmX;
	Mon, 19 Jan 2026 14:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=oa6ROnre6vr29aI4SNzN9w1inyxLiiLWv/B/wldB++Y=; b=EByHMWRUchgU/DLs8hq0L/dHWD
	5zjuKjJVshFuMrahXJ97rRLOWXT4lg8Khdi+FurcsHRmp9K23Qrr+pb9Ni802OPXiWGImH1MB9899
	5YA6gGkGVdQdoZSZnI+kqH67ez+gy3ye1dCYk1mn5x97JQ1Jga0290Ng8Fb/XNyttVviHN9IadMhS
	PCzgIDyYIoJ2+mVJzUsBlBKiqRex1wSbhd3dBWFvXjw/SkAr1K0VYS8HkVag3ITLGt5mOLMyCjt31
	JAeD9vVdIE81zOjAwOyJJQRjGN8+Nqsh0jMUmARIYdqc18JVL18kVri1ry9Cr/E2+NMB5a27FijmA
	+KotNvRA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45064)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vhqEH-000000005IS-46Rj;
	Mon, 19 Jan 2026 14:27:42 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vhqEE-000000006d8-2VLt;
	Mon, 19 Jan 2026 14:27:38 +0000
Date: Mon, 19 Jan 2026 14:27:38 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>, netdev@vger.kernel.org,
	Paolo Abeni <pabeni@redhat.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH net-next 14/14] net: stmmac: report PCS configuration
 changes
Message-ID: <aW4_WsnDdhpajY93@shell.armlinux.org.uk>
References: <aW4kakF3Ly7VaxN6@shell.armlinux.org.uk>
 <E1vhoT1-00000005H2a-3EnB@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1vhoT1-00000005H2a-3EnB@rmk-PC.armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260119_062748_873317_FED5741E 
X-CRM114-Status: GOOD (  16.92  )
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

On Mon, Jan 19, 2026 at 12:34:47PM +0000, Russell King (Oracle) wrote:
> Report if/when qcom-ethqos changes the PCS configuration. With phylink
> now setting the PCS configuration, there should be no need for drivers
> to change this.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h
> index f9e7a7ed840b..6a1e30b10740 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_pcs.h
> @@ -71,6 +71,7 @@ static inline void dwmac_ctrl_ane(void __iomem *ioaddr, u32 reg, bool ane,
>  				  bool srgmi_ral)
>  {
>  	u32 value = readl(ioaddr + GMAC_AN_CTRL(reg));
> +	u32 old = value, diff;
>  
>  	/* Enable and restart the Auto-Negotiation */
>  	if (ane)
> @@ -84,6 +85,20 @@ static inline void dwmac_ctrl_ane(void __iomem *ioaddr, u32 reg, bool ane,
>  	if (srgmi_ral)
>  		value |= GMAC_AN_CTRL_SGMRAL;
>  
> +	diff = old ^ value;
> +	if (diff & ~GMAC_AN_CTRL_RAN) {
> +		pr_warn("dwmac: PCS configuration changed from phylink by glue, please report: 0x%08x -> 0x%08x\n",
> +			old & ~GMAC_AN_CTRL_RAN, value & ~GMAC_AN_CTRL_RAN);
> +#define REPORT_BIT(x) \
> +		if (diff & GMAC_AN_CTRL_##x) \
> +			pr_warn("dwmac: %8s %u -> %u\n", #x, \
> +				!!(old & GMAC_AN_CTRL_##x), \
> +				!!(value & GMAC_AN_CTRL_##x))
> +		REPORT_BIT(ANE);
> +		REPORT_BIT(SGMRAL);
> +#undef REPORT_BIT

I notice in patchwork, checkpatch doesn't like the "if" starting the in
the macro definition. While that would be true of definitions in kernel
header files which can be used anwhere, for such a simple limited usage
here, wrapping the thing in do { } while(0) is needless baggage, over-
complicates the code, and makes it less readable. So, IMHO, checkpatch
is wrong.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
