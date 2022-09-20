Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DE10C6FA91
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 13:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WJ15jSE0M4F2jlimVViTrVd4L9ZkiHyjC9bODmqRLCQ=; b=4HUVbgDUnW2NQg
	d8g01lx7p7fPxFPXb1yRqTKP3yr1cf09lMxzlqslNAbOawBFrknXUK7CFd9u02K06pHSRsCmcPGhs
	OBEjIpltncGDSg3FPIYbPC9dJaGksEshGjdUAjEYzzXXw5/u1zCqtZ33c6hrIqS3MpGtqXsqWG3Da
	LvDiwsMBgPTVXbkOGapN+uM7JDh2WS3aIiuC4YjqSTonA8yZPqZTxSt8Jm3+Q9Madcxl+JOAJmAwV
	isI8BCFQCr9rdwQI9FGQUiKsjDmxEzraArLsN8oX1ypO2kaxLc77VKivdoDm0accU09jIJE/5e4A3
	27RFmcJnSaXsy8QYttfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadee-004FYt-MM; Tue, 20 Sep 2022 13:51:16 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oadeb-004FW8-QK
	for linux-phy@lists.infradead.org; Tue, 20 Sep 2022 13:51:15 +0000
Received: by mail-wr1-x42e.google.com with SMTP id e16so4398318wrx.7
        for <linux-phy@lists.infradead.org>; Tue, 20 Sep 2022 06:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date;
        bh=zRdDzhw5a5ynTYghKQQWj3Myrcf9LCWPiu6p7svaVow=;
        b=EUiRpoNFUN/WpjyuZ1UJ1keXlSOG0zCvvVFA4G2Hmdh0RqkoKkY9ihX6upTCnBnec1
         lTLkgdr9w2OB1ukhlbVaaP/enGXy4xOGbTvg7lNPH6ZVrPgJ0eWvcB19fZeRKq5S4O51
         PJzFW/f7bbyOxcHB0/BIXiZh4eaEk8WKID0uPrttgdf53CcfujwHaJWwWm38FK2IwuWJ
         gTCPEQ89qdrCodpCGn0FlQXaK2asnjTvYJD0LGZwiGfwdHwQSa9k2NZ0NU1LBTjOus38
         yvOF1fBORCtJPXvaORw67SP36EuxRejXey1S1LYYXgv6pjNwP4Ted6qXIJMA5iU9x+QJ
         juxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=zRdDzhw5a5ynTYghKQQWj3Myrcf9LCWPiu6p7svaVow=;
        b=hl8ut60HDpdCXD4rTpi9TSbMcSMuJDvS99ZdqwMKtdOA5LzcRksHeaf+sIYJ44c5Hv
         u3haDbo5razqfWLt9OSaBvYmvgqsqjgU2yvn6+5DV/ZIkUCgHTbEvHsuTbd5pxtv/bxS
         f5Hk913R3ADSqvBzte/Wo5TJk5NV3tgk48rGifr1Iurt9jGciR+VTcaIFFAkChmpH8kC
         mlqcyYJ/VNwY6dqQqGqs+DO5WqvulfJOk2hwqJ6IipQAtGLmf6YXMdYoDOoL6tuPDej3
         nK7o17bJ7rt2JgZtcevlApSf5ko8F1IqXTxhMBiv2OQtFAfB9m4dPMVgR2SzLuXUZTxq
         Sf6g==
X-Gm-Message-State: ACrzQf0Nrl69TUlFijPPAmI2smLxPIDHVE3YwlVRfm07EfQIcNRpbxgu
	lxCoB8ipUak+kFJjBNpASTmessgt20SP1DL7On8=
X-Google-Smtp-Source: AMsMyM7n/pavtoyKgl/9/d0NKHH8QpSRBO+kZHsIFiUN9oTH2DfQ2z0y02cbyowDfN+fbyOuNhMrcw==
X-Received: by 2002:adf:dd8f:0:b0:22a:84ab:4be3 with SMTP id x15-20020adfdd8f000000b0022a84ab4be3mr13901955wrl.40.1663681872593;
        Tue, 20 Sep 2022 06:51:12 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e? ([2a01:e0a:982:cbb0:7e10:f0f:43b2:9b5e])
        by smtp.gmail.com with ESMTPSA id j18-20020a05600c42d200b003b2878b9e0dsm93697wme.20.2022.09.20.06.51.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 06:51:12 -0700 (PDT)
