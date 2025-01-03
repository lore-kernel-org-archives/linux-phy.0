Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF534E77188
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 05:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZT7h5F1he3SxactaItxz7YmU6cUNNSQ5baVT1MDJQeo=; b=iA+xYA/vmBttKc
	DZToZMOuGkTNxPgwBBFjyMn0Is/33CA4VfBNJ5czghq0JNqWl0q8Kn44NcLLuLzFpiaAPxPMT86UR
	9GK+rTH/prHsegOHDNgJTb7oRqYJupQz3JXgIlsVfZE+/eMM5dFU6QmpcZwFzgZtERE/kd5RH/MsJ
	kxnI+Zn3tee3NBzST6SgCI5easnEB0d8Rm9Phr3IkrRmWOJd0hHQrfG79l2yf4HsNpSAwNTjY6QBt
	epQBIofvixXkWlI051vM9dbcYEO10svAEnY5+jBSHjOuARJFu5bWlNHTlrBXGSG4my1nfOAd89JKj
	JLCh5aqQ0uCjzJU4QILQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTaXh-0000000C943-34J3;
	Fri, 03 Jan 2025 05:48:17 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTaXf-0000000C93P-0ETR
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 05:48:16 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5401be44b58so12854542e87.0
        for <linux-phy@lists.infradead.org>; Thu, 02 Jan 2025 21:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735883293; x=1736488093; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ITZIP+H7SQpVXzPPPttp6DmGDQKxV65KZQOmqyrSyow=;
        b=iExmH7rTsTB+pjjeJc1mcF24IFkoYot+jQFxyy30DfGPzNGfSDGDeCLR1PsegnWHkP
         jQnX2bO24V2n4Yh06bveJX3KojB020gXV24L2cNwDvEokiz87gxJyihmQqAzReSd7Ijt
         EhvUeahwcfIm8j4nMQJ0AIfC6gOFdU7tvx2YESVWzo0yO9uCs7nipxHH9hxjDVvFdVEH
         T5gxaMjrWAYSfcoJEl0p4W8YJhBAgZ67g9BG5UfZxldc+r9VFik7UFZX5+HKfvik0zmf
         F7G2H+2naaikB8mdQsY5gOaGNyxjEngOjoEuFJkZHOGKxiFVCmEFjUCnwDKetD+/N59q
         Tl3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735883293; x=1736488093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITZIP+H7SQpVXzPPPttp6DmGDQKxV65KZQOmqyrSyow=;
        b=HdAd4oaGX7dNOgSyqG6TnBCWWxkW+DOMviJsOZCHGIYNASFVST6YAksrkAf3E7iGvZ
         trGHf6km86UGM6wvK6RqbNnw4xZ5ByhcF6A2KmKm8jW/5lMmFx5zG95ux+fT/q/qTRLN
         TUtdGNUe2r0HyFSDdow8RKX3MCfuVEzFRZ1eSus7tjKV2uQnKb3wqjhgNEMuGvZOKXR7
         tVroxBfOTigvV7Y9t7ZNoA0Yhn1ZsxJoemV4vDI1k678zMNzhukO050SHSbvidrhbA6z
         6FSDm8KKPJHQNQdcE86cc70UC42HWAoqXN5eDqDYKivE5N+Q3qmV1xol44e8yHaPbjkL
         Q9KQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgfxlcMeRQybDo/2psGuw/54y0duA0iu3+nQyaBtsVnF7pv4PZU6J0aX6gHWtZJiGz2hBbAT1UCfc=@lists.infradead.org
X-Gm-Message-State: AOJu0YyFA4CD3BPsKoME8zBMv9a4nl5BK7c/ZB0ZuwFtjbVhj2c3VMfa
	1AluhEB2k7aRVDKXGgev5S61jD9PY1yhOFIHTGFuwmPYxZbOKhPN6VoHqjyvRko=
