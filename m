Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E1C5C54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3bpndM9sXHvWcoJwF5IQtPM86rC3aeZtkZRBuV7/PsQ=; b=s40fRVkOOMrfvM
	pnU1h0IjqTMdu93mjmUZ/fx0o2kxi0hkAt4kQBBswD0PfCFWiJCoCSYJ71Rg4ZJNDHx0LNPfSZ+5Y
	luDrTsqWMG5XLQadWWptTJt5juw90ruy4WMMNNKBnPXhlOhoDT9dSszKrejVfxqXbn9CWhiiCY/31
	7tm7IsnnXnhSmKxj00YlIyvGqk4wnCXI55/Ow/mxXccp8KPeDPTSt2F2Slv88NdSEbrMrPo7w+3H4
	4kVJFFz/qxqFDNXxVhs4bvPwDO/iAPXrKJ5+qIs+3cRbaijjs0Bt31IaLfCUV8wMLTum2hDBxun4H
	01A97BAT3R/vlQdxuhaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfm-004G6u-KL; Tue, 20 Sep 2022 13:52:26 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfW-004G16-EZ
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:52:14 +0000
Received: by mail-wr1-x42b.google.com with SMTP id n10so4340189wrw.12
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=Q2S5kn0jzeFVRABkK/YHbcUCIRF0pe18iCbYjVDYwPA=;
        b=C1fhbRcPSWMroocXNRq+4Ll+26xjdV0bPwQ2IHMBm16cyFN/Qqgdl7fpZUq5xx9GB8
         27yGD1BLyhNjw3Rz6byMH66DjHqdtR8SmkE1g4qqcxxal11uKK97ZxWfuI6V4hX2UAv8
         GD+BjliZ+EFAzIOt2HMvUFF44JAC0hQUHkdtLqcTCamyiRyCYKcLwvhEEdW+lv4SD6mA
         eWYqIUH9l6h4+tmXJuGjeOmiud+4KXLI8ygFKXPsRt0iVCtWCFr4ISGQLJpPndr2TXnw
         DZSUFBKtNdkAYmiB7jKHce1jw49L1XSffHNv8Xy80rXHI9t/KEYauB7+P4WRDkRTNxqG
         mwgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=Q2S5kn0jzeFVRABkK/YHbcUCIRF0pe18iCbYjVDYwPA=;
        b=iSkBryEC5hqZPIw+xt9jtGG45moqqzlIlP6mW1huVxwFiPNdKofSDgeXQU4hYkw+Im
         ACzZkEnCaFal/Ft4A/P2Or/M7PUNDq3HJUljedl554xeHrU2C5mllEeeh9fgOaUg9Vxe
         SmOeVbgE9np9GI9sC+HNnWEJ5lA3JToo3+x7GfVG1QR8mZfAEIfzZ/CUtAkX8xPlSvDa
         sfbGUtkzJO7TJ2ktZMrcoTk4IIGBmD/yd8uZ4iblailzId6LsnhllsOUFMsdRw9axeIi
         67T1wGEnGCzhAJ6MhyEL++8IZSdnuh9Y5ehb9U9Z/KEZjWR1thzh37phHqAKjrWtLBaH
         1YtQ==
X-Gm-Message-State: ACrzQf3EGHjSWMNxCrSjnlw6UksOH3Ml4bQ77ZaZJa0MRGPFkcITXlqH
	H+NwOhcgAk0pETWeueltQwhdZQ==
X-Google-Smtp-Source: AMsMyM4wMVJWiISTAegI16gdFzYkCFp6cWAck5swNPWFa3ym7bKty//RZmZETweLe2XBLFzNLG0ivQ==
X-Received: by 2002:adf:e5cf:0:b0:22a:c37c:5c6c with SMTP id a15-20020adfe5cf000000b0022ac37c5c6cmr14730579wrn.410.1663681926713;
        Tue, 20 Sep 2022 06:52:06 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id x12-20020a05600c2d0c00b003b4de550e34sm33885wmf.40.2022.09.20.06.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:52:06 -0700 (PDT)
Message-ID: <aaed11ee-9687-8fb3-fb20-e835a470aa15@linaro.org>
Date: Tue, 20 Sep 2022 15:52:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 14/17] phy: qcom-qmp-combo: consolidate lane config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-15-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065210_533268_88C929C2 
X-CRM114-Status: GOOD (  21.52  )
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

