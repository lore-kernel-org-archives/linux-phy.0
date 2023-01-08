Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84E6BC678D9
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 15:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xaSWFkUWmIp8817V36ixbQm04/eSjJ9wth3ixBixLqo=; b=knCr4dd5Uj8Nkp
	31j8h7f7O14im9p+rpNLqTNRMJCeWTPV0NusVDYRwDZ9zfHVXdgbg230SpXSe1Yz4sOUJ7pF5UGmw
	n/2bQci/JjCiuWk8rfSFBnBpIL/6uWhf8LPgO9ct5cQReBs9N+B0s/rcESWVY2QZLOegqXgLa/pnR
	YpGppptJpbUKkD1kcOmulwWaqU+Ge9GEwjQFSt6NrguT30CvaUSm0wajjb+rPAgyBLI0hUX0VtBWy
	g1EzHMy4A7ojOPf+tfn1MXOG77WnSMxl9VVNP/dotl4bDhy/PS/MKpX7yd9KvvgZYmHiQsQ6opcFs
	hwcre1VrvutzQorLjfiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEXUK-00E9mq-HF; Sun, 08 Jan 2023 15:21:32 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEXUH-00E9m2-8q
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 15:21:30 +0000
Received: by mail-wr1-x42f.google.com with SMTP id bk16so5792581wrb.11
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 07:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gD/H0/iEsnGJ/IZn2dFZYdThaenFE0vshIzFDdHdaKg=;
        b=q0coa+9GRNgVSBf00UH6xf+oZE4ZyfF7KkWWsWcGnmCdGixZYSEu9JMgxIdEcBIQjS
         2uZ81QB4I6xkJr1d5sV0nHHjgsPdU7y0my3xDLBzVRoOFK8gI5IQ6prX/IccOOkaiSrE
         B9YyAtpC53Y2XSKXbDM0VGMOs9MGh2a8wQqYBhgyGgPwebBdBYdiC1l6IV4284ypam06
         xeMGmxml3NGNL11keIea3VD6K7KFW3WQqa4equc/A1X3KSEUd6aZD+nwMTAkguVnaN5m
         UwgvsC3AE5cJeeOF5bubuIl3W+SjcrNvEXBsta5spmf5JXRoWj5NYwBuu+PT8HT/N50Q
         1lCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gD/H0/iEsnGJ/IZn2dFZYdThaenFE0vshIzFDdHdaKg=;
        b=Z1wDNi0ubE+lywCnQoqJ+KmZDIyLlismrG+rjn+zYkHw5XzHdY2ahx0XkIzFeOfbRN
         8/IH/uUUbLdwMkuRAQfB9vT7iBeN/pXcnsVOYZ/hcAYvK/MNE9yt4IeBHOfOg1Et7GCX
         i1WJ22ANMF0F6Rym+1c1OZh+o/LqIaw5e2LrGHI/QezqsOAI0OyFbAi7oc3eT5eQtQk9
         lkSYIabRPFvUfppJvJXBJOM/VLPUF/09xAWsGADVrEfT1PJUjjrITbYcWixKjwrDz4G+
         WITsezdxiP+9nJPnxj+WBBVyZMpz16Me+AOTwe7SI9cb1tz+PVq3NExxOkV1Jd31izsN
         0qUA==
X-Gm-Message-State: AFqh2kpPo2YJJnjX+TUJaEOQ93mzKjlGPE85qhRp8vDh04MMzqtYoZtx
	NIo9DN5NeFRDiqhJkO5/mzLRbQ==
X-Google-Smtp-Source: AMrXdXuuJcCP0BIPka5BWNC9RlBqsIkzDIiYgM0Fwcnq+I/V1qoz5nWOjl/XmoBKbtjt118Z0rvSlA==
X-Received: by 2002:adf:eb09:0:b0:2aa:1121:1b79 with SMTP id s9-20020adfeb09000000b002aa11211b79mr9773794wrn.25.1673191286648;
        Sun, 08 Jan 2023 07:21:26 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w10-20020a5d608a000000b0027cfd9463d7sm6266273wrt.110.2023.01.08.07.21.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jan 2023 07:21:26 -0800 (PST)
Message-ID: <b1485d8a-71ea-7b75-74ab-77eef595ae10@linaro.org>
Date: Sun, 8 Jan 2023 16:21:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V5 1/6] dt-bindings: usb: Add NVIDIA Tegra234 XUSB host
 controller binding
