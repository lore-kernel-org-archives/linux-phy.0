Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BFE2C761AF
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 12:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4AxnS8v0z+axUWIzYEDkAGtskZKbM77WrV9HaXIPA4=; b=VNEmhaGn1hWLr5
	+jvn7CeUiWSov5iq3kxQ9l4trlHg39q4xODO7C5m9O9jABRAShxZ5KoerJg5XIyzSj/lQhh2SWtwN
	2G396N8RmxAdlOeYwWKpB1pb9OvB6zMQJD2zvFKqoFaBh7azvDmfCikGG4pK9OlEhSPbrTi1rdsSH
	hSv/1ycY1HjvkCnT3FttKOoY0nGSJ6T3MPCLhboimx8OOs0FnLWQ3l8q+t7wBHsBjTRZavjzOMzZz
	LMnbhV1pA+2l854dyISETg5f8EHPVMc8M8wBSy0gwRcZ3OIeQRb04ieLzfUEbdqIJLLwgR4Y9ABEJ
	hsA/NXJbCM4UQMLPcb0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgIH-004JzP-05;
	Fri, 24 Mar 2023 12:13:17 +0000
Received: from mail-yw1-x1129.google.com ([2607:f8b0:4864:20::1129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfgIC-004JyK-1z
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 12:13:15 +0000
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-544787916d9so28739277b3.13
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 05:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679659990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZzpVEXJvPimUTjX3IvOID6FMMweXtMXfaCNLaAKo/8=;
        b=FvCjH/7JM9hBt+Y2K0357QFxTt1yX/SFv1UttlF6qvi1g4K4Q+ZTQMC051OMIUeDrC
         QkR4HJVXmZSbVcdvsOhC18ZR2KcsLIaCMmP5q37msITZYdlldfqf0hkGvprHOeKDvuCe
         jL3x4T2jsMcBf2qKi2GZLs7TWgF0J+UAz/PWl8ijuI1D67223qHs1omuYRqIqSjUcVZW
         FEfFfKrDzGEz0ayWTodwLp4b02mzchTURFQzYSj38VxKKXbXxVjucbz7CGK6A+NWT8q+
         rIo8yCLhe992E+pWrK5bDHn8+KqHVNfStIinMIqIuiTHOlTlZZ/HgSKGN0XYnI0KF5bf
         z0xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679659990;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7ZzpVEXJvPimUTjX3IvOID6FMMweXtMXfaCNLaAKo/8=;
        b=lpv6IG6xLS7qbzjvPuZqZ2v53bXRWZZss6XHj6C55giEWmKG/+cX4bSs0B4FAwwkJK
         /Kx6vCf3pe4A51pj7iiLt4yY4jl7YGUzmBSDtm9egtVQmySV4pklpVrbv6KcuUu87kux
         W8/N1Cj2mOqrCVi/aePQy6GYWCPnPQz20Ce8g8grPj3rPLl2WF/q9J/i+67Len9bgh+g
         l5bL9cZBCrhlbkxbhH3gEhXhY/RETjtnPEx7wA6DS2q3vOwyFRAx6NVERdGQTny5J7bM
         y+AVCLwz/eWHGkwpFHOcOdwtxWUAB9kYNh65pD4t9Re4+c6a+rG9nlRpNigaa8iQ4zhP
         zCrQ==
X-Gm-Message-State: AAQBX9dF/akED6QGCxeESKBjXlB3GxlmfeliqrlWPV4CieRMyFV93Ddp
	oi9zMdOikiHSda3SqB/CERtvoJ6Nxel55HAk69QbIQ==
X-Google-Smtp-Source: AKy350ZMVeWdF/AF3ovch+47h+zQwV0TSNwHia4K/7eki60FUJt/NOr0uehvv0I0ZieT/tz/9JMfTA8XPHSDhJQYwQA=
X-Received: by 2002:a81:4410:0:b0:545:a7d8:f278 with SMTP id
 r16-20020a814410000000b00545a7d8f278mr742029ywa.5.1679659990046; Fri, 24 Mar
 2023 05:13:10 -0700 (PDT)
MIME-Version: 1.0
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-2-dmitry.baryshkov@linaro.org> <ZB1VwTRhgURGKuUB@hovoldconsulting.com>
In-Reply-To: <ZB1VwTRhgURGKuUB@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Mar 2023 14:12:58 +0200
Message-ID: <CAA8EJpqbGRYMpF=TJediR6NMBrwnB23TYQwqCaA+fZymWCTGiQ@mail.gmail.com>
Subject: Re: [PATCH 01/41] dt-bindings: phy: migrate QMP USB PHY bindings to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
To: Johan Hovold <johan@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_051312_680573_B58F6148 
X-CRM114-Status: GOOD (  19.88  )
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

On Fri, 24 Mar 2023 at 09:48, Johan Hovold <johan@kernel.org> wrote:
>
> On Fri, Mar 24, 2023 at 05:24:34AM +0300, Dmitry Baryshkov wrote:
> > Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
> > to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
> > the child PHY node or split resource regions.
>
> This needs to be done more care, rather than just dumping the old mess
> we have in the new schema file.

Yes, I thought it would be an easier thing. Thank you for your
comments. A (hopefully) good thing is that this also resulted in
several fixes which might be immediately beneficial.

>
> Same comment for the other conversions.
>
> NAK for the whole series for now.
>
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 394 ------------------
> >  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 236 ++++++++++-
> >  2 files changed, 226 insertions(+), 404 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > deleted file mode 100644
> > index e81a38281f8c..000000000000
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > +++ /dev/null
> > @@ -1,394 +0,0 @@
> > -# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > -%YAML 1.2
> > ----
> > -$id: http://devicetree.org/schemas/phy/qcom,msm8996-qmp-usb3-phy.yaml#
> > -$schema: http://devicetree.org/meta-schemas/core.yaml#
> > -
> > -title: Qualcomm QMP PHY controller (USB, MSM8996)
> > -
> > -maintainers:
> > -  - Vinod Koul <vkoul@kernel.org>
> > -
> > -description:
> > -  QMP PHY controller supports physical layer functionality for a number of
> > -  controllers on Qualcomm chipsets, such as, PCIe, UFS, and USB.
> > -
> > -  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
> > -  qcom,sc8280xp-qmp-usb3-uni-phy.yaml.
> > -
> > -properties:
> > -  compatible:
> > -    enum:
> > -      - qcom,ipq6018-qmp-usb3-phy
> > -      - qcom,ipq8074-qmp-usb3-phy
> > -      - qcom,msm8996-qmp-usb3-phy
> > -      - qcom,msm8998-qmp-usb3-phy
> > -      - qcom,qcm2290-qmp-usb3-phy
> > -      - qcom,sc7180-qmp-usb3-phy
> > -      - qcom,sc8180x-qmp-usb3-phy
> > -      - qcom,sdm845-qmp-usb3-phy
> > -      - qcom,sdm845-qmp-usb3-uni-phy
> > -      - qcom,sdx55-qmp-usb3-uni-phy
> > -      - qcom,sdx65-qmp-usb3-uni-phy
> > -      - qcom,sm6115-qmp-usb3-phy
> > -      - qcom,sm8150-qmp-usb3-phy
> > -      - qcom,sm8150-qmp-usb3-uni-phy
> > -      - qcom,sm8250-qmp-usb3-phy
> > -      - qcom,sm8250-qmp-usb3-uni-phy
> > -      - qcom,sm8350-qmp-usb3-phy
> > -      - qcom,sm8350-qmp-usb3-uni-phy
> > -      - qcom,sm8450-qmp-usb3-phy
> > -
> > -  reg:
> > -    minItems: 1
> > -    items:
> > -      - description: serdes
> > -      - description: DP_COM
> > -
> > -  "#address-cells":
> > -    enum: [ 1, 2 ]
> > -
> > -  "#size-cells":
> > -    enum: [ 1, 2 ]
> > -
> > -  ranges: true
> > -
> > -  clocks:
> > -    minItems: 3
> > -    maxItems: 4
> > -
> > -  clock-names:
> > -    minItems: 3
> > -    maxItems: 4
> > -
> > -  power-domains:
> > -    maxItems: 1
> > -
> > -  resets:
> > -    maxItems: 2
> > -
> > -  reset-names:
> > -    maxItems: 2
> > -
> > -  vdda-phy-supply: true
> > -
> > -  vdda-pll-supply: true
> > -
> > -  vddp-ref-clk-supply: true
> > -
> > -patternProperties:
> > -  "^phy@[0-9a-f]+$":
> > -    type: object
> > -    description: single PHY-provider child node
> > -    properties:
> > -      reg:
> > -        minItems: 3
> > -        maxItems: 6
> > -
> > -      clocks:
> > -        items:
> > -          - description: PIPE clock
> > -
> > -      clock-names:
> > -        deprecated: true
> > -        items:
> > -          - const: pipe0
> > -
> > -      "#clock-cells":
> > -        const: 0
> > -
> > -      clock-output-names:
> > -        maxItems: 1
> > -
> > -      "#phy-cells":
> > -        const: 0
> > -
> > -    required:
> > -      - reg
> > -      - clocks
> > -      - "#clock-cells"
> > -      - clock-output-names
> > -      - "#phy-cells"
> > -
> > -    additionalProperties: false
> > -
> > -required:
> > -  - compatible
> > -  - reg
> > -  - "#address-cells"
> > -  - "#size-cells"
> > -  - ranges
> > -  - clocks
> > -  - clock-names
> > -  - resets
> > -  - reset-names
> > -  - vdda-phy-supply
> > -  - vdda-pll-supply
> > -
> > -additionalProperties: false
> > -
> > -allOf:
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,sc7180-qmp-usb3-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 4
> > -        clock-names:
> > -          items:
> > -            - const: aux
> > -            - const: cfg_ahb
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 1
> > -        reset-names:
> > -          items:
> > -            - const: phy
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,sdm845-qmp-usb3-uni-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 4
> > -        clock-names:
> > -          items:
> > -            - const: aux
> > -            - const: cfg_ahb
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy
> > -            - const: common
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,ipq8074-qmp-usb3-phy
> > -              - qcom,msm8996-qmp-usb3-phy
> > -              - qcom,msm8998-qmp-usb3-phy
> > -              - qcom,sdx55-qmp-usb3-uni-phy
> > -              - qcom,sdx65-qmp-usb3-uni-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 3
> > -        clock-names:
> > -          items:
> > -            - const: aux
> > -            - const: cfg_ahb
> > -            - const: ref
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy
> > -            - const: common
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,sm8150-qmp-usb3-phy
> > -              - qcom,sm8150-qmp-usb3-uni-phy
> > -              - qcom,sm8250-qmp-usb3-uni-phy
> > -              - qcom,sm8350-qmp-usb3-uni-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 4
> > -        clock-names:
> > -          items:
> > -            - const: aux
> > -            - const: ref_clk_src
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy
> > -            - const: common
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,sm8250-qmp-usb3-phy
> > -              - qcom,sm8350-qmp-usb3-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 3
> > -        clock-names:
> > -          items:
> > -            - const: aux
> > -            - const: ref_clk_src
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy
> > -            - const: common
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,qcm2290-qmp-usb3-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 3
> > -        clock-names:
> > -          items:
> > -            - const: cfg_ahb
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy_phy
> > -            - const: phy
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,sdm845-qmp-usb3-phy
> > -              - qcom,sm8150-qmp-usb3-phy
> > -              - qcom,sm8350-qmp-usb3-phy
> > -              - qcom,sm8450-qmp-usb3-phy
> > -    then:
> > -      patternProperties:
> > -        "^phy@[0-9a-f]+$":
> > -          properties:
> > -            reg:
> > -              items:
> > -                - description: TX lane 1
> > -                - description: RX lane 1
> > -                - description: PCS
> > -                - description: TX lane 2
> > -                - description: RX lane 2
> > -                - description: PCS_MISC
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,msm8998-qmp-usb3-phy
> > -    then:
> > -      patternProperties:
> > -        "^phy@[0-9a-f]+$":
> > -          properties:
> > -            reg:
> > -              items:
> > -                - description: TX lane 1
> > -                - description: RX lane 1
> > -                - description: PCS
> > -                - description: TX lane 2
> > -                - description: RX lane 2
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,ipq6018-qmp-usb3-phy
> > -              - qcom,ipq8074-qmp-usb3-phy
> > -              - qcom,qcm2290-qmp-usb3-phy
> > -              - qcom,sc7180-qmp-usb3-phy
> > -              - qcom,sc8180x-qmp-usb3-phy
> > -              - qcom,sdx55-qmp-usb3-uni-phy
> > -              - qcom,sdx65-qmp-usb3-uni-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> > -              - qcom,sm8150-qmp-usb3-uni-phy
> > -              - qcom,sm8250-qmp-usb3-phy
> > -    then:
> > -      patternProperties:
> > -        "^phy@[0-9a-f]+$":
> > -          properties:
> > -            reg:
> > -              items:
> > -                - description: TX
> > -                - description: RX
> > -                - description: PCS
> > -                - description: PCS_MISC
> > -
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,msm8996-qmp-usb3-phy
> > -              - qcom,sm8250-qmp-usb3-uni-phy
> > -              - qcom,sm8350-qmp-usb3-uni-phy
> > -    then:
> > -      patternProperties:
> > -        "^phy@[0-9a-f]+$":
> > -          properties:
> > -            reg:
> > -              items:
> > -                - description: TX
> > -                - description: RX
> > -                - description: PCS
> > -
> > -examples:
> > -  - |
> > -    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
> > -    usb_2_qmpphy: phy-wrapper@88eb000 {
> > -        compatible = "qcom,sdm845-qmp-usb3-uni-phy";
> > -        reg = <0x088eb000 0x18c>;
> > -        #address-cells = <1>;
> > -        #size-cells = <1>;
> > -        ranges = <0x0 0x088eb000 0x2000>;
> > -
> > -        clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK >,
> > -                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> > -                 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
> > -                 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>;
> > -        clock-names = "aux", "cfg_ahb", "ref", "com_aux";
> > -
> > -        resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
> > -                 <&gcc GCC_USB3_PHY_SEC_BCR>;
> > -        reset-names = "phy", "common";
> > -
> > -        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
> > -        vdda-pll-supply = <&vdda_usb2_ss_core>;
> > -
> > -        usb_2_ssphy: phy@200 {
> > -                reg = <0x200 0x128>,
> > -                      <0x400 0x1fc>,
> > -                      <0x800 0x218>,
> > -                      <0x600 0x70>;
> > -
> > -                clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
> > -
> > -                #clock-cells = <0>;
> > -                clock-output-names = "usb3_uni_phy_pipe_clk_src";
> > -
> > -                #phy-cells = <0>;
> > -            };
> > -        };
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > index 16fce1038285..29a417fb7af1 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > @@ -16,20 +16,37 @@ description:
> >  properties:
> >    compatible:
> >      enum:
> > +      - qcom,ipq6018-qmp-usb3-phy
> > +      - qcom,ipq8074-qmp-usb3-phy
> > +      - qcom,msm8996-qmp-usb3-phy
> > +      - qcom,msm8998-qmp-usb3-phy
> > +      - qcom,qcm2290-qmp-usb3-phy
> > +      - qcom,sc7180-qmp-usb3-phy
> > +      - qcom,sc8180x-qmp-usb3-phy
> >        - qcom,sc8280xp-qmp-usb3-uni-phy
> > +      - qcom,sdm845-qmp-usb3-phy
> > +      - qcom,sdm845-qmp-usb3-uni-phy
> > +      - qcom,sdx55-qmp-usb3-uni-phy
> > +      - qcom,sdx65-qmp-usb3-uni-phy
> > +      - qcom,sm6115-qmp-usb3-phy
> > +      - qcom,sm8150-qmp-usb3-phy
> > +      - qcom,sm8150-qmp-usb3-uni-phy
> > +      - qcom,sm8250-qmp-usb3-phy
> > +      - qcom,sm8250-qmp-usb3-uni-phy
> > +      - qcom,sm8350-qmp-usb3-phy
> > +      - qcom,sm8350-qmp-usb3-uni-phy
> > +      - qcom,sm8450-qmp-usb3-phy
> >
> >    reg:
> >      maxItems: 1
> >
> >    clocks:
> > -    maxItems: 4
> > +    minItems: 4
> > +    maxItems: 5
> >
> >    clock-names:
> > -    items:
> > -      - const: aux
> > -      - const: ref
> > -      - const: com_aux
> > -      - const: pipe
> > +    minItems: 4
> > +    maxItems: 5
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -38,9 +55,7 @@ properties:
> >      maxItems: 2
> >
> >    reset-names:
> > -    items:
> > -      - const: phy
> > -      - const: phy_phy
> > +    maxItems: 2
> >
> >    vdda-phy-supply: true
> >
> > @@ -60,7 +75,6 @@ required:
> >    - reg
> >    - clocks
> >    - clock-names
> > -  - power-domains
> >    - resets
> >    - reset-names
> >    - vdda-phy-supply
> > @@ -71,6 +85,179 @@ required:
> >
> >  additionalProperties: false
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc7180-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 5
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: phy
>
> This is just a subset of the next entrie's resets and could possibly be
> merged.

I see.

>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc8280xp-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 1
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: phy_phy
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sdm845-qmp-usb3-uni-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 5
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: common
>
> Is this really a DP-USB phy? Then it does not belong in this schema,
> otherwise the phy name looks wrong.

No, this is really a uni (USB-only) PHY. It has two resets (at least
two resets are declared in the dts):

                        resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
                                 <&gcc GCC_USB3_PHY_SEC_BCR>;
                        reset-names = "phy", "common";

If it was a new code, it would have been possible to use "phy_phy',
"phy". However as we already have code in place, changing the resets
would be a bit of a pain.

>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,ipq8074-qmp-usb3-phy
> > +              - qcom,msm8996-qmp-usb3-phy
> > +              - qcom,msm8998-qmp-usb3-phy
> > +              - qcom,sdx55-qmp-usb3-uni-phy
> > +              - qcom,sdx65-qmp-usb3-uni-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
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
> Same here.

Same as above

>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sm8150-qmp-usb3-phy
> > +              - qcom,sm8150-qmp-usb3-uni-phy
> > +              - qcom,sm8250-qmp-usb3-uni-phy
> > +              - qcom,sm8350-qmp-usb3-uni-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 5
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref_clk_src
>
> As we've discussed before, this clock does not belong in the binding and
> this should definitely not be reproduced in the new one.

Ack, thanks.

>
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: common
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sm8250-qmp-usb3-phy
> > +              - qcom,sm8350-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref_clk_src
>
> Same here, was this supposed to be ref?

Hmm, no. It seems we just have to use SEC_CLKREF_EN here for refclk:

* GCC_USB3_SEC_CLKREF_EN provides ref_clk for both
* USB instances.
*/
<&clock_gcc GCC_USB3_SEC_CLKREF_EN>;

>
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy
> > +            - const: common
>
> Another combo PHY?

Yes, even historical one. Let's drop them completely.

We also have one last combo PHY that was not converted from being
USB-only: qcom,sm8150-qmp-usb3-phy. I will check if we can do a quick
shift now.

>
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,qcm2290-qmp-usb3-phy
> > +              - qcom,sm6115-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +        resets:
> > +          maxItems: 2
> > +        reset-names:
> > +          items:
> > +            - const: phy_phy
> > +            - const: phy
>
> You should be able to get rid of most of the above by looking at the
> various platforms and recognising that there are just two sets of
> clocks, and probably just two sets of resets where one is a subset of
> the other.

I will take a look at optimizing these entries, thank you.

>
> As you're introducing a new binding this should all be fixed here and
> now rather than do another quick hack.
>
> And if you don't have the time and motivation to fix this up now, then
> it's better to leave the old half-broken bindings where they are for
> now.

I was hesitant to do this conversion for quite some time, but then I
somehow became tired of pointing to newer bindings. Keeping both old
and new ones is confusing.

>
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
> > @@ -100,3 +287,32 @@ examples:
> >
> >        #phy-cells = <0>;
> >      };
> > +  - |
> > +    #define GCC_USB3_SEC_CLKREF_CLK       156
> > +    #define GCC_USB_PHY_CFG_AHB2PHY_CLK   161
> > +
> > +    phy@88eb000 {
> > +        compatible = "qcom,sdm845-qmp-usb3-uni-phy";
> > +        reg = <0x088eb000 0x18c>;
> > +
> > +        clocks = <&gcc GCC_USB3_SEC_PHY_AUX_CLK >,
> > +                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> > +                 <&gcc GCC_USB3_SEC_CLKREF_CLK>,
> > +                 <&gcc GCC_USB3_SEC_PHY_COM_AUX_CLK>,
> > +                 <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
> > +        clock-names = "aux", "cfg_ahb", "ref", "com_aux", "pipe";
> > +
> > +        resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR>,
> > +                 <&gcc GCC_USB3_PHY_SEC_BCR>;
> > +        reset-names = "phy", "common";
>
> It looks like these resets should have been named 'phy_phy' and 'phy'
> (and order reversed).

As I wrote above, renaming resets doesn't sound like an easy way to
go. But if you, Krzysztof or Rob insist, I will take a look.

> > +
> > +        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
> > +        vdda-pll-supply = <&vdda_usb2_ss_core>;
> > +
> > +
>
> Stray newline.
>
> > +        #clock-cells = <0>;
> > +        clock-output-names = "usb3_uni_phy_pipe_clk_src";
> > +
> > +        #phy-cells = <0>;
> > +    };
>
> But what is the purpose of adding this example? It looks essentially the
> same as the current one and is thus redundant.

It was mostly to ensure at dt_bindings_check time that the bindings
are converted correctly. I can drop added examples.

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
