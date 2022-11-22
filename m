Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4139C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 08:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDdyqfipM2vZe1Job1iePx+6P6cglS4cTf7fdLuATrU=; b=vfAEg9sho+W6S8
	C8JLDEmUyAwoIYLBgTw4YQk110FHp7XnlxRrbOqHhkhC+1cbQt4pNgkjHJdV/dhfOke2T1Yi7MNy4
	CSi4F/YjeGT2O7oXYVAyYBf21qhVgkoWVitkT+0ytUWw4tWkX6vGtW/j5TeOgcgZ3oTrZnkPAG+vY
	uMb2UazykpTMn768J6Gqnk5GbjM8ZnYENVJKY0pmrj0Dy1SgDGklZdlhTSn+6DgJwVb+84LLl8kWy
	3KjoVO72nEBgiaap4CqXN/zLnSP/TNglUIiRg9oY7X2p3E/Kks2BG/slZdaK7X2Yo3MGtZ07lelqO
	/R375dO+vUjiHKPg8zKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOdM-006FQB-3p; Tue, 22 Nov 2022 08:28:00 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxOdI-006FLi-Gl
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 08:27:58 +0000
Received: by mail-lf1-x134.google.com with SMTP id be13so22510734lfb.4
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 00:27:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NBwxUgJR8NGe1DGEeONE6WsC29VoXRjD7bpTza6BfUg=;
        b=hYAbwKH5QwjJOnfG9yEqUEgsnSseVoMPMrJp+TMXhBuNDQRxQ7RGD2NZcJx5RF+zdA
         zUEk6UCdzfHcUK/i4onhOvHK87UBvBaTtB6peOCWfiL0E9taxsBJKQAuhXQwodrEkVkC
         xL4sq0zWy3xh5+IAfFLbnPn5FT4ksU/GwbnVR5jX1LdlxqpGUKomwAIjVft2/AjPof62
         nm50CPe+4nUcYIm+1y65yNh83iK7eQx3FdObF/vzsX2WvFcNjpF1qtxTlHNfXSG4+isj
         phqUXSEniYZJ9DRmp46DvhNRcA2pOtPfiMCiJJGMU5CJvzQiRv4Avf8fRcdDjWA1DeiX
         dzGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NBwxUgJR8NGe1DGEeONE6WsC29VoXRjD7bpTza6BfUg=;
        b=SyNXPhF3Rttn8pKCQAGx7S0+MrgzEzQDxnUFPG4kMNqJY6kwkiTz2ZmWPnl9JVuypV
         H+9v+lT2vNQkjccCY1D3NjcHJ3+MUZZilIr/n4pVPNgjvA8rRUZCw2oh22HZvmlzDfn9
         7PSJx3XAwhk8oyPbf7jYX/QH35LZmA+0y0jzGdYenD6un/xg9Erj/2XqczMMupAQAPTi
         Jr7AEk8LYFxpvV9t+HZCkNI5FQB8wkpzW9W+qj5+lAn4aNujoTYHh7ZVptjcozqXegmY
         bqMyPJeemjY/Jr68Na2dKE2cCUtutDVrkgXOFoB/8zZteDKawbgA56L7SuXjZCacTHWw
         bHSw==
X-Gm-Message-State: ANoB5pk9J6jEZmfJS63uzAAxziNdNhyNVax4d+dZBEE/+Dc2tluZ9fbX
	CCAibRikYHMJ18ov4/0zsQ86Ng==
X-Google-Smtp-Source: AA0mqf7G3s5VlmrKWGE9XYyV7u93v/W4UcZyLl6VtWdTS85QQiPrOv2z7E7k5phTypSWytOq0S/ANA==
X-Received: by 2002:a05:6512:a93:b0:4a2:6337:872d with SMTP id m19-20020a0565120a9300b004a26337872dmr1801184lfu.35.1669105673210;
        Tue, 22 Nov 2022 00:27:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id n4-20020a195504000000b00492ce573726sm2418776lfe.47.2022.11.22.00.27.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 00:27:52 -0800 (PST)
Message-ID: <d2f90ade-70ff-b05e-9643-cda25a4fd6ff@linaro.org>
Date: Tue, 22 Nov 2022 09:27:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v4 02/10] dt-bindings: display: bridge: Add MHDP DP for
 i.MX8MQ
Content-Language: en-US
To: Sandor Yu <Sandor.yu@nxp.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, robert.foss@linaro.org,
 Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, festevam@gmail.com, kishon@ti.com, vkoul@kernel.org,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, alexander.stein@ew.tq-group.com
Cc: kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com
References: <cover.1669013346.git.Sandor.yu@nxp.com>
 <f09833038399e4ed0ff845724fc99bcf8b2793c9.1669013346.git.Sandor.yu@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f09833038399e4ed0ff845724fc99bcf8b2793c9.1669013346.git.Sandor.yu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_002756_619055_E9257D80 
X-CRM114-Status: GOOD (  15.98  )
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

On 21/11/2022 08:23, Sandor Yu wrote:
> Add bindings for i.MX8MQ MHDP DisplayPort.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> ---
>  .../display/bridge/cdns,mhdp-imx8mq-dp.yaml   | 93 +++++++++++++++++++
>  1 file changed, 93 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> new file mode 100644
> index 000000000000..d82f3ceddaa8
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp-imx8mq-dp.yaml
> @@ -0,0 +1,93 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp-imx8mq-dp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP Displayport bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  The Cadence MHDP Displayport TX interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - cdns,mhdp-imx8mq-dp
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP DP APB clock.
> +
> +  phys:
> +    maxItems: 1
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DP connector.
> +
> +    required:
> +      - port@0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp_dp: dp-bridge@32c00000 {
> +        compatible = "cdns,mhdp-imx8mq-dp";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&dp_phy>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint = <&dcss_out>;
> +                };

As Rob suggested, you allowed property for output to DP port. However it
is not in the example. If this is a bridge, what does it bridge if there
is no output connector?


Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
