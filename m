Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 822C6C433FE
	for <linux-phy@archiver.kernel.org>; Sat, 12 Nov 2022 07:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VwAq5jWveAmGkU/zimsM8Pi/0Z7hR9N+q96mK1j5o/M=; b=jig+mpqF15gafA
	t38k++zgcHZIWKBqP0N+0xVP08J0UfoSzrNoXvlncPlFVUwKygfG9dapVzpZYhJJT+nfDb4KKIQTJ
	slpKqa7vSszmq4vSDLShq2yuM+wlVoQgTeQt0CY0gQs4kYcZoh+AuIrRurff+URQYvguEdvmt2Zii
	swn4OHq4HzkCmt2vvNnyi8l1l/u/2hQ4VYXYmba7OVUZZpSyKLw5yakknq0sud8Co7us0f1NIwUKX
	AsqNf05hKqg1JrX2bUbbUmkdthES4WV8K2cK7rVZwuGPDbXrx6XpAMdC4s2j9cDj03XITc8CA2WSH
	kp2/pqwROOT2xjszo7kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlAe-0040kO-SS; Sat, 12 Nov 2022 07:43:20 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otlAb-0040gN-I2
	for linux-phy@lists.infradead.org; Sat, 12 Nov 2022 07:43:19 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f37so11439764lfv.8
        for <linux-phy@lists.infradead.org>; Fri, 11 Nov 2022 23:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T2BGO6UZzY8t15PE+aUKQIFt/nxqYsDrLdkaiAFzh4k=;
        b=OB45C05TAGzAvHF6Rj6V2FaTivxmoVXWpLhAfLS3LMMtq16aOqTxJbpWacpCWqfL6e
         o2+FPxCerHdQX07XmuLSp5VbYgid6GMClREN5WeaI13cqYkFs6or2hmT4eOPJUrgR28B
         qMR0Ma2+8OuI4KiIMavraZWNtu4B2+7vl2Ec5J/RovbRgCrwOTuQHNX2yQiadVT2YU1p
         rYpnkDRWOgD+0E6oHZwjlPilAVPFi1KL+iA5LgQ1cSifgHm6wO9y0Q0l30gc/W0qP/D9
         sNuaNMnX/WmVbPU6b+B2LdetrChiOyweK1t381OVCe1iNQAwoHrJOTIJuFRDS+EUBCV+
         hXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T2BGO6UZzY8t15PE+aUKQIFt/nxqYsDrLdkaiAFzh4k=;
        b=jMr0V3rxs1R+KIzQsQF+smnzs1Jo7/wpxjV2V4oemCek9Hx/don46gpjIYEF8RLm9T
         PAz0R/8eb9CDDAL5X5CVzIGfGgaurWCBqVGpQgTIVsrDdo1AWyVy9ZyEn8Vps1Cu2zYa
         WRsMY0rQFlcH9o+YXQXqGNN0DUj1lSPdYSRLWSdpD6lxzxFxQ6lAAhq732R/83sOmEAO
         IwvuJU2Al56N+HemjPkaODPcly+PfUO2I9rvBcJnh4WmsYZXHx+Sc0eiB3yo1VMx1Gff
         xkEfK4eSdrnB0IeWeYsoMOFRtrmNBEOsbvQjrhzVXXmO+x2gPRmv9WCpdMmDSpkk8T6l
         PhLg==
X-Gm-Message-State: ANoB5pk0FqsO6mQ63mZR5H8K6csrgwItOovbbJ6UsWUIgia9IRBMh9Xb
	awoT6GMwPQK2k/NPoumB717PgA==
X-Google-Smtp-Source: AA0mqf7VArVwh5VI27L3ZyF9gEslFMAlOzXwsXGnzQIAn3psFy2F8SIsnqQjdMoOOYRutalVHO5nrA==
X-Received: by 2002:ac2:5df5:0:b0:494:6440:5908 with SMTP id z21-20020ac25df5000000b0049464405908mr1643801lfq.128.1668238995047;
        Fri, 11 Nov 2022 23:43:15 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id bg20-20020a05651c0b9400b00277129b4a10sm793562ljb.86.2022.11.11.23.43.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 23:43:14 -0800 (PST)
Message-ID: <5fd7a56f-db12-deb3-753a-22867526d90b@linaro.org>
Date: Sat, 12 Nov 2022 10:43:14 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 17/22] phy: qcom-qmp-combo: merge USB and DP
 configurations
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221111085643.9478-1-johan+linaro@kernel.org>
 <20221111085643.9478-18-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111085643.9478-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_234317_639414_702C1019 
