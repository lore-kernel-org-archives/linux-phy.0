Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A27CC83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 16:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=auVJWNh46hqsTz/D2t8tM8rhFHStUu10hTTDX1+cM7w=; b=veaUVnvOb/3hE3
	ueDzVUoKI9fz1TDTNhoflrssVelmRlGU60u8lIoOHN8lzU6pHjrq/L52pXxJYhH8CNz8LLkdEYwe6
	Fo16uLCyUZCXExfQ7EivMZE48LEme9tbB9g+ly2VBpPMCEpGgXB4v2f4Z5AtF/uD1zt9wUlDSopW0
	w2r5Mb0TiSFPQndNkjpJS1uhIJWIYYWYCMkzfucvDu8sMtl/8jisezYLTZSQLMx2FJD/PjXxJ6qxW
	6PV9j/OmqPO6of3zaslMqQEbSElfY0p2392rcpu3rL4V68cUNuGg8AS1EGwZpkI7Oqqx6ouOacChO
	WezvZ2dNMLg8jtiNPs+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb22N-00BtMC-2R;
	Tue, 29 Aug 2023 16:57:55 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb22L-00BtJh-01
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 16:57:54 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9a1de3417acso4061266b.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 09:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328264; x=1693933064; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=USnPVHhTaTEKWMY0RI8COMBvSuzKiyupj+WtOVSWwH4=;
        b=Jjw02YecGLRub3UZ9JmUUr1eHPmhCRwOzWYwRCp2MD+Phks3ijN8CVhPWFSul2kuO4
         ncMtFD4SeSh8i8/m1Rb/udccRX5vcouxwFpvQ2RKW8uU2xIFAtQgjjUgsLk4VR7OF1Rx
         LPcQirk1Tvpewd5YxviWJMHYeOnsudEVQmKQtQAgajepxEbjRY9Zmt7hrwIPMu9LOnYu
         RPKosEHjcQh/reexgrvZjWg9CvRxQ0em1MwKPqgY46trHpM8xF8tbM5TajYwN2wZ+9MG
         S9wRXD37JN1QRhIbBQXUzgtuhqINDT+5onxCDGQDd7iUfmCDUT6+6UUCJHt5cTh8hECj
         NEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328264; x=1693933064;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=USnPVHhTaTEKWMY0RI8COMBvSuzKiyupj+WtOVSWwH4=;
        b=kRJeQv8v3mmG5V+pj52D5WayWhf81sAkMAtjD/DcXk6trf6aJ15cEp4WknROfpTLW4
         rzVKI4wh+E02XK4MT/xxtikosAlu8AhFnEScUz83EF9yht46gayx1P5OxuT1pbCfibsq
         gFaWtk5q9bazG1qrGXwm9MQzo5UMan8RRNp9Fp+xymMlXxLM8uHGvkuIZpKBBknjsi8F
         oXGyj/oy9eKXbWCP3sjiqRaUczOX8zpOksHI50pEfY1Qj1Do/aOPHvn52zLymyjL1AYY
         vDwxweytrGRlozy+ZdSomX4wFm39HIqRZVnYlLAIFvMt4cg5lS9UTTaFyN3/w51U2koF
         dKuQ==
X-Gm-Message-State: AOJu0YyiG6psPulS3vxFBJSg0OAztUs02CROH0zaRWrA8+RNxReTo7q1
	dDXiF/Pxcgi/2jrsaKlxt7J2/Q==
X-Google-Smtp-Source: AGHT+IFUDlTg4lh2YVHAkkvvKYFu8vTL7QE7o7/B5+sdtauSDrekKlQkM8y9WlfNHo9QkAYi/Ti4TQ==
X-Received: by 2002:a17:907:3e0d:b0:9a1:fed1:9b42 with SMTP id hp13-20020a1709073e0d00b009a1fed19b42mr4249879ejc.23.1693328264045;
        Tue, 29 Aug 2023 09:57:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id v9-20020a170906488900b0099cc36c4681sm6146020ejq.157.2023.08.29.09.57.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 09:57:43 -0700 (PDT)
Message-ID: <97741bfd-70a3-f2ef-fd10-c1aadecd059b@linaro.org>
Date: Tue, 29 Aug 2023 18:57:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/9] phy: qcom: uniphy: Update UNIPHY driver to be a
 common driver
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-4-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-4-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_095753_042109_4A881CBF 
X-CRM114-Status: GOOD (  16.53  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> This patch updates the UNIPHY driver to be a common driver to

Please do not use "This commit/patch", but imperative mood. See longer
explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

> accommodate all UNIPHY / Combo PHY. This driver can be used for
> both USB and PCIe UNIPHY. Using phy-mul-sel from DTS MUX selection
> for USB / PCIe can be acheived.

This patch is entirely unreadable. You speak "unify" but change much
more. There is no code removal, so what are you unifying?

...

> -	phy->phy = devm_phy_create(dev, NULL, of_device_get_match_data(dev));
> -	if (IS_ERR(phy->phy)) {
> -		dev_err(dev, "failed to create PHY\n");
> -		return PTR_ERR(phy->phy);
> +	uniphy->phy = devm_phy_create(dev, NULL, &uniphy_phy_ops);

NAK, really, this does not make sense, is not explained and not needed.
If needed, then it would deserve its own patch with own justification.

> +	if (IS_ERR(uniphy->phy)) {
> +		ret = PTR_ERR(uniphy->phy);
> +		dev_err_probe(dev, ret, "failed to create PHY\n");

That's not even the syntax. By "unifying" you introduce different, wrong
code.

> +		goto err;
>  	}
> -	phy_set_drvdata(phy->phy, phy);
> +
> +	phy_set_drvdata(uniphy->phy, uniphy);
>  
>  	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
>  
> -	return PTR_ERR_OR_ZERO(phy_provider);
> +	ret = PTR_ERR_OR_ZERO(phy_provider);
> +
> +err:
> +	if (uniphy->cfg->pipe_clk_rate)
> +		of_node_put(np);
> +	return ret;
>  }
>  
> -static struct platform_driver ipq4019_usb_phy_driver = {
> -	.probe	= ipq4019_usb_phy_probe,
> +static const struct of_device_id qcom_uniphy_of_match[] = {
> +	{ .compatible = "qcom,usb-hs-ipq4019-phy", .data = &ipq4019_usb_hsphy_cfg},
> +	{ .compatible = "qcom,usb-ss-ipq4019-phy", .data = &ipq4019_usb_ssphy_cfg},
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, qcom_uniphy_of_match);

What happens here?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