Content-Language: en-US
To: Jon Hunter <jonathanh@nvidia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org,
 waynec@nvidia.com, Thierry Reding <treding@nvidia.com>
References: <20230106152858.49574-1-jonathanh@nvidia.com>
 <20230106152858.49574-2-jonathanh@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106152858.49574-2-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_072129_344593_9FFB6DCB 
X-CRM114-Status: GOOD (  20.94  )
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

On 06/01/2023 16:28, Jon Hunter wrote:
> From: Wayne Chang <waynec@nvidia.com>
> 
> Add device-tree binding documentation for the XUSB host controller present
> on Tegra234 SoC. This controller supports the USB 3.1 specification.
> 
> Signed-off-by: Wayne Chang <waynec@nvidia.com>
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V4 -> V5: No changes
> V3 -> V4: minor update to the power-domain description
> V2 -> V3: nothing has changed
> V1 -> V2: address the issue on phy-names property
> 
>  .../bindings/usb/nvidia,tegra234-xusb.yaml    | 158 ++++++++++++++++++
>  1 file changed, 158 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> new file mode 100644
> index 000000000000..190a23c72963
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/nvidia,tegra234-xusb.yaml
> @@ -0,0 +1,158 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/nvidia,tegra234-xusb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NVIDIA Tegra234 xHCI controller
> +
> +maintainers:
> +  - Thierry Reding <thierry.reding@gmail.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +
> +description: The Tegra xHCI controller supports both USB2 and USB3 interfaces

Line ends after "description:"

> +  exposed by the Tegra XUSB pad controller.
> +
> +properties:
> +  compatible:
> +    const: nvidia,tegra234-xusb
> +
> +  reg:
> +    items:
> +      - description: base and length of the xHCI host registers

Just "xHCI host registers". Same in other places.

> +      - description: base and length of the XUSB FPCI registers
> +      - description: base and length of the XUSB bar2 registers
> +
> +  reg-names:
> +    items:
> +      - const: hcd
> +      - const: fpci
> +      - const: bar2
> +
> +  interrupts:
> +    items:
> +      - description: xHCI host interrupt
> +      - description: mailbox interrupt
> +
> +  clocks:
> +    items:
> +      - description: XUSB host clock
> +      - description: XUSB Falcon source clock
> +      - description: XUSB SuperSpeed clock
> +      - description: XUSB SuperSpeed source clock
> +      - description: XUSB HighSpeed clock source
> +      - description: XUSB FullSpeed clock source
> +      - description: USB PLL
> +      - description: reference clock
> +      - description: I/O PLL
> +
> +  clock-names:
> +    items:
> +      - const: xusb_host
> +      - const: xusb_falcon_src
> +      - const: xusb_ss
> +      - const: xusb_ss_src
> +      - const: xusb_hs_src
> +      - const: xusb_fs_src
> +      - const: pll_u_480m
> +      - const: clk_m
> +      - const: pll_e
> +
> +  interconnects:
> +    items:
> +      - description: read client
> +      - description: write client
> +
> +  interconnect-names:
> +    items:
> +      - const: dma-mem # read
> +      - const: write
> +
> +  iommus:
> +    maxItems: 1
> +
> +  nvidia,xusb-padctl:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description: phandle to the XUSB pad controller that is used to configure
> +      the USB pads used by the XHCI controller
> +
> +  phys:
> +    minItems: 1
> +    maxItems: 8
> +
> +  phy-names:
> +    minItems: 1
> +    maxItems: 8
> +    items:
> +      enum:
> +        - usb2-0
> +        - usb2-1
> +        - usb2-2
> +        - usb2-3
> +        - usb3-0
> +        - usb3-1
> +        - usb3-2
> +        - usb3-3

Why do you have so many optional phys? In what case you would put there
usb2-0 and usb3-3 together? Or even 8 phys at the same time? IOW, what
are the differences between them and why one controller would be
connected once to usb3-2 and once to usb3-3 phy? And once to both?

> +
> +  power-domains:
> +    items:
> +      - description: XUSBC power domain (for Host and USB 2.0)
> +      - description: XUSBA power domain (for SuperSpeed)
> +
> +  power-domain-names:
> +    items:
> +      - const: xusb_host
> +      - const: xusb_ss
> +
> +  dma-coherent:

Just: true

> +    type: boolean

Drop

> +
> +allOf:
> +  - $ref: usb-xhci.yaml
> +
> +unevaluatedProperties: false
> +

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
