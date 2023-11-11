Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1437C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 11 Nov 2023 08:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh4N7dGDniVKEq+8MyeVK4tpiFdAwljMPYNLUq+zgg8=; b=quftQGaE47NQ1n
	L1faQj0rLAxRyhuofQ+hgwD+uFynz+ZvV2MBtbIE8TcA7QkuSfX5dTAgu94MuAefohVRKmDaDHmla
	DJsyu1hX3Gcxr4kmpTbwAi9kKcOFaNGgsU9EGIdywtBiYCge8B2tHqt9Eb8Xbv/4V5WGRT3TUyt6e
	kONcZoTpBYr+CU3pS0gSenVnE6ou1MItY2QuFdBsQXFb6sGIfI7iB7TqCUIokLMxwGdbSXWIALEth
	wN2lQXo8M3fDS538XjN98abv+wW8GUG8HFkT6ivOkSM9L0dQ3O0bOLyxR4lF32+BQjZ7qK1mXyuzI
	pSpOiaa5YChJPcE+XYRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1j7x-00AEiZ-1U;
	Sat, 11 Nov 2023 08:14:01 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1j7t-00AEgf-18
	for linux-phy@lists.infradead.org;
	Sat, 11 Nov 2023 08:13:59 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40859c464daso21505885e9.1
        for <linux-phy@lists.infradead.org>; Sat, 11 Nov 2023 00:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699690435; x=1700295235; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=hbD/sFHhqCgv+rc21fEZQqviHdww1+qYyJF/3ffER+g=;
        b=sCJGqziPOhKYsyoEE45ukeOdvHaLqHq5cgECaOSxG6TIeGQisngjt7/6knxoo22Wc1
         izibXuNQFF5HOMuL+NUkojKPCmrj9aBaYGRD5Z+C3Ymf0wV850Fo8XYHi06qxxAyJVY+
         DO5202faXyhq1kQkVVmxRD9UsYL7WRMQbS01r8RmwmE7FInHuNqSMABRQVSBQKSIi1/G
         o51IEGGce0zGqG+r4FdJvTjLFEmlrmR+lcSlLuxIX/s9Nz2clrjorLxWFmCrdDOyLgh7
         aFDD6w5qvCvzc8kAGwllJWu1l5Pa1ELxiSLepD4rhctP32EeA6NS1J2DrqHHXXSfA3hW
         Ulfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699690435; x=1700295235;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hbD/sFHhqCgv+rc21fEZQqviHdww1+qYyJF/3ffER+g=;
        b=rUBCKSWPOK6uSouHzZh9Tjp1jHzCwusCjCz3acODAhyieulX6DIw8tEbMJQrBFr8y6
         O2SpPiOYzdzh5qw4yhttl7ArUgxmFiSuOh76PQ/1FzoEprKzD/cfmDL3ctKc6rW3xZcB
         VvCF4g+RS0J17a5KRYErYsKg0ufkLq2d0QFOpBo1/7tC5Ywoulf1Cp/k1lutDBA4H9d5
         FuGf8vVgOBDUZr2yt/Cb0+nZbJVepYJnA1wqllI0JZkGZCWZ3mzcBfyDzpIJV1O+TM4m
         HowRNr4Wx6Z5F87GQSElSX0ej4hlMHpC1EK5KdSdzgo/n0UjQY1J7ieLbOmwuOelMP2Y
         YHJw==
X-Gm-Message-State: AOJu0Yxy7iGTnevTs7BdSFSri8D+lVDBy8FnLwLvMJ2dSk/ckT2ekrnt
	2AM3EFQxOhbgaZ4PMozG6WNfsw==
X-Google-Smtp-Source: AGHT+IG8F5780iVYGMmIwg2z/khiYfoNnFqsg579K+pHph0JUAyx+INzjzlKPTIrThsPFg7vXACArg==
X-Received: by 2002:a05:600c:30d3:b0:409:85d:5a6e with SMTP id h19-20020a05600c30d300b00409085d5a6emr1168539wmn.29.1699690435330;
        Sat, 11 Nov 2023 00:13:55 -0800 (PST)
Received: from [10.230.170.72] (46-253-189-43.dynamic.monzoon.net. [46.253.189.43])
        by smtp.gmail.com with ESMTPSA id hg12-20020a05600c538c00b0040a4835d2b2sm3019298wmb.37.2023.11.11.00.13.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 11 Nov 2023 00:13:54 -0800 (PST)
