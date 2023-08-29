Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A3A0C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 07:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tySPBCHx09l3MopyItbqkEwuq6huQX7dCUFOVgLWaVw=; b=Xv31uTWURgGxRo
	JRZlZCU9WPR1hz8I5rzyCJwACjw1jh9R/HH2m1L7K+JrkEWv9CIQ+lIwzLoeTGav/6ty6OUhh70Gr
	Ruw9rGD70H9V+ywWkTFeCVRypAdmoB+R8viUiiFYHDCPXmpxo2q5a+xVmUpzcqJZDexHhakICG0xF
	Xr8U/uLK9qnaLpWnuHE70JU0vokGEc8tABDKR/So3g3G5vI2G/BNLtTDNfl++e/5DNX2MR02R8xQR
	N4IZdGtcj8JXQN+b5b3APaeqiIWr7Exv6tpDPJUFjIw9aLiYqd6gjoYB7j5NHDNOk7EOtUEF2zPvm
	dTWMki9O9MqHlVnpNWug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qatTx-00AyfH-2r;
	Tue, 29 Aug 2023 07:49:49 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qatTv-00Ayeb-0d
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 07:49:48 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99de884ad25so542170866b.3
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 00:49:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693295385; x=1693900185;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KBKYwwwaV8cRh5Erh2JbY8liVtcLQI9ggm+DBksrBGg=;
        b=cMcvMqp7jaDjMSNHoVnoDrQOIOKgUKX6gIXsapr6QJVghbnDffQe24TCi9r51GZ0lt
         0Oq80kExgNrupCMNVovjq2GcRlKHqASwmUxcrMPnXwwZI9Osxx41+yxM85Y+vnI63PTA
         PdbT093xQFUk1pixpm5sb9WTirDz9rzTT6MfwazdlgaVbM2kiBG5pWJE+WD8SZXpXson
         Xw5q8KweQf6YalCyI+glbFrA6LcBrzA/8JCsnSAsdDC4eT+fZW9DK4e0mRhchaqgpY5M
         11iQ8WPhD4snX4j8cdSDLi2sqCFDALDT86SukLSZjwtWoHoi6+WHAW4KT8PyyUxfuPyR
         KfmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693295385; x=1693900185;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KBKYwwwaV8cRh5Erh2JbY8liVtcLQI9ggm+DBksrBGg=;
        b=h+PNwQ/8PkoRgnCJsISq4bHrb1ZNWQsObI68RjCdXZtZURjVJk+ZyVfwH00DuT/MFx
         rj4oBCHE8egRURaBX21UF/EMhYcXysN0BOnlAo1lraGXeq+7Baobr04v+AoGnkhJlJaA
         3pmHg6wM/m3TpPJ53AolIYx4/W9JIFUeIzAGquFtRJsLBXzkdWI/DacMlunxxszZTX2n
         ubyO3L92IWz9FPai7yUknsOiHnFzgItSd1Y3W82hqWMBp6ySk4FywsAQ7ciIAheeAMNK
         cP7y+TswBnn5QPIpj/U4D6kqgHX9YfbVnxLZZ6ZBmYDXCgZLiCXx4KSe4tf6aXBVKL3/
         5dyQ==
X-Gm-Message-State: AOJu0Yy4E9RU+iSgSraX5RDMWZhw6qHXs8uejBGLjoOhdxWEBQKugfL0
	5P1c66paGf9OMLtCOili9LZFAQ==
X-Google-Smtp-Source: AGHT+IG2cTz2vabx5GreIaQ1PnVSCZiAxiM8h/wP6ramkRLTgf2Fzb7Ob8c10rlKPj8Le7ZFbM4pOQ==
X-Received: by 2002:a17:907:1dc7:b0:9a5:c7a6:1549 with SMTP id og7-20020a1709071dc700b009a5c7a61549mr1143306ejc.39.1693295385355;
        Tue, 29 Aug 2023 00:49:45 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id mh2-20020a170906eb8200b0099b76c3041csm5586721ejb.7.2023.08.29.00.49.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 00:49:44 -0700 (PDT)
Message-ID: <6d9423d4-0402-bdf5-b8d1-fed5982a6855@linaro.org>
Date: Tue, 29 Aug 2023 09:49:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
 different usecases of i.MX8QM PCIe PHYs
Content-Language: en-US
To: Richard Zhu <hongxing.zhu@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 l.stach@pengutronix.de, a.fatoum@pengutronix.de,
 u.kleine-koenig@pengutronix.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
References: <1693291534-32092-1-git-send-email-hongxing.zhu@nxp.com>
 <1693291534-32092-3-git-send-email-hongxing.zhu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1693291534-32092-3-git-send-email-hongxing.zhu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_004947_253742_AA1DFB9B 
X-CRM114-Status: GOOD (  14.13  )
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

On 29/08/2023 08:45, Richard Zhu wrote:
> Add binding for different usecases of i.MX8QM PCIe PHYs.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

This patch does not make sense on its own. Otherwise your previous patch
has invalid path.

> ---
>  include/dt-bindings/phy/phy-imx8-pcie.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/include/dt-bindings/phy/phy-imx8-pcie.h b/include/dt-bindings/phy/phy-imx8-pcie.h
> index 8bbe2d6538d8..c8425c172118 100644
> --- a/include/dt-bindings/phy/phy-imx8-pcie.h
> +++ b/include/dt-bindings/phy/phy-imx8-pcie.h
> @@ -11,4 +11,11 @@
>  #define IMX8_PCIE_REFCLK_PAD_INPUT	1
>  #define IMX8_PCIE_REFCLK_PAD_OUTPUT	2
>  
> +/*
> + * Different usecases of i.MX8QM HSIO(High Speed IO) module.
> + */
> +#define	PCIEAX2SATA		1
> +#define	PCIEAX1PCIEBX1SATA	2
> +#define	PCIEAX2PCIEBX1		3

Drop indentation. Look at the define few lines above and compare.

Anyway, this is neither explained nor looking like hardware property.
Nothing in the commit msg or in doc here justifies these constants. Drop
and use existing properties.


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
