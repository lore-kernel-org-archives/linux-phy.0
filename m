Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F338C4706C
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jan 2024 10:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBdencGefuO5VIFX+hEgnW2LYbIcAzAqRwAlv9WeJfY=; b=kl5oQeb81Ic4Z2
	yYDGJheTIsvwaRcLac8ekAnZR5I9o5e6YyoeEiQjWvqhb9756L2xgMUzfapioLVTuy8Sv6QjWEZ+s
	Ec8ovJOI2wysHIFKiKu9ASxm1Qryhu5oXZTXSjT0ggo7RFN2YWyLZSPgzjUNELvZq6YQeyFx9bSdc
	7TfdK2VA+yfh9k+OLtcp+lkk/rbCrOxFAWnGDfuX+RLT33pLwfGIAq25sz5wJON6SqrvczYL/2KBX
	JDYvBgpFdKPdjGLMWUbY7kpv1URpM+M63kJfGT7/7lz2/9pdA65Jwhhx3Kk1i6bEJt+nE+rHWlBDn
	jfY8WUlYO6qJW0AHWCEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rObJj-004uug-3C;
	Sat, 13 Jan 2024 10:32:43 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rObJg-004utK-23
	for linux-phy@lists.infradead.org;
	Sat, 13 Jan 2024 10:32:42 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-557a3ce9942so7821054a12.1
        for <linux-phy@lists.infradead.org>; Sat, 13 Jan 2024 02:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705141956; x=1705746756; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A4NP2s/NZcZRFJr2jB09+2fWd3wUGutLp7fYffSjRHs=;
        b=qDUZphMT0+hoU/wo5Xk8istss5WEymPfAUSQE+oXjf0NIeF+KccivGNKug/l4o5ekP
         1P867TgKJJcbAaOw9AlL1TbuaJiU+LsHLRB/h/bVSPcrYm/DRdx9qSFU07OpxhkWmOWy
         lLLNW9gHQ74ip1Oj1en5D7QleiA7cZbDBs+GqqntzQT3TayAYAhwKDF1ufFZaRiOAL4e
         RDZgON/zSFHfBHtQ/NPy/Si6WcoYSEGWLJMMKeGNXcPS32G0/VcHy/JL6QIEBkdDohjD
         5YINn4ZlH0rmkIozEzP0owB4YKd9plniAd4yb0/l34yku+hvIrqvyFyfK1SwsSN2LBd2
         xA3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705141956; x=1705746756;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A4NP2s/NZcZRFJr2jB09+2fWd3wUGutLp7fYffSjRHs=;
        b=qJItJ/BELnZmAym3ecrluRjrewntpdZDF3a0HZALrUzOeQdL5MX0kK9D1JrpWEk0bz
         C83rDBSWtbsbC5Wnm/JuKd04LyMQmPtvaHgfJwJCTePwy7TJK2YBvjoCePxABgs2nPBK
         HHsE128u2Mtq3YnhaqqxBG4aCrS9dLnEzGUjLKj1XYCJD1pA6BzHTeQKiLPF6IdqhC5u
         cmL4TFLjoHgQwTMciWxf7UWayiTo0eCmHgTNPE+EzhYIesbbeu2Gfcx4HXxToT0CCbbl
         3PpCfZuhfYjHouZC+hTdaPg9rX3JpW/a1VTaxpC8L9muSqA/ARVsW3NzXh46EkDuVJpx
         CkKw==
X-Gm-Message-State: AOJu0YwtHoccBqPPhC/jN7mfh7qWAYBLZYMRk+lRVqLfKGDp/xKSiIGp
	s5r6R2bf9fpwPb3aFxtfxhyFdOLQiHHoRw==
X-Google-Smtp-Source: AGHT+IG95Lc4vfFkA1I+bg6/+GRf0HRam+7Jt3Eft/sBwJkmo/E6k6JMgde4ifTGYE+zg0KPMuekpg==
X-Received: by 2002:a17:907:a782:b0:a2c:e2a4:17b3 with SMTP id vx2-20020a170907a78200b00a2ce2a417b3mr831678ejc.120.1705141956288;
        Sat, 13 Jan 2024 02:32:36 -0800 (PST)
Received: from [192.168.174.25] (178235179017.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.17])
        by smtp.gmail.com with ESMTPSA id q8-20020a170906360800b00a2bd52d2a84sm2719827ejb.200.2024.01.13.02.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 13 Jan 2024 02:32:35 -0800 (PST)
Message-ID: <30df6954-1d22-4c55-bb4b-e8746c3c331d@linaro.org>
Date: Sat, 13 Jan 2024 11:32:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/13] usb: typec: qcom-pmic-typec: allow different
 implementations for the PD PHY
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-phy@lists.infradead.org
References: <20240113-pmi632-typec-v1-0-de7dfd459353@linaro.org>
 <20240113-pmi632-typec-v1-5-de7dfd459353@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240113-pmi632-typec-v1-5-de7dfd459353@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240113_023241_519467_127F358F 
X-CRM114-Status: GOOD (  12.88  )
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

On 13.01.2024 06:42, Dmitry Baryshkov wrote:
> Rework Qualcomm PMIC TCPM driver to allow different platform-specific
> implementations of the PD PHY interface. While majority of platforms
> has the same of register for the PD PHY, some obscure ones (PMI632) do
> not have real PD PHY support. Add proper interface between the main
> module and the PD PHY backend to allow switching the PD PHY
> implementation.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

[...]

> @@ -366,12 +439,13 @@ int qcom_pmic_typec_pdphy_set_roles(struct pmic_typec_pdphy *pmic_typec_pdphy,
>  				 pmic_typec_pdphy->base + USB_PDPHY_MSG_CONFIG_REG,
>  				 MSG_CONFIG_PORT_DATA_ROLE |
>  				 MSG_CONFIG_PORT_POWER_ROLE,
> -				 data_role_host << 3 | power_role_src << 2);
> +				 (data_role == TYPEC_HOST ? MSG_CONFIG_PORT_DATA_ROLE : 0) |
> +				 (power_role == TYPEC_SOURCE ? MSG_CONFIG_PORT_POWER_ROLE : 0));

Was this hunk supposed to be part of this patch?

[...]

>  int qcom_pmic_typec_pdphy_probe(struct platform_device *pdev,
> -				struct pmic_typec_pdphy *pmic_typec_pdphy,
> -				struct pmic_typec_pdphy_resources *res,
> +				struct pmic_typec *tcpm,
> +				const struct pmic_typec_pdphy_resources *res,
>  				struct regmap *regmap,
>  				u32 base)
>  {
> +	struct pmic_typec_pdphy *pmic_typec_pdphy;
>  	struct device *dev = &pdev->dev;
>  	struct pmic_typec_pdphy_irq_data *irq_data;
>  	int i, ret, irq;
>  
> +	pmic_typec_pdphy = devm_kzalloc(dev, sizeof(struct pmic_typec_pdphy), GFP_KERNEL);
> +	if (!pmic_typec_pdphy)
> +		return -ENOMEM;

or simply sizeof(*pdphy) 

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
