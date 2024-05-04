Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72603C4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 11:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DSOiO+YLeU82VCAYr42lvIJTgI9bnXL69QnJMR4UJuY=; b=Rbce1J+eBojkS+
	sWUmBPN2BmcaBJrErXacJKOVWoiYBiPUo8r3xjTB3kCrkHpF4ZYhWyDYb0eAIBNUkVfqXILFkSa4y
	tR/oOYalw/mghNiZl+GMI9w7QhQRukJUih56xWzmR6w8T86gP1UwrRPHcipfnAkU5c6nla99OaTvN
	uU4aou/sahIJHQr613nD9kRBhBfGY800wM83BZ2AbvjTJMrYzseI8S2peqvbEaeb6IeiiiSxSsssF
	UQPL/T/o8ryoFcXR5TlHLkGBU8KrknwD0nAWxuDYVslxqXX5vdii3DpGIVB6z4nTtIxW9MocUYkvY
	KyFAnq0QjutO60JCr/Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3E2s-00000001w7o-04jw;
	Sat, 04 May 2024 11:59:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3E2o-00000001w6M-0qIx;
	Sat, 04 May 2024 11:59:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 36928CE0D55;
	Sat,  4 May 2024 11:59:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7278FC072AA;
	Sat,  4 May 2024 11:59:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714823944;
	bh=tHkDDYIJU8PS+ZwgvuIlZuzFtSgUX3xgqS/6qnXnSp0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IR3uaWJwhf7qbZM6CQd1Id1zrPd6408b1hvcGk/k2JrQCIXAhZiI4R3sOu4icY4m9
	 bYtizQ42wkei0Kte3UNKXV1pfAxdykrxIO6C6EnLpVruCLvVAcRxkMYXwDN4JE+BuI
	 Lw6B86Wn2rt7bz+B2ZrzqLtCa21XLXUU37QPxIE4C9rYwv7iBG8uOoQruiFsOs1CuR
	 OPWfoZHIc63ZSl7rAyQuD8/HZY6uGTaGsYzSOCOxfLQJkzGd6miViOMGlcICGI1dBq
	 +bAIVE8r9qyte6nWLXdufrOw8ZNStRIGoLtXoMzSd/8pZCadggqdGjeoQ57TPfYu4N
	 3F6tXbHAOU11g==
Date: Sat, 4 May 2024 17:28:58 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	Michal Simek <michal.simek@amd.com>,
	linux-arm-kernel@lists.infradead.org,
	Kishon Vijay Abraham I <kishon@kernel.org>
Subject: Re: [PATCH 3/3] phy: zynqmp: Add debugfs support
Message-ID: <ZjYjAjPlM5ClOGa4@matsya>
References: <20240422185803.3575319-1-sean.anderson@linux.dev>
 <20240422185803.3575319-4-sean.anderson@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240422185803.3575319-4-sean.anderson@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_045910_626262_DD2023F2 
X-CRM114-Status: GOOD (  19.14  )
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

On 22-04-24, 14:58, Sean Anderson wrote:
> Add support for printing some basic status information to debugfs. This
> is helpful when debugging phy consumers to make sure they are configuring
> the phy appropriately.
> 
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
> 
>  drivers/phy/xilinx/phy-zynqmp.c | 54 +++++++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/drivers/phy/xilinx/phy-zynqmp.c b/drivers/phy/xilinx/phy-zynqmp.c
> index 08c88dcd7799..e2e86943e9f3 100644
> --- a/drivers/phy/xilinx/phy-zynqmp.c
> +++ b/drivers/phy/xilinx/phy-zynqmp.c
> @@ -13,6 +13,7 @@
>   */
>  
>  #include <linux/clk.h>
> +#include <linux/debugfs.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> @@ -122,6 +123,15 @@
>  #define ICM_PROTOCOL_DP			0x4
>  #define ICM_PROTOCOL_SGMII		0x5
>  
> +static const char *const xpsgtr_icm_str[] = {
> +	[ICM_PROTOCOL_PD] = "powered down",
> +	[ICM_PROTOCOL_PCIE] = "PCIe",
> +	[ICM_PROTOCOL_SATA] = "SATA",
> +	[ICM_PROTOCOL_USB] = "USB",
> +	[ICM_PROTOCOL_DP] = "DisplayPort",
> +	[ICM_PROTOCOL_SGMII] = "SGMII",
> +};
> +
>  /* Test Mode common reset control  parameters */
>  #define TM_CMN_RST			0x10018
>  #define TM_CMN_RST_EN			0x1
> @@ -768,6 +778,48 @@ static struct phy *xpsgtr_xlate(struct device *dev,
>  	return ERR_PTR(-EINVAL);
>  }
>  
> +/*
> + * DebugFS
> + */
> +
> +static int xpsgtr_status_read(struct seq_file *seq, void *data)
> +{
> +	struct xpsgtr_phy *gtr_phy = seq->private;
> +	struct clk *clk;
> +	u32 pll_status;
> +
> +	mutex_lock(&gtr_phy->phy->mutex);
> +	pll_status = xpsgtr_read_phy(gtr_phy, L0_PLL_STATUS_READ_1);
> +	clk = gtr_phy->dev->clk[gtr_phy->refclk];
> +
> +	seq_printf(seq, "Lane:            %u\n", gtr_phy->lane);
> +	seq_printf(seq, "Protocol:        %s\n",
> +		   xpsgtr_icm_str[gtr_phy->protocol]);
> +	seq_printf(seq, "Instance:        %u\n", gtr_phy->instance);
> +	seq_printf(seq, "Reference clock: %u (%pC)\n", gtr_phy->refclk, clk);
> +	seq_printf(seq, "Reference rate:  %lu\n", clk_get_rate(clk));
> +	seq_printf(seq, "PLL locked:      %s\n",
> +		   pll_status & PLL_STATUS_LOCKED ? "yes" : "no");
> +
> +	mutex_unlock(&gtr_phy->phy->mutex);
> +	return 0;
> +}
> +
> +static int xpsgtr_status_open(struct inode *inode, struct file *f)
> +{
> +	struct xpsgtr_phy *gtr_phy = inode->i_private;
> +
> +	return single_open(f, xpsgtr_status_read, gtr_phy);
> +}
> +
> +static const struct file_operations xpsgtr_status_ops = {
> +	.owner = THIS_MODULE,
> +	.open = xpsgtr_status_open,
> +	.release = single_release,
> +	.read = seq_read,
> +	.llseek = seq_lseek
> +};

There are debugfs simple helpers which should help you avoid all this
open coding and just have the read call

> +
>  /*
>   * Power Management
>   */
> @@ -917,6 +969,8 @@ static int xpsgtr_probe(struct platform_device *pdev)
>  
>  		gtr_phy->phy = phy;
>  		phy_set_drvdata(phy, gtr_phy);
> +		debugfs_create_file("status", 0444, phy->debugfs, gtr_phy,
> +				    &xpsgtr_status_ops);

generic status does not make sense, how about device-name-status

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
