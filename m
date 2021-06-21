Return-Path: <SRS0=EqQx=LP=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ED9A6C48BE5
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B4521611BD
	for <linux-phy@archiver.kernel.org>; Mon, 21 Jun 2021 17:40:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B4521611BD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CJk9uQGUj/QQfgs3S415l0RmSh0GuAPA+DNJQjhVOA=; b=s0LADkjJG5bOGE
	PW5VUc8ot2VkssIUyi5OOlw4AigTlNAba0PCw+6lmADbjRPLH0K9ecfVBdcY8V+hunEtn8/Vn0XEU
	Dj/4//OJ7OdUjRAFsZgrv3h7X1Iimy0yPisdtCaGuAtirRGpREdDJp2bBPy0jV8mrxFoPA07LEQkG
	xy0CCLMPsG4nM4uTgGDST01TsPaTaaFLqJsZXMODTauQLyRe/FzGxH/5Kcg0dUnRrzqN7YYTOIh9y
	udlG2Z0WuU+t89RV5faYN3YobsiP7NbnJx4DhBaSKRXsyHql175q6HOWazleqfde55qJIH3G7O2oc
	qxDujUxf+tM38/OBnSyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvNud-004HzC-7X; Mon, 21 Jun 2021 17:40:43 +0000
Received: from mail-ot1-f54.google.com ([209.85.210.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvNuP-004Hut-N3; Mon, 21 Jun 2021 17:40:31 +0000
Received: by mail-ot1-f54.google.com with SMTP id
 h24-20020a9d64180000b029036edcf8f9a6so18563613otl.3; 
 Mon, 21 Jun 2021 10:40:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=HN13gmA7y3nz/59kVoPJCGFXMqRoOajwJRx5YAglxNM=;
 b=QHUSSBIda4KhdUIAsDTZEuHveKlGH/iKcFOXJ9KC3TJUKUscuD3A6xCxasr2G/hV98
 UK9blfDe3ErrIML8Il460X7WtjmaEhHYVjKo+R0SebCWZEUfEYYiRHxCLpN1gR83/9us
 FaBFGKmAZUJjjrTx8qNQvlsRHFQmQ98OSaKrrafJm1kbnsaHb/YqtT24rgnQ+IoVCEVq
 0UillZuTK1IjKk9i2AiFe2nkDnw5RS6NHqSMsEAbCPyaj8cRUIqW8aSNUIU9YIoEBIW3
 91hqKGLv6/JOPrAEw/5rYpx0Lfhy8wd3ibT2lqNUfqyVmPwg2qVy/BpW1NL8UuCRQBba
 59Mg==
X-Gm-Message-State: AOAM532MbjdDuxCIiMkM9+Mp84Z30NYkqx3wisZ/Wm+F6pWjhPyWFuIj
 Yo4BCFpxhTPFTChDj27mHojcBgjbYw==
X-Google-Smtp-Source: ABdhPJxGwFqtkOtwDEBJ3jIvQc8diAPAd9rGu2tJSvFeQ6qyy/qsnWkiPbHoebGF3hQmi+JBnknbfw==
X-Received: by 2002:a9d:7d07:: with SMTP id v7mr21673915otn.204.1624297228726; 
 Mon, 21 Jun 2021 10:40:28 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id p25sm3661220ood.4.2021.06.21.10.40.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Jun 2021 10:40:28 -0700 (PDT)
Received: (nullmailer pid 1161635 invoked by uid 1000);
 Mon, 21 Jun 2021 17:40:02 -0000
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: NXP Linux Team <linux-imx@nxp.com>,
 Anthony Brandon <anthony@amarulasolutions.com>, Fancy Fang <chen.fang@nxp.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Milco Pratesi <milco.pratesi@engicam.com>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Matteo Lisi <matteo.lisi@engicam.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Tomasz Figa <t.figa@samsung.com>, Robert Foss <robert.foss@linaro.org>,
 linux-phy@lists.infradead.org, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Francis Laniel <francis.laniel@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, Neil Armstrong <narmstrong@baylibre.com>
In-Reply-To: <20210621072424.111733-2-jagan@amarulasolutions.com>
References: <20210621072424.111733-1-jagan@amarulasolutions.com>
 <20210621072424.111733-2-jagan@amarulasolutions.com>
Subject: Re: [RFC PATCH 1/9] dt-bindings: display: bridge: Add Samsung SEC
 MIPI DSIM bindings
Date: Mon, 21 Jun 2021 11:40:02 -0600
Message-Id: <1624297202.352850.1161634.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210621_104029_806515_F58638B0 
X-CRM114-Status: GOOD (  14.31  )
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

On Mon, 21 Jun 2021 12:54:16 +0530, Jagan Teki wrote:
> Samsung SEC MIPI DSIM Bridge controller is MIPI DSI bridge
> available in NXP's i.MX8M Mini and Nano Processors.
> 
> Add dt-bingings for it.
> 
> Cc: Andrzej Hajda <a.hajda@samsung.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../display/bridge/samsung,sec-dsim.yaml      | 184 ++++++++++++++++++
>  1 file changed, 184 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.example.dts:20:18: fatal error: dt-bindings/power/imx8mm-power.h: No such file or directory
   20 |         #include <dt-bindings/power/imx8mm-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/display/bridge/samsung,sec-dsim.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1416: dt_binding_check] Error 2
\ndoc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1494924

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
