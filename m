Return-Path: <SRS0=dFK9=LQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8618C2B9F4
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 16:57:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92DD961378
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jun 2021 16:57:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92DD961378
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cYRGkJ0zMtnDBC9z+i6S/G4NTWSxCcQ5+uTFk0vvoQk=; b=mi+hj5wrigNC9y
	ct2kIDEIrP1Lw1QD6MQqptOWUj1ju1Xqzfypd09/+vKIpNZxEz+v43LKTZy4pLFRF+HYQ6Ub7+v2l
	6VYwI2HhV41L2ZiY6Vd4n1+FRNrGcT2Wu8mhnFoX4HZwWbTLAhwhP1gzSJDcfiuAnSt0wEyeDO+7f
	zJASuL+QB27IwreXtqoCU6uWeRymWhnv/mA/KwhzxbQdRoP4W1TGQ28o9NbSmJDxl7GfYo/2jainX
	VZj8vfw/gqhs5tNYWhyiTJhS1dcLOLTAwQfT6HNES4WaqWYUojO8/CfCg1fQFfP1AqKLrcJ0AhbpR
	cNETOrhfiDRACPAKwSdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvjhz-007yQl-3L; Tue, 22 Jun 2021 16:57:07 +0000
Received: from mail-il1-f170.google.com ([209.85.166.170])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvjhk-007yLS-Gf; Tue, 22 Jun 2021 16:56:54 +0000
Received: by mail-il1-f170.google.com with SMTP id x12so19062662ill.4;
 Tue, 22 Jun 2021 09:56:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XXD64DW43MkEPz+dTKES9lCjXNn8ZHTv2qhDOUEKvHY=;
 b=g1m5zoJ/v/wVEntQTVlsvvkhdf6TQkJ00+Vo4+aPNaUpC0qS3SMHWc+DDhMP+4jkuN
 3YRaEV29LAembaDJeuy48yeyPFBlmGxG1WrYXzl01LTZ4hwV9NnLznz4mKAl5y1B/qn1
 M3Bo0Q08aScJTTbRFXHI5qVHQcy3SPecoTLwsBBElAWLTRhMbzkamH95MDN6qwht73/l
 CJvPjmeP9W5rpY2gMBAtTrjdX3acJO0nx2UhFcQlWL6b9v3gh7qBuzDOFe0q9l/N1UR3
 R3nWEBuGZG2l+m32/hA3Y+ZiMZdr/a3+nWAMjbx8uArB5qw3ervTNy2XlRiWAWNjj5qK
 j1/Q==
X-Gm-Message-State: AOAM530zVQWt98bYF5R5dMNyTeSyu4Rk2cgdvM3VLiDbIe6sbQG21QqL
 4RWCeC351mmzIN/pK2lrPg==
X-Google-Smtp-Source: ABdhPJypIwlNsW2XYlIq0IjRsoUGyvqG8oeTVi3ETiXk+6aO7i069nPHEq/tw4RVzMKG/Qxmyv4cuQ==
X-Received: by 2002:a92:280a:: with SMTP id l10mr2702990ilf.265.1624381011704; 
 Tue, 22 Jun 2021 09:56:51 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id l11sm11055629ios.8.2021.06.22.09.56.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Jun 2021 09:56:49 -0700 (PDT)
Received: (nullmailer pid 3840158 invoked by uid 1000);
 Tue, 22 Jun 2021 16:56:46 -0000
Date: Tue, 22 Jun 2021 10:56:46 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Peng Fan <peng.fan@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Tomasz Figa <t.figa@samsung.com>,
 Fancy Fang <chen.fang@nxp.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 NXP Linux Team <linux-imx@nxp.com>, linux-amarula@amarulasolutions.com,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Matteo Lisi <matteo.lisi@engicam.com>,
 Milco Pratesi <milco.pratesi@engicam.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [RFC PATCH 3/9] dt-bindings: phy: Add SEC DSIM DPHY bindings
Message-ID: <20210622165646.GA3838180@robh.at.kernel.org>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-4-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210621072424.111733-4-jagan@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_095652_627136_26BC63E8 
X-CRM114-Status: GOOD (  17.92  )
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

On Mon, Jun 21, 2021 at 12:54:18PM +0530, Jagan Teki wrote:
> Samsung SEC MIPI DSIM DPHY controller is part of registers
> available in SEC MIPI DSIM bridge for NXP's i.MX8M Mini and
> Nano Processors.
> 
> Add dt-bingings for it.
> 
> Cc: Kishon Vijay Abraham I <kishon@ti.com>
> Cc: Vinod Koul <vkoul@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../bindings/phy/samsung,sec-dsim-dphy.yaml   | 56 +++++++++++++++++++
>  1 file changed, 56 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
> new file mode 100644
> index 000000000000..c5770c8035e1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.yaml
> @@ -0,0 +1,56 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/samsung,sec-dsim-dphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Samsung SEC MIPI DSIM DPHY controller on i.MX8M Mini and Nano SoCs
> +
> +maintainers:
> +  - Jagan Teki <jagan@amarulasolutions.com>
> +
> +properties:
> +  "#phy-cells":
> +    const: 0
> +
> +  compatible:
> +    enum:
> +      - fsl,imx8mm-sec-dsim-dphy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: Phy Ref Clock
> +
> +  clock-names:
> +    items:
> +      - const: phy_ref

'ref' is sufficient.

> +
> +  power-domains:
> +    maxItems: 1
> +    description: phandle to the associated power domain
> +
> +required:
> +  - "#phy-cells"
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mm-clock.h>
> +    #include <dt-bindings/power/imx8mm-power.h>
> +
> +    dphy: dphy@32e100a4 {

phy@...

> +      compatible = "fsl,imx8mm-sec-dsim-dphy";
> +      reg = <0x32e100a4 0xbc>;
> +      clocks = <&clk IMX8MM_CLK_DSI_PHY_REF>;
> +      clock-names = "phy_ref";
> +      power-domains = <&dispmix_blk_ctl IMX8MM_BLK_CTL_PD_DISPMIX_MIPI_DPHY>;
> +      #phy-cells = <0>;
> +    };
> -- 
> 2.25.1
> 
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
