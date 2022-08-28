Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 284C3ECAAD2
	for <linux-phy@archiver.kernel.org>; Sun, 28 Aug 2022 15:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkI3jxRwG++J5WyuSYWiizvd/OZAKSLRyRtSO2hDwOY=; b=x4vVn9ekkjiOoE
	6SBQwCHKF9XEZwU4+JBp0OxxFoNP/XnWqJxIb601pXJHakTWXa0EM56RTUA356s7srUTONO77OQRo
	UK4m9Iw2ydRaH0uXmyd1o2TaKq3x5IqxQ5JheXpbGsGGl7KKYygpD6dSlflDfJVpJ56Te3zfevltz
	t+JvqTAqNgSuezADj+aqwK8Jp7+vkXuxYEREh8xXmdRiKh/jJ2IVXbCpUKp2zomhbTbSIV9/W4+rS
	kUWZnkq3UyzkCqR+fGvUG5BxxiL9YbvDphJ62UCKZ9lziT2mJKtku0izrdpuDY+SD4rIw69woWEKs
	kKGeHQjNDLAFF5Kdo9zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSKPF-000L6P-MK; Sun, 28 Aug 2022 15:41:01 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSKPA-000L4D-I0
	for linux-phy@lists.infradead.org; Sun, 28 Aug 2022 15:40:58 +0000
Received: by mail-lj1-x22f.google.com with SMTP id z23so3035108ljk.1
        for <linux-phy@lists.infradead.org>; Sun, 28 Aug 2022 08:40:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=38oxNFO9Mw1uMALP3WOGPasfWjHLRuiM1zg8Pz8ylVU=;
        b=vEOr7DxJ/oFLM3GtgmXWtP3X4p1HmT1e6mjCbWgmWCxv163TP23UPsoiw92mDuU/cz
         pDPfHXrKD8KRY2R795JWX0twOJ8OUMJaD0Yn+DgT1rJiyNhGu8vyFy+SUeoAtEKvNc1N
         OrW1vNLUPcDTZ4a3shSjYEHeEjLHvPZCTlrX6qb+uztCbOw/jDVOu1lmpTTXagky8qNa
         YAbh/ZqtZQ/hzijuMxjFp/J78JUmgwC4TgwzTV56DZA7zns5CLCHeNL22zAr51NoiMx+
         xWwPWCAbobW+hBtTueir3Gbllm+jDJ8GRKoOqXwNbvpoEG1SaKWPFDimtspasMIc8ZKf
         aoJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=38oxNFO9Mw1uMALP3WOGPasfWjHLRuiM1zg8Pz8ylVU=;
        b=L6V5DZ18o3f6k1Rz3ijf1iJNeN1Bu3ooAdh0Pkc6K2QQxmSwdUmomoQcTiPl3itjgW
         ucZt8+g8S6jFzmaY5Jm3RhgMbQuwIH3dq0HnncqOPPo3xqtP0kzWAQsnprt50hxiA6Aa
         g0TNdUG6To+t0/SMX2oQawwnehVL1nu+OJ1ZbQLT0bdR6gIsANGrW9KANBDRyTUGsC44
         R3MLS0WIjVwpod4MUpZPw3W303QpqG5wNiUzCSK2E+oXmKXE5wqWA/hzLTiAtoZMKJp6
         Ao0Bc3LfjCihJXP6BJtUIns0xmlQo5QllawOj4ZMS//Fg1BqTUuW2DpP27nq/qZoXH/O
         Cunw==
X-Gm-Message-State: ACgBeo00hgaJCCt1Hlp1rAp9l/uxqO7X+5vyYaQg1ej1hbk54fQ01SYZ
	ZefzSG1e596eiSpPqt9+/RTlDQ==
X-Google-Smtp-Source: AA6agR4x84VsuVlFbZvcqBYBpvnYvmlQvI8T6yphb0Aawwi+aWB0x1G23gHzEkMrauoLgBfNlcAifw==
X-Received: by 2002:a05:651c:c88:b0:261:e2fe:f0b7 with SMTP id bz8-20020a05651c0c8800b00261e2fef0b7mr4305801ljb.304.1661701251560;
        Sun, 28 Aug 2022 08:40:51 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id h24-20020ac25978000000b0048b003c4bf7sm359034lfp.169.2022.08.28.08.40.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Aug 2022 08:40:50 -0700 (PDT)
Message-ID: <844375c6-b4d7-f329-739b-772c1b40144f@linaro.org>
Date: Sun, 28 Aug 2022 18:40:47 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: phy: add binding for the i.MX8MP HDMI
 PHY
Content-Language: en-US
To: Lucas Stach <l.stach@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 patchwork-lst@pengutronix.de, kernel@pengutronix.de
References: <20220826192023.3216389-1-l.stach@pengutronix.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220826192023.3216389-1-l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_084056_682519_A403876D 
X-CRM114-Status: GOOD (  13.79  )
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

On 26/08/2022 22:20, Lucas Stach wrote:
> Add a DT binding for the HDMI PHY found on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/phy/fsl,imx8mp-hdmi-phy.yaml     | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> new file mode 100644
> index 000000000000..2118f964cad4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/fsl,imx8mp-hdmi-phy.yaml
> @@ -0,0 +1,63 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/fsl,imx8mp-hdmi-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8MP HDMI PHY binding
> +
> +maintainers:
> +  - Lucas Stach <l.stach@pengutronix.de>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mp-hdmi-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 2

No need for minItems.

> +    maxItems: 2
> +

Rest looks ok, so with above:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