Message-ID: <1d34c9bf-24c2-84ea-8a85-7cd15e09d6d0@linaro.org>
Date: Tue, 20 Sep 2022 15:51:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 04/17] phy: qcom-qmp-usb: drop unused type from config
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20220920073826.20811-1-johan+linaro@kernel.org>
 <20220920073826.20811-5-johan+linaro@kernel.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro
In-Reply-To: <20220920073826.20811-5-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_065113_937616_28529D75 
X-CRM114-Status: GOOD (  19.11  )
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
> The configuration PHY type is no longer needed since the QMP driver
> split so drop it from the configuration and suspend callbacks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 26 -------------------------
>   1 file changed, 26 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index 93994f1a46e2..03481b6f1c35 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -1431,8 +1431,6 @@ struct qmp_phy;
>   
>   /* struct qmp_phy_cfg - per-PHY initialization config */
>   struct qmp_phy_cfg {
> -	/* phy-type - PCIE/UFS/USB */
> -	unsigned int type;
>   	/* number of lanes provided by phy */
>   	int nlanes;
>   
> @@ -1609,7 +1607,6 @@ static const char * const qmp_phy_vreg_l[] = {
>   };
>   
>   static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= ipq8074_usb3_serdes_tbl,
> @@ -1634,7 +1631,6 @@ static const struct qmp_phy_cfg ipq8074_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= msm8996_usb3_serdes_tbl,
> @@ -1659,7 +1655,6 @@ static const struct qmp_phy_cfg msm8996_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
> @@ -1691,7 +1686,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
> @@ -1723,7 +1717,6 @@ static const struct qmp_phy_cfg sc7180_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sc8280xp_usb3_uniphy_serdes_tbl,
> @@ -1752,7 +1745,6 @@ static const struct qmp_phy_cfg sc8280xp_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= qmp_v3_usb3_uniphy_serdes_tbl,
> @@ -1781,7 +1773,6 @@ static const struct qmp_phy_cfg qmp_v3_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
> -	.type                   = PHY_TYPE_USB3,
>   	.nlanes                 = 1,
>   
>   	.serdes_tbl             = msm8998_usb3_serdes_tbl,
> @@ -1808,7 +1799,6 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
> @@ -1844,7 +1834,6 @@ static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> @@ -1876,7 +1865,6 @@ static const struct qmp_phy_cfg sm8150_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
> @@ -1911,7 +1899,6 @@ static const struct qmp_phy_cfg sm8250_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> @@ -1943,7 +1930,6 @@ static const struct qmp_phy_cfg sm8250_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> @@ -1975,7 +1961,6 @@ static const struct qmp_phy_cfg sdx55_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> @@ -2007,7 +1992,6 @@ static const struct qmp_phy_cfg sdx65_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
> @@ -2042,7 +2026,6 @@ static const struct qmp_phy_cfg sm8350_usb3phy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= sm8150_usb3_uniphy_serdes_tbl,
> @@ -2074,7 +2057,6 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
> -	.type			= PHY_TYPE_USB3,
>   	.nlanes			= 1,
>   
>   	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
> @@ -2432,10 +2414,6 @@ static int __maybe_unused qmp_usb_runtime_suspend(struct device *dev)
>   
>   	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qphy->mode);
>   
> -	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
> -	if (cfg->type != PHY_TYPE_USB3)
> -		return 0;
> -
>   	if (!qphy->phy->init_count) {
>   		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>   		return 0;
> @@ -2458,10 +2436,6 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
>   
>   	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qphy->mode);
>   
> -	/* Supported only for USB3 PHY and luckily USB3 is the first phy */
> -	if (cfg->type != PHY_TYPE_USB3)
> -		return 0;
> -
>   	if (!qphy->phy->init_count) {
>   		dev_vdbg(dev, "PHY not initialized, bailing out\n");
>   		return 0;

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
