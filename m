Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D36AEECAAD8
	for <linux-phy@archiver.kernel.org>; Tue, 20 Sep 2022 06:35:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqPQ8inVnHw+WE5MEH4bA6vPu+g87iuiq6E7TsxoJME=; b=tQIqYeAuh+h7+w
	FvhyBdQPE4riho/zozQRrvXbW/Fz6p+viB7oo7OpKcyp57nrFoULht3Oj4y4lZthtQoG81mA1ViDE
	SKS6VbT+7C7RtTlPy05kuQoniTiRXk7/Z4RdtJVXzbxIVs62zd+dEFv2PRWp1nd3cTzxK/XYKViYy
	nDlQ2br8hHBXoj7iIC8/CyraHrIoyuPc1ZZpk6KG/nk4zvRh7VjPDiZJtbVQe2C7RuNR8AAijTszs
	4kf1zf5GNvz/IGXUbJ5BaxfI2EzUOD0bdIwdNCb8xofIjc0RP8GfC1zOHtMgUb1CEUgRG6uXFc4fV
	5AsH1V1AycN/DT0khXDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWrK-00120M-6N; Tue, 20 Sep 2022 06:35:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaWr1-0011vb-Ii; Tue, 20 Sep 2022 06:35:37 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 23D9A620B2;
	Tue, 20 Sep 2022 06:35:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5B27C433C1;
	Tue, 20 Sep 2022 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663655734;
	bh=z4g70PWNS19WDaZZAXAoI1HGOBQ1YJ7dA7waNDxTJ+U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l5Twc8sPOZQJX+kvswAylubH6gwPowlY7GN/3Z8oGoS5TZfrtK7a4uw/aA34Hr/0i
	 1Hvnz9QIGt+0ykQoZKjXYskD2llkqqcGkBnMgOW7C6Tz0T3V9NZqYx/uvuMXhmJrqk
	 JncAZzUVlWHHkplP7W4bIDFqmq3O0/M0PaS9DfI+MnT47jD5MIXSADJo63pevsCPnb
	 Itn0HRwiaLbZdB+t/BnVmlBzNALhmgH0kevAkMp9maNERiBLRJsKYNktFVEsKsI7Mb
	 hQXq+h6kbdfeF+OOhh5BFHVvVTLC3+OOVKYnYr+2/lGB+UvIag5cm2JbcJeIqGhJYj
	 KxdmvuLnuSecA==
Date: Tue, 20 Sep 2022 12:05:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>,
	Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 2/7] dt-bindings: usb: Add special clock for Allwinner
 H616 PHY
Message-ID: <YylfMk4QJsgTOCe0@matsya>
References: <20220911235945.6635-1-andre.przywara@arm.com>
 <20220911235945.6635-3-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220911235945.6635-3-andre.przywara@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_233535_745569_A84419A4 
X-CRM114-Status: GOOD (  20.92  )
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

On 12-09-22, 00:59, Andre Przywara wrote:
> The USB PHY IP in the Allwinner H616 SoC requires a quirk that involves
> some resources from port 2's PHY and HCI IP. In particular the PMU clock
> for port 2 must be surely ungated before accessing the REG_HCI_PHY_CTL
> register of port 2. To allow each USB port to be controlled
> independently of port 2, we need a handle to that particular PMU clock
> in the *PHY* node, as the HCI and PHY part might be handled by separate
> drivers.
> 
> Add that clock to the requirements of the H616 PHY binding, so that a
> PHY driver can apply the quirk in isolation, without requiring help from
> port 2's HCI driver.

This is phy binding patch and not a usb one, pls fix the subystem name
for patch

> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  .../phy/allwinner,sun8i-h3-usb-phy.yaml       | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
> index e288450e0844..3a3168392597 100644
> --- a/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/allwinner,sun8i-h3-usb-phy.yaml
> @@ -36,18 +36,22 @@ properties:
>        - const: pmu3
>  
>    clocks:
> +    minItems: 4
>      items:
>        - description: USB OTG PHY bus clock
>        - description: USB Host 0 PHY bus clock
>        - description: USB Host 1 PHY bus clock
>        - description: USB Host 2 PHY bus clock
> +      - description: PMU clock for host port 2
>  
>    clock-names:
> +    minItems: 4
>      items:
>        - const: usb0_phy
>        - const: usb1_phy
>        - const: usb2_phy
>        - const: usb3_phy
> +      - const: pmu2_clk
>  
>    resets:
>      items:
> @@ -98,6 +102,21 @@ required:
>  
>  additionalProperties: false
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - sun50i-h616-usb-phy
> +
> +then:
> +  properties:
> +    clocks:
> +      minItems: 5
> +
> +    clock-names:
> +      minItems: 5
> +
>  examples:
>    - |
>      #include <dt-bindings/gpio/gpio.h>
> -- 
> 2.35.3

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
