Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B123DC6FA8E
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDuDkbNroY8U2XvTzFq5xoPCRY+gSid9I0nSoGU4fac=; b=vIjKKO7QSZHo0Y
	7HhdmUnwdLNO7/JsR1WgBBqqEVrGjipde10s5i9MR/EoK/QvbRCcM4Buk/QObjgaEfLNQwSOMdNKv
	TW3d7JJydfgQV8dtXaO6Zc36w58XaA+Wezsw0F3Gb8vDQBtNcN1hL02SsbhdszLnU1gSLX1hY1CWs
	87SsD2ps0yxejbzHF6qjkit15/3EXocVk8CGzN/Vuy6JIDNNu/fXhNK8NE5qsrOOnwzuATjhidLsx
	cnnHCFxdvLofkP+MekvlF7JSyxwjC7OsYZbn07Ow3WHSM2VCTY7TgZSjvo5HzX7DhwQAP/Ej9kXdK
	u9nrdeuh5y+tVYmZoroQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadft-004GAP-2b; Tue, 20 Sep 2022 13:52:33 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadfp-004G6i-6c
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:52:31 +0000
Received: by mail-wm1-x334.google.com with SMTP id az6so1978134wmb.4
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=1uV1uepVdt/lidIfDtXoLlULIc3m3alhe/jXl+SRp68=;
        b=PDq26ewsnmK/he9qfYqM3VwusLSQLuKwJxrxRdUPxBkl9xCQksQuuM57Gk6No6l5yO
         1NWirVeUR73e2GoXbXiZsst0DuKZCHiGdx/Dt7pryD5rS5CdMUvJEzJ16pgC6YRDAqFl
         DDJLDOQVLiM8N9KI/vE5DMIjzwCg2YFtDZBIMEKuo/a7qg5nwnpibv6TlblOMLZ9mOja
         oWS1bJsMHW53qTU16+0G59uOSs7FDdCboSBgU0jz7Frrog6X4NbjrvFp39LFE2qtE7xJ
         pypIIOPBBlqAjEbRbzBNJSylYYYgFLOp8K44N3MSxWr5MZ1IC2YaIkn2VyBGmqXuMdm9
         KwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=1uV1uepVdt/lidIfDtXoLlULIc3m3alhe/jXl+SRp68=;
        b=ZpnEH6CPpiluDieBm4pdEOxbxw06BbfQfDN7NnTB65xETOTuLLEzGLuXanwvc9DxtR
         9uet5tSiSbc5WbZ9PzpxTMFDXybeIrD5GQBoQ0oOFdXaAVsoGsuSr/vv95DI5/IFdLh3
         HL4MlCf/HvdN/+2auUGy9oog8y4PxQLMoZmgxzT84ns/7C9Knx5fM6FaWn8X+jp8hpOr
         noMMvwL48frTwIGdMMM59WdbTtSlL1TO9TYNcbzebyzFuyhx1jeJvpv2L4eFsDyiQlIV
         /m5dXphituB5NiwTsVViT683WpZtqVgwdDmHgrUzXHl+yJ78lQM/RwKX76lNO1Vlt6br
         phzw==
X-Gm-Message-State: ACrzQf1Tv7JnUxsWa2WvmhDgIt6pNivcAmgBAAgzFnqCPsSn8T01bORC
	LKhoJx4TYsNYsNTKf7AbyadOhw==
X-Google-Smtp-Source: AMsMyM5qSw3B9VmVxkoIAWfjJfoLg0b2DXJ19X6T1sZUYpZhiAdBF2QPmbzPm8vFACB3A8jveMfabQ==
X-Received: by 2002:a05:600c:3546:b0:3b4:b7da:d8e2 with SMTP id i6-20020a05600c354600b003b4b7dad8e2mr2559775wmq.188.1663681945429;
        Tue, 20 Sep 2022 06:52:25 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id b14-20020adfe30e000000b00228df23bd51sm24571wrj.82.2022.09.20.06.52.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:52:24 -0700 (PDT)
