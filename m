Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEC85CF6481
	for <linux-phy@archiver.kernel.org>; Wed, 19 Nov 2025 21:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGlO/FfLmNnQuHXZvOhHKDU1C+/xMudC4Gi/a48tu5s=; b=UoH6IAwhCpTtg3
	QxJJMYS3Xun6vbCJ4OsD8XVwGMVSMgToNerhlRA4dAzF3/XvCo/UAAsd34rkEXNX87RuAJWhRwz7W
	nnNIyADSDAHECeOoaYTz0ebgIAxXivtdsla/TiexaQGkr7UAdu96pZSJk5sQGZzF07JCrhBrajt4y
	LlsylxVHETegUAWTrI33ChrAvxxm2smXMgbcMlXd1pnaNpGRbnTNMnJyeSVAD6SHMzPitS0occ7VV
	3HLNEosU6wFWiX9RJBvjYyRAfUR+f/0uZHD5G6XBVKXUrCMwYPg7mVBVWA22S3kG7UTELEZ8tl6lN
	mRGh6OSNvWsUp+b9xq8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLqCy-00000005mNJ-1cB7;
	Wed, 19 Nov 2025 21:59:24 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLqCw-00000005mND-3Q5k
	for linux-phy@lists.infradead.org;
	Wed, 19 Nov 2025 21:59:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0300D6000A;
	Wed, 19 Nov 2025 21:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA3A1C4CEF5;
	Wed, 19 Nov 2025 21:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763589561;
	bh=XAi64EVzkxvppyMabUrbkAn2iQFHDQRdmnTwIHbynnA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DD7DpsoX9cFCcolGKDPRmCefxe1juxuq1LRxZLLP4wM7wU+3Hb6n5/7RGFrhvQUrj
	 khnlUvBFigxyxrFYytMUOi2C2c81beHVY7nSRKc1KH4rgcnYug2rVFscquNTjtKUHq
	 U5cUE1Z+ZegKTNNuejavcoZsLeV+JVSsHoY1ziyhacY3RJEELxmAe/jtjcc+r9CeNW
	 LAycBqmHDB2zCJYF4KLLqv/mpZSIi7U4e1MfmGujmyXma/dhP4JKnZt3nlI7CD5x9T
	 yX8Ng85LRb311j6+KyOA0ok7XZNyZfs4ylCorWd5CEkCP76cTwFbzXe+Qi4rrXDV/N
	 A0mbl5QFqYW0Q==
Date: Wed, 19 Nov 2025 16:04:16 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Johan Hovold <johan+linaro@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Konrad Dybcio <quic_kdybcio@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-qmp-combo: Use regulator_bulk_data with
 init_load_uA for regulator setup
Message-ID: <kjbzit7pkhxjlzy53gkkoiufilxajoi2crjiijvtg76zfajeg6@wndnfdc3v4zj>
References: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250922135901.2067-1-faisal.hassan@oss.qualcomm.com>
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

On Mon, Sep 22, 2025 at 07:29:01PM +0530, Faisal Hassan wrote:
> Replace the custom qmp_regulator_data structure with the standard
> regulator_bulk_data and use the init_load_uA field to set regulator
> load during initialization.
> 
> This change simplifies the regulator setup by removing manual
> allocation and load configuration logic, and leverages
> devm_regulator_bulk_get_const() to automatically apply load settings
> before enabling regulators.
> 

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> Signed-off-by: Faisal Hassan <faisal.hassan@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 49 +++--------------------
>  1 file changed, 6 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index f07d097b129f..97262ed63700 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1636,14 +1636,9 @@ static const struct qmp_phy_init_tbl x1e80100_usb43dp_pcs_usb_tbl[] = {
>  };
>  
>  /* list of regulators */
> -struct qmp_regulator_data {
> -	const char *name;
> -	unsigned int enable_load;
> -};
> -
> -static struct qmp_regulator_data qmp_phy_vreg_l[] = {
> -	{ .name = "vdda-phy", .enable_load = 21800 },
> -	{ .name = "vdda-pll", .enable_load = 36000 },
> +static struct regulator_bulk_data qmp_phy_vreg_l[] = {
> +	{ .supply = "vdda-phy", .init_load_uA = 21800, },
> +	{ .supply = "vdda-pll", .init_load_uA = 36000, },
>  };
>  
>  static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
> @@ -1801,7 +1796,7 @@ struct qmp_phy_cfg {
>  	const char * const *reset_list;
>  	int num_resets;
>  	/* regulators to be requested */
> -	const struct qmp_regulator_data *vreg_list;
> +	const struct regulator_bulk_data *vreg_list;
>  	int num_vregs;
>  
>  	/* array of registers with different offsets */
> @@ -3403,39 +3398,6 @@ static const struct dev_pm_ops qmp_combo_pm_ops = {
>  			   qmp_combo_runtime_resume, NULL)
>  };
>  
> -static int qmp_combo_vreg_init(struct qmp_combo *qmp)
> -{
> -	const struct qmp_phy_cfg *cfg = qmp->cfg;
> -	struct device *dev = qmp->dev;
> -	int num = cfg->num_vregs;
> -	int ret, i;
> -
> -	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
> -	if (!qmp->vregs)
> -		return -ENOMEM;
> -
> -	for (i = 0; i < num; i++)
> -		qmp->vregs[i].supply = cfg->vreg_list[i].name;
> -
> -	ret = devm_regulator_bulk_get(dev, num, qmp->vregs);
> -	if (ret) {
> -		dev_err(dev, "failed at devm_regulator_bulk_get\n");
> -		return ret;
> -	}
> -
> -	for (i = 0; i < num; i++) {
> -		ret = regulator_set_load(qmp->vregs[i].consumer,
> -					cfg->vreg_list[i].enable_load);
> -		if (ret) {
> -			dev_err(dev, "failed to set load at %s\n",
> -				qmp->vregs[i].supply);
> -			return ret;
> -		}
> -	}
> -
> -	return 0;
> -}
> -
>  static int qmp_combo_reset_init(struct qmp_combo *qmp)
>  {
>  	const struct qmp_phy_cfg *cfg = qmp->cfg;
> @@ -4003,7 +3965,8 @@ static int qmp_combo_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	ret = qmp_combo_vreg_init(qmp);
> +	ret = devm_regulator_bulk_get_const(dev, qmp->cfg->num_vregs,
> +					qmp->cfg->vreg_list, &qmp->vregs);
>  	if (ret)
>  		return ret;
>  
> -- 
> 2.17.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