X-CRM114-Status: GOOD (  19.53  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11/11/2022 11:56, Johan Hovold wrote:
> It does not really make any sense to keep separate configuration
> structures for the USB and DP parts of the same PHY so merge them.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 182 +++++++---------------
>   1 file changed, 57 insertions(+), 125 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index b27d1821116c..249912b75964 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -798,10 +798,7 @@ static const u8 qmp_dp_v5_voltage_swing_hbr_rbr[4][4] = {
>   
>   struct qmp_phy;
>   
> -/* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
>   	int lanes;

int lanes doesn't really make sense here in my opinion. It should be 
usb_lanes and dp_lanes.

>   
>   	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
> @@ -864,11 +861,6 @@ struct qmp_phy_cfg {
>   
>   };
>   
> -struct qmp_phy_combo_cfg {
> -	const struct qmp_phy_cfg *usb_cfg;
> -	const struct qmp_phy_cfg *dp_cfg;
> -};
> -
>   /**
>    * struct qmp_phy - per-lane phy descriptor
>    *
> @@ -1008,8 +1000,7 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>   	"phy",
>   };
>   
> -static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
> +static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
>   	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
> @@ -1020,20 +1011,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
>   	.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
>   	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
> -	.clk_list		= qmp_v3_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
> -	.reset_list		= sc7180_usb3phy_reset_l,
> -	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= qmp_v3_usb3phy_regs_layout,
> -
> -	.has_pwrdn_delay	= true,
> -};
> -
> -static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
> -	.type			= PHY_TYPE_DP,
> -	.lanes			= 2,
>   
>   	.dp_serdes_tbl		= qmp_v3_dp_serdes_tbl,
>   	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
> @@ -1058,15 +1035,19 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
>   	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
>   	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
>   	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
> -};
>   
> -static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
> -	.usb_cfg		= &sc7180_usb3phy_cfg,
> -	.dp_cfg			= &sc7180_dpphy_cfg,
> +	.clk_list		= qmp_v3_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
> +	.reset_list		= sc7180_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(sc7180_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v3_usb3phy_regs_layout,
> +
> +	.has_pwrdn_delay	= true,
>   };
>   
> -static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
> +static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
>   	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
> @@ -1077,25 +1058,11 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
>   	.rx_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_rx_tbl),
>   	.pcs_tbl		= qmp_v3_usb3_pcs_tbl,
>   	.pcs_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_pcs_tbl),
> -	.clk_list		= qmp_v3_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
> -	.reset_list		= msm8996_usb3phy_reset_l,
> -	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= qmp_v3_usb3phy_regs_layout,
> -
> -	.has_pwrdn_delay	= true,
> -};
>   
> -static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
> -	.type			= PHY_TYPE_DP,
> -	.lanes			= 2,
> -
> -	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
> -	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
> -	.tx_tbl			= qmp_v3_dp_tx_tbl,
> -	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
> +	.dp_serdes_tbl		= qmp_v3_dp_serdes_tbl,
> +	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
> +	.dp_tx_tbl		= qmp_v3_dp_tx_tbl,
> +	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
>   
>   	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
>   	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
> @@ -1115,15 +1082,18 @@ static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
>   	.configure_dp_tx	= qcom_qmp_v3_phy_configure_dp_tx,
>   	.configure_dp_phy	= qcom_qmp_v3_phy_configure_dp_phy,
>   	.calibrate_dp_phy	= qcom_qmp_v3_dp_phy_calibrate,
> -};
>   
> -static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
> -	.usb_cfg                = &sdm845_usb3phy_cfg,
> -	.dp_cfg                 = &sdm845_dpphy_cfg,
> -};
> +	.clk_list		= qmp_v3_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v3_usb3phy_regs_layout,
>   
> -static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
> +	.has_pwrdn_delay	= true,
> +};
> +static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
>   	.lanes			= 2,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
> @@ -1136,21 +1106,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   	.pcs_tbl_num		= ARRAY_SIZE(sm8150_usb3_pcs_tbl),
>   	.pcs_usb_tbl		= sm8150_usb3_pcs_usb_tbl,
>   	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8150_usb3_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> -	.reset_list		= msm8996_usb3phy_reset_l,
> -	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= qmp_v4_usb3phy_regs_layout,
> -	.pcs_usb_offset		= 0x300,
> -
> -	.has_pwrdn_delay	= true,
> -};
> -
> -static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
> -	.type			= PHY_TYPE_DP,
> -	.lanes			= 2,
>   
>   	.dp_serdes_tbl		= qmp_v4_dp_serdes_tbl,
>   	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
> @@ -1175,15 +1130,20 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
>   	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
>   	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
> -};
>   
> -static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
> -	.usb_cfg		= &sm8150_usb3phy_cfg,
> -	.dp_cfg			= &sc8180x_dpphy_cfg,
> +	.clk_list		= qmp_v4_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v4_usb3phy_regs_layout,
> +	.pcs_usb_offset		= 0x300,
> +
> +	.has_pwrdn_delay	= true,
>   };
>   
> -static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
> -	.type			= PHY_TYPE_USB3,
> +static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
>   	.lanes			= 2,
>   
>   	.serdes_tbl		= sc8280xp_usb43dp_serdes_tbl,
> @@ -1194,19 +1154,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   	.rx_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_rx_tbl),
>   	.pcs_tbl		= sc8280xp_usb43dp_pcs_tbl,
>   	.pcs_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_pcs_tbl),
> -	.clk_list		= qmp_v4_phy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> -	.reset_list		= msm8996_usb3phy_reset_l,
> -	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= qmp_v4_usb3phy_regs_layout,
> -	.pcs_usb_offset		= 0x300,
> -};
> -
> -static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
> -	.type			= PHY_TYPE_DP,
> -	.lanes			= 2,
>   
>   	.dp_serdes_tbl		= qmp_v5_dp_serdes_tbl,
>   	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v5_dp_serdes_tbl),
> @@ -1231,15 +1178,18 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
>   	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy	= qcom_qmp_v5_phy_configure_dp_phy,
>   	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
> -};
>   
> -static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_cfg = {
> -	.usb_cfg		= &sc8280xp_usb43dp_usb_cfg,
> -	.dp_cfg			= &sc8280xp_usb43dp_dp_cfg,
> +	.clk_list		= qmp_v4_phy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_phy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v4_usb3phy_regs_layout,
> +	.pcs_usb_offset		= 0x300,
>   };
>   
> -static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
> +static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
>   	.lanes			= 2,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
> @@ -1252,21 +1202,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   	.pcs_tbl_num		= ARRAY_SIZE(sm8250_usb3_pcs_tbl),
>   	.pcs_usb_tbl		= sm8250_usb3_pcs_usb_tbl,
>   	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8250_usb3_pcs_usb_tbl),
> -	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
> -	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
> -	.reset_list		= msm8996_usb3phy_reset_l,
> -	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> -	.vreg_list		= qmp_phy_vreg_l,
> -	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> -	.regs			= qmp_v4_usb3phy_regs_layout,
> -	.pcs_usb_offset		= 0x300,
> -
> -	.has_pwrdn_delay	= true,
> -};
> -
> -static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
> -	.type			= PHY_TYPE_DP,
> -	.lanes			= 2,
>   
>   	.dp_serdes_tbl		= qmp_v4_dp_serdes_tbl,
>   	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
> @@ -1291,11 +1226,17 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
>   	.configure_dp_tx	= qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy	= qcom_qmp_v4_phy_configure_dp_phy,
>   	.calibrate_dp_phy	= qcom_qmp_v4_dp_phy_calibrate,
> -};
>   
> -static const struct qmp_phy_combo_cfg sm8250_usb3dpphy_cfg = {
> -	.usb_cfg		= &sm8250_usb3phy_cfg,
> -	.dp_cfg			= &sm8250_dpphy_cfg,
> +	.clk_list		= qmp_v4_sm8250_usbphy_clk_l,
> +	.num_clks		= ARRAY_SIZE(qmp_v4_sm8250_usbphy_clk_l),
> +	.reset_list		= msm8996_usb3phy_reset_l,
> +	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
> +	.vreg_list		= qmp_phy_vreg_l,
> +	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
> +	.regs			= qmp_v4_usb3phy_regs_layout,
> +	.pcs_usb_offset		= 0x300,
> +
> +	.has_pwrdn_delay	= true,
>   };
>   
>   static void qmp_combo_configure_lane(void __iomem *base,
> @@ -2720,10 +2661,7 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	void __iomem *serdes;
>   	void __iomem *usb_serdes;
>   	void __iomem *dp_serdes = NULL;
> -	const struct qmp_phy_combo_cfg *combo_cfg = NULL;
>   	const struct qmp_phy_cfg *cfg = NULL;
> -	const struct qmp_phy_cfg *usb_cfg = NULL;
> -	const struct qmp_phy_cfg *dp_cfg = NULL;
>   	int num, id, expected_phys;
>   	int ret;
>   
> @@ -2734,13 +2672,10 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	qmp->dev = dev;
>   	dev_set_drvdata(dev, qmp);
>   
> -	combo_cfg = of_device_get_match_data(dev);
> -	if (!combo_cfg)
> +	cfg = of_device_get_match_data(dev);
> +	if (!cfg)
>   		return -EINVAL;
>   
> -	usb_cfg = combo_cfg->usb_cfg;
> -	cfg = usb_cfg; /* Setup clks and regulators */
> -
>   	usb_serdes = serdes = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(serdes))
>   		return PTR_ERR(serdes);
> @@ -2753,7 +2688,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (IS_ERR(dp_serdes))
>   		return PTR_ERR(dp_serdes);
>   
> -	dp_cfg = combo_cfg->dp_cfg;
>   	expected_phys = 2;
>   
>   	mutex_init(&qmp->phy_mutex);
> @@ -2792,7 +2726,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	id = 0;
>   	for_each_available_child_of_node(dev->of_node, child) {
>   		if (of_node_name_eq(child, "dp-phy")) {
> -			cfg = dp_cfg;
>   			serdes = dp_serdes;
>   
>   			/* Create per-lane phy */
> @@ -2810,7 +2743,6 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   				goto err_node_put;
>   			}
>   		} else if (of_node_name_eq(child, "usb3-phy")) {
> -			cfg = usb_cfg;
>   			serdes = usb_serdes;
>   
>   			/* Create per-lane phy */

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
