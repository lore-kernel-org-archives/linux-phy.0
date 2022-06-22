Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64ED4C43334
	for <linux-phy@archiver.kernel.org>; Wed, 22 Jun 2022 08:16:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JdTXoQMprpMfs/WEozXd0DrvCuCKWR/i1weyXWuyZ0=; b=bP6HHO9x9v9FPm
	xsBYrZNUTkifweRVY1hwhbu4ileoiemEcyxX6JRwG32t0ye5TveTrSCf5Sg29w5NwnTmV7FSzrkwD
	f9C/oEyjScmrj2Fe7dMn+jrlRQ+crhqD5nSGb9wC7ahDwViN+ANb91VRoMxJzKOJ0wDEqWnY7Eui+
	KzqBrGJ7r90PYBbuZ1UESCjzzKozP3PmA9SRd0TRBd4y40ZHzcmrnXUhsMhpKn9f+2pBZdDONT1Cb
	zLbklgAs2P1mhrfJM6mv4Ue8WYWEQQ3ZMruPT5Vh/RIzRPswnQ5CXFl+/dHSIaI1n2YdxJ9VCZj8V
	vNfERg+wTEcbyhv5kfGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vXP-009CyA-QW; Wed, 22 Jun 2022 08:16:35 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3vXN-009CxD-Av
	for linux-phy@lists.infradead.org; Wed, 22 Jun 2022 08:16:34 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 77E09DD;
	Wed, 22 Jun 2022 10:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655885791;
	bh=o/8M/AtaamVFopYKkMx1sa2lwn1VegUHtyrRHa/IWOk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L9p11OcIJcNLYNiqzb68LXCP4ckIJUTeYL2Hz0AunxMz/b6+gIdEmgsVqTLwr3SqB
	 74cPcYzcz5qfiVawhNkcdu9KOcWH/LYlYfgBuB4KKXIBz6KdiOfrYyj3ap2zBlsmgT
	 bvruwAu6UchrpT21oEhASXuEtpTef/ywJVZg6Fz4=
Date: Wed, 22 Jun 2022 11:16:15 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Rahul T R <r-ravikumar@ti.com>
Cc: linux-phy@lists.infradead.org, kishon@ti.com, vkoul@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	p.yadav@ti.com, tomi.valkeinen@ideasonboard.com,
	linux-kernel@vger.kernel.org, jpawar@cadence.com,
	sjakhade@cadence.com, mparab@cadence.com,
	devicetree@vger.kernel.org, vigneshr@ti.com, lee.jones@linaro.org
Subject: Re: [PATCH v2 2/3] phy: cdns-dphy: Add band config for dphy tx
Message-ID: <YrLPz8OTaMImArC4@pendragon.ideasonboard.com>
References: <20220622075340.16915-1-r-ravikumar@ti.com>
 <20220622075340.16915-3-r-ravikumar@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220622075340.16915-3-r-ravikumar@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220622_011633_572079_53F6AAD7 
X-CRM114-Status: GOOD (  22.73  )
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

Hi Rahul,

Thank you for the patch.

On Wed, Jun 22, 2022 at 01:23:39PM +0530, Rahul T R wrote:
> Add support for band ctrl config for dphy tx.
> 
> Signed-off-by: Rahul T R <r-ravikumar@ti.com>
> ---
>  drivers/phy/cadence/cdns-dphy.c | 52 ++++++++++++++++++++++++++++++++-
>  1 file changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
> index ba042e39cfaf..ddfa524d8ce7 100644
> --- a/drivers/phy/cadence/cdns-dphy.c
> +++ b/drivers/phy/cadence/cdns-dphy.c
> @@ -4,6 +4,7 @@
>   */
>  
>  #include <linux/bitops.h>
> +#include <linux/bitfield.h>

Nitpicking, bitfield goes before bitops :-)

