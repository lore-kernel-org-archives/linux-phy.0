Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8495AD61003
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 11:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3bThGkwFPbvvuwajRx43atJzPhw6Ref0uhLNfQj5fA=; b=VbnU4IX4Utjgnj
	gvhAl+atJLkLbnlwOxRdSJcIsBR+qdOZUx34tIs9VCM+uXdpwKBR1JJNtcdQNs+JlTzGDP3oVhKbZ
	pDMN6CIKFmlo6IQdNyFvRgXfWrL9No7zsCoI7rFUVj8giuZXxcrT06El2m19qaR0okBCKXxYzDsiO
	89w33uQhfFMPOk5uh2H94ZHzPr2hpJDZPbiSsH7p0G4nUeGgCa0L91NgSh1LpfR7ITSEHaNG91EZd
	8MHdin43psOOTx+w+P+9MSYZxL5wlWyU8YLQ82Er+ygOgiEcQbPt5WNU4SbeEgOw9Tf+jjS3VH0ZS
	RhsCjEuqt+JTxFXP629A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQ29-0000000023w-08Py;
	Thu, 29 Jan 2026 11:17:57 +0000
Received: from pandora.armlinux.org.uk ([2001:4d48:ad52:32c8:5054:ff:fe00:142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQ26-00000000230-2RA3;
	Thu, 29 Jan 2026 11:17:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=xRbGhk3MppX3QDh9iQp/r9WXjYsRk1w3/DNqD5xKN6Y=; b=wQX7OV28trnhd/CmJjo5OstW0W
	VacPFX0Hr4C4H6AbOwz1lgX2ZqOb0qMQVpvLLDABSpoFhqUNZuAjs3dGP0OY4Sw2nkRfZrHdsf6tz
	Byj2tuwWQ3clIjdIAOi1F0fYLpc6Cw1NZ3ejgQJewEBjjmLuuepHETy5Kh5NH+qJ15rkPEx1Tu1/2
	xE/vVczNvP+OKQnO5K2qJfwsR4dGPLdV/a6pNs6k0WN5nGF0Ehp69lQlS6mfqr4lMDzUMlm8ED1KW
	zE3yJeokfswi0AyQTr0+bfHTh7xiIYTNjiOalKMazWFmGNAEeOVsCN8+fRdBFwN3kFAuOnKkgoCRo
	FRD67AYw==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:57138)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.98.2)
	(envelope-from <linux@armlinux.org.uk>)
	id 1vlQ1s-000000008S8-0a6Z;
	Thu, 29 Jan 2026 11:17:40 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.98.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1vlQ1p-000000007v4-3EdQ;
	Thu, 29 Jan 2026 11:17:37 +0000
Date: Thu, 29 Jan 2026 11:17:37 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Vincent Guittot <vincent.guittot@linaro.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, ciprianmarian.costea@oss.nxp.com, s32@nxp.com,
	p.zabel@pengutronix.de, ghennadi.procopciuc@nxp.com,
	bogdan-gabriel.roman@nxp.com, Ionut.Vicovan@nxp.com,
	alexandru-catalin.ionita@nxp.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org,
	Frank.li@nxp.com
Subject: Re: [PATCH 2/4] phy: s32g: Add serdes subsystem phy
Message-ID: <aXtB0QcVOkE_hhny@shell.armlinux.org.uk>
References: <20260126092159.815968-1-vincent.guittot@linaro.org>
 <20260126092159.815968-3-vincent.guittot@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260126092159.815968-3-vincent.guittot@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_031754_642110_65E202B6 
X-CRM114-Status: GOOD (  14.36  )
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

On Mon, Jan 26, 2026 at 10:21:57AM +0100, Vincent Guittot wrote:
> +/*
> + * Until now, there is no generic way to describe and set PCIe clock mode.
> + * PCIe controller uses the default CRNS = 0 mode.
> + */
> +enum pcie_phy_mode {
> +	CRNS = 0, /* Common Reference Clock, No Spread Spectrum */
> +	CRSS = 1, /* Common Reference Clock, Spread Spectrum */
> +	SRNS = 2, /* Separate Reference Clock, No Spread Spectrum */
> +	SRIS = 3  /* Separate Reference Clock, Spread Spectrum */
> +};

So this is a PCIe thing. If it's part of the driver's API, then it
should be common and not driver-private.

> +static inline bool is_pcie_phy_mode_valid(int mode)
> +{
> +	switch (mode) {
> +	case CRNS:
> +	case CRSS:
> +	case SRNS:
> +	case SRIS:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}

This checks that the submode is one of the PCIe private modes that this
driver wants to see.

> +
> +static int s32g_serdes_phy_set_mode_ext(struct phy *p,
> +					enum phy_mode mode, int submode)
> +{
> +	struct s32g_serdes *serdes = phy_get_drvdata(p);
> +
> +	if (mode == PHY_MODE_PCIE)
> +		return -EINVAL;
> +
> +	if (!is_pcie_phy_mode_valid(submode))
> +		return -EINVAL;

This checks for the PCIe submode, but notice the test immediately
above. PCIE mode is being rejected. So, this driver supports
everything else but PCIe.

That doesn't seem right.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
