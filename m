Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD6FEC4332F
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 23:45:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3A5YIrBDCMKwwjRSHMgJKaQ9uS/wJFEUJAUf0BQE+Y=; b=L6NBZRRrm2cnga
	7GweUwRkpgzirNgEfR4fK/7X1D1NYKr6p46uwCTOFtz/boLgXVV0e5G1cPZjJK1LFnpOw2GKOjCbu
	anRP7My1ILfM86h6prO16c4afclgwpjdbHLUiXkEKiqC93tkuDlwVMGhOaNpN9o06dl3llmyjBC4m
	2Mt7QUtwycxyegNITpwj8I9j4/3UuBV+PnObmmtbgRYjI24No64znSqwa6aLBYZJRjUZCXN2DG/Jo
	TNYv4FeCIK8+ks/WPM2ATDnFCJlcLBuLV7QFEjRDE5X0nb5vLcCk2tgR2wnuXRemIwgrPLAlpPGGD
	6Ug9ae367q3t28FmgcvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0tF8-00Bp6H-2R; Thu, 01 Dec 2022 23:45:26 +0000
Received: from mail-oi1-f182.google.com ([209.85.167.182])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0sjt-00BZjg-U4; Thu, 01 Dec 2022 23:13:11 +0000
Received: by mail-oi1-f182.google.com with SMTP id h132so3696555oif.2;
        Thu, 01 Dec 2022 15:13:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OKxrfU4YmpY1Kl1yHeMXQyKUWxu44u51bjZxjiYhfek=;
        b=I5KjxH0PpdkbhUq9avs4t6zg9dbtbuxvW0NA5HJchfITxRIYas0/zSXo9vyvcEx7mu
         0PlzGJSxrsFgaFL1NI3081Qw1Wd/4kJOu1v3ai/baPM9PuXrsL9Ftjdm/e5/HUYBVM2y
         NOXuAVQWJ99jAHt5s4T5Gy2niMSSNPn6DXyZlPmzkJkyAtgd1fPM1kEV1bPxmKJDFtdn
         sSLTmy+T9NETcoLAKPKll9IZsxdEtbreknMWXpoTNqCxYxxVymhVojihu4DP2tttEvRi
         sRz2ag72UXiYLEI2l5P9gwwwe0fsVdXXbp3S0lzLSDozWwPpjwEipFthbmZn1uBdEyto
         CWCQ==
X-Gm-Message-State: ANoB5plYsbQ4OeV6dPy88rhmCwFPyaSGYw0JLd9gF0o+oQ/OI03HzyMl
	gexxNOHQUQzxTFGndkiU9w==
X-Google-Smtp-Source: AA0mqf6Hw+Gk/anvjA2tVJyGiBiFgpkYa/VeAI295MqD5oc4uGzJJSmIKRZpn+m9seyj7pP7+kUz+A==
X-Received: by 2002:a54:4783:0:b0:354:7e1:d3ac with SMTP id o3-20020a544783000000b0035407e1d3acmr26707554oic.237.1669936382827;
        Thu, 01 Dec 2022 15:13:02 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id p64-20020acad843000000b0035a9003b8edsm2345943oig.40.2022.12.01.15.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 15:13:02 -0800 (PST)
Received: (nullmailer pid 1658241 invoked by uid 1000);
	Thu, 01 Dec 2022 23:13:01 -0000
Date: Thu, 1 Dec 2022 17:13:01 -0600
From: Rob Herring <robh@kernel.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, robert.foss@linaro.org, Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
Subject: Re: [PATCH v5 07/10] dt-bindings: phy: Add Cadence HDP-TX DP PHY
Message-ID: <20221201231301.GA1653935-robh@kernel.org>
References: <cover.1669620155.git.Sandor.yu@nxp.com>
 <beb1dae2a08595a6b9a6b6028ac994faa207d4bd.1669620155.git.Sandor.yu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <beb1dae2a08595a6b9a6b6028ac994faa207d4bd.1669620155.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_151310_013103_1D0D68B7 
X-CRM114-Status: GOOD (  17.65  )
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

On Mon, Nov 28, 2022 at 03:36:15PM +0800, Sandor Yu wrote:
> Add bindings for Cadence HDP-TX DisplayPort PHY.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../bindings/phy/cdns,hdptx-dp-phy.yaml       | 68 +++++++++++++++++++
>  1 file changed, 68 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> new file mode 100644
> index 000000000000..f4f741150c12
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/cdns,hdptx-dp-phy.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/cdns,hdptx-dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence HDP-TX(HDMI/DisplayPort) PHY for DisplayPort protocol
> +
> +maintainers:
> +  - Sandor Yu <sandor.yu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,hdptx-dp-phy

Again, name based on SoC and SoC vendor.

> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: PHY reference clock.
> +      - description: APB clock.
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +      - const: apb
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  cdns,num-lanes:

There is a standard way to define the number of lanes. That goes in 
output endpoint for the DP node. Not that convenient to the phy, but the 
information is already there, don't duplicate it.

> +    description:
> +      Number of lanes.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [1, 2, 3, 4]
> +    default: 4
> +
> +  cdns,max-bit-rate:

Same with this.

> +    description:
> +      Maximum DisplayPort link bit rate to use, in Mbps
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [2160, 2430, 2700, 3240, 4320, 5400]
> +    default: 5400
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/phy/phy.h>
> +    dp_phy: phy@32c00000 {
> +        compatible = "cdns,hdptx-dp-phy";
> +        reg = <0x32c00000 0x100000>;
> +        #phy-cells = <0>;
> +        clocks = <&hdmi_phy_27m>, <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        clock-names = "ref", "apb";
> +        cdns,num-lanes = <4>;
> +        cdns,max-bit-rate = <5400>;
> +    };
> -- 
> 2.34.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