>  #include <linux/clk.h>
>  #include <linux/io.h>
>  #include <linux/module.h>
> @@ -45,6 +46,10 @@
>  #define DPHY_CMN_OPDIV_FROM_REG		BIT(6)
>  #define DPHY_CMN_OPDIV(x)		((x) << 7)
>  
> +#define DPHY_BAND_CFG			DPHY_PCS(0x0)
> +#define DPHY_BAND_CFG_LEFT_BAND		GENMASK(4, 0)
> +#define DPHY_BAND_CFG_RIGHT_BAND	GENMASK(9, 5)
> +
>  #define DPHY_PSM_CFG			DPHY_PCS(0x4)
>  #define DPHY_PSM_CFG_FROM_REG		BIT(0)
>  #define DPHY_PSM_CLK_DIV(x)		((x) << 1)
> @@ -92,6 +97,22 @@ struct cdns_dphy {
>  	struct phy *phy;
>  };
>  
> +struct cdns_dphy_band {
> +	unsigned int min_rate;
> +	unsigned int max_rate;
> +};
> +
> +/* Order of bands is important since the index is the band number. */
> +static struct cdns_dphy_band tx_bands[] = {

static const

> +	{80, 100}, {100, 120}, {120, 160}, {160, 200}, {200, 240},
> +	{240, 320}, {320, 390}, {390, 450}, {450, 510}, {510, 560},
> +	{560, 640}, {640, 690}, {690, 770}, {770, 870}, {870, 950},
> +	{950, 1000}, {1000, 1200}, {1200, 1400}, {1400, 1600}, {1600, 1800},
> +	{1800, 2000}, {2000, 2200}, {2200, 2500}

The max_rate value of band N is always equal to the min_rate value of
band N+1. Could we store one only ?

> +};
> +
> +static int num_tx_bands = ARRAY_SIZE(tx_bands);

You can use ARRAY_SIZE(tx_bands) directly below and drop this.

> +
>  static int cdns_dsi_get_dphy_pll_cfg(struct cdns_dphy *dphy,
>  				     struct cdns_dphy_cfg *cfg,
>  				     struct phy_configure_opts_mipi_dphy *opts,
> @@ -232,6 +253,26 @@ static int cdns_dphy_config_from_opts(struct phy *phy,
>  	return 0;
>  }
>  
> +static int cdns_dphy_tx_get_band_ctrl(unsigned long hs_clk_rate)
> +{
> +	unsigned int rate;
> +	int i;
> +
> +	rate = hs_clk_rate / 1000000UL;
> +
> +	if (rate < tx_bands[0].min_rate || rate >= tx_bands[num_tx_bands - 1].max_rate)
> +		return -EOPNOTSUPP;
> +
> +	for (i = 0; i < num_tx_bands; i++) {
> +		if (rate >= tx_bands[i].min_rate && rate < tx_bands[i].max_rate)
> +			return i;
> +	}
> +
> +	/* Unreachable. */
> +	WARN(1, "Reached unreachable code.");

I'd drop the WARN() if it's really unreachable.

> +	return -EINVAL;
> +}
> +
>  static int cdns_dphy_validate(struct phy *phy, enum phy_mode mode, int submode,
>  			      union phy_configure_opts *opts)
>  {
> @@ -247,7 +288,8 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  {
>  	struct cdns_dphy *dphy = phy_get_drvdata(phy);
>  	struct cdns_dphy_cfg cfg = { 0 };
> -	int ret;
> +	int ret, band_ctrl;
> +	unsigned int reg;
>  
>  	ret = cdns_dphy_config_from_opts(phy, &opts->mipi_dphy, &cfg);
>  	if (ret)
> @@ -276,6 +318,14 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
>  	 */
>  	cdns_dphy_set_pll_cfg(dphy, &cfg);
>  
> +	band_ctrl = cdns_dphy_tx_get_band_ctrl(opts->mipi_dphy.hs_clk_rate);
> +	if (band_ctrl < 0)
> +		return band_ctrl;
> +
> +	reg = FIELD_PREP(DPHY_BAND_CFG_LEFT_BAND, band_ctrl) |
> +	      FIELD_PREP(DPHY_BAND_CFG_RIGHT_BAND, band_ctrl);
> +	writel(reg, dphy->regs + DPHY_BAND_CFG);
> +
>  	return 0;
>  }
>  

-- 
Regards,

Laurent Pinchart

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
