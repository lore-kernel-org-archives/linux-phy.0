Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54EDAC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 17 Oct 2022 17:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDuNtjjCroW0CneSUs4cO2NPJEBX2Gemdc40/3rXe20=; b=N/6e9+yZbZAf2a
	nMKw+uXCKR+LxtoY1Hgc7wOmfuiRhzkumtoDZAZufMLfwEOLG5sBVd9LXja9ORdAFtKGkNKtdPG4W
	+wSKvA2XaKOa5Y9TnUdNObaX7UbP772GNfV9Haa5Jy0Oy6/05mgM3c/TSTBsP7Ve3IT5kVJ/N0+9z
	AJN3rCCQPaXWnwXUHAShVdPhtcsbwXb5JulP8GARWhXvIO4Alu9/79f3x2KM5IazkQhAdDnFmYnQA
	D0ki6oz1b51oHMSpZKYSlK8PWRuFGyh8hApcIg3pRbA613qRgbJyDczSJyG5uuD6Ih1PlPGpTwLdt
	dMFgbuC+lfG3h273GQKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okTnN-00DyV8-N5; Mon, 17 Oct 2022 17:20:57 +0000
Received: from mail-qv1-xf32.google.com ([2607:f8b0:4864:20::f32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okTnJ-00DySQ-QW
	for linux-phy@lists.infradead.org; Mon, 17 Oct 2022 17:20:55 +0000
Received: by mail-qv1-xf32.google.com with SMTP id i9so7847246qvo.0
        for <linux-phy@lists.infradead.org>; Mon, 17 Oct 2022 10:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d8KFvXWXk+yHpFJT0KTXsfMVjC6a7dZVFBnEd/ZjfUI=;
        b=wf/PwgJ+34F7/B0pCzFjaKHZmmo9BpTXsHL/cr3KMWfaitH5BdFvQnDtuQJn8txoHT
         J0m4i7BCubMwdI8Sb8A8D/kWG4s5Gr66h1DeBNFd8NU3UCHm0N21AMI/nczPyaaPmizi
         v2Ger7sY7Bks0BYMqmBl0gWu+UYdbcKA2xB9e6ze+eNLcElnazUc7foBOURKeeIZPHO7
         4AYmUj1SmNorM8nI1dG9t7z1ZSQnpfcge2nZYjS4UZc0mds6hIUy3+49uQzG7TXIRsFS
         5ZTp/KB18Qe1dy6g62cTgPwbGMwFD7dc1xyQFagDirmlVJdOpEPiRie2a6vsl6mpxp5q
         k7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d8KFvXWXk+yHpFJT0KTXsfMVjC6a7dZVFBnEd/ZjfUI=;
        b=EaTX/Xvg8C25SDgf/X7u71oAGm/Ho0TlJNLCQqopkZF5IqSeZIO8/o1TRCt6+4BO8+
         w6p345fn6Fulx9dmXoxyLPrH/ikKNomADql6rMm7Le7GYGhOKATAsWF2KoHWKbSuHBiM
         8OaKXsemSzZUTbv1nDVbOp9CzVdPGFDaPUPKx58Hd2JAxp1y+EVjyyjJ69T18gM2KMh3
         DXCucRMokjhgx5y4lYfk5RReHTgNyJXx11hiCa8yUSIoEySsSbOnqkobc4tLzU7IGOTS
         kRKU+Lltp6/n+Yc5H/07FSPU9xt44vrhap7xIOqX61w5oMVqC3dxObA1rwha+OyMyacy
         P3yA==
X-Gm-Message-State: ACrzQf32LYU/8SfZHE8xBtvdMhaHQPLfvXRlZvsCe7C+63YZLHio6gz9
	suiSyiTu9F4BQqaS3w8bQmtOAQ==
X-Google-Smtp-Source: AMsMyM6/3ZjXIrE4Qn/bdGiyrsjypB6R/Ooht83aXja1DRa3oM95NXtfLHU3Qi+LnuCL5VdxoSK15Q==
X-Received: by 2002:a0c:9a4c:0:b0:4b1:d3ef:85cc with SMTP id q12-20020a0c9a4c000000b004b1d3ef85ccmr9242276qvd.105.1666027252384;
        Mon, 17 Oct 2022 10:20:52 -0700 (PDT)
Received: from [10.101.5.247] ([148.59.24.28])
        by smtp.gmail.com with ESMTPSA id bv8-20020a05622a0a0800b0038b684a1642sm246319qtb.32.2022.10.17.10.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 10:20:51 -0700 (PDT)
Message-ID: <d6642028-3fb9-4e39-a349-666625dabb9d@linaro.org>
Date: Mon, 17 Oct 2022 13:20:49 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH 10/15] dt-bindings: phy: qcom,qmp-pcie: add sc8280xp
 bindings
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221017145328.22090-1-johan+linaro@kernel.org>
 <20221017145328.22090-11-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221017145328.22090-11-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_102053_916363_C74C858C 
X-CRM114-Status: GOOD (  17.87  )
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

On 17/10/2022 10:53, Johan Hovold wrote:
> Add bindings for the PCIe QMP PHYs found on SC8280XP.
> 
> The PCIe2 and PCIe3 controllers and PHYs on SC8280XP can be used in
> 4-lane mode or as separate controllers and PHYs in 2-lane mode (e.g. as
> PCIe2A and PCIe2B).
> 
> The configuration for a specific system can be read from a TCSR register.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 163 ++++++++++++++++++
>  1 file changed, 163 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml
> new file mode 100644
> index 000000000000..82da95eaa9d6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml

Filename based on compatible, so for example:

qcom,sc8280xp-qmp-pcie-phy.yaml


> @@ -0,0 +1,163 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,qmp-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP PHY controller (PCIe)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> +      - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> +      - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    maxItems: 6
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg_ahb
> +      - const: ref
> +      - const: rchng
> +      - const: pipe
> +      - const: pipediv2
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +
> +  vdda-phy-supply: true
> +
> +  vdda-pll-supply: true
> +
> +  qcom,4ln-config-sel:
> +    description: 4-lane configuration as TCSR syscon phandle, register offset
> +                 and bit number
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      maxItems: 3

You have only one phandle, so you need to describe the items and limit
their number, like here:

https://elixir.bootlin.com/linux/v5.18-rc1/source/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml#L42

This allows you to skip most of property description.

> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
