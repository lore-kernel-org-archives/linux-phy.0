Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94F63EB64D8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Jun 2023 15:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5cLnsp7vhN+1FpN5F8K46CJX+dIEhY1tr1WN/331bT4=; b=PqJMPEwhes0OdZ
	AVJwMiUpwdNdsVb9sCRRLLZpXh5sSLuK+34kWvwSrZzcU97ix1eIgdD0lOVcBqRCXHVNkSooMw20G
	1xwKgnT7qTrxL+F+355XCFvT3v14CRbYuveUktHiRyrABVfWLEhO70cUm3bXV5zEc6Jh8SsA2Ix5k
	/ZSkv5NB3BNwQgwmJ793stDJ2nnM1ksn/i1U3+iXWCe9ZG98O35N8C3yORehLrrCvxwoCI8FrcA7e
	khMfW0ZNVGqXENFGvWoyhpwfYxPyJwOPEgIAkmKhWHrgYcT/I9sn20gxlJn0IWf0Ti4HiZxHp8Or3
	OqKDYF9syPoH0ydkEtog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdIO-00Bfuk-0r;
	Tue, 20 Jun 2023 15:29:28 +0000
Received: from mail-il1-f169.google.com ([209.85.166.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBdIL-00Bftk-09;
	Tue, 20 Jun 2023 15:29:26 +0000
Received: by mail-il1-f169.google.com with SMTP id e9e14a558f8ab-3421aca52d7so15426675ab.0;
        Tue, 20 Jun 2023 08:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687274964; x=1689866964;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aqJZkvuzvPgo2scZXFsGYob4H+PHCpMScUqNkfyiy4o=;
        b=d5Xk9RWax/D/DFb6hc0x9Jo8kk1O0TVuvYprgG6YaXlLiZKiY2IKMdqfD49D+z/WqO
         ZYPn04HNWM6HDRHaSRPxZnzj6NWaitgPAVIlGubmyLHDzZNeh91QKM7O5TdCs8LXOeAn
         p2h920Eit3nTG1bs15xcgWpnuTzV/4Pk0FZL7zPka9IMquYxyRQrGJmleE8ZH6P6d0Yj
         L1ztT9wIYeD5CqlI34f3WPYkJPrjatEmn9JQkumG2OwdZ4X9KTj+F8MgE1hz8JRudR+r
         2wsoAJwkXzHUaEv+40WdXew/+K1JJ+mN6nQfj6krlzdelrCHYLJDfVAVIv8FUhkbZKpq
         8uTw==
X-Gm-Message-State: AC+VfDyyHrbsDgD9pRC4fNqYNJMwkWqcg7M/cpm+2EANrBxUgHD2x16Y
	VHreHd3z+duvFNxgPX4UZg==
X-Google-Smtp-Source: ACHHUZ5nSRRKkIdQG/Zz+onC/2Filko74KvoJC06NM12cPl40tsZXvJx7rIbZCzo7blL68IYeqs8FA==
X-Received: by 2002:a05:6e02:14c:b0:33b:848:378b with SMTP id j12-20020a056e02014c00b0033b0848378bmr4106998ilr.8.1687274963697;
        Tue, 20 Jun 2023 08:29:23 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id p7-20020a0566380e8700b0042673fd54c0sm685365jas.134.2023.06.20.08.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 08:29:22 -0700 (PDT)
Received: (nullmailer pid 3628745 invoked by uid 1000);
	Tue, 20 Jun 2023 15:29:21 -0000
Date: Tue, 20 Jun 2023 09:29:21 -0600
From: Rob Herring <robh@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-usb@vger.kernel.org, jun.li@nxp.com
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT
 schema format
Message-ID: <20230620152921.GA3626802-robh@kernel.org>
References: <20230613083445.1129137-1-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230613083445.1129137-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_082925_083426_9E862F83 
X-CRM114-Status: GOOD (  24.29  )
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

On Tue, Jun 13, 2023 at 04:34:44PM +0800, Xu Yang wrote:
> Convert the binding to DT schema format. Besides, this also add clocks,
> '#phy-cells', phy-3p0-supply and power-domains properties which are not
> contained in txt file due to txt file lack updates.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - change filename to fsl,mxs-usbphy.yaml
>  - add other optional properties
>  - narrow fsl,anatop to imx6
>  - use additionalProperties
> Changes in v3:
>  - fix indentation
>  - add clocks property to example
> Changes in v4:
>  - remove [fsl,imx7ulp-usbphy, fsl,imx6ul-usbphy]
>  - limit item of reg and interrupts to 1
>  - sort enum items
>  - modify commit message
> ---
>  .../bindings/phy/fsl,mxs-usbphy.yaml          | 125 ++++++++++++++++++
>  .../devicetree/bindings/phy/mxs-usb-phy.txt   |  33 -----
>  2 files changed, 125 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
>  delete mode 100644 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt

This should be applied by the PHY maintainers, but they weren't Cc'ed.

> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> new file mode 100644
> index 000000000000..cc9f2bc7e6fb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -0,0 +1,125 @@
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
> +          - fsl,imx7ulp-usbphy
> +          - fsl,vf610-usbphy
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
> +          - const: fsl,imx8dxl-usbphy
> +          - const: fsl,imx7ulp-usbphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
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
> +                - fsl,imx6q-usbphy
> +                - fsl,imx6sl-usbphy
> +                - fsl,imx6sx-usbphy
> +                - fsl,imx6sll-usbphy
> +                - fsl,vf610-usbphy
> +            - items:
> +                - const: fsl,imx6ul-usbphy
> +                - const: fsl,imx23-usbphy
> +    then:
> +      required:
> +        - fsl,anatop
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/imx6qdl-clock.h>
> +
> +    usbphy1: usb-phy@20c9000 {
> +        compatible = "fsl,imx6q-usbphy", "fsl,imx23-usbphy";
> +        reg = <0x020c9000 0x1000>;
> +        clocks = <&clks IMX6QDL_CLK_USBPHY1>;
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
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
