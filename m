Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 020DCC54EE9
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0f/ODW7uq+ou5OWvG62zaYakA5rxDJkFxXviu3sz8tM=; b=isWunoO/oUBEYw
	FLUY0l3DXUGkjoCnOhSNMjITbEWOFNqwotV6ZVAIkb0jHIeb2Wjr0IWGkJ96sCp5LEsvSsqKFw8iU
	Kw7ENqjbJTfC7PClX83HziEvd4kaJeWyAIb9Paao48POObLD34xxA3Ff3/lu4uHib+ibnZmg9dbdi
	1ZoW6o2BtSwurD/G05JGOFwyioDS8HoeCw5SW5TvdvfvMcaYrdn17QJvEaMk2M//SiBEc6aMv3PLb
	BHHa4xfj3mQujLrYFUmip8pcXDK9S8KgQptvelGLoUoFZQ49ignZB6muvn2Q695WMxg1d7mbQvmXI
	diww1CHHaCFh/GJgsLdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeO-004FN9-Dj; Tue, 20 Sep 2022 13:51:00 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeJ-004FJw-My
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:50:59 +0000
Received: by mail-wr1-x430.google.com with SMTP id cc5so4405129wrb.6
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=CbKXSMhGoIdUXKKG3TZBq6GRFHHVVvN4hfEgNhxeRUU=;
        b=NJBcwu/xo84A6nBJReIsw2am8S9BExcX0AgN2T5LEjBZBBr0X9WKOc1rekrO8O0JMB
         V1aqNgEy2l941VmoYSSZdTlG74ijVl0AFxvYzsyJ1FhldoZWEMNyLcQ2AFthJWICl8C0
         aT9Fn/zIJ+hR/qJsYf62PrHU9TkgPeHky2OwCEvGPdVbXkjG5nL8D5CYyRXzk/xdYbwq
         LCz+SpEu8cF1lzqgvezUHita+ggTpkn2fUTDs2+Bah+uZUdXda3V9iiNsp0ale2dCOoE
         UMBehsVcyxigAFZdCvhAAai49+Shkqwnm9ShXi+99lpyaXYVTlwkbvZ5lihv8i0CFs6e
         boXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=CbKXSMhGoIdUXKKG3TZBq6GRFHHVVvN4hfEgNhxeRUU=;
        b=vuUZ4DlClrmqQTzYlEOp+5SgCApuF5uXVuN/WcmKOTASMiuSFjyTtnc+WuPisRZKmt
         qhRXRPd5G6MWZ7hUmOcOt+3tth//YkqsDWHJN4rwGjwKhEGF7MHx2R/DjYn0WXX8XK39
         cPYF1Silq+20m+23tHONgfOtcGap43SRlYE0iUFs6iqwbuZ9HIuHi29weIklOltan3Tn
         Lg3X/nU90yqonsE5tcXPkIOGZoNVi9LMo4dKfA0/aAS9Nfu+nI394qZqAhoM/1NDG7KQ
         PzBgO/dLFHIABBpcUOTSxElCeev5HHyWGekM3YekIZyEkMsSiGv957jBn3PEmOcG9mIp
         L4wg==
X-Gm-Message-State: ACrzQf0wfHkevNnbK0FnWtKVjRH9hG5vRhbNolL0e56CuJO7AI1mei63
	efDz4qsRTWgsN1TF9GcEEJF1Dg==
X-Google-Smtp-Source: AMsMyM49ReXkJSaj7Utvpzsjs5n47S+5Kucp5dP3mK4Lp+F//s6VKT7btkuJMNpSsfVniDJf3/h+lg==
X-Received: by 2002:adf:fb10:0:b0:22a:f1d8:18d2 with SMTP id c16-20020adffb10000000b0022af1d818d2mr9863141wrr.483.1663681853966;
        Tue, 20 Sep 2022 06:50:53 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id bg7-20020a05600c3c8700b003b47b913901sm392805wmb.1.2022.09.20.06.50.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:50:53 -0700 (PDT)
Message-ID: <cb19364a-7c38-9025-3335-1832ed3d8799@linaro.org>
Date: Tue, 20 Sep 2022 15:50:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 01/17] phy: qcom-qmp-pcie: drop unused type from config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-2-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065055_822993_CB451E92 
X-CRM114-Status: GOOD (  16.10  )
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
> The configuration PHY type is no longer used since the QMP driver split
> so drop it from the configurations.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 14 --------------
>   1 file changed, 14 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 4939edcd8cb1..d25f9215b86f 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1304,8 +1304,6 @@ struct qmp_phy;
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
>   	/* number of lanes provided by phy */
>   	int nlanes;
>   
> @@ -1470,7 +1468,6 @@ static const char * const sdm845_pciephy_reset_l[] = {
>   };
>   
>   static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
> -	.type			= PHY_TYPE_PCIE,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= ipq8074_pcie_serdes_tbl,
> @@ -1499,7 +1496,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
> -	.type			= PHY_TYPE_PCIE,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= ipq8074_pcie_gen3_serdes_tbl,
> @@ -1529,7 +1525,6 @@ static const struct qmp_phy_cfg ipq8074_pciephy_gen3_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
> -	.type			= PHY_TYPE_PCIE,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= ipq6018_pcie_serdes_tbl,
> @@ -1559,7 +1554,6 @@ static const struct qmp_phy_cfg ipq6018_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
>   
>   	.serdes_tbl		= sdm845_qmp_pcie_serdes_tbl,
> @@ -1590,7 +1584,6 @@ static const struct qmp_phy_cfg sdm845_qmp_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
>   
>   	.serdes_tbl		= sdm845_qhp_pcie_serdes_tbl,
> @@ -1619,7 +1612,6 @@ static const struct qmp_phy_cfg sdm845_qhp_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
>   
>   	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
> @@ -1658,7 +1650,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x1_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 2,
>   
>   	.serdes_tbl		= sm8250_qmp_pcie_serdes_tbl,
> @@ -1698,7 +1689,6 @@ static const struct qmp_phy_cfg sm8250_qmp_gen3x2_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
> -	.type			= PHY_TYPE_PCIE,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= msm8998_pcie_serdes_tbl,
> @@ -1723,7 +1713,6 @@ static const struct qmp_phy_cfg msm8998_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
>   
>   	.serdes_tbl		= sc8180x_qmp_pcie_serdes_tbl,
> @@ -1753,7 +1742,6 @@ static const struct qmp_phy_cfg sc8180x_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 2,
>   
>   	.serdes_tbl		= sdx55_qmp_pcie_serdes_tbl,
> @@ -1785,7 +1773,6 @@ static const struct qmp_phy_cfg sdx55_qmp_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 1,
>   
>   	.serdes_tbl		= sm8450_qmp_gen3x1_pcie_serdes_tbl,
> @@ -1816,7 +1803,6 @@ static const struct qmp_phy_cfg sm8450_qmp_gen3x1_pciephy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8450_qmp_gen4x2_pciephy_cfg = {
> -	.type = PHY_TYPE_PCIE,
>   	.nlanes = 2,
>   
>   	.serdes_tbl		= sm8450_qmp_gen4x2_pcie_serdes_tbl,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
