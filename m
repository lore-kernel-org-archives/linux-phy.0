Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3426AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Jun 2022 10:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5y342wISFYVm6vSsFbI8fF8CyWYJ0ncktmDilyjvX4=; b=WFUjuFTZGVQpcf
	WQJAOTk33SAsgfTKyDwyLplHkQgdpczK8i3/iU3wwLZbKwmfZTKjYzuHocMvwtZEt7xGxRL3//L89
	E4xVxVuLQEldIe5ZVAxH95IxjBJCEJXLks+bIMeY5pjOI1vJ42rsGLM0ZoSt3O/svAiXTIv3uQxwc
	NKREnows6gICbNCzQY7Vk4SQy1VjPKAMNQXU50ZHgMXnqKcRf9tmrUbbslm/DSOYVvyeH+uA6MFDn
	eG33t+Lke8jRr69xR6NYSSjAEn09XBHQmfIvbfRBum9ocsGWz53TAMMJA+CISN6eDIlB5D/KV9TRl
	D415GYsEBqKuYDhiUGlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3EiS-00HT7P-HN; Mon, 20 Jun 2022 10:33:08 +0000
Received: from mail-ed1-x52f.google.com ([2a00:1450:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3Ei6-00HSz8-Ip
	for linux-phy@lists.infradead.org; Mon, 20 Jun 2022 10:32:50 +0000
Received: by mail-ed1-x52f.google.com with SMTP id b8so14444479edj.11
        for <linux-phy@lists.infradead.org>; Mon, 20 Jun 2022 03:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ETIPZemBmoDbtlPM+HgfBkCh7bjs2P92YbyzQfZl3t0=;
        b=sPFGX2czl66w8o4KXvipXXmncVDcfceiwIjY85AVZ848DJUCH2Qg3VtAJ8x05m7Wrl
         dS9+fIhfPmR6vqBIRcMGybTFTX68euzO3iqH3XdDx0lvnh6M7EpHrnjtd0PJ31427S/5
         ZR4gx0k/S7NGd+CEBVVK6rKlQGYKGujURrgEDZnq9hle7ni67aA18vuT2ezJeVMwqeiY
         IEOhrwmn5zvL5kaI+T1jkEvF1xJ1oerVoWjybohxJDU6zrpFJBBDbtQHLwWAf6B8BuWs
         25wxAaOrn8aK2BwazNDaQkVw5cycTXkCF5ecTrektBkmPPPpjlwi4dg85l8+4bBpbHEy
         i/bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ETIPZemBmoDbtlPM+HgfBkCh7bjs2P92YbyzQfZl3t0=;
        b=prcCkZvoyJGL8GymMc3P8RBqkehIIKVPRFZHGIcuPjSxjCCAWIetOFwgzSDubdlkxl
         99OaWKe8UdfI6FW+8aF9FdDYS33bgGf+90NUoGr5pA2cK2c1Bgy5yQcs+fuTaV+D9ROO
         swf9JpXYjTcbvGWRgewmDCwzM1wuK1I2Kuy0Ht8DpvRSTuJlVmoTLiwb99R3CD8gbzTB
         C5NuHq6ZNNNtmj+vsJG6/kxl9Qd22h7mWCWBfZX1DB5RGEHQOQm+2izUUO0xxym0Eznd
         DumkWE1ftJAPiwbaNcwHpxpTZGKZsjoSG8FzLwKr/f3R/iHv6Qk6GyAiTEkF1cymz2m3
         6bbg==
X-Gm-Message-State: AJIora9lzbFo7jk2jM2uHVTBKY0GLBKwUqOv80H65ZWe/d6dprH0/iVE
	9yqRhf/7dqzsR4mWo0PhhEsIUuP7wehr9g==
X-Google-Smtp-Source: AGRyM1tencxz2odLb+UeBToKBIAxHK6d9z4ABVAEgKg0IP9q8l1+aJObe7VdBYm3jM0H4/4CL2Lx8A==
X-Received: by 2002:a05:6402:35ce:b0:430:cbae:d8d with SMTP id z14-20020a05640235ce00b00430cbae0d8dmr28877708edc.369.1655721162875;
        Mon, 20 Jun 2022 03:32:42 -0700 (PDT)
Received: from [192.168.0.209] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id f23-20020a170906825700b0070ad296e4b0sm5675330ejx.186.2022.06.20.03.32.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jun 2022 03:32:41 -0700 (PDT)
Message-ID: <ca5834ea-701f-2260-da2a-84b22d4033db@linaro.org>
Date: Mon, 20 Jun 2022 12:32:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 2/3] dt-bindings: phy: Add Freescale i.MX8qm Mixel LVDS
 PHY binding
Content-Language: en-US
To: Liu Ying <victor.liu@nxp.com>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: kishon@ti.com, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
References: <20220620034533.4108170-1-victor.liu@nxp.com>
 <20220620034533.4108170-3-victor.liu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220620034533.4108170-3-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_033246_719742_A97CACAB 
X-CRM114-Status: GOOD (  19.73  )
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

On 20/06/2022 05:45, Liu Ying wrote:
> Add bindings for Mixel LVDS PHY found on Freescale i.MX8qm SoC.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v1->v2:
> * Set fsl,imx8qm-lvds-phy' and 'mixel,lvds-phy' as compatible's enum. (Krzysztof)
> * Skip 'clock-names' property. (Krzysztof)
> * Drop 'This patch' from commit message. (Krzysztof)
> 
>  .../bindings/phy/mixel,lvds-phy.yaml          | 61 +++++++++++++++++++
>  1 file changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml b/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml
> new file mode 100644
> index 000000000000..4bfcc0dd987f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mixel,lvds-phy.yaml

Name the file fsl,imx8qm-lvds-phy.yaml

> @@ -0,0 +1,61 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/mixel,lvds-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Mixel LVDS PHY for Freescale i.MX8qm SoC
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
> +    enum:
> +      - fsl,imx8qm-lvds-phy
> +      - mixel,lvds-phy

This is not specific enough compatible.
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
> +  power-domains:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - "#phy-cells"
> +  - clocks
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
> +        power-domains = <&pd IMX_SC_R_LVDS_0>;
> +    };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
