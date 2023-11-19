Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 129B4C072A2
	for <linux-phy@archiver.kernel.org>; Sun, 19 Nov 2023 16:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lFW5FsgLKInr9SARqdO48g4JOVRBNqnnFERp6gEZiYk=; b=gQgo8hCwuUWNcy
	wxd82KrSl15ytERbp/ULT+19wAOe5rO85vfDT8oAXvN64mx0gdp5WkPUQ42GJwkSNFAYoi+ZKJ/lj
	9h9yyVYabnZVkMhc8Sr9LU9l5Rac+t9UFEIPng41KOhSK9qb2GgERSaOZ7z6qSE4iUl9TLlU0AiXk
	X+nyib0s2n8h0sMYXkuP6qDlcnA++zdpFuCGiTs1DTBzY/rPtCrSKzRPgdyelsTkT4d9hakHwmXTW
	A0Ttoi9teN+Jq1IrmZLK0Oa167fZZLby3g2nTlI+sklNXewfYaogHc9mAQaZzIvPkABpecBtenNnL
	nTbdlpNSc2YocSUruokw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kMk-00ANJq-22;
	Sun, 19 Nov 2023 16:09:46 +0000
Received: from mail-oa1-f41.google.com ([209.85.160.41])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r4kMh-00ANIy-1M
	for linux-phy@lists.infradead.org;
	Sun, 19 Nov 2023 16:09:45 +0000
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1f03d9ad89fso2073896fac.1
        for <linux-phy@lists.infradead.org>; Sun, 19 Nov 2023 08:09:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700410182; x=1701014982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6FwY3Ii3WuLnORYg7kZbiyOjnq76hZU7a/LRk5adx6s=;
        b=A/sl/gjOwOuA2zdV0iD1d0oJ/wtw3nKOKdMnOxJiqqoVaGTGmbJPNAo3rfQjffkc0e
         uiJARPg/0wSk1nB37Ipqk90NAEKsv5aYyUVL44o7WrvBFMysYghqUHpvKoaQUfap32SG
         /5v4W7v2liCltTsItnqa8jOg2igEg/JqUjSuY9fXS5wTYCjAwFzIScreUpcAXRZ3Namk
         qlrilUp54A6lo3zNV8PVXCWHzyAZU2U2+rnRIP48z0s5OOVjjJtvQLVUMrWh/XXBiUe4
         mHWI+lPQ1NOD0d5H3wKfyY2/18y0KP2egzaGNZfPv3J6z28nFrEc7izocUUDNO0/DK2j
         XLyg==
X-Gm-Message-State: AOJu0YzEWRxx7UsDkS3QGTH/i7Nd2OTjhLlYWAmMvungVQOhrjNHtjAM
	PgBhKc6BDv38TCkav65vww==
X-Google-Smtp-Source: AGHT+IEz6w9sNadnlJUFScEINQMPuBFhN59ha6xK606aQ5nY0TgW8H9gCuKJz13S9Fn5S94b3GiruQ==
X-Received: by 2002:a05:6871:521e:b0:1eb:192b:e75b with SMTP id ht30-20020a056871521e00b001eb192be75bmr6166361oac.40.1700410182011;
        Sun, 19 Nov 2023 08:09:42 -0800 (PST)
Received: from herring.priv ([2607:fb90:45e3:889f:15b4:1348:6d64:224b])
        by smtp.gmail.com with ESMTPSA id dd14-20020a056871c80e00b001efcb7b4717sm1032878oac.53.2023.11.19.08.09.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Nov 2023 08:09:40 -0800 (PST)
Received: (nullmailer pid 273405 invoked by uid 1000);
	Sun, 19 Nov 2023 16:09:38 -0000
Date: Sun, 19 Nov 2023 10:09:38 -0600
From: Rob Herring <robh@kernel.org>
To: Shengyang Chen <shengyang.chen@starfivetech.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, kishon@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, p.zabel@pengutronix.de, minda.chen@starfivetech.com, changhuang.liang@starfivetech.com, rogerq@kernel.org, geert+renesas@glider.be, keith.zhao@starfivetech.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-tx
Message-ID: <20231119160938.GA269430-robh@kernel.org>
References: <20231117130421.79261-1-shengyang.chen@starfivetech.com>
 <20231117130421.79261-2-shengyang.chen@starfivetech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231117130421.79261-2-shengyang.chen@starfivetech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231119_080943_559607_801887B0 
X-CRM114-Status: GOOD (  18.20  )
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

On Fri, Nov 17, 2023 at 09:04:20PM +0800, Shengyang Chen wrote:
> StarFive SoCs like the jh7110 use a MIPI D-PHY TX
> controller based on a M31 IP. Add a binding for it.
> 
> Signed-off-by: Shengyang Chen <shengyang.chen@starfivetech.com>
> ---
>  .../bindings/phy/starfive,jh7110-dphy-tx.yaml | 74 +++++++++++++++++++
>  1 file changed, 74 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> new file mode 100644
> index 000000000000..850fe2e61d1d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-tx.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-tx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Starfive SoC MIPI D-PHY Tx Controller
> +
> +maintainers:
> +  - Keith Zhao <keith.zhao@starfivetech.com>
> +  - Shengyang Chen <shengyang.chen@starfivetech.com>
> +
> +description:
> +  The Starfive SoC uses the MIPI DSI D-PHY based on M31 IP to transfer
> +  DSI data.
> +
> +properties:
> +  compatible:
> +    const: starfive,jh7110-dphy-tx
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: dphy_txesc

Module name is redundant. Drop 'dphy_'.

> +
> +  resets:
> +    items:
> +      - description: DSITX_TXBYTEHS reset
> +      - description: MIPITX_DPHY_SYS reset
> +      - description: MIPITX_DPHY_TXBYTEHS reset
> +
> +  reset-names:
> +    items:
> +      - const: dsi_txbytehs
> +      - const: dphy_sys
> +      - const: dphy_txbytehs

Drop 'dphy_'.

Is 'dsi_txbytehs' really a part of the DPHY block? Sounds like it is 
part of the DSI block. If so, the reset belongs there. If the phy driver 
needs it, then it needs to go find the DSI block and get its reset.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - power-domains
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    phy@295e0000 {
> +      compatible = "starfive,jh7110-dphy-tx";
> +      reg = <0x295e0000 0x10000>;
> +      clocks = <&voutcrg 14>;
> +      clock-names = "dphy_txesc";
> +      resets = <&syscrg 7>,
> +               <&syscrg 10>,
> +               <&syscrg 11>;
> +      reset-names = "dsi_txbytehs", "dphy_sys", "dphy_txbytehs";
> +      power-domains = <&aon_syscon 0>;
> +      #phy-cells = <0>;
> +    };
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
