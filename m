Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9732AFA3744
	for <linux-phy@archiver.kernel.org>; Mon, 31 Oct 2022 21:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1zy+dGwPk2+vW9ScWwxCWC4C3I9YND7nQTsjCCXE8dE=; b=UGspBXFHKxbpzh
	100O0zjopaIsFlPNOzmr7/s0E2kKUQJaHdWtMUd/N8lcv1cjz4I2sXIaN6t2QZBJ80bCqg5bh5/OR
	krSgpZ22X3OaRS5Ii8weh748L0Pf/TzPTlO7MCOxrfPjPABBjLeEJYge3/8Q4C3LIrmiABzJoFxux
	XM7xmj2rydFM9J4zQcby2gUUxaAUhDotPyr7ARYgyZqbwdF3S/xrMvIkgb1hcAJFq15mfLgp1jHj4
	NtiiaRtHSa8a8mSYkjzd/R4i5QzEL1+0yCWFp2PxivOVMEpxC+6b+Mjc1XHTh51LTu5QsDLGJPQ/B
	f/cBQZEjgq7bix29Zm9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcWk-00FgpM-0X; Mon, 31 Oct 2022 21:41:02 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opcWg-00FgoO-Pl
	for linux-phy@lists.infradead.org; Mon, 31 Oct 2022 21:41:00 +0000
Received: by mail-oi1-f179.google.com with SMTP id p127so14106571oih.9
        for <linux-phy@lists.infradead.org>; Mon, 31 Oct 2022 14:40:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mlMMIdkObfUr9qYTCNdNHOKuPcSUCkYHWNEEbcfJk5c=;
        b=hWow+HiPjyTsszuOWmkWyg1c1Lm8QArhXjM+SzFM3dmh/ha5BGqtGli/J1j1GKJ260
         vs9vCzcR7z+ts9Q7pfJ8/9jzYHgMTWm5S/uqNbMIm73+b7y8VWLiU1r+8+j8R3bRlcMY
         nK87UB9E41R7K1PW6WTIQyUlXO+Zh4oxZnIUQ14z3yxAaI8gLIQCFUftostQvS6bKrf9
         yjaSd/Hx+4GOed3652pR2faTQRvzxO0VF34iV8sNMkdUv6pEV6oUaTNUQeP+CQ3PxyWe
         9P4C6w+15kzC3tqw1W6vfa8iMqF4x9/jL3KDom4kznF9GUtGvJ2fG9lNz9YRpqLa689l
         rPnA==
X-Gm-Message-State: ACrzQf3azQ9jBHr/CxKD2DOMisuUk1GT8mZNwR3UN4xWHSx0XYEEyDGm
	2a1B3b/d65Lh2y7BEJKV+g==
X-Google-Smtp-Source: AMsMyM4KDTKdv5e5Ppj8ZC5PVriR1NmIcUbAeITff06//T8brlplI5BWCZLdZdgGfaJONAUZpSnFTQ==
X-Received: by 2002:a05:6808:1708:b0:351:6d9b:a957 with SMTP id bc8-20020a056808170800b003516d9ba957mr16671124oib.70.1667252454726;
        Mon, 31 Oct 2022 14:40:54 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id be27-20020a056808219b00b00339befdfad0sm2740916oib.50.2022.10.31.14.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 14:40:54 -0700 (PDT)
Received: (nullmailer pid 3617874 invoked by uid 1000);
	Mon, 31 Oct 2022 21:40:55 -0000
Date: Mon, 31 Oct 2022 16:40:55 -0500
From: Rob Herring <robh@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@somainline.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jingoo Han <jingoohan1@gmail.com>, Gustavo Pimentel <gustavo.pimentel@synopsys.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/7] dt-bindings: PCI: qcom: Add sm8350 to bindings
Message-ID: <20221031214055.GA3613285-robh@kernel.org>
References: <20221029211312.929862-1-dmitry.baryshkov@linaro.org>
 <20221029211312.929862-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221029211312.929862-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_144058_875161_7F5B26E0 
X-CRM114-Status: GOOD (  16.80  )
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

On Sun, Oct 30, 2022 at 12:13:06AM +0300, Dmitry Baryshkov wrote:
> Add bindings for two PCIe hosts on SM8350 platform. The only difference
> between them is in the aggre0 clock, which warrants the oneOf clause for
> the clocks properties.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../devicetree/bindings/pci/qcom,pcie.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index 54f07852d279..55bf5958ef79 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -32,6 +32,7 @@ properties:
>        - qcom,pcie-sdm845
>        - qcom,pcie-sm8150
>        - qcom,pcie-sm8250
> +      - qcom,pcie-sm8350
>        - qcom,pcie-sm8450-pcie0
>        - qcom,pcie-sm8450-pcie1
>        - qcom,pcie-ipq6018
> @@ -185,6 +186,7 @@ allOf:
>                - qcom,pcie-sc8180x
>                - qcom,pcie-sc8280xp
>                - qcom,pcie-sm8250
> +              - qcom,pcie-sm8350
>                - qcom,pcie-sm8450-pcie0
>                - qcom,pcie-sm8450-pcie1
>      then:
> @@ -540,6 +542,57 @@ allOf:
>            items:
>              - const: pci # PCIe core reset
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-sm8350
> +    then:
> +      oneOf:
> +          # Unfortunately the "optional" ref clock is used in the middle of the list
> +        - properties:
> +            clocks:
> +              maxItems: 13
> +            clock-names:
> +              items:
> +                - const: pipe # PIPE clock
> +                - const: pipe_mux # PIPE MUX
> +                - const: phy_pipe # PIPE output clock
> +                - const: ref # REFERENCE clock
> +                - const: aux # Auxiliary clock
> +                - const: cfg # Configuration clock
> +                - const: bus_master # Master AXI clock
> +                - const: bus_slave # Slave AXI clock
> +                - const: slave_q2a # Slave Q2A clock
> +                - const: tbu # PCIe TBU clock
> +                - const: ddrss_sf_tbu # PCIe SF TBU clock
> +                - const: aggre0 # Aggre NoC PCIe0 AXI clock

'enum: [ aggre0, aggre1 ]' and 'minItems: 12' would eliminate the 2nd 
case. There's a implicit requirement that string names are unique (by 
default).

> +                - const: aggre1 # Aggre NoC PCIe1 AXI clock
> +        - properties:
> +            clocks:
> +              maxItems: 12
> +            clock-names:
> +              items:
> +                - const: pipe # PIPE clock
> +                - const: pipe_mux # PIPE MUX
> +                - const: phy_pipe # PIPE output clock
> +                - const: ref # REFERENCE clock
> +                - const: aux # Auxiliary clock
> +                - const: cfg # Configuration clock
> +                - const: bus_master # Master AXI clock
> +                - const: bus_slave # Slave AXI clock
> +                - const: slave_q2a # Slave Q2A clock
> +                - const: tbu # PCIe TBU clock
> +                - const: ddrss_sf_tbu # PCIe SF TBU clock
> +                - const: aggre1 # Aggre NoC PCIe1 AXI clock
> +      properties:
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          items:
> +            - const: pci # PCIe core reset
> +
>    - if:
>        properties:
>          compatible:
> @@ -670,6 +723,7 @@ allOf:
>                - qcom,pcie-sdm845
>                - qcom,pcie-sm8150
>                - qcom,pcie-sm8250
> +              - qcom,pcie-sm8350
>                - qcom,pcie-sm8450-pcie0
>                - qcom,pcie-sm8450-pcie1
>      then:
> -- 
> 2.35.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
