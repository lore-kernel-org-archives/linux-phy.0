Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 630B5C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 19 Dec 2022 09:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfQUN4eGmrQ4oyNJqdXzOfsFiekKPN6PIAMTmDR0BqM=; b=h7HaT8OyTxp8RG
	yt/+Gf1O515mV0Yqt+LH2dBTeXF2TL2Of2ITD38y8jYmVofDUQCfXLAIQTMBPUXfVIAmSkAbQ3yDs
	yOufN45M/mcNR1HzRmemPkJkTcHxVMHjUbvlEJJbpf9CrmF5eIH4eDJJnmh5Dehhv9qnecQ1pb+im
	CJ8A4WREm9AigT494MtcsEvaHgrcN9/Eu72H92buacauGzaW0s9Xjhi++Fom9daEs4gSMhF8GZdft
	MajTKNx8PAVfFaOpxruq2J0zuNRbtkXc4v1TNf0z2HYwUHr1J74lwomUuPVOYkb7nbGNmjOjeq1Mt
	RQNfGWOhcqsReM9sAG3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7CHE-00B7Yj-R0; Mon, 19 Dec 2022 09:17:41 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7CGL-00B71D-4Q
	for linux-phy@lists.infradead.org; Mon, 19 Dec 2022 09:16:49 +0000
Received: by mail-lj1-x22a.google.com with SMTP id x11so8419407ljh.7
        for <linux-phy@lists.infradead.org>; Mon, 19 Dec 2022 01:16:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/FjB5JXmDES2VPNlWMj2mHFDZX6qCMhDUQfH/EbbPPA=;
        b=pnzPivHrib8qRe9pF4RYmYlVy/o9HYSUt3Qs4A02PrAFl6LUdtxKWSEpr1T/x4H8ex
         mQ8VqYnEy7gDzPiTL57Zp7JRrDi1WpIeS8p3P8cXcEBF/vLYo66tN5r4zAOBl8JzkfnJ
         /IIaBXCjRJmFmRuCHUVB303+VBEQ3MdPNyWzMNCudsp3uqXAreEqvv7iDbC55oY47mmG
         2ZAF4BRggfGDKhpU499EcyGf3P5/xpKxSECZVUr2xAksoYpQ4xAEe2C77fzleO5sDkdm
         F/R7jVQkvvj4r6XSXX7VLDof3wz58L2Oz9JoGh06cFnpKw1TBhnDSS3zmB79Tk4ba16d
         YvuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/FjB5JXmDES2VPNlWMj2mHFDZX6qCMhDUQfH/EbbPPA=;
        b=Yq5xAI1RJOsG2LEoXnDbv7VhqQCHP50NDxz4XnSslKRtCdQrOOC5O5PYeBmyfRw4yw
         bjct6+F+9PCw9hblL5D1xPTD03O69iTuOLKTWPqWb/Hx+dPMxapa9X0RHbcfVSu8xeS3
         mE3YNsamYlPzFyyCrEEnmxiMhISX8TBfw2i+FHW/NbMBBJ/8Q3GhTTRBJ39Tk8HuBprM
         kwNNYT8K1kw+UrUBeYSWqQIyfgjooXhUCQ7vDIN9SXtEVgZhMHSlFO2+MwTpnIr5eEYD
         r5FWYDvC5RmYe8EOXsT54vcz9jmxF5RcxTmw9oCg+ySBUOle83Vqvcfk73SRSkqTpu5v
         uGHg==
X-Gm-Message-State: ANoB5pm17ie1xHuiXUXVlYXDB5Zl8ClONfe4iad74/wU+LBMlplZsREv
	Jh9IhOuTnE5/j9x9ktF1jml0oQ==
X-Google-Smtp-Source: AA0mqf6h/VU+p+DL8VHfXCZIjRHPaxM8oXFoXjCDtucWvcsCeGsGI3Gl1lT7SWhaDTSn2zOhVsb8fQ==
X-Received: by 2002:a2e:7d11:0:b0:279:cdff:4a2c with SMTP id y17-20020a2e7d11000000b00279cdff4a2cmr10854297ljc.19.1671441402506;
        Mon, 19 Dec 2022 01:16:42 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b3-20020a2eb903000000b0027c8bc7d6fcsm657434ljb.136.2022.12.19.01.16.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Dec 2022 01:16:42 -0800 (PST)
Message-ID: <da81c0f0-8ad5-cf2d-a62b-0bbb1d98795f@linaro.org>
Date: Mon, 19 Dec 2022 10:16:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,pcie2-phy: convert to YAML
 format
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221216234027.539917-1-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221219_011645_250321_FF43D27F 
X-CRM114-Status: GOOD (  17.09  )
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

On 17/12/2022 00:40, Dmitry Baryshkov wrote:
> Convert the bindings for the Qualcomm PCIe2 PHY into the YAML format
> from the text description.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../bindings/phy/qcom,pcie2-phy.yaml          | 87 +++++++++++++++++++
>  .../bindings/phy/qcom-pcie2-phy.txt           | 42 ---------
>  2 files changed, 87 insertions(+), 42 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom-pcie2-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> new file mode 100644
> index 000000000000..497850a5b428
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,pcie2-phy.yaml
> @@ -0,0 +1,87 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,pcie2-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm PCIe2 PHY controller
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  The Qualcomm PCIe2 PHY is a Synopsys based phy found in a number of Qualcomm
> +  platforms.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: qcom,qcs404-pcie2-phy
> +      - const: qcom,pcie2-phy
> +
> +  reg:
> +    items:
> +      - description: PHY register set
> +
> +  clocks:
> +    items:
> +      - description: a clock-specifier pair for the "pipe" clock
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  vdda-vp-supply:
> +    description: phandle to low voltage regulator

Drop "phandle to"

> +
> +  vdda-vph-supply:
> +    description: phandle to high voltage regulator

Drop "phandle to"


> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +      - const: pipe

Blank line

> +  "#clock-cells":
> +    const: 0
> +
> +  clock-output-names:
> +    maxItems: 1

Maybe keep both next to "clocks"? And same order in "required:".

> +
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +  - clocks
> +  - vdda-vp-supply
> +  - vdda-vph-supply
> +  - resets
> +  - reset-names
> +  - clock-output-names
> +  - "#clock-cells"
> +


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
