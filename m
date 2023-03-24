Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CA70CC6FD20
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 12:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r8RzKkj5r1zmcYBZxC2ZMe6a+Pn4rZVuxhj8gU84OZY=; b=3Yx9250aRRKbGT
	Ipq4Zri83lwqp6tqq1Y/qWHba1KTI9T+P9qCnhnf8zTY2+chWyxqaoOcEHyhdZXXApU0H5s7QsNQa
	EmefAqU4ddo+mZBAz0tSciNtFWixyAcyd8SXxdBagfncDw2HeokDmgMj3TH/gjp7vjnPNo+ACWd6F
	RLzYQT2YLHy5Rofqelix4guhmGELHT1fgcW0OTEcPJh4ypTjGNEvFjJaog3dPVgMZJhmjQ17QgPvO
	h9X3d8o7eEgqN/CfW9HNSZJIH+z/3MmWHC5eQBKGlLJ9Su60JhtDht+a6VDYOUUMPFCtYqmGIzkwl
	JFPwXgjZxsphl0TovQRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgM3-004KND-1X;
	Fri, 24 Mar 2023 12:17:11 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgM1-004KLr-0M
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 12:17:10 +0000
Received: by mail-yb1-xb32.google.com with SMTP id i6so1861101ybu.8
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 05:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679660217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nSWrEyzhO3/ct6qRM8KV8J5HHvsHLckKvs7zRLb5XRc=;
        b=guKLW4AnY+CkcVZWojo5aEi/2Cj75CaYroAezk7fa+Bo1FMsHWLNZlSmXlzp/noYnT
         BMfyeqho3BwF7rYqDHxHb/ziZha3jAbO//a7DiJmMnaL0chQHz2aibmaHJKjIzrZoJkc
         8zSz+SNPWuggiLQBXQ3CDxeMplYW0NMJ729f1q3FhvK1KeoULnN0XBsVljuB9FyDBPC3
         rI/hO5RRVFnBXV5L/bKz9V1cKtGWrhu7AGJXSgW0zoDo7RuOkv2KQsy8gBTca6funaV3
         79WwNQUPefWvNbMRnSUZJgskhjkYmB2mBE2SEHRfFzIq01TiE1SFKiKR/9LlcLuBb6BD
         e5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679660217;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nSWrEyzhO3/ct6qRM8KV8J5HHvsHLckKvs7zRLb5XRc=;
        b=KXrIiPWI59naT5RTLX01sE2V17LI5VWRjKXWjnhjUaUzZctK76qhh+oN3yJ7HccaoF
         Hn6kScWAto6+y9rT7h4GRNhrRfDyBDD01OB1ompnYS1aOMfl5dPgw/oMp9dgpnKd3rUB
         2aog+kOpUmYe6CR+iwwULTh09Yn7QQV4aLX3B2jptz7ZS4BqbL5m6NXfd9qrmbrvypEh
         vQTgE8ZFuCicryGLZpRARDXWzLbQ2M2S01fXHYX2TJUqK6yYuPv5qYIgCFSnqtTTJjAL
         7MmkLu1HVuxrijRhNcfMjV2UNEvHUGZwbCQlBKa4w94L9cglTlxJDsdhTXh4+P3Nmtkd
         E7xw==
X-Gm-Message-State: AAQBX9fTrQF7g5qT2hXhz0Hz6SnWi9ivRWZ3WpjoFKHiUA24BO/k8qM8
	plsqS8Zqp9B9mDmsb5HqLQcU6opxzzdyLxwcU1hGiA==
X-Google-Smtp-Source: AKy350a/ZFDHGcDAX94X6HHyhV/CbwjpVB0Jgmkt+h9lrs+ogLf3FKNIl3mXxo1N7vJkkieP/83n4vKSAo7HOh4TpiU=
X-Received: by 2002:a05:6902:1083:b0:b6d:1483:bc0f with SMTP id
 v3-20020a056902108300b00b6d1483bc0fmr1008661ybu.9.1679660217277; Fri, 24 Mar
 2023 05:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-5-dmitry.baryshkov@linaro.org> <ZB1ZfUCzgcd47VrM@hovoldconsulting.com>
