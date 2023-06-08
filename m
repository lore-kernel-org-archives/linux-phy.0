Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3665DC7EE23
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jun 2023 07:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSiSN8RnvIQCyi6270OQBnAm9IOphMdVQqccja3/0fo=; b=KCfWg5xFnLPQZ6
	lTnD49yWWFnrj2afjCpZCTD0oqd+C5qOpNsERQ+CspmTNPF6Ls7FoOrDXyOBYrmMvVu5i0oVeI6Cr
	lX+BvBEq/0f9wbDXIajm11Y7snKt/YaLMCHnv11zTnaLCT6ZaK7TEMYvNdsD27W1ESgzKkCN17SkR
	uyKCbtDMDMe4/fkgITnioUrRnNFVvqfo3PkTuVdCuy39RD3KD+4Nr20YvwWJBU76XGI0PiZ9qFN0A
	Is7FX0tT706iiClxutGSwtoybo/PvwjraObvgu4+yL9iPDt2ciuXIyWolfIAkZ4ylV23yHhN8d7oW
	atUdScl6cxSo4g7RTQxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AVL-008TAR-2p;
	Thu, 08 Jun 2023 07:56:23 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7AVH-008T8A-2C;
	Thu, 08 Jun 2023 07:56:21 +0000
Received: from [192.168.1.141] ([37.4.248.58]) by mrelayeu.kundenserver.de
 (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N0nvJ-1pukHf42j7-00wmk4; Thu, 08 Jun 2023 09:56:11 +0200
Message-ID: <0530fbbb-e345-8f8a-5332-526ddcd55eb2@i2se.com>
Date: Thu, 8 Jun 2023 09:56:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From: Stefan Wahren <stefan.wahren@i2se.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT
 schema format
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
Content-Language: en-US
In-Reply-To: <20230608033642.4097956-1-xu.yang_2@nxp.com>
X-Provags-ID: V03:K1:Nq+0TWCdrgpDH2um6CRSNcS2fr4wTbEqMBQn/QIxtYmaXTavW1F
 jxNefkBZfJ+LYif31trnodbC6ttq0oIq+S9gQiaQm+T2HAicbzWxM7BMzaX8ED8UGRH3jsp
 kESD/G+Xl42PqR2gKzc/scl96vuazJETyrSBPZZOvKQgi8ilaZQBU1X3c2EFRZwT9eyrz6h
 q3dETnR0LFNtCJjqo73uA==
UI-OutboundReport: notjunk:1;M01:P0:Gr9qOYk4zvE=;ye5B5XqztKcKysx2CDPfYuafIN7
 FEFp9fLBvTyj6EGXt8SD4Pnn44zoKQNzT5kkSWdG8XTq2z5gevgJRm05l8eUs0fB8O4//80nY
 CbNTugnKHObw7RWnj12p88CzIaEoTFiQlnXRbdHcKZqTsfuuvGhcYYvwepWm5W2NGc1fKXQBt
 O/uzq0pVfqZdXXzHgdXV2YSMbaAtdwXdo57p/+5gMQFlQodxnA1YXotGHgeXD8YZvUDkVH07X
 9u/TfRMh/7RTKCMHuyYj3B2Sb6tL9Fy9ZFkIQGGy35pK0LEn0mXvKiCgbPzTMtwb0qZPwZWtL
 wa8mwmDrEMTnLn4r+/3oYQhxZ6x7aq8f+s9IRVF8EfV71oHfw3Z07wQbNF9gMrY/QvMpE5t4d
 fTXaGMsxhHvR4FrxCzep6dxep3BudlGo/n01IUADFM/0fSJ+VF1uxQPhmfYSg+gTof45k/uYb
 Vhgbo4Eswe5AeBfVTmiYGv02Fo3Itfc9D1xotEG5ZNNc2YdYIRpQYfcsu7zqzCBzc2Qufcp+V
 wzKFKVaVc6CUiTIm582LFZHHj6RJgIesY65J4rHTlad9dTVFTQNqqCex6WMy1scMEZJ+VKYlJ
 PZjIQz0wl/EdfyRCegtJ73HG9FuwPLoQ5ehnB0Gbht/us/C+rPYcJqiKw7O8W9e7v8mllgqGX
 PDT+cquqHRFu43Su/BxuK9g4rS908ckUwhax2KFZXw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_005620_021442_C5DC0F87 
X-CRM114-Status: GOOD (  24.14  )
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

Hi Xu,

Am 08.06.23 um 05:36 schrieb Xu Yang:
> Convert the binding to DT schema format. Besides, this also add other
> optional properties not contained in txt file.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>   - change filename to fsl,mxs-usbphy.yaml
>   - add other optional properties
>   - narrow fsl,anatop to imx6
>   - use additionalProperties
> ---
>   .../bindings/phy/fsl,mxs-usbphy.yaml          | 128 ++++++++++++++++++
>   .../devicetree/bindings/phy/mxs-usb-phy.txt   |  33 -----
>   2 files changed, 128 insertions(+), 33 deletions(-)
>   create mode 100644 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
>   delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> new file mode 100644
> index 000000000000..1b6b19fdf491
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -0,0 +1,128 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,mxs-usbphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale MXS USB Phy Device
> +
> +maintainers:
> +  - Xu Yang <xu.yang_2@nxp.com>
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - enum:
> +          - fsl,imx23-usbphy
> +          - fsl,vf610-usbphy
> +          - fsl,imx7ulp-usbphy

on the one side the fsl,imx7ulp-usbphy has an individual compatible

> +      - items:
> +          - enum:
> +              - fsl,imx28-usbphy
> +              - fsl,imx6ul-usbphy
> +              - fsl,imx6sl-usbphy
> +              - fsl,imx6sx-usbphy
> +              - fsl,imx6q-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - const: fsl,imx6sll-usbphy
> +          - const: fsl,imx6ul-usbphy
> +          - const: fsl,imx23-usbphy
> +      - items:
> +          - const: fsl,imx7ulp-usbphy
> +          - const: fsl,imx6ul-usbphy

on the other side this should be compatible to imx6ul. So at least one 
definition seems to be unnecessary.

Looking at usb/phy/phy-mxs-usb.c suggests me that fsl,imx7ulp-usbphy is 
not directly compatible to fsl,imx6ul-usbphy, because the platform data 
is different. So maybe the using dts* files should be fixed instead?

> +      - items:
> +          - const: fsl,imx8dxl-usbphy
> +          - const: fsl,imx7ulp-usbphy
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2
> +
> +  interrupts:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clocks:
> +    maxItems: 1
> +
> +  '#phy-cells':
> +    const: 0
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  fsl,anatop:
> +    description:
> +      phandle for anatop register, it is only for imx6 SoC series.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  phy-3p0-supply:
> +    description:
> +      One of USB PHY's power supply. Can be used to keep a good signal
> +      quality.
> +
> +  fsl,tx-cal-45-dn-ohms:
> +    description:
> +      Resistance (in ohms) of switchable high-speed trimming resistor
> +      connected in parallel with the 45 ohm resistor that terminates
> +      the DN output signal.
> +    minimum: 35
> +    maximum: 54
> +    default: 45
> +
> +  fsl,tx-cal-45-dp-ohms:
> +    description:
> +      Resistance (in ohms) of switchable high-speed trimming resistor
> +      connected in parallel with the 45 ohm resistor that terminates
> +      the DP output signal.
> +    minimum: 35
> +    maximum: 54
> +    default: 45
> +
> +  fsl,tx-d-cal:
> +    description:
> +      Current trimming value (as a percentage) of the 17.78 mA TX
> +      reference current.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 79
> +    maximum: 119
> +    default: 100
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          oneOf:
> +            - enum:
> +              - fsl,imx6sl-usbphy
> +              - fsl,imx6sx-usbphy
> +              - fsl,imx6sll-usbphy
> +              - fsl,imx6q-usbphy
> +              - fsl,vf610-usbphy
> +            - items:
> +              - const: fsl,imx6ul-usbphy
> +              - const: fsl,imx23-usbphy
> +    then:
> +      required:
> +        - fsl,anatop
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    usbphy1: usb-phy@20c9000 {
> +        compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
> +        reg = <0x020c9000 0x1000>;
> +        interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
> +        fsl,anatop = <&anatop>;
> +    };
> +
> +...
> diff --git a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> deleted file mode 100644
> index 70c813b0755f..000000000000
> --- a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
> +++ /dev/null
> @@ -1,33 +0,0 @@
> -* Freescale MXS USB Phy Device
> -
> -Required properties:
> -- compatible: should contain:
> -	* "fsl,imx23-usbphy" for imx23 and imx28
> -	* "fsl,imx6q-usbphy" for imx6dq and imx6dl
> -	* "fsl,imx6sl-usbphy" for imx6sl
> -	* "fsl,vf610-usbphy" for Vybrid vf610
> -	* "fsl,imx6sx-usbphy" for imx6sx
> -	* "fsl,imx7ulp-usbphy" for imx7ulp
> -	* "fsl,imx8dxl-usbphy" for imx8dxl
> -  "fsl,imx23-usbphy" is still a fallback for other strings
> -- reg: Should contain registers location and length
> -- interrupts: Should contain phy interrupt
> -- fsl,anatop: phandle for anatop register, it is only for imx6 SoC series
> -
> -Optional properties:
> -- fsl,tx-cal-45-dn-ohms: Integer [35-54]. Resistance (in ohms) of switchable
> -  high-speed trimming resistor connected in parallel with the 45 ohm resistor
> -  that terminates the DN output signal. Default: 45
> -- fsl,tx-cal-45-dp-ohms: Integer [35-54]. Resistance (in ohms) of switchable
> -  high-speed trimming resistor connected in parallel with the 45 ohm resistor
> -  that terminates the DP output signal. Default: 45
> -- fsl,tx-d-cal: Integer [79-119]. Current trimming value (as a percentage) of
> -  the 17.78mA TX reference current. Default: 100
> -
> -Example:
> -usbphy1: usb-phy@20c9000 {
> -	compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
> -	reg = <0x020c9000 0x1000>;
> -	interrupts = <0 44 0x04>;
> -	fsl,anatop = <&anatop>;
> -};

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
