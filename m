Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09FFACCF9EE
	for <linux-phy@archiver.kernel.org>; Wed, 29 Oct 2025 16:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZdYck9nWEWKzA6JQtGUf+dmksPDnlFVTw5v5D0NOzY=; b=f7mzRY4KwGNBqb
	C95EGWYiYOfPphjqA9hTPgvXONe9fFMCK4bDG3Gxqs9r3W4wf7+8J2fUt14fwnSuABx/gDu8Ziepy
	qgvLnOySIvN6meouEE29+5L1qOK9crZiq7koqZch1vQIZp8JDww+87dE1jwv7pmh2VgE5l9MgnR17
	lp23AyZXif091uYSV8CxL5q4U0XLDMcombnRrURTZBzxJM66m3G1U4AAhLmw2MbFX4laYnQ7yccYH
	O/uzlQzQ5jQjoUwbQdxlgW6OFx1ZddMxRTgo/d91jJIMcB6D/5XD8rXIVfkne2+E3HMvfHmglyteP
	GRNOJvqyPsifcaJ83O6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9Cn-000000023kC-3GPN;
	Wed, 29 Oct 2025 16:39:25 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vE9Cm-000000023ib-0YGf
	for linux-phy@lists.infradead.org;
	Wed, 29 Oct 2025 16:39:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E5BAB459B5;
	Wed, 29 Oct 2025 16:39:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81A65C4CEF8;
	Wed, 29 Oct 2025 16:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761755962;
	bh=k/THoufCsFgPBRIhXt6rhIAnwVeM2wUTW1HoSJUyun8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oeRm2lPcNLRrYndKKmwVVpubn9BNybVM8rAZJlFfLxVuwlBgFuVKAeWfzJIbw+/6v
	 B//Fzw8Sj3kzbDJlCI0LPNUylzDYSat5ksVPpjcZ+9lkSlBxnSxi0KPWfm1y82OROd
	 UugFPKSPeO3pCdkSXN7ZDGoZ3VSd7Jld1gFmI6tnWn6j01DJ1x7SUtN3W3bA1fUGsO
	 YVfOu6YbWzIV2RZN2+d71K1S9M4pM7ajQkfF1yI3jHLg0IGCgTuPOXEPmVK/JGbFs4
	 raG/iKgxHm/BHJZCUjvKOdqX7MzRFAkV/rMhD00hQB3frIls5NlDvOdd48AiRDXlNq
	 2wEE2IkfcxG/A==
Date: Wed, 29 Oct 2025 11:42:26 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Sibi Sankar <sibi.sankar@oss.qualcomm.com>, Rajendra Nayak <quic_rjendra@quicinc.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, stable@vger.kernel.org, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v4 2/3] phy: qcom: edp: Make the number of clocks flexible
Message-ID: <wjvec7fiqjzlyo6y5kpzsd5u7rz47anaytu25w2j4yqgtdntx6@zuapdsayoio2>
References: <20251029-phy-qcom-edp-add-missing-refclk-v4-0-adb7f5c54fe4@linaro.org>
 <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251029-phy-qcom-edp-add-missing-refclk-v4-2-adb7f5c54fe4@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_093924_220821_08CD8B2D 
X-CRM114-Status: GOOD (  23.78  )
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

On Wed, Oct 29, 2025 at 03:31:31PM +0200, Abel Vesa wrote:
> On X Elite, the DP PHY needs another clock called ref, while all other
> platforms do not.
> 
> The current X Elite devices supported upstream work fine without this
> clock, because the boot firmware leaves this clock enabled. But we should
> not rely on that. Also, even though this change breaks the ABI, it is
> needed in order to make the driver disables this clock along with the
> other ones, for a proper bring-down of the entire PHY.
> 
> So in order to handle these clocks on different platforms, make the driver
> get all the clocks regardless of how many there are provided.
> 
> Cc: stable@vger.kernel.org # v6.10
> Fixes: db83c107dc29 ("phy: qcom: edp: Add v6 specific ops and X1E80100 platform support")
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index f1b51018683d51df064f60440864c6031638670c..ca9bb9d70e29e1a132bd499fb9f74b5837acf45b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -103,7 +103,9 @@ struct qcom_edp {
>  
>  	struct phy_configure_opts_dp dp_opts;
>  
> -	struct clk_bulk_data clks[2];
> +	struct clk_bulk_data *clks;
> +	int num_clks;
> +
>  	struct regulator_bulk_data supplies[2];
>  
>  	bool is_edp;
> @@ -218,7 +220,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	ret = clk_bulk_prepare_enable(ARRAY_SIZE(edp->clks), edp->clks);
> +	ret = clk_bulk_prepare_enable(edp->num_clks, edp->clks);
>  	if (ret)
>  		goto out_disable_supplies;
>  
> @@ -885,7 +887,7 @@ static int qcom_edp_phy_exit(struct phy *phy)
>  {
>  	struct qcom_edp *edp = phy_get_drvdata(phy);
>  
> -	clk_bulk_disable_unprepare(ARRAY_SIZE(edp->clks), edp->clks);
> +	clk_bulk_disable_unprepare(edp->num_clks, edp->clks);
>  	regulator_bulk_disable(ARRAY_SIZE(edp->supplies), edp->supplies);
>  
>  	return 0;
> @@ -1092,11 +1094,9 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  	if (IS_ERR(edp->pll))
>  		return PTR_ERR(edp->pll);
>  
> -	edp->clks[0].id = "aux";
> -	edp->clks[1].id = "cfg_ahb";
> -	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(edp->clks), edp->clks);
> -	if (ret)
> -		return ret;
> +	edp->num_clks = devm_clk_bulk_get_all(dev, &edp->clks);
> +	if (edp->num_clks < 0)
> +		return dev_err_probe(dev, edp->num_clks, "failed to parse clocks\n");

Nit...We're not really failing to "parse" clocks...

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

>  
>  	edp->supplies[0].supply = "vdda-phy";
>  	edp->supplies[1].supply = "vdda-pll";
> 
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
