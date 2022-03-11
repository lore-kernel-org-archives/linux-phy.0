Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAE50C433F5
	for <linux-phy@archiver.kernel.org>; Fri, 11 Mar 2022 14:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aqcBu1SxsPylDximkbg+oIIJZuSkEcZo0Cx0+x8P64=; b=ngigTgETR+gYwB
	m2wr0NSU2KGDML/ya5241xiFLXpnmGx9SzYd8Ef4ypl0Es8E/mEOfnfs0nPIGg1t+Inn2d3/JyWxc
	B2FDKnEogRre5pOnBUpqWBelE2ANBtVarTy8cQCFOycXuza3+zq18itmdIffMFZv3F0Fr+cYS2Pc+
	L422v2wXzVy5jOZLkHDZ9N8YC5MVp0deF34OAy0mYLs1b6SX7Uv4EzNJZwWjCTt6ncs9IHneW0bj+
	TRUY7SEBObQAuV6S8aUEs1kKheDlREzaNqFxixxpDOrBFleORDV8HQvNRSMGykkdHXoJrOv3Rgf8v
	AmdL88bFrKiOOpSW9HaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nSgGB-00GmW6-6D; Fri, 11 Mar 2022 14:28:51 +0000
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nSgFx-00GmRG-Mr
 for linux-phy@lists.infradead.org; Fri, 11 Mar 2022 14:28:40 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 1222E3FCA1
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 14:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1647008911;
 bh=PdIndayzdh0p1erKParNfrZ1poZ/AkWCjFd9nsPB1bM=;
 h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
 In-Reply-To:Content-Type;
 b=r53M9jV+B8XmgcA7X8IiKPGsHT7nVwDDq+PhKCeLEp8O9hBjfPqebgMaJEYmLdO41
 L4ZeuYKaCVDw7wTKxrLQOPKY35ERdumH+YC+7eJ5XsqVrZiNypcu5WIRkxhRpCN9hw
 xLOq1Wl6hbrD+Hjn4wp1lLn6ZQZBQ0z3GsaygtXWuzuDFOk0X4VR1TPrL/dvsHoo28
 c0XB6NC1mVZbWOAYxCzPVZtkZl0EQSHJfAu56847GseXvaDF9Jgt0+THQ7ZcYJpUoT
 TaLrq7s2tucgCsjpsV8vnfEYJN8japQMpOxZE5Q3kCgqyov/dxB+lOVLSQlj9GqS3w
 cDr6/edhPbHVg==
Received: by mail-ej1-f70.google.com with SMTP id
 l24-20020a170906a41800b006da873d66b6so5005612ejz.3
 for <linux-phy@lists.infradead.org>; Fri, 11 Mar 2022 06:28:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PdIndayzdh0p1erKParNfrZ1poZ/AkWCjFd9nsPB1bM=;
 b=Q9ViOgUv3x0AF9VBKG0b8Q/SsbTjzyvEr2JYezARxQ0pZwyLZ1ZEmb16I1q9yVszNo
 tw2Z1Zo98Pji2zsidAUDf2n3LAtwVdzPeenWuFStKsAJKts2N9AwJuC8JNL/LpMaGZ8Q
 kMA8fpSzTV19MG4t6ga6zn4LxPmZiuZiHBRpWJEC2oZlmZ2cAsQJyZ5IDTJ3a6CmwzHN
 YY2twHUmUe6uVV1o/yxkLVLCvfZ80gNvnfpymQFHhjriHG6COAtI5zW0VU77C8iNJzYD
 Sdyw4aF7jcogoUa2aM7L5Uu1ESl9W9bcPECf0ynUShYWO2s0fF6QQx0Yvyon+o9KnMg3
 nY3A==
X-Gm-Message-State: AOAM531SSjEGWdIb7avX0UVDSQSCCbU39qxM9NLZTUowar0qOuaA8ZCE
 qISEpC4SPBbQ/hX58dprZg2yCxXUuDkGdKoPeAOpw6zLsP1k9neq0z44ZpFzCIRkb7hPfBUn7l+
 PeslJATVlc1QkU7QeZr8+Z5utkB379SAj0fD2wuZXpzQ=
