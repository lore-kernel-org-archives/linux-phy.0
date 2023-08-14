Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F52C001B0
	for <linux-phy@archiver.kernel.org>; Mon, 14 Aug 2023 10:05:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zu5EDqxs0ojcN2ZtTp12OvJq9l/W97+eCKQJCx7Blfw=; b=DTWu0gfRA/CXn+
	R1BQsocYDV36PIUvfky+9VhfeIsSaDwcyU7paA36F7OCjiVBqu2di1Q/iIh9gB2ttNTSyNS4UzKOU
	qcsDOupjQOhMusZmyl/I0SgqmqHXS9c1dlQclOJikzME30Ld/ZAzDbdGx0je/qdy/HF0dAHunPKcZ
	IFChobgLtGVMgDcdkZz1+s1275R2kcyREP8ac7RlymJ+7p56/L7HlPNbZZJzReDijFi/I9oIr2wwe
	freTRWmaUek2zr9vljrad+T8cABjtqQkQdhfAP+rTAtNlWd08Ux+uDIpTWTdNXz4PzFmY0ToP65Me
	xrT4IvSkwu3b9/lkLxIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVURa-00GfqV-2q;
	Mon, 14 Aug 2023 10:05:02 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVURW-00Gfo3-0Q
	for linux-phy@lists.infradead.org;
	Mon, 14 Aug 2023 10:05:00 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99357737980so550657366b.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Aug 2023 03:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692007496; x=1692612296;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=J1Rc8nsD2ma3VBPVMcl4UyoPSVzGHKJ4CtGcabWqpTw=;
        b=nou4Cl1VoVcvl4ENiZZo8eV/gFxjXiX3xN/8B8yOL+X04lAgCBOIZT2WSkxTaGCxK3
         7Yc8q/nN0dOvKIMVTPnmhgd5h/EV85uGtprln6ypFYSQUIO8YfcTCdQnREWzyIE1OAHw
         kGvye/lpfo3yWcvofsAO/XLOzaG4wfzKO8voq15fQ8s9LZhs0b2Cvmbg5kK68OypZm/P
         wMvRuADlnLl6siSEa74QUMg4MHl06L4+TDvrCrBbsdFZ4RmSYrGkneGl3IM1mK9PFaQI
         hnNdW+mhdB+93VOz5dMGPob0JYuRBCpLQ9WzP9MpT+Jv+98GliX5rhWxhJ0CRu/6P7QB
         6k+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692007496; x=1692612296;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J1Rc8nsD2ma3VBPVMcl4UyoPSVzGHKJ4CtGcabWqpTw=;
        b=a/gFbF3+AZUjjaB40tUvNVMHu9AJhU4IGHOin6e0ZxilruCfCjBufHV3wuDuKlPJGJ
         f+MNu/LfMVIAajmrLkfmpGYQfWBd5ribOb1RoNByf3W4x1esPLcI2zP03xEMTe9wsFUG
         3Js0UW5kBaPvd3PW/ws8a4QYTQRRmoskFeZ6XBym8YYdutjPS/zPt4aEs/iRFwj9/sEN
         t6DlhEGs1+jnjNlc68Yn0LzgTRHBHquHOcEPsrFWiNftpy8BcImLTd0EEkumjlJH0t74
         CQACSBP+k8bmGDSZSkWkoznKCm/A9fT3MugcWtfVX/A7oWYCbLx/IxZtWbTmf0XYff6/
         zdDg==
X-Gm-Message-State: AOJu0YxjxsqaP6qEr3PbbyPe76L9OjcPutzLYp3IjqVdNSGBmI0eVvmY
	u81kuBDbZJNrlvu4ejlAgY5Dnw==
X-Google-Smtp-Source: AGHT+IG9TosK1slJfmyat8CD4+xcZshg2eMOd341aynBzaPj563ez339VfZMnOaM56aXf25DWuXM5Q==
X-Received: by 2002:a17:906:3d32:b0:992:9005:5ed5 with SMTP id l18-20020a1709063d3200b0099290055ed5mr7365657ejf.32.1692007495896;
        Mon, 14 Aug 2023 03:04:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id pj18-20020a170906d79200b009932337747esm5482230ejb.86.2023.08.14.03.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Aug 2023 03:04:55 -0700 (PDT)
Message-ID: <90da3361-6b11-7a1c-a845-af33ba03a686@linaro.org>
Date: Mon, 14 Aug 2023 12:04:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v7 2/5] phy: qcom-m31: Introduce qcom,m31 USB phy driver
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_srichara@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1691660905.git.quic_varada@quicinc.com>
 <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b17b55b2ff2277bb9bfa99acdb2f98ed420dfb6e.1691660905.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230814_030458_170806_AAF0244E 
X-CRM114-Status: GOOD (  11.17  )
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

On 10/08/2023 11:56, Varadarajan Narayanan wrote:
> Add the M31 USB2 phy driver.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

...

> +static int m31usb_phy_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	const struct m31_priv_data *data;
> +	struct device *dev = &pdev->dev;
> +	struct m31usb_phy *qphy;
> +
> +	qphy = devm_kzalloc(dev, sizeof(*qphy), GFP_KERNEL);
> +	if (!qphy)
> +		return -ENOMEM;
> +
> +	qphy->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(qphy->base))
> +		return PTR_ERR(qphy->base);
> +
> +	qphy->reset = devm_reset_control_get_exclusive_by_index(dev, 0);
> +	if (IS_ERR(qphy->reset))
> +		return PTR_ERR(qphy->reset);
> +
> +	qphy->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(qphy->clk))
> +		return dev_err_probe(dev, PTR_ERR(qphy->clk),
> +						"failed to get clk\n");

This looks misaligned.

> +
> +	data = of_device_get_match_data(dev);
> +	qphy->regs		= data->regs;
> +	qphy->nregs		= data->nregs;
> +	qphy->ulpi_mode		= data->ulpi_mode;
> +
> +	qphy->phy = devm_phy_create(dev, NULL, &m31usb_phy_gen_ops);
> +	if (IS_ERR(qphy->phy))
> +		return dev_err_probe(dev, PTR_ERR(qphy->phy),
> +						"failed to create phy\n");

Ditto... and in other places.

> +
> +	qphy->vreg = devm_regulator_get(dev, "vdda-phy");
> +	if (IS_ERR(qphy->vreg))
> +		return dev_err_probe(dev, PTR_ERR(qphy->phy),
> +						"failed to get vreg\n");
> +
> +	phy_set_drvdata(qphy->phy, qphy);
> +
> +	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
> +	if (!IS_ERR(phy_provider))
> +		dev_info(dev, "Registered M31 USB phy\n");

Drop simple success messages. Kernel has other means to do it.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
