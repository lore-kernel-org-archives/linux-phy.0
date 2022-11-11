Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D97F4C4321E
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 20:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC1f6T/yNSTSUQGeSFafFm/m9bBsGPLecVpZNqasT10=; b=jL3w+1C+XJEOPB
	2wr1+Bjs6G1PPxf4IIUKvAP/gyzTUqskaXyzvopcLGKC1dvV59mrwW4hsBesDJ0PPNA14F0JE3iAM
	GptfnbSTAAAl3M3G93Byhpi4egYhaDa1D/KZnUUvv5aGDRqr15mKtJbl/K7Uz6eY+YGqtONnxLcRv
	qvmevLUXMDt9OwvrwLZLqJvEPL76cHCatEzr2MR11LizgqgecJH/NjyVoPtA2eL+LMdjKlrgKcbXw
	NuSOBVub6DAa9l3DSMNItTlBFxBzpOk7aL1kSEyKytBfj+fykuCGeIN0AfpwhXbHs8kpvV33xhCxT
	wR4qsCJZ3tP9F1Oklqkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otad5-000ubj-84; Fri, 11 Nov 2022 20:27:59 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otad2-000uZi-1S
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 20:27:57 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9BDDC620DB;
	Fri, 11 Nov 2022 20:27:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E1F3C433C1;
	Fri, 11 Nov 2022 20:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668198475;
	bh=Y5Dw/OOyI6sYBlM0cZs0xJ8i4Ulq91X+S48irGu3LUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VnrQAizhs2WWMYfybXQ6nVwA7jJG9M0+Z8/Fot/G1aJVbjTSWyGULYrfAqmOGCQa3
	 5ubmZZu/5J0hE7aHgW9uHwSM1jOG7rwLjHtEV7UDVWBlBopNewIgBJfjRgMmcX4hER
	 mjB2yjHKFx31u4XIa+GIzsqGl4pZIztfvJyLMqYscnYDdFxu2yP/GBOmlKlc/9zVit
	 U5Bpdx0bBYk37xnmLbHMsJW4QxGDSLpdmfYjt47I9w2YO1iAKMC+OXu4LqldPwpqnK
	 aTB9696SJWs+x62UnaDWH1+3Vg4Eq9GoTyG2Px+pmvH2iEzJlEm79gIYgZNQGsIh4u
	 X/lo+tXVm+57A==
Date: Fri, 11 Nov 2022 14:27:52 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock
 source
Message-ID: <20221111202752.s2ob3fft5ndh7elj@builder.lan>
References: <20221111093857.11360-1-johan+linaro@kernel.org>
 <20221111093857.11360-3-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221111093857.11360-3-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_122756_195595_35E061B8 
X-CRM114-Status: GOOD (  19.69  )
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

On Fri, Nov 11, 2022 at 10:38:56AM +0100, Johan Hovold wrote:
> The source clock for the reference clock is not used by the PHY directly
> and should not be described by the devicetree (instead this relationship
> should be modelled in the clock driver).
> 
> Drop the driver management of the reference-clock source for SC8280XP.
> 
> Once the other clock drivers have been updated, the corresponding change
> can be done also for the other QMP v4 platforms.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 372f9853c749..9b1f8c9d0eb8 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1523,6 +1523,10 @@ static const char * const qmp_v3_phy_clk_l[] = {
>  };
>  
>  static const char * const qmp_v4_phy_clk_l[] = {
> +	"aux", "ref", "com_aux",
> +};
> +
> +static const char * const qmp_v4_ref_phy_clk_l[] = {
>  	"aux", "ref_clk_src", "ref", "com_aux",
>  };
>  
> @@ -1729,8 +1733,8 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>  	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
>  	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
>  	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.clk_list		= qmp_v4_ref_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
>  	.reset_list		= msm8996_usb3phy_reset_l,
>  	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_vreg_l,
> @@ -1755,8 +1759,8 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
>  	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_tbl),
>  	.pcs_usb_tbl		= sm8150_usb3_uniphy_pcs_usb_tbl,
>  	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_uniphy_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.clk_list		= qmp_v4_ref_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
>  	.reset_list		= msm8996_usb3phy_reset_l,
>  	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_vreg_l,
> @@ -1806,8 +1810,8 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
>  	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_tbl),
>  	.pcs_usb_tbl		= sm8250_usb3_uniphy_pcs_usb_tbl,
>  	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_uniphy_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.clk_list		= qmp_v4_ref_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
>  	.reset_list		= msm8996_usb3phy_reset_l,
>  	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_vreg_l,
> @@ -1907,8 +1911,8 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>  	.pcs_tbl_num		= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_tbl),
>  	.pcs_usb_tbl		= sm8350_usb3_uniphy_pcs_usb_tbl,
>  	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8350_usb3_uniphy_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.clk_list		= qmp_v4_ref_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_ref_phy_clk_l),
>  	.reset_list		= msm8996_usb3phy_reset_l,
>  	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
>  	.vreg_list		= qmp_phy_vreg_l,
> -- 
> 2.37.4
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