X-Gm-Gg: ASbGncvNnGaK6Dy2IbRR+Z3tiSfq0ImKDA+SLB/5E+5B0LYsh6OL49V1CRGYQ6XNQef
	sFrZjh169ixJe7yOayYsLC2iUsg8SbSPePtPmpjvRTJkKbr9zMWqoef2u0UyxMyjqZTD1jHd9+P
	hkW+yO+1YXNv+Yj9xff8iQsmJjpi51pGRLsjXzL5EE/Cu3Pc2+MhCx20oyWJAqvTE5MtnOQKd4y
	EX8X95nK52ZWeNxRR23plrKkiaxq19H0Ap5k+qtiETdFjs7D4pryMFVd9BxCz9AvEW6RcnTnslh
	Y6M8US1pG2ZSrRzXjCQKR7i/cTKQHfCsAD5p
X-Google-Smtp-Source: AGHT+IHPWdVWih/VxuM1kwjwebDq6JydqrCSUUMDsMiPL2UbsV7YpW8IvSEXyj1tuFAeYhK6nqPhfA==
X-Received: by 2002:a05:6512:3f0d:b0:540:358d:d9b5 with SMTP id 2adb3069b0e04-542294ae2e9mr14575418e87.0.1735883292998;
        Thu, 02 Jan 2025 21:48:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235fed7asm4005816e87.61.2025.01.02.21.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:48:12 -0800 (PST)
Date: Fri, 3 Jan 2025 07:48:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/5] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <nudzgkfufp74eyq3vwuf7f47u6u7xy5cpqw2ktb5vdnpwc7uyv@ar7akuo5q6gp>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-3-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-3-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_214815_111087_73DD5A5E 
X-CRM114-Status: GOOD (  25.24  )
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

On Thu, Jan 02, 2025 at 05:00:16PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: * Use 'num-lanes' to differentiate instead of '3x1' or '3x2'
>       in compatible string
>     * Drop compatible specific init data as there is only one
>       compatible string
>     * Fix header file order
> 
> v4: Fix uppercase hex digit
>     Use phy->id for pipe clock source
> 
> v3: Added 'Reviewed-by: Dmitry Baryshkov' and made following updates
>     s/unsigned int/u32/g
>     Fix 'lane_offset' comments
>     Fix #define tab -> space
>     Fix mixed case hex numbers
>     Fix licensing & owner
>     Change for-loop pointer to use [] instead of ->
>     Use 'less than max' instead of 'not equal to max' in termination condition
>     Smatch and Coccinelle passed
> 
> v2: Drop IPQ5018 related code and data
>     Use uniform prefix for struct names
>     Place "}, {", on the same line
>     In qcom_uniphy_pcie_init(), use for-loop instead of while
>     Swap reset and clock disable order in qcom_uniphy_pcie_power_off
>     Add reset assert to qcom_uniphy_pcie_power_on's error path
>     Use macros for usleep duration
>     Inlined qcom_uniphy_pcie_get_resources & use devm_platform_get_and_ioremap_resource
>     Drop 'clock-output-names' from phy_pipe_clk_register
> ---
>  drivers/phy/qualcomm/Kconfig                  |  12 +
>  drivers/phy/qualcomm/Makefile                 |   1 +
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 287 ++++++++++++++++++
>  3 files changed, 300 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 

[...]

> +
> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct qcom_uniphy_pcie *phy;
> +	struct phy *generic_phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	ret = of_property_read_u32(of_node_get(dev->of_node), "num-lanes",

Who will put the reference count which you have just got?

> +				   &phy->lanes);
> +	if (ret)
> +		phy->lanes = 1;

phy->lanes = 1;
of_property_read_u32(np, "num-lanes", &phy->lanes);

> +
> +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "failed to get resources: %d\n", ret);
> +
> +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
> +	if (IS_ERR(generic_phy))
> +		return PTR_ERR(generic_phy);
> +
> +	phy_set_drvdata(generic_phy, phy);
> +
> +	ret = phy_pipe_clk_register(phy, generic_phy->id);
> +	if (ret)
> +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
> +
> +	phy_provider = devm_of_phy_provider_register(phy->dev,
> +						     of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return PTR_ERR(phy_provider);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver qcom_uniphy_pcie_driver = {
> +	.probe		= qcom_uniphy_pcie_probe,
> +	.driver		= {
> +		.name	= "qcom-uniphy-pcie",
> +		.of_match_table = qcom_uniphy_pcie_id_table,
> +	},
> +};
> +
> +module_platform_driver(qcom_uniphy_pcie_driver);
> +
> +MODULE_DESCRIPTION("PCIE QCOM UNIPHY driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
