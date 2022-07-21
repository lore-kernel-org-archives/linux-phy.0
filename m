Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F27D2CCA479
	for <linux-phy@archiver.kernel.org>; Thu, 21 Jul 2022 09:13:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aW/izhCesgF2Z74VMx1IS/uLpImzzPw1docI2v3xilI=; b=F1lin6Rsbkh5HQ
	+UUXByLFwV2345Hyes1nA7WO84MgykrpqXRAWz2SvCiPSqiLPyvBEcLGC/JBwjS33FmoRfAGC0X/n
	B9oEZjLnMWxkCUKYkl/pwovH7TpGDoDMbvyXxv6dMcVdFkW3tGNjXuD1XViUkJq+B2pqEn4O+HnHQ
	bY0j0FRa8Z/m1bB51rsgSqXrS5f6+8GUq9KyXdUUqgIY0TXpmo3CE1gpoYzB5f++PbSpyKHqQRV5X
	FhHwo0sOv/qG6TKEoFhXi9QN63si7KKI+h+jTTLB6NDInMrYauqSw07lktI+aHjLnD7RxShdhJ0QX
	vxk5Br9r0JZhsVDNX2yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oESFT-0034wQ-EF; Thu, 21 Jul 2022 09:13:35 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oESFQ-0034tM-0k
	for linux-phy@lists.infradead.org; Thu, 21 Jul 2022 09:13:33 +0000
Received: by mail-lj1-x22b.google.com with SMTP id a13so899528ljr.11
        for <linux-phy@lists.infradead.org>; Thu, 21 Jul 2022 02:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TpS5izxbfaIi7KiXxTWz4goQ0xYb3Nec6QgQZFgkaFE=;
        b=Ne/Tamn9sbxHkFifvNCByhbqPuu7S59vYRhKjA+pAGtq/voVmRpIKPGl9l2Kjbc98w
         5CKROxuqxUCEqexcCgU3SHklH4gCpLkkMPZ5fTqsEk1Q0mBkpckAnTqyH19AT7cWqqx1
         GtuOTVsIHaeXnoC4oGX78S5T9pCG+PPPP/NfC/cu7xK69P8GkXvmY2Yoe7utySXmSHLB
         l3QomXa/Hw95FksUG9tfQW0bJ+lNDf0NtjzhudXzf2B6isggQukBIHvIZGLeSQl7OOxI
         oqCh+uWtxNvECLXZPtL8zCbd6CyhMkDXx2EuFxw7aizwyLDeGHefcD2w32KfH0X1pIw6
         9qpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TpS5izxbfaIi7KiXxTWz4goQ0xYb3Nec6QgQZFgkaFE=;
        b=0n6hHaWDO7jpweYt5NOPVsD+mkfxJ7bqOp+LOTUdvQNSmZZASgDz9V1Pr7dmt0CASa
         ukjErucyojhi4iWkWDiM+LTat/scFVVlo79OeL29a1t0uCGYFlg7dHrHhJdfkBWX1cIB
         pTcXMdXmk6DEtq6bdg1ycfgrmB/CEC8QihhnzvAXGDjsgnt4hswtphWG9yFfmT5hDr+R
         roS61lWO0qF4dut866bZCBhhybQ/NpKnsdABJx7OpMKp3u6IyC1F/z8nnZIlJimA4Pl8
         3RXeWNsotObcn+ImTCUIV/h+RbjSoyri/5/LMv/sd6vpP0fyN02uE01ZMJP2gIya4qxj
         Ph7g==
X-Gm-Message-State: AJIora8JkV6O9VqRjcGwBXLwsZxnZiV8//1ag9Afhx+UoGsRCqzGDojb
	+2FUhISsedhsZV+vP1m8ioYS/g==
