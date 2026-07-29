Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84662C53219
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jul 2026 15:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7EKtBeN6hJsAea6Cgg2Vg1UYfw8YStAYOfGwgbrcTY4=; b=idmXmltXVgxVD1
	6Te5h1ZRVQR5RaVIEoulCqd7xYTHtfVpGTFh1vqbOnombYA9SFv2AiNC7TktmgxXAbLUH3WwDeDZ7
	yopc8o+nM5J4hc6Z9AprYd35/OoAUbC4QdFD+C4E2LnF9tuUL8MH4rb15vfqRIju3iPPLFndaXCb4
	MNPOFi1co1NYqkzArJ8/J5zjNFTNSI2OdUpTOOrLlFEb3g/g3J1tmwu1ps3XVFPYRyhilrm2HSvF7
	lFk3SDjp3M5YoNnrf8faCMigYtTxfnlWbUkFLHb4OKK9GWsi9D19iAsZxHaMIQkd4mnCsHe83jXxw
	D9ojorNdLtrxLXLeSi6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6ZJ-00000008Ssq-0SdJ;
	Wed, 29 Jul 2026 15:51:41 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp6ZI-00000008Ssh-3TsC
	for linux-phy@lists.infradead.org;
	Wed, 29 Jul 2026 15:51:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1F7886001D;
	Wed, 29 Jul 2026 15:51:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A955E1F000E9;
	Wed, 29 Jul 2026 15:51:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1785340299;
	bh=iW6++TsjsjkHVWeS+D4H1852AWqORztvK6zBY0Nmi1s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=iFFYdS/eRmw1AtZ0pXDcFy2jjzYONtoxY17oelWuQmyEDhOkG4NASfnS6kuWFQByV
	 0hsPg9lLQc0xs0MzA/pucX1whYc3gqk/5MAs1OZDjUs4AwQwdqxY6gZLub3tHNogpE
	 dBVzWxxBhxHuLjJlyMYPqwyEV+juntfwYWwER0w8AeP6aGcTjZiZvF7xirxjFrjERN
	 /ER66FEyU0IDYy0kHjB8dUKLNI0Oho6xmsvpfEzSKGWyuuK16RA9j1ghHURgeoudq8
	 nrnV311BCTOAnMnGlvhxZ8lIav1DYT05u94ivhf5SWbbyHyvmSfEPO0qxokrt9XrZa
	 5aVzpOxlRrTlg==
Date: Wed, 29 Jul 2026 08:51:38 -0700
From: Drew Fustini <fustini@kernel.org>
To: Icenowy Zheng <zhengxingda@iscas.ac.cn>,
	sashiko-reviews@lists.linux.dev
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org,
	robh@kernel.org, conor+dt@kernel.org, olteanv@gmail.com,
	vkoul@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/2] phy: add a driver for T-Head TH1520 USB PHY
Message-ID: <amohirbdNtDLtXeH@x1>
References: <20260723084316.3573714-1-zhengxingda@iscas.ac.cn>
 <20260723084316.3573714-3-zhengxingda@iscas.ac.cn>
 <20260723085527.BDB5A1F000E9@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723085527.BDB5A1F000E9@smtp.kernel.org>
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

On Thu, Jul 23, 2026 at 08:55:27AM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> - [Low] Missing explicit inclusion of `<linux/delay.h>` for `udelay()`.
[..]
> > +static int th1520_usb_phy_init(struct phy *phy)
> > +{
> > +	struct th1520_usb_phy *th1520_phy = phy_get_drvdata(phy);
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(th1520_phy->ref_clk);
> > +	if (ret)
> > +		return ret;
> > +
> > +	ret = reset_control_assert(th1520_phy->phy_reset);
> > +	if (ret)
> > +		goto err_disable_clk;
> > +
> > +	/*
> > +	 * Do some initial PHY setup:
> > +	 * - Set COMMONONN to allow the PHY to automatically power down.
> > +	 * - Set REF_SSP_EN to enable feeding reference clock to SuperSpeed
> > +	 *   PHY clock PLL.
> > +	 */
> > +	regmap_set_bits(th1520_phy->regmap, USB_SYS, USB_SYS_COMMONONN);
> > +	regmap_set_bits(th1520_phy->regmap, USB_SSP_EN, USB_SSP_EN_REF_SSP_EN);
> > +
> > +	ret = reset_control_deassert(th1520_phy->phy_reset);
> > +	if (ret)
> > +		goto err_disable_clk;
> > +
> > +	udelay(10);
> 
> [Severity: Low]
> This isn't a bug, but this code uses udelay() without explicitly including
> <linux/delay.h>.
> 
> While it currently compiles due to indirect inclusions, should the header be
> explicitly included to prevent build failures if the include chain is later
> refactored?

I noticed that checkpatch complains about 'udelay()':

CHECK: usleep_range is preferred over udelay; see function description
of usleep_range() and udelay().

However, it seems that fsleep(10) may be a better choice than
usleep_range(). It is used by phy-snps-eusb2.c, phy-rzg3e-usb3.c and
phy-exynos5-usbdrd.c.

From include/linux/delay.h:

static inline void fsleep(unsigned long usecs)
{
        if (usecs <= 10)
                udelay(usecs);
        else if (usecs < USLEEP_RANGE_UPPER_BOUND)
                usleep_range(usecs, usecs + (usecs >> max_slack_shift));
        else
                msleep(DIV_ROUND_UP(usecs, USEC_PER_MSEC));
}

Thanks,
Drew

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