In-Reply-To: <ZB1ZfUCzgcd47VrM@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Mar 2023 14:16:45 +0200
Message-ID: <CAA8EJprGYBaU0-eXur15RH8cb+Fg-WfZYp=k+3RxP0-TLK_Bjw@mail.gmail.com>
Subject: Re: [PATCH 04/41] dt-bindings: phy: migrate QMP PCIe PHY bindings to qcom,sc8280xp-qmp-pcie-phy.yaml
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051709_159795_1731DB1D 
X-CRM114-Status: GOOD (  16.62  )
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

On Fri, 24 Mar 2023 at 10:04, Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Mar 24, 2023 at 05:24:37AM +0300, Dmitry Baryshkov wrote:
> > Migrate legacy bindings (described in qcom,ipq8074-qmp-pcie-phy.yaml)
> > to qcom,sc8280xp-qmp-pcie-phy.yaml. This removes a need to declare
> > the child PHY node or split resource regions.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        | 299 ------------------
> >  .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       | 213 +++++++++++--
> >  2 files changed, 187 insertions(+), 325 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml
>
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > index ef49efbd0a20..328588448c6b 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml
> > @@ -16,10 +16,23 @@ description:
> >  properties:
> >    compatible:
> >      enum:
> > +      - qcom,ipq6018-qmp-pcie-phy
> > +      - qcom,ipq8074-qmp-gen3-pcie-phy
> > +      - qcom,ipq8074-qmp-pcie-phy
> > +      - qcom,msm8998-qmp-pcie-phy
> > +      - qcom,sc8180x-qmp-pcie-phy
> >        - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> >        - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> >        - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> > +      - qcom,sdm845-qhp-pcie-phy
> > +      - qcom,sdm845-qmp-pcie-phy
> > +      - qcom,sdx55-qmp-pcie-phy
> > +      - qcom,sm8250-qmp-gen3x1-pcie-phy
> > +      - qcom,sm8250-qmp-gen3x2-pcie-phy
> > +      - qcom,sm8250-qmp-modem-pcie-phy
> >        - qcom,sm8350-qmp-gen3x1-pcie-phy
> > +      - qcom,sm8450-qmp-gen3x1-pcie-phy
> > +      - qcom,sm8450-qmp-gen4x2-pcie-phy
> >        - qcom,sm8550-qmp-gen3x2-pcie-phy
> >        - qcom,sm8550-qmp-gen4x2-pcie-phy
> >
> > @@ -28,18 +41,12 @@ properties:
> >      maxItems: 2
> >
> >    clocks:
> > -    minItems: 5
> > +    minItems: 3
> >      maxItems: 6
> >
> >    clock-names:
> > -    minItems: 5
> > -    items:
> > -      - const: aux
> > -      - const: cfg_ahb
> > -      - const: ref
> > -      - const: rchng
> > -      - const: pipe
> > -      - const: pipediv2
> > +    minItems: 3
> > +    maxItems: 6
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -50,9 +57,7 @@ properties:
> >
> >    reset-names:
> >      minItems: 1
> > -    items:
> > -      - const: phy
> > -      - const: phy_nocsr
> > +    maxItems: 2
> >
> >    vdda-phy-supply: true
> >
> > @@ -83,11 +88,8 @@ required:
> >    - reg
> >    - clocks
> >    - clock-names
> > -  - power-domains
> >    - resets
> >    - reset-names
> > -  - vdda-phy-supply
> > -  - vdda-pll-supply
> >    - "#clock-cells"
> >    - clock-output-names
> >    - "#phy-cells"
> > @@ -119,21 +121,116 @@ allOf:
> >          compatible:
> >            contains:
> >              enum:
> > -              - qcom,sm8350-qmp-gen3x1-pcie-phy
> > -              - qcom,sm8550-qmp-gen3x2-pcie-phy
> > -              - qcom,sm8550-qmp-gen4x2-pcie-phy
> > +              - qcom,msm8998-qmp-pcie-phy
> >      then:
> >        properties:
> >          clocks:
> > -          maxItems: 5
> > +          maxItems: 4
> >          clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: common
>
> Reset name looks wrong here too.
>
> > +      required:
> > +        - vdda-phy-supply
> > +        - vdda-pll-supply
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,ipq6018-qmp-pcie-phy
> > +              - qcom,ipq8074-qmp-gen3-pcie-phy
> > +              - qcom,ipq8074-qmp-pcie-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: common
>
> Same here.
>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc8180x-qmp-pcie-phy
> > +              - qcom,sdm845-qhp-pcie-phy
> > +              - qcom,sdm845-qmp-pcie-phy
> > +              - qcom,sdx55-qmp-pcie-phy
> > +              - qcom,sm8250-qmp-gen3x1-pcie-phy
> > +              - qcom,sm8250-qmp-gen3x2-pcie-phy
> > +              - qcom,sm8250-qmp-modem-pcie-phy
> > +              - qcom,sm8450-qmp-gen3x1-pcie-phy
> > +              - qcom,sm8450-qmp-gen4x2-pcie-phy
> > +    then:
> > +      properties:
> > +        clocks:
> >            maxItems: 5
> > -    else:
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: refgen
>
> This one should be named 'rchng' and this set a strict subset of the
> sc8280xp clocks.

