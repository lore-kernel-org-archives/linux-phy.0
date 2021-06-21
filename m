Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A64CDC48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7375660FE9
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7375660FE9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSQsk4VLT0EGaFWZfwzQFS88WxbiqwQ0tGf6jr3TdA4=; b=asz2ziSo5vZaPR
	yQ9mlS1lmci9sOdyFtaEQBtj2nuSMUJWzhO+prde9pAi3fY/y8VpUQcM+/c3l9f1R/jfawCuK+WHY
	wZdN8goePlR4WqCht+KuF4KsU1VHcmTMf7GLHgUMz3j/mns2Thd+WiXwjDJFoRS7PG3mjz4mD89Wv
	e0AVbrKnNRhDr3kdGPQRjOP+BAQE9tkXJQXBP+hR5nLdgkVPTdYO9l69VnZ3eUcQyW2PjO+tm0kAy
	DoeCIX/Gw6vEtCKJ7gRZmdKN31GRXrVIHpdEvZ92dY8QUHhvCFZpxosnj8zMQL9UZn367uSmBr8Jp
	7WK3muWsi1fdYhP2XINA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvNuM-004HuQ-VX; Mon, 21 Jun 2021 17:40:27 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvNuA-004Hpe-DZ; Mon, 21 Jun 2021 17:40:15 +0000
Received: by mail-oi1-f179.google.com with SMTP id l12so20720026oig.2;
 Mon, 21 Jun 2021 10:40:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=42icZQ+8GFfOaTwG88ozPYml3jznNBXOTDzI2KCtdZY=;
 b=nLWfAaqflPFag+BGiSnd88gM6cZOP++Mhx5tsQ+WX6z/DCcerUEkoUvEABXUu2tdo7
 G1AhMwo9V/mA+A/+FeBCEgvPkzq5bmcVPAzMte3d06ablJ3ya1HsdZfTiYmxjB6F7Acz
 o9VHOnuVZklnMC8eiOuo5BPX83bKB5s1kWjhjQVr+yP7GJIEjVRgeNLzrrzyIVujwmLZ
 gtm9Gh/9c8YDkOWx1jLfgltZRsHBBQD/ZEgc0WfF24Mt8wi7pH3Nb10IpnpIoTx2iGRH
 Vvzw/QeLFYi3W66DMJIigPh011LhbzxPpTl9Ho7D8mXA6mMzy2SmNlyPDLoCqzl+YK2j
 ynXQ==
X-Gm-Message-State: AOAM533bR4b6xaKOL1LDCevO20IwuLuF6FCnatFBjlJnCpoZUVSb5nXY
 Dhcy9Re0tt2Qwwnr8Ak+pQPtGCztIg==
X-Google-Smtp-Source: ABdhPJwlT5h0QKO9Yle57uzgnLiyyYOL2NRu/vSbCoTR9VqstQpf8L5ccpGM5R125N/E7bi9sHGL8w==
X-Received: by 2002:a05:6808:8e6:: with SMTP id
 d6mr25915392oic.147.1624297212142; 
 Mon, 21 Jun 2021 10:40:12 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id u10sm4244248otj.75.2021.06.21.10.40.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 10:40:11 -0700 (PDT)
Received: (nullmailer pid 1161637 invoked by uid 1000);
 Mon, 21 Jun 2021 17:40:02 -0000
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Shawn Guo <shawnguo@kernel.org>, dri-devel@lists.freedesktop.org,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Vinod Koul <vkoul@kernel.org>,
 Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
 Anthony Brandon <anthony@amarulasolutions.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Fancy Fang <chen.fang@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 linux-phy@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Tomasz Figa <t.figa@samsung.com>, linux-amarula@amarulasolutions.com,
 Milco Pratesi <milco.pratesi@engicam.com>
In-Reply-To: <20210621072424.111733-4-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-4-jagan@amarulasolutions.com>
Subject: Re: [RFC PATCH 3/9] dt-bindings: phy: Add SEC DSIM DPHY bindings
Date: Mon, 21 Jun 2021 11:40:02 -0600
Message-Id: <1624297202.363586.1161636.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_104014_480700_CB35FB42 
X-CRM114-Status: GOOD (  14.71  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Mon, 21 Jun 2021 12:54:18 +0530, Jagan Teki wrote:
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

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.example.dts:20:18: fatal error: dt-bindings/power/imx8mm-power.h: No such file or directory
   20 |         #include <dt-bindings/power/imx8mm-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/phy/samsung,sec-dsim-dphy.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1416: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1494925

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