Message-ID: <0819b2e0-fa1f-4452-9925-e93b8bb2e940@linaro.org>
Date: Sat, 11 Nov 2023 09:13:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 5/8] dt-bindings: net: pcs: add bindings for MediaTek
 USXGMII PCS
To: Daniel Golle <daniel@makrotopia.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Chunfeng Yun
 <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Felix Fietkau <nbd@nbd.name>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Lorenzo Bianconi <lorenzo@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Alexander Couzens <lynxis@fe80.eu>,
 Philipp Zabel <p.zabel@pengutronix.de>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1699565880.git.daniel@makrotopia.org>
 <2dff6aff7006573d3232ec2ddd93c1792740d4d3.1699565880.git.daniel@makrotopia.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <2dff6aff7006573d3232ec2ddd93c1792740d4d3.1699565880.git.daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231111_001357_396419_02CC1D19 
X-CRM114-Status: GOOD (  21.66  )
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

On 09/11/2023 22:51, Daniel Golle wrote:
> MediaTek's USXGMII can be found in the MT7988 SoC. We need to access
> it in order to configure and monitor the Ethernet SerDes link in
> USXGMII, 10GBase-R and 5GBase-R mode. By including a wrapped
> legacy 1000Base-X/2500Base-X/Cisco SGMII LynxI PCS as well, those
> interface modes are also available.
> 

A nit, subject: drop second/last, redundant "bindings for". The
"dt-bindings" prefix is already stating that these are bindings.

> Signed-off-by: Daniel Golle <daniel@makrotopia.org>
> ---
>  .../bindings/net/pcs/mediatek,usxgmii.yaml    | 105 ++++++++++++++++++

Use compatible as filename (especially that you do not expect it to grow).

>  1 file changed, 105 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
> new file mode 100644
> index 0000000000000..199cf47859e31
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/pcs/mediatek,usxgmii.yaml
> @@ -0,0 +1,105 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/pcs/mediatek,usxgmii.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MediaTek USXGMII PCS

MT7888 I guess?

> +
> +maintainers:
> +  - Daniel Golle <daniel@makrotopia.org>
> +
> +description:
> +  The MediaTek USXGMII PCS provides physical link control and status
> +  for USXGMII, 10GBase-R and 5GBase-R links on the SerDes interfaces
> +  provided by the PEXTP PHY.
> +  In order to also support legacy 2500Base-X, 1000Base-X and Cisco
> +  SGMII an existing mediatek,*-sgmiisys LynxI PCS is wrapped to
> +  provide those interfaces modes on the same SerDes interfaces shared
> +  with the USXGMII PCS.
> +
> +properties:
> +  $nodename:
> +    pattern: "^pcs@[0-9a-f]+$"

Drop, we do not enforce naming in individual device schemas.

> +
> +  compatible:
> +    const: mediatek,mt7988-usxgmiisys
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: USXGMII top-level clock
> +      - description: SGMII top-level clock
> +      - description: SGMII subsystem TX clock
> +      - description: SGMII subsystem RX clock
> +      - description: XFI PLL clock
> +
> +  clock-names:
> +    items:
> +      - const: usxgmii
> +      - const: sgmii_sel
> +      - const: sgmii_tx
> +      - const: sgmii_rx
> +      - const: xfi_pll
> +
> +  phys:
> +    items:
> +      - description: PEXTP SerDes PHY
> +
> +  mediatek,sgmiisys:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the syscon node of the corresponding SGMII LynxI PCS.

"syscon node" is Linux term. Instead describe to what part of hardware
this phandle is and why do you need it.

> +
> +  resets:
> +    items:
> +      - description: XFI reset
> +      - description: SGMII reset
> +
> +  reset-names:
> +    items:
> +      - const: xfi
> +      - const: sgmii
> +
> +  "#pcs-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - phys
> +  - mediatek,sgmiisys
> +  - resets
> +  - reset-names
> +  - "#pcs-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mediatek,mt7988-clk.h>
> +    #include <dt-bindings/reset/mediatek,mt7988-resets.h>
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +        usxgmiisys0: pcs@10080000 {

Odd/Messed indentation.

Use 4 spaces for example indentation.



Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