On 20/09/2022 09:38, Johan Hovold wrote:
> For legacy reasons, there are two configuration parameters that appear
> to describe the number of lanes a PHY has, even if "nlanes" was actually
> used for a different purpose.
> 
> Replace them both with a new field simply named "lanes".
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 38 ++++++++---------------
>   1 file changed, 13 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 08e96e383a29..417e0fcf1a9f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -816,8 +816,7 @@ struct qmp_phy;
>   struct qmp_phy_cfg {
>   	/* phy-type - PCIE/UFS/USB */
>   	unsigned int type;
> -	/* number of lanes provided by phy */
> -	int nlanes;
> +	int lanes;
>   
>   	/* Init sequence for PHY blocks - serdes, tx, rx, pcs */
>   	const struct qmp_phy_init_tbl *serdes_tbl;
> @@ -879,8 +878,6 @@ struct qmp_phy_cfg {
>   
>   	/* true, if PHY has a separate DP_COM control block */
>   	bool has_phy_dp_com_ctrl;
> -	/* true, if PHY has secondary tx/rx lanes to be configured */
> -	bool is_dual_lane_phy;
>   
>   	/* Offset from PCS to PCS_USB region */
>   	unsigned int pcs_usb_offset;
> @@ -1029,7 +1026,7 @@ static const char * const sc7180_usb3phy_reset_l[] = {
>   
>   static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   	.type			= PHY_TYPE_USB3,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
> @@ -1056,12 +1053,11 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
>   	.type			= PHY_TYPE_DP,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
> @@ -1091,7 +1087,6 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
>   	.regs			= qmp_v3_usb3phy_regs_layout,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   
>   	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
> @@ -1106,7 +1101,7 @@ static const struct qmp_phy_combo_cfg sc7180_usb3dpphy_cfg = {
>   
>   static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
>   	.type			= PHY_TYPE_USB3,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
> @@ -1133,7 +1128,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   };
>   
>   static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
> @@ -1143,7 +1137,7 @@ static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
>   
>   static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   	.type			= PHY_TYPE_USB3,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
> @@ -1174,12 +1168,11 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
>   	.type			= PHY_TYPE_DP,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
> @@ -1209,7 +1202,6 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
>   	.regs			= qmp_v3_usb3phy_regs_layout,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
> @@ -1224,7 +1216,7 @@ static const struct qmp_phy_combo_cfg sc8180x_usb3dpphy_cfg = {
>   
>   static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   	.type			= PHY_TYPE_USB3,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= sc8280xp_usb43dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sc8280xp_usb43dp_serdes_tbl),
> @@ -1252,12 +1244,11 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
>   	.type			= PHY_TYPE_DP,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v5_dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v5_dp_serdes_tbl),
> @@ -1287,7 +1278,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
>   	.regs			= qmp_v4_usb3phy_regs_layout,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
> @@ -1302,7 +1292,7 @@ static const struct qmp_phy_combo_cfg sc8280xp_usb43dpphy_combo_cfg = {
>   
>   static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   	.type			= PHY_TYPE_USB3,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
> @@ -1332,12 +1322,11 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   };
>   
>   static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
>   	.type			= PHY_TYPE_DP,
> -	.nlanes			= 1,
> +	.lanes			= 2,
>   
>   	.serdes_tbl		= qmp_v4_dp_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v4_dp_serdes_tbl),
> @@ -1367,7 +1356,6 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
>   	.regs			= qmp_v4_usb3phy_regs_layout,
>   
>   	.has_phy_dp_com_ctrl	= true,
> -	.is_dual_lane_phy	= true,
>   
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
> @@ -2117,7 +2105,7 @@ static int qmp_combo_power_on(struct phy *phy)
>   	/* Tx, Rx, and PCS configurations */
>   	qmp_combo_configure_lane(tx, cfg->regs, cfg->tx_tbl, cfg->tx_tbl_num, 1);
>   
> -	if (cfg->is_dual_lane_phy) {
> +	if (cfg->lanes >= 2) {
>   		qmp_combo_configure_lane(qphy->tx2, cfg->regs, cfg->tx_tbl,
>   					 cfg->tx_tbl_num, 2);
>   	}
> @@ -2128,7 +2116,7 @@ static int qmp_combo_power_on(struct phy *phy)
>   
>   	qmp_combo_configure_lane(rx, cfg->regs, cfg->rx_tbl, cfg->rx_tbl_num, 1);
>   
> -	if (cfg->is_dual_lane_phy) {
> +	if (cfg->lanes >= 2) {
>   		qmp_combo_configure_lane(qphy->rx2, cfg->regs, cfg->rx_tbl,
>   					 cfg->rx_tbl_num, 2);
>   	}
> @@ -2725,7 +2713,7 @@ static int qmp_combo_create(struct device *dev, struct device_node *np, int id,
>   	if (cfg->pcs_usb_offset)
>   		qphy->pcs_usb = qphy->pcs + cfg->pcs_usb_offset;
>   
> -	if (cfg->is_dual_lane_phy) {
> +	if (cfg->lanes >= 2) {
>   		qphy->tx2 = devm_of_iomap(dev, np, 3, NULL);
>   		if (IS_ERR(qphy->tx2))
>   			return PTR_ERR(qphy->tx2);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
