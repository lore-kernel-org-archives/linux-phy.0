Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BEC52C6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 07:54:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3kpZiz9b/GB7aExLgG56UDtN8EZDc7GlsZdnPo1JZIY=; b=sfkJRDFEsYZFhk
	GNk9sgYXai0ZbOWRswrglxbuViLUt8AFDcvQLm+r8/UsXp81HRarEv+15qplEpKXvGF5DVyqzBHeE
	Snhbw2uiiMKI831uPe+JJUNq/ar0ig4jInPkrBQt/gJEmJ8l0bjcouQtk0A9dic4Z4f5DSVeAMHq0
	c0oUdWQ3KG9a6EKSIXwFVP4ymgLPSlQ5MLo9Oynbb88+OQRY1L37LONqtI8Y4e2Dl+L4kD/U+zMNC
	O6pPGJrukT2wNb7S4SflFY6RFW0fG9C1H6Xk3GX2G1FJrqlq/s5KRikf9NcA51EntXQB4cgykU+xG
	eBAHh10NpnAVbbn7ceAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcFv-003oVr-1I;
	Fri, 24 Mar 2023 07:54:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcFs-003oVJ-1X
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 07:54:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id C3FE46299A;
	Fri, 24 Mar 2023 07:54:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09300C433D2;
	Fri, 24 Mar 2023 07:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679644471;
	bh=P66CWsg03q1xA1s+Dc3X/r0M5HYj1280VhenKqU1Rl8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Reb4VxB/lKgLkKnPXCp+4uXGy8dgQ9HNBpMTzVXg9Na4wRf5eC6ula3KOGN8/g9ap
	 zvp9L7/m/x1Lt4BeQuJX7RGD0DUKlIUCaogeGC6CO5OyCXXLChOUI2G/78VRkKhV2M
	 BjCVzj+ehevz5ZqxvujArzKTE6Uxgvt2tV0YcokJ4Py2QLzo1NqdqH+k797a7xqyM3
	 n36pTJV1kYQzbYO5mW55uh2A0tCN0Flpjc5vWZGxN9KynyFBBMsDSUgKwMKz4DsHlj
	 Bk1+xWJrxlI7AtuZBKMGJuCOiiuLWzDwat8WS87fw21arMvXuHSDKbgG+VrHcicxBJ
	 IeH2XRQmlsVOQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pfcFp-0003BV-Gr; Fri, 24 Mar 2023 08:54:30 +0100
Date: Fri, 24 Mar 2023 08:54:29 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: Re: [PATCH 02/41] dt-bindings: phy: migrate combo QMP PHY bindings
 to qcom,sc8280xp-qmp-usb43dp-phy.yaml
Message-ID: <ZB1XNV7YNGtrygao@hovoldconsulting.com>
References: <20230324022514.1800382-1-dmitry.baryshkov@linaro.org>
 <20230324022514.1800382-3-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230324022514.1800382-3-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_005432_616874_BFD629F3 
X-CRM114-Status: GOOD (  24.28  )
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