Message-ID: <66450c6b-6435-e537-2268-c6fc97d92824@linaro.org>
Date: Tue, 20 Sep 2022 15:52:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 17/17] phy: qcom-qmp-combo: drop redundant DP config flag
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-18-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-18-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065229_384023_1C6EEE56 
X-CRM114-Status: GOOD (  20.84  )
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
> Drop the DP_COM control block flag from the configuration data, which is
> set for all combo PHYs and hence no longer needed since the QMP driver
> split.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 63 +++++++----------------
>   1 file changed, 18 insertions(+), 45 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 417e0fcf1a9f..ad3b0aa22048 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -876,9 +876,6 @@ struct qmp_phy_cfg {
>   	int pwrdn_delay_min;
>   	int pwrdn_delay_max;
>   
> -	/* true, if PHY has a separate DP_COM control block */
> -	bool has_phy_dp_com_ctrl;
> -
>   	/* Offset from PCS to PCS_USB region */
>   	unsigned int pcs_usb_offset;
>   
> @@ -1051,8 +1048,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   	.has_pwrdn_delay	= true,
>   	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> -
> -	.has_phy_dp_com_ctrl	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
> @@ -1086,8 +1081,6 @@ static const struct qmp_phy_cfg sc7180_dpphy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= qmp_v3_usb3phy_regs_layout,
>   
> -	.has_phy_dp_com_ctrl	= true,
> -
>   	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
>   	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
> @@ -1126,8 +1119,6 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
>   	.has_pwrdn_delay	= true,
>   	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> -
> -	.has_phy_dp_com_ctrl	= true,
>   };
>   
>   static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
> @@ -1166,8 +1157,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   	.has_pwrdn_delay	= true,
>   	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> -
> -	.has_phy_dp_com_ctrl	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
> @@ -1201,8 +1190,6 @@ static const struct qmp_phy_cfg sc8180x_dpphy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= qmp_v3_usb3phy_regs_layout,
>   
> -	.has_phy_dp_com_ctrl	= true,
> -
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
> @@ -1242,8 +1229,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_usb_cfg = {
>   	.has_pwrdn_delay	= true,
>   	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> -
> -	.has_phy_dp_com_ctrl	= true,
>   };
>   
>   static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
> @@ -1277,8 +1262,6 @@ static const struct qmp_phy_cfg sc8280xp_usb43dp_dp_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= qmp_v4_usb3phy_regs_layout,
>   
> -	.has_phy_dp_com_ctrl	= true,
> -
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy = qcom_qmp_v5_phy_configure_dp_phy,
> @@ -1320,8 +1303,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   	.has_pwrdn_delay	= true,
>   	.pwrdn_delay_min	= POWER_DOWN_DELAY_US_MIN,
>   	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
> -
> -	.has_phy_dp_com_ctrl	= true,
>   };
>   
>   static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
> @@ -1355,8 +1336,6 @@ static const struct qmp_phy_cfg sm8250_dpphy_cfg = {
>   	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
>   	.regs			= qmp_v4_usb3phy_regs_layout,
>   
> -	.has_phy_dp_com_ctrl	= true,
> -
>   	.dp_aux_init = qcom_qmp_v4_phy_dp_aux_init,
>   	.configure_dp_tx = qcom_qmp_v4_phy_configure_dp_tx,
>   	.configure_dp_phy = qcom_qmp_v4_phy_configure_dp_phy,
> @@ -1995,28 +1974,25 @@ static int qmp_combo_com_init(struct qmp_phy *qphy)
>   	if (ret)
>   		goto err_assert_reset;
>   
> -	if (cfg->has_phy_dp_com_ctrl) {
> -		qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL,
> -			     SW_PWRDN);
> -		/* override hardware control for reset of qmp phy */
> -		qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> -			     SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> -			     SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +	qphy_setbits(dp_com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
>   
> -		/* Default type-c orientation, i.e CC1 */
> -		qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
> +	/* override hardware control for reset of qmp phy */
> +	qphy_setbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> +			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
>   
> -		qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL,
> -			     USB3_MODE | DP_MODE);
> +	/* Default type-c orientation, i.e CC1 */
> +	qphy_setbits(dp_com, QPHY_V3_DP_COM_TYPEC_CTRL, 0x02);
>   
> -		/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> -		qphy_clrbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> -			     SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> -			     SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +	qphy_setbits(dp_com, QPHY_V3_DP_COM_PHY_MODE_CTRL, USB3_MODE | DP_MODE);
>   
> -		qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
> -		qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
> -	}
> +	/* bring both QMP USB and QMP DP PHYs PCS block out of reset */
> +	qphy_clrbits(dp_com, QPHY_V3_DP_COM_RESET_OVRD_CTRL,
> +			SW_DPPHY_RESET_MUX | SW_DPPHY_RESET |
> +			SW_USB3PHY_RESET_MUX | SW_USB3PHY_RESET);
> +
> +	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SWI_CTRL, 0x03);
> +	qphy_clrbits(dp_com, QPHY_V3_DP_COM_SW_RESET, SW_RESET);
>   
>   	if (cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL])
>   		qphy_setbits(pcs,
> @@ -2838,12 +2814,9 @@ static int qmp_combo_probe(struct platform_device *pdev)
>   	if (IS_ERR(serdes))
>   		return PTR_ERR(serdes);
>   
> -	/* per PHY dp_com; if PHY has dp_com control block */
> -	if (cfg->has_phy_dp_com_ctrl) {
> -		qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
> -		if (IS_ERR(qmp->dp_com))
> -			return PTR_ERR(qmp->dp_com);
> -	}
> +	qmp->dp_com = devm_platform_ioremap_resource(pdev, 1);
> +	if (IS_ERR(qmp->dp_com))
> +		return PTR_ERR(qmp->dp_com);
>   
>   	/* Only two serdes for combo PHY */
>   	dp_serdes = devm_platform_ioremap_resource(pdev, 2);

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
