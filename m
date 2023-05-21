Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DFE2C7EE23
	for <linux-phy@archiver.kernel.org>; Sun, 21 May 2023 20:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hhlOkbbEM/o7v0tj+DYNgsfeMckRjwK70koNSsGVtFs=; b=q8uv7TeZcoBqME
	MFCzZG3RnDwKI6VKav1wIxCwOuYa7JE1AE6edCPPsSHbWyj3Pl0rDIqgoPWJe2gEuHgycmJs/iqyY
	njU6qDra3NJCiNrvWM8WJtZ/mbSZkysr/MiVmCS56LbdxZSap+RTTWObyrxID7XsD43cAPr3PdQBR
	Ord0/HEhd32HEGMTmY1Du0F0d+b7PwzQshTBRQFAsUcL2Fh27Yek9i2+XbNcOP0DaFZL6opRGT0bp
	mJOWUB1G3SO/k6bo3o1MRc+hbrS5oSMIQ6TwMGeYzJbeZqvttRGFPPvsdL5mVKCbWa2yW3qFpF8C1
	5whOva9mnPaDbUVWJ14A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q0q7u-004elC-0B;
	Sun, 21 May 2023 20:58:02 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q0q7r-004ekJ-0X
	for linux-phy@lists.infradead.org;
	Sun, 21 May 2023 20:58:00 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4f2676d62a2so5765508e87.0
        for <linux-phy@lists.infradead.org>; Sun, 21 May 2023 13:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684702677; x=1687294677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j8VgRiwl/tsNhAm0CEALdxN74kfHKIFrIlet29wp6ag=;
        b=bJ1SiCO5hhg/s+RqhzEQ/OtlfMMGNW+oEli/37gQlFgxaCcso3DVr3j6tnXu1JL+sW
         auo2g8Vf5xccd7QiidhFV2dQDGFmJ0CxwTQs+RvAenXRDiJDgfSYXGX2hS7sTX251DJg
         Sjohh6lrZYr7kaIRZiek1yMVeMIAtEpzX07E3FYJLwkjNaukAOpI/CWCZO/Qh76uNUGB
         cYbcFrdQwUf/XqXsLolR9W326JfTeYTgu7W/TctwUZEu28udj2uGqj8nxCvGEYM4oO//
         QjfEMAD0MtGAmk+ff4qElud7DzwLAtMYeL19MLN2EjsuIzdX7WlMDwg+OM5JvlWrxOjT
         PmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684702677; x=1687294677;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j8VgRiwl/tsNhAm0CEALdxN74kfHKIFrIlet29wp6ag=;
        b=VuU1h4tLwPaF+E4ijsFKvh1DsDxh7a0ACnxeD3dH16qCuzKzZbpiP8enFjvTLzCyIQ
         8u703zxoRl8c5RlZYEvQ6lE5sYOo2KHLiOrGVjqbyAfv8DSdUC2X4xe4/oUAmb0Ak0rp
         ADEUFowYR+Tps5NE9c+MU6JONR+rh2uTPGsoTHBBRxdJmIZuVYlZKc9caPhSum874kNC
         WMwgzu4AzAqhvzVA5saFRA/wWmreO71RFZhW35vuQ3JcPwAOUWQDXEaeTlZ0moioGyZt
         dmpBY3Jt8WqINudQA67jtshkX8KTlhEIBbY9igXYOycI/Crm2KTa8A6bg5rNmDPVwevX
         WCsA==
X-Gm-Message-State: AC+VfDys/8+zxF8u2FQadClwiwzeWp0ZOYl0+Xap81EU68KQxQxwmLkq
	WygNm5yffJUYQh7WCH2BGUZAUQ==
X-Google-Smtp-Source: ACHHUZ5t6z6Z/Pzc3RXPwIkR8BYJtuzC364yOjRapibj1hxvGc9LTzDSTBdOYaBYejxngr7JmrhU2A==
X-Received: by 2002:a19:ee15:0:b0:4f3:ac64:84d9 with SMTP id g21-20020a19ee15000000b004f3ac6484d9mr2232089lfb.20.1684702676948;
        Sun, 21 May 2023 13:57:56 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id q6-20020ac25146000000b004f391369ccbsm733232lfd.55.2023.05.21.13.57.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 May 2023 13:57:56 -0700 (PDT)
Message-ID: <874a328c-bbfb-00cb-4b2e-69132605cb2d@linaro.org>
Date: Sun, 21 May 2023 23:57:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/2] dt-bindings: phy: qcom,qmp-pcie: Add ipq9574
 bindings
Content-Language: en-GB
To: Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
 quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
 quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230519085723.15601-1-quic_devipriy@quicinc.com>
 <20230519085723.15601-2-quic_devipriy@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230519085723.15601-2-quic_devipriy@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230521_135759_235972_E8F19771 
X-CRM114-Status: GOOD (  18.42  )
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

On 19/05/2023 11:57, Devi Priya wrote:
> Add bindings for the PCIe QMP PHYs found on IPQ9574.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>   Changes in V2:
> 	- Picked up the R-b tag
> 	- Did not convert the clock IDs to numerical values as the clock
> 	  header (dependent patch) is merged in latest rc1.
> 
>   .../phy/qcom,ipq9574-qmp-pcie-phy.yaml        | 90 +++++++++++++++++++
>   1 file changed, 90 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> new file mode 100644
> index 000000000000..7c8012647051
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq9574-qmp-pcie-phy.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq9574-qmp-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP PHY controller (PCIe, IPQ9574)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  The QMP PHY controller supports physical layer functionality for a number of
> +  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,ipq9574-qmp-gen3x1-pcie-phy
> +      - qcom,ipq9574-qmp-gen3x2-pcie-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 5
> +
> +  clock-names:
> +    items:
> +      - const: aux
> +      - const: cfg_ahb
> +      - const: anoc_lane
> +      - const: snoc_lane
> +      - const: pipe

Could you please reorder the clocks in the following way:
- aux
- cfg_ahb
- pipe
- .. the rest

This will allow us to use this schema for other IPQ QMP PCIe PHYs.

> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy
> +      - const: common
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clock-output-names:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#clock-cells"
> +  - clock-output-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,ipq9574-gcc.h>
> +    #include <dt-bindings/reset/qcom,ipq9574-gcc.h>
> +
> +    pcie0_phy: phy@84000 {
> +      compatible = "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +      reg = <0x00084000 0x1000>;
> +
> +      clocks = <&gcc GCC_PCIE0_AUX_CLK>,
> +               <&gcc GCC_PCIE0_AHB_CLK>,
> +               <&gcc GCC_ANOC_PCIE0_1LANE_M_CLK>,
> +               <&gcc GCC_SNOC_PCIE0_1LANE_S_CLK>,
> +               <&gcc GCC_PCIE0_PIPE_CLK>;
> +      clock-names = "aux", "cfg_ahb", "anoc_lane", "snoc_lane", "pipe";
> +
> +      resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +               <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +      reset-names = "phy", "common";
> +
> +      #clock-cells = <0>;
> +      clock-output-names = "gcc_pcie0_pipe_clk_src";
> +
> +      #phy-cells = <0>;
> +    };

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