X-Google-Smtp-Source: AGRyM1vl+UbQxsnzo9Wgux87cQYIJBlZXhKDpg0KV4cXsthLRh+gvdcdYWQ7aL/wMk5e1MmMIqymUg==
X-Received: by 2002:a2e:504:0:b0:25d:529a:3852 with SMTP id 4-20020a2e0504000000b0025d529a3852mr17569239ljf.179.1658394809488;
        Thu, 21 Jul 2022 02:13:29 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id y11-20020a05651c106b00b002554dce4048sm366771ljm.53.2022.07.21.02.13.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 02:13:28 -0700 (PDT)
Message-ID: <84853ee4-94aa-585d-e13d-dca21a6ac37e@linaro.org>
Date: Thu, 21 Jul 2022 11:13:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v4 2/5] dt-bindings: phy: Add ARTPEC-8 PCIe phy
Content-Language: en-US
To: wangseok.lee@samsung.com, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>,
 "vkoul@kernel.org" <vkoul@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jesper.nilsson@axis.com" <jesper.nilsson@axis.com>,
 "lars.persson@axis.com" <lars.persson@axis.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
 "kw@linux.com" <kw@linux.com>,
 "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
 "kernel@axis.com" <kernel@axis.com>
Cc: Moon-Ki Jun <moonki.jun@samsung.com>,
 Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang
 <dj76.yang@samsung.com>, Yeeun Kim <yeeun119.kim@samsung.com>
References: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
 <CGME20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p6>
 <20220720055716epcms2p60e80b1089dca0f83a894262bce676858@epcms2p6>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720055716epcms2p60e80b1089dca0f83a894262bce676858@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_021332_146495_0B97381A 
X-CRM114-Status: GOOD (  19.37  )
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

On 20/07/2022 07:57, Wangseok Lee wrote:
> Add description to support Axis, ARTPEC-8 SoC. ARTPEC-8 is the SoC platform
> of Axis Communications and PCIe PHY is designed based on Samsung PHY.
> 
> Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
> ---
> v3->v4 :
> -Add "fsys-sysreg" to properties
> -Modify the "lcpll-ref-clk" and "clocks" in properties
>  "lcpll-ref-clk" is custom properties, so add 'vendor', type(enum),
>  description
>  Add the maxItem in clocks, add clock-names in properties
> 
> v2->v3 :
> -Modify version history to fit the linux commit rule
> -Remove 'Device Tree Bindings' on title
> -Remove clock-names entries
> -Change node name to soc from artpec8 on excamples
> 
> v1->v2 :
> -'make dt_binding_check' result improvement
> -Add the missing property list
> -Align the indentation of continued lines/entries
> ---
>  .../bindings/phy/axis,artpec8-pcie-phy.yaml        | 85 ++++++++++++++++++++++
>  1 file changed, 85 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> new file mode 100644
> index 0000000..9db39ef
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
> @@ -0,0 +1,85 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/axis,artpec8-pcie-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARTPEC-8 SoC PCIe PHY
> +
> +maintainers:
> +  - Jesper Nilsson <jesper.nilsson@axis.com>
> +
> +properties:
> +  compatible:
> +    const: axis,artpec8-pcie-phy
> +
> +  reg:
> +    items:
> +      - description: PHY registers.
> +      - description: PHY coding sublayer registers.
> +
> +  reg-names:
> +    items:
> +      - const: phy
> +      - const: pcs
> +
> +  "#phy-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +
> +  samsung,fsys-sysreg:
> +    description:
> +      Phandle to system register of fsys block.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  num-lanes:
> +    const: 2
> +
> +  axis,lcpll-ref-clk:
> +    description:
> +      select the reference clock of phy and initialization is performed
> +      with the reference clock according to the selected value.
> +    $ref: /schemas/types.yaml#/definitions/uint32

This looks like hardware register value... but after looking at driver
you rather need string... although REF_CLK_RESERVED is confusing. You
need to describe the feature, not some device programming model.

Then looking deeper it seems you just made a workaround around common
clock framework. At least for XO and SOC case - you just implemented a
clock mux in your PHY driver!

Implement a clock driver instead and handle only special case - clock
coming from IO.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