On Fri, Mar 24, 2023 at 05:24:35AM +0300, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,sc7180-qmp-usb3-dp-phy.yaml)
> to qcom,sc8280xp-qmp-usb43dp-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  .../phy/qcom,sc7180-qmp-usb3-dp-phy.yaml      | 276 ------------------
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 124 +++++++-
>  2 files changed, 111 insertions(+), 289 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> deleted file mode 100644
> index 0ef2c9b9d466..000000000000
> --- a/Documentation/devicetree/bindings/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml
> +++ /dev/null
> @@ -1,276 +0,0 @@
> -# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> -
> -%YAML 1.2
> ----
> -$id: http://devicetree.org/schemas/phy/qcom,sc7180-qmp-usb3-dp-phy.yaml#
> -$schema: http://devicetree.org/meta-schemas/core.yaml#
> -
> -title: Qualcomm QMP USB3 DP PHY controller (SC7180)
> -
> -description:
> -  The QMP PHY controller supports physical layer functionality for a number of
> -  controllers on Qualcomm chipsets, such as, PCIe, UFS and USB.
> -
> -  Note that these bindings are for SoCs up to SC8180X. For newer SoCs, see
> -  qcom,sc8280xp-qmp-usb43dp-phy.yaml.
> -
> -maintainers:
> -  - Wesley Cheng <quic_wcheng@quicinc.com>
> -
> -properties:
> -  compatible:
> -    oneOf:
> -      - enum:
> -          - qcom,sc7180-qmp-usb3-dp-phy
> -          - qcom,sc8180x-qmp-usb3-dp-phy
> -          - qcom,sdm845-qmp-usb3-dp-phy
> -          - qcom,sm8250-qmp-usb3-dp-phy
> -      - items:
> -          - enum:
> -              - qcom,sc7280-qmp-usb3-dp-phy
> -          - const: qcom,sm8250-qmp-usb3-dp-phy
> -
> -  reg:
> -    items:
> -      - description: Address and length of PHY's USB serdes block.
> -      - description: Address and length of the DP_COM control block.
> -      - description: Address and length of PHY's DP serdes block.
> -
> -  reg-names:
> -    items:
> -      - const: usb
> -      - const: dp_com
> -      - const: dp
> -
> -  "#address-cells":
> -    enum: [ 1, 2 ]
> -
> -  "#size-cells":
> -    enum: [ 1, 2 ]
> -
> -  ranges: true
> -
> -  clocks:
> -    minItems: 3
> -    maxItems: 4
> -
> -  clock-names:
> -    minItems: 3
> -    maxItems: 4
> -
> -  power-domains:
> -    maxItems: 1
> -
> -  resets:
> -    items:
> -      - description: reset of phy block.
> -      - description: phy common block reset.
> -
> -  reset-names:
> -    items:
> -      - const: phy
> -      - const: common
> -
> -  vdda-phy-supply:
> -    description:
> -      Phandle to a regulator supply to PHY core block.
> -
> -  vdda-pll-supply:
> -    description:
> -      Phandle to 1.8V regulator supply to PHY refclk pll block.
> -
> -  vddp-ref-clk-supply:
> -    description:
> -      Phandle to a regulator supply to any specific refclk pll block.
> -
> -# Required nodes:
> -patternProperties:
> -  "^usb3-phy@[0-9a-f]+$":
> -    type: object
> -    additionalProperties: false
> -    description:
> -      The USB3 PHY.
> -
> -    properties:
> -      reg:
> -        items:
> -          - description: Address and length of TX.
> -          - description: Address and length of RX.
> -          - description: Address and length of PCS.
> -          - description: Address and length of TX2.
> -          - description: Address and length of RX2.
> -          - description: Address and length of pcs_misc.
> -
> -      clocks:
> -        items:
> -          - description: pipe clock
> -
> -      clock-names:
> -        deprecated: true
> -        items:
> -          - const: pipe0
> -
> -      clock-output-names:
> -        items:
> -          - const: usb3_phy_pipe_clk_src
> -
> -      '#clock-cells':
> -        const: 0
> -
> -      '#phy-cells':
> -        const: 0
> -
> -    required:
> -      - reg
> -      - clocks
> -      - '#clock-cells'
> -      - '#phy-cells'
> -
> -  "^dp-phy@[0-9a-f]+$":
> -    type: object
> -    additionalProperties: false
> -    description:
> -      The DP PHY.
> -
> -    properties:
> -      reg:
> -        items:
> -          - description: Address and length of TX.
> -          - description: Address and length of RX.
> -          - description: Address and length of PCS.
> -          - description: Address and length of TX2.
> -          - description: Address and length of RX2.
> -
> -      '#clock-cells':
> -        const: 1
> -
> -      '#phy-cells':
> -        const: 0
> -
> -    required:
> -      - reg
> -      - '#clock-cells'
> -      - '#phy-cells'
> -
> -required:
> -  - compatible
> -  - reg
> -  - "#address-cells"
> -  - "#size-cells"
> -  - ranges
> -  - clocks
> -  - clock-names
> -  - resets
> -  - reset-names
> -  - vdda-phy-supply
> -  - vdda-pll-supply
> -
> -allOf:
> -  - if:
> -      properties:
> -        compatible:
> -          enum:
> -            - qcom,sc7180-qmp-usb3-dp-phy
> -            - qcom,sdm845-qmp-usb3-dp-phy
> -    then:
> -      properties:
> -        clocks:
> -          items:
> -            - description: Phy aux clock
> -            - description: Phy config clock
> -            - description: 19.2 MHz ref clk
> -            - description: Phy common block aux clock
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: cfg_ahb
> -            - const: ref
> -            - const: com_aux
> -
> -  - if:
> -      properties:
> -        compatible:
> -          enum:
> -            - qcom,sc8180x-qmp-usb3-dp-phy
> -    then:
> -      properties:
> -        clocks:
> -          items:
> -            - description: Phy aux clock
> -            - description: 19.2 MHz ref clk
> -            - description: Phy common block aux clock
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: ref
> -            - const: com_aux
> -
> -  - if:
> -      properties:
> -        compatible:
> -          enum:
> -            - qcom,sm8250-qmp-usb3-dp-phy
> -    then:
> -      properties:
> -        clocks:
> -          items:
> -            - description: Phy aux clock
> -            - description: Board XO source
> -            - description: Phy common block aux clock
> -        clock-names:
> -          items:
> -            - const: aux
> -            - const: ref_clk_src
> -            - const: com_aux
> -
> -additionalProperties: false
> -
> -examples:
> -  - |
> -    #include <dt-bindings/clock/qcom,gcc-sdm845.h>
> -    usb_1_qmpphy: phy-wrapper@88e9000 {
> -        compatible = "qcom,sdm845-qmp-usb3-dp-phy";
> -        reg = <0x088e9000 0x18c>,
> -              <0x088e8000 0x10>,
> -              <0x088ea000 0x40>;
> -        reg-names = "usb", "dp_com", "dp";
> -        #address-cells = <1>;
> -        #size-cells = <1>;
> -        ranges = <0x0 0x088e9000 0x2000>;
> -
> -        clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> -                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> -                 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> -                 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
> -        clock-names = "aux", "cfg_ahb", "ref", "com_aux";
> -
> -        resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> -                 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> -        reset-names = "phy", "common";
> -
> -        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
> -        vdda-pll-supply = <&vdda_usb2_ss_core>;
> -
> -        usb3-phy@200 {
> -            reg = <0x200 0x128>,
> -                  <0x400 0x200>,
> -                  <0xc00 0x218>,
> -                  <0x600 0x128>,
> -                  <0x800 0x200>,
> -                  <0xa00 0x100>;
> -            #clock-cells = <0>;
> -            #phy-cells = <0>;
> -            clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> -            clock-output-names = "usb3_phy_pipe_clk_src";
> -        };
> -
> -        dp-phy@88ea200 {
> -            reg = <0xa200 0x200>,
> -                  <0xa400 0x200>,
> -                  <0xaa00 0x200>,
> -                  <0xa600 0x200>,
> -                  <0xa800 0x200>;
> -            #clock-cells = <1>;
> -            #phy-cells = <0>;
> -        };
> -    };
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> index 3cd5fc3e8fab..484f321aefce 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
> @@ -15,25 +15,32 @@ description:
>  
>  properties:
>    compatible:
> -    enum:
> -      - qcom,sc8280xp-qmp-usb43dp-phy
> -      - qcom,sm6350-qmp-usb3-dp-phy
> -      - qcom,sm8350-qmp-usb3-dp-phy
> -      - qcom,sm8450-qmp-usb3-dp-phy
> -      - qcom,sm8550-qmp-usb3-dp-phy
> +    oneOf:
> +      - enum:
> +          - qcom,sc7180-qmp-usb3-dp-phy
> +          - qcom,sc8180x-qmp-usb3-dp-phy
> +          - qcom,sc8280xp-qmp-usb43dp-phy
> +          - qcom,sdm845-qmp-usb3-dp-phy
> +          - qcom,sm6350-qmp-usb3-dp-phy
> +          - qcom,sm8250-qmp-usb3-dp-phy
> +          - qcom,sm8350-qmp-usb3-dp-phy
> +          - qcom,sm8450-qmp-usb3-dp-phy
> +          - qcom,sm8550-qmp-usb3-dp-phy
> +      - items:
> +          - enum:
> +              - qcom,sc7280-qmp-usb3-dp-phy
> +          - const: qcom,sm8250-qmp-usb3-dp-phy