X-Received: by 2002:a17:906:40a:b0:6db:3e2a:a7ce with SMTP id
 d10-20020a170906040a00b006db3e2aa7cemr8563527eja.255.1647008910557; 
 Fri, 11 Mar 2022 06:28:30 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxu7HRELcvW932dJyiTM8RcnBlSViVbwCdvsfEGJ7B4Ej6w1K6mhpjwwmEC8B/O6gJR4wVowQ==
X-Received: by 2002:a17:906:40a:b0:6db:3e2a:a7ce with SMTP id
 d10-20020a170906040a00b006db3e2aa7cemr8563494eja.255.1647008910276; 
 Fri, 11 Mar 2022 06:28:30 -0800 (PST)
Received: from [192.168.0.148] (xdsl-188-155-174-239.adslplus.ch.
 [188.155.174.239]) by smtp.gmail.com with ESMTPSA id
 z7-20020a05640240c700b00416cee953dasm1089877edb.24.2022.03.11.06.28.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Mar 2022 06:28:29 -0800 (PST)
Message-ID: <0454647b-7aa3-ed70-0b92-1e5c98d0adc0@canonical.com>
Date: Fri, 11 Mar 2022 15:28:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/2] dt-bindings: phy: mediatek: Add YAML schema for PCIe
 PHY
Content-Language: en-US
To: Jianjun Wang <jianjun.wang@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, rex-bc.chen@mediatek.com,
 randy.wu@mediatek.com, jieyy.yang@mediatek.com, chuanjia.liu@mediatek.com,
 qizhong.cheng@mediatek.com, jian.yang@mediatek.com
References: <20220311133527.5914-1-jianjun.wang@mediatek.com>
 <20220311133527.5914-3-jianjun.wang@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220311133527.5914-3-jianjun.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220311_062837_928302_7A956F54 
X-CRM114-Status: GOOD (  17.43  )
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

On 11/03/2022 14:35, Jianjun Wang wrote:
> Add YAML schema documentation for PCIe PHY on MediaTek chipsets.
> 
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
>  .../bindings/phy/mediatek,pcie-phy.yaml       | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml b/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
> new file mode 100644
> index 000000000000..da15b4bf3117
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mediatek,pcie-phy.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/mediatek,pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek PCIe PHY Device Tree Binding

Title is for hardware, so s/Device Tree Binding//

> +
> +maintainers:
> +  - Jianjun Wang <jianjun.wang@mediatek.com>
> +
> +description: |
> +  The PCIe PHY supports physical layer functionality for PCIe Gen3 port.
> +
> +properties:
> +  compatible:
> +    const: mediatek,pcie-phy

Is it going to be exactly one pcie-phy for all Mediatek chipsets for
next years? Are you sure about that? It sounds highly unlikely....

> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-names:
> +    items:
> +      - const: sif
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  nvmem-cells:
> +    maxItems: 7
> +    description:
> +      Phandles to nvmem cell that contains the efuse data, if unspecified,
> +      default value is used.
> +
> +  nvmem-cell-names:
> +    items:
> +      - const: glb_intr
> +      - const: tx_ln0_pmos
> +      - const: tx_ln0_nmos
> +      - const: rx_ln0
> +      - const: tx_ln1_pmos
> +      - const: tx_ln1_nmos
> +      - const: rx_ln1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    pciephy: phy@11e80000 {
> +        compatible = "mediatek,pcie-phy";
> +        #phy-cells = <0>;
> +        reg = <0x11e80000 0x10000>;
> +        reg-names = "sif";
> +        nvmem-cells = <&pciephy_glb_intr>,
> +                      <&pciephy_tx_ln0_pmos>,
> +                      <&pciephy_tx_ln0_nmos>,
> +                      <&pciephy_rx_ln0>,
> +                      <&pciephy_tx_ln1_pmos>,
> +                      <&pciephy_tx_ln1_nmos>,
> +                      <&pciephy_rx_ln1>;
> +        nvmem-cell-names = "glb_intr", "tx_ln0_pmos",
> +                           "tx_ln0_nmos", "rx_ln0",
> +                           "tx_ln1_pmos", "tx_ln1_nmos",
> +                           "rx_ln1";
> +    };


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
