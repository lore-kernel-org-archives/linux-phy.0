Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 883ADC433EF
	for <linux-phy@archiver.kernel.org>; Sun, 19 Jun 2022 12:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSXZLSAozugJrg/nKT8/275FhUs6dTSI4VHu8rWbDL4=; b=ER6nbfKCZ0mTmf
	a3R1F3grCvP62G37QkHyYoJbw1r6CUgNV+T9XSTDa6r9q5TbzFIERhhDUwIlrbXW9IwJcotlyUD/Z
	YPHSvRou63UN4PLixw0Dc4SlZ9O3hwC40EX7pdFLHnBtkdEqgXM7WWEsjM+hpWgbV/ZyeW9cdjqOB
	Oxo06DL+HuJWH+0xwITm7keSCNfFXihM9dZ7lo+CnLoqG2O+qk+gf5YjBnxkVCQhFep+tg4g19T9b
	yBgYCBzbtU8RpdsVywuLYRaZkjOjbiQ1uhYhe7PJ/UvKT2dmqlGRw0bOwyw6gHX7QUlmfR/bzn7et
	DE0vwmlEJOH4wFXXNGKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tmj-00EAVW-TZ; Sun, 19 Jun 2022 12:12:09 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2tmZ-00EASC-0S
	for linux-phy@lists.infradead.org; Sun, 19 Jun 2022 12:12:00 +0000
Received: by mail-ej1-x629.google.com with SMTP id v1so16280573ejg.13
        for <linux-phy@lists.infradead.org>; Sun, 19 Jun 2022 05:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=LXtHu+WmKe/B+Jenv3JS6I7UJdcvW4l/57HkN5jkG/E=;
        b=PFGWDfSmTZqllQbv0OyEqVrcIkXlXTB2/7LoSQSGLEpW5i8azV07nix9S/j7bUd6m2
         afWCLA2StC3+eLDwUkgDglLrczYOAxTRwcCxdBinEf1T7tBYzqIZTcry72ITwGQLwKbR
         +5Ts1NpfLQlxfMXoOcFyfo7SBxddgDRDm0e87Ix9qaHF25Ny6J/upwztpDi2Nh3Ubsht
         sx7lY4n4iosRrHZrJkE3nuJy7TkZDGcob0XY57s8vRz9uTwPvujH1tuhEb1z93aI5OnP
         aqcZdNBaLoZ8xwcY0JEmydzrca6xgk0lG/A808nR9cFQEMMUhmMkpL0ELkr2l6EhTL34
         pHOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=LXtHu+WmKe/B+Jenv3JS6I7UJdcvW4l/57HkN5jkG/E=;
        b=srtPmfqqaOX9yTHIs0wADzhpnHxj9nomyl/flRKLp2OaP29+ICffixfM7UdMG+TGFd
         +aHHncsJtYWMz9EITRoCi3nG0tBlWxqAtYWZHzHIayflzu9uHAuvczHiDuQgoJnXYR+G
         aUDXP7JVJxfjIfGel9o1fH6HsUj7qmyoERS0IwlMtehVrorjOXYKI3x2OdOoPebj1YzX
         lS23Coromzh1ZBxrrP0use1gp7mDWdBt6za5bcFi/HvXTm0Ak50R8xV6OaTxwsJkE/CW
         N23k2rc49v3NNZDF23l8Iwl8LTYhdhHOrgZ2BmcxH6liM06FvnegOp7pDA0miLu2GILK
         uOcg==
X-Gm-Message-State: AJIora+9c4fgn3oLlaIdaYAm8Ms5t+tYJrY2ctwKveaG6WptfEdIvTFf
	eJ9KgFh1VZMVOfGFvIMHlFNVvw==
X-Google-Smtp-Source: AGRyM1uG+PuErMAkaEo90qS9M2upNFHsa8Bcj+5LXtlWfhBGMg5qJoUykz+gZaY6engmOnI9dCwIkw==
X-Received: by 2002:a17:907:7f0e:b0:722:a7e9:6f7f with SMTP id qf14-20020a1709077f0e00b00722a7e96f7fmr2699714ejc.228.1655640716378;
        Sun, 19 Jun 2022 05:11:56 -0700 (PDT)
Received: from [192.168.0.206] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id j1-20020a17090623e100b006fe9209a9edsm4504865ejg.128.2022.06.19.05.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Jun 2022 05:11:55 -0700 (PDT)
Message-ID: <b83e3100-edd6-4f91-75e0-8a87447d8a4c@linaro.org>
Date: Sun, 19 Jun 2022 14:11:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS
 PHY binding
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220618092201.3837791-1-victor.liu@nxp.com>
 <20220618092201.3837791-2-victor.liu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220618092201.3837791-2-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220619_051159_176558_47356534 
X-CRM114-Status: GOOD (  22.62  )
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

On 18/06/2022 11:22, Liu Ying wrote:
> This patch adds bindings for Mixel LVDS PHY found on
> Freescale i.MX8qm SoC.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
>  .../bindings/phy/mixel,lvds-phy.yaml          | 64 +++++++++++++++++++
>  1 file changed, 64 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml b/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
> new file mode 100644
> index 000000000000..de964ffb9356
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/mixel,lvds-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mixel LVDS PHY for Freescale i.MX8qm SoC

If Mixel is a vendor, it needs it's vendor prefix documented and used in
compatible. Filename should match compatible. If it is not a vendor,
then filename should be "fsl,imx8qm-lvds-phy.yaml"

> +
> +maintainers:
> +  - Liu Ying <victor.liu@nxp.com>
> +
> +description: |
> +  The Mixel LVDS PHY IP block is found on Freescale i.MX8qm SoC.
> +  It converts two groups of four 7/10 bits of CMOS data into two
> +  groups of four data lanes of LVDS data streams. A phase-locked
> +  transmit clock is transmitted in parallel with each group of
> +  data streams over a fifth LVDS link. Every cycle of the transmit
> +  clock, 56/80 bits of input data are sampled and transmitted
> +  through the two groups of LVDS data streams. Together with the
> +  transmit clocks, the two groups of LVDS data streams form two
> +  LVDS channels.
> +
> +  The Mixel LVDS PHY found on Freescale i.MX8qm SoC is controlled
> +  by Control and Status Registers(CSR) module in the SoC. The CSR
> +  module, as a system controller, contains the PHY's registers.
> +
> +properties:
> +  compatible:
> +    const: fsl,imx8qm-lvds-phy
> +
> +  "#phy-cells":
> +    const: 1
> +    description: |
> +      Cell allows setting the LVDS channel index of the PHY.
> +      Index 0 is for LVDS channel0 and index 1 is for LVDS channel1.
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: phy_ref

Maybe just skip the clock-names, it's not bringing anything useful,
unless you expect some more clocks to be documented later? (but in such
case question would be why they are not documented now)

> +
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "#phy-cells"
> +  - clocks
> +  - clock-names
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +    phy {
> +        compatible = "fsl,imx8qm-lvds-phy";
> +        #phy-cells = <1>;
> +        clocks = <&clk IMX_SC_R_LVDS_0 IMX_SC_PM_CLK_PHY>;
> +        clock-names = "phy_ref";
> +        power-domains = <&pd IMX_SC_R_LVDS_0>;
> +    };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