Why are you carrying over this mess to a new binding? Again, this is the
time to get rid of legacy cruft.

>    reg:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 4
> +    minItems: 3
> +    maxItems: 5
>  
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: usb3_pipe
> +    minItems: 3
> +    maxItems: 5
>  
>    power-domains:
>      maxItems: 1
> @@ -50,6 +57,8 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  vddp-ref-clk-supply: true
> +
>    "#clock-cells":
>      const: 1
>      description:
> @@ -65,7 +74,6 @@ required:
>    - reg
>    - clocks
>    - clock-names
> -  - power-domains
>    - resets
>    - reset-names
>    - vdda-phy-supply
> @@ -73,6 +81,71 @@ required:
>    - "#clock-cells"
>    - "#phy-cells"
>  
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,sc7180-qmp-usb3-dp-phy
> +            - qcom,sdm845-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Phy aux clock
> +            - description: Phy config clock
> +            - description: 19.2 MHz ref clk
> +            - description: Phy common block aux clock
> +            - description: USB3 PIPE clock

These descriptions don't add anything and should not be carried over.

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: cfg_ahb
> +            - const: ref
> +            - const: com_aux
> +            - const: usb3_pipe

Should the cfg_ahb clock be moved last so that you could unify with the
next set?

> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,sc8180x-qmp-usb3-dp-phy
> +            - qcom,sc8280xp-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Phy aux clock
> +            - description: 19.2 MHz ref clk
> +            - description: Phy common block aux clock
> +            - description: USB3 PIPE clock

