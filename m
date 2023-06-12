Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00D3DC7EE25
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jun 2023 09:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nCtbEu77gNB12+IqtmDZWYsauVXtjwDTjH6PyuiTu5M=; b=YIZyvbJTMf2cco
	KUHlASgTiIT3p/9ketCPUJtsvyMzy56j6+ngYjhxgKz2vowLysrxkq8ckjb+iFSbZGWRL5xATnMel
	ToyXGxgpKVbCdn89SZlLEg/t9TG48APUwTQfkgltfX9BABIJB7Sd1ctBlZ0mmF40wAdZupsTdlvgS
	TjXAHDIE+aHLskIQrcbBrMj3bKyPsYXw7jE3YINV0mwCBAO4sQHa84YDaeGCpI+iqUdUzSQ3II11L
	eKLQ26AZ1+ZbQyfnbFwGGgTLPSdE/bCw7pLjvCQOKz9BFLprl9pJEQSFBS1CYmKd4Fc6s50SrdaIi
	ZFjEmi1f81+JognlbOMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8e7R-003M1T-29;
	Mon, 12 Jun 2023 09:45:49 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8e7N-003M06-37
	for linux-phy@lists.infradead.org;
	Mon, 12 Jun 2023 09:45:48 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f122ff663eso4670068e87.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 02:45:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686563144; x=1689155144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DWwcG8B478jMSpAgeoJrfgqQXgVZW1IwS0fWhOn6gk0=;
        b=upBU3IKs93WTyz/V/gEN+RLEp9WIg19EH3y6zBS6ow1ie08c4Ipr7gH1W7uhqwZOZI
         lHfKdssyJ2ly3Fgt/rckwxO3zaArORYq2ZFx8c17CQHCAsSfdrg7KsckJGSP0yKEU0Le
         DR/5IZGAvGTxCdtwx/N/S9z7bWRqufplkmUQ9wk2OEmy9ZahyBakPrxs4eboJOwYkPQE
         anV+zG3p1ay1p4RJxaaMU3uW1z1NCTEFyK2SO42tFuiFuAZu/d0MOqBNMizvH07LrfLg
         VKKf9/6i55Jqj6kFbbj0TPbZhChRYgMDsqpcRE9tkFansq7SNLw3JHSdfqJE6ugpNGZD
         Gt/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686563144; x=1689155144;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DWwcG8B478jMSpAgeoJrfgqQXgVZW1IwS0fWhOn6gk0=;
        b=BvhhHNjZJoWtHbhkxOst/TljyLJgTtr0Zh84wCjPnuBxsZ4zskWfOl3O+xFrpfDB66
         urorzFfPZtIvQk6bN5/92k/3QQT0qdjvd6/XWikhx6CrmUAMPlRDCKqH+wTVKAQ+qBdx
         HF5Vx1gNDpOGtb6fJlBV7EhOR04aujbOG5tD4n1pxncsi7b6pDBDejVINEv8xmGprCPx
         8bdtWhZ4EeEXjjwoAL1jGs1cnCtYryKAWBnoGvRgGJWRkGCzhZhKBref5mRCnEAbP/7X
         GCmPsPB18qwfJmlnDyQn4t2/XoPOWFBsXK8bsKLZ7h+jBKG1FozXN4brXaeryzrvlEIr
         zbJQ==
X-Gm-Message-State: AC+VfDyrvO9I9y6O5rlfdtMqneqoXxVv6x3FoX3GvGLLv6FUdKEqC2Qo
	iQ4ga2iMlYCeHWBequZJV9OthQ==
X-Google-Smtp-Source: ACHHUZ43/gi+znYlYQvf2z3Zeqhx6w4RHoSruCkErpQAm+KwwannknuxHnOqh55jxAdULPv7Gxv4YA==
X-Received: by 2002:a2e:908f:0:b0:2b1:e943:8abe with SMTP id l15-20020a2e908f000000b002b1e9438abemr2380153ljg.47.1686563144165;
        Mon, 12 Jun 2023 02:45:44 -0700 (PDT)
Received: from [192.168.1.101] (abyj190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id n23-20020a2e86d7000000b002ac78893a9csm1672079ljj.72.2023.06.12.02.45.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 02:45:43 -0700 (PDT)
Message-ID: <7fe7078e-404d-28e5-0dd1-53b7f9cd7626@linaro.org>
Date: Mon, 12 Jun 2023 11:45:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 03/26] phy: qcom: add the SGMII SerDes PHY driver
Content-Language: en-US
To: Bartosz Golaszewski <brgl@bgdev.pl>, Vinod Koul <vkoul@kernel.org>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>
Cc: netdev@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
References: <20230612092355.87937-1-brgl@bgdev.pl>
 <20230612092355.87937-4-brgl@bgdev.pl>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230612092355.87937-4-brgl@bgdev.pl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_024546_009166_DA092272 
X-CRM114-Status: GOOD (  14.95  )
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



On 12.06.2023 11:23, Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> 
> Implement support for the SGMII/SerDes PHY present on various Qualcomm
> platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> ---
> +static const struct regmap_config qcom_dwmac_sgmii_phy_regmap_cfg = {
> +	.reg_bits		= 32,
> +	.val_bits		= 32,
> +	.reg_stride		= 4,
> +	.use_relaxed_mmio	= true,
> +	.disable_locking	= true,
The last two are rather brave, no?

Konrad
> +};
> +
> +static int qcom_dwmac_sgmii_phy_probe(struct platform_device *pdev)
> +{
> +	struct qcom_dwmac_sgmii_phy_data *data;
> +	struct device *dev = &pdev->dev;
> +	struct phy_provider *provider;
> +	struct clk *refclk;
> +	void __iomem *base;
> +	struct phy *phy;
> +
> +	data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> +	if (!data)
> +		return -ENOMEM;
> +
> +	base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	data->regmap = devm_regmap_init_mmio(dev, base,
> +					     &qcom_dwmac_sgmii_phy_regmap_cfg);
> +	if (IS_ERR(data->regmap))
> +		return PTR_ERR(data->regmap);
> +
> +	phy = devm_phy_create(dev, NULL, &qcom_dwmac_sgmii_phy_ops);
> +	if (IS_ERR(phy))
> +		return PTR_ERR(phy);
> +
> +	refclk = devm_clk_get_enabled(dev, "sgmi_ref");
> +	if (IS_ERR(refclk))
> +		return PTR_ERR(refclk);
> +
> +	provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (IS_ERR(provider))
> +		return PTR_ERR(provider);
> +
> +	phy_set_drvdata(phy, data);
> +	platform_set_drvdata(pdev, data);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id qcom_dwmac_sgmii_phy_of_match[] = {
> +	{ .compatible = "qcom,sa8775p-dwmac-sgmii-phy" },
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, qcom_dwmac_sgmii_phy_of_match);
> +
> +static struct platform_driver qcom_dwmac_sgmii_phy_driver = {
> +	.probe	= qcom_dwmac_sgmii_phy_probe,
> +	.driver = {
> +		.name	= "qcom-dwmac-sgmii-phy",
> +		.of_match_table	= qcom_dwmac_sgmii_phy_of_match,
> +	}
> +};
> +
> +module_platform_driver(qcom_dwmac_sgmii_phy_driver);
> +
> +MODULE_DESCRIPTION("Qualcomm DWMAC SGMII PHY driver");
> +MODULE_LICENSE("GPL");

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