Ack. Same story as the resets. Let's stop my grumbling and move
clock/reset parsing to legacy vs non-legacy code.

>
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +      required:
> > +        - vdda-phy-supply
> > +        - vdda-pll-supply
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sm8350-qmp-gen3x1-pcie-phy
> > +              - qcom,sm8550-qmp-gen3x2-pcie-phy
> > +        resets:
> > +          minItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +    then:
> >        properties:
> >          clocks:
> > -          minItems: 6
> > +          maxItems: 5
> >          clock-names:
> > -          minItems: 6
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: rchng
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +      required:
> > +        - vdda-phy-supply
> > +        - vdda-pll-supply
> >
> >    - if:
> >        properties:
> > @@ -143,16 +240,53 @@ allOf:
> >                - qcom,sm8550-qmp-gen4x2-pcie-phy
> >      then:
> >        properties:
> > +        clocks:
> > +          maxItems: 5
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: rchng
> > +            - const: pipe
> >          resets:
> >            minItems: 2
> >          reset-names:
> > -          minItems: 2
> > -    else:
> > +          items:
> > +            - const: phy
> > +            - const: phy_nocsr
> > +      required:
> > +        - vdda-phy-supply
> > +        - vdda-pll-supply
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc8280xp-qmp-gen3x1-pcie-phy
> > +              - qcom,sc8280xp-qmp-gen3x2-pcie-phy
> > +              - qcom,sc8280xp-qmp-gen3x4-pcie-phy
> > +    then:
> >        properties:
> > +        clocks:
> > +          minItems: 6
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: rchng
> > +            - const: pipe
> > +            - const: pipediv2
> >          resets:
> > -          maxItems: 1
> > +          minItems: 1
> >          reset-names:
> > -          maxItems: 1
> > +          items:
> > +            - const: phy
> > +      required:
> > +        - vdda-phy-supply
> > +        - vdda-pll-supply
> >
> >  examples:
> >    - |
> > @@ -213,3 +347,30 @@ examples:
> >
> >        #phy-cells = <0>;
> >      };
> > +  - |
> > +    #define GCC_PCIE1_PHY_REFGEN_CLK   47
> > +    #define GCC_PCIE_PHY_AUX_CLK       71
> > +    #define GCC_PCIE_WIGIG_CLKREF_EN   74
> > +
> > +    phy@1c0e000 {
> > +        compatible = "qcom,sm8250-qmp-gen3x2-pcie-phy";
> > +        reg = <0x01c0e000 0x1c0>;
> > +
> > +        clocks = <&gcc GCC_PCIE_PHY_AUX_CLK>,
> > +                 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> > +                 <&gcc GCC_PCIE_WIGIG_CLKREF_EN>,
> > +                 <&gcc GCC_PCIE1_PHY_REFGEN_CLK>,
> > +                 <&gcc GCC_PCIE_1_PIPE_CLK>;
> > +        clock-names = "aux", "cfg_ahb", "ref", "refgen", "pipe";
> > +
> > +        resets = <&gcc GCC_PCIE_1_PHY_BCR>;
> > +        reset-names = "phy";
> > +
> > +        vdda-phy-supply = <&vreg_l10c_0p88>;
> > +        vdda-pll-supply = <&vreg_l6b_1p2>;
> > +
> > +        #clock-cells = <0>;
> > +        clock-output-names = "pcie_1_pipe_clk";
> > +
> > +        #phy-cells = <0>;
> > +    };
>
> This example also looks redundant.
>
> Johan



-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