Please do not add these either.

> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: usb3_pipe
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - qcom,sm8250-qmp-usb3-dp-phy
> +    then:
> +      properties:
> +        clocks:
> +          items:
> +            - description: Phy aux clock
> +            - description: Board XO source
> +            - description: Phy common block aux clock
> +            - description: USB3 PIPE clock
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref_clk_src

Again, no 'src' clock belong in the binding.

> +            - const: com_aux
> +            - const: usb3_pipe
> +
>  additionalProperties: false
>  
>  examples:
> @@ -101,3 +174,28 @@ examples:
>        #clock-cells = <1>;
>        #phy-cells = <1>;
>      };
> +  - |
> +    #define GCC_USB3_PRIM_CLKREF_CLK     151
> +    #define GCC_USB_PHY_CFG_AHB2PHY_CLK  161
> +
> +    phy@88e8000 {
> +        compatible = "qcom,sdm845-qmp-usb3-dp-phy";
> +        reg = <0x088e8000 0x3000>;
> +
> +        clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +                 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> +                 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
> +                 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +                 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +        clock-names = "aux", "cfg_ahb", "ref", "com_aux", "usb3_pipe";
> +
> +        resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +                 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +        reset-names = "phy", "common";
> +
> +        vdda-phy-supply = <&vdda_usb2_ss_1p2>;
> +        vdda-pll-supply = <&vdda_usb2_ss_core>;
> +
> +        #clock-cells = <1>;
> +        #phy-cells = <1>;
> +    };

I see no point in adding this example either.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
