Return-Path: <SRS0=nTb1=PJ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA2B7C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 13:30:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8E6F960EE2
	for <linux-phy@archiver.kernel.org>; Thu, 21 Oct 2021 13:30:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8E6F960EE2
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rKBZIJIZMeTkK9W6UVt8o9bzh1pYMRPUc0i50UX2cA4=; b=FuAJWMq/11kOcj
	Ks5TLsNEXt5paEvinxxGGJ30d371LEKLaDPhcESSvcEJCX/u52XADgIqKvvk5X4lmEIkOFD35tTft
	xmaZJINF73BAWUbqSL+3bOD87qt76Sw3dYrZk8HUVh2qlmLmoPCsjkQfdaaAjy4ER4AyS7SqAaaCB
	I2pqgSz0MN2Llla+tQhW/NxOsC1BhCaZVLW9i6TBml2A8y/xMJSdSFZx8rTzQdwR8GmJ0I2P+K9U5
	R7vw4I7QlRVc3b8k/YWWjuHoTvc7fGLxMI7TY2lE5BqKtPn/oDw126BeEPq0EyMRTdTzqNgCYHe2G
	aSpqVGDaCXyxqPDOhCaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mdY9I-007e6T-3F; Thu, 21 Oct 2021 13:30:24 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mdY93-007e2M-TX; Thu, 21 Oct 2021 13:30:11 +0000
Received: by mail-oi1-f176.google.com with SMTP id o204so805499oih.13;
 Thu, 21 Oct 2021 06:30:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=WLIwA5FD/KtHnG54OgwxE3AJ2VLgcGG0qXYDGdPIMCU=;
 b=45HUc8TSBDgiCIuPyxdZBBGRvgQcZ+/eHFYY3s68R+IWNrlVqOJcedE3TCbUz+YEwZ
 UPTuwtnTSOSuxB0o8T7qTIAUDCTGXx8aqJ6+vVbWwsrWMNlr/1tjrd1eOMUVkNpJAKq3
 P8S1JKLTwmkYFfKUIzKWF7/BckjpYJfjkE9NyGZs0yl6JNfjjAvYoL9qOKchXjVPbIt9
 UXFjTDdNqfAxzx+LYvPu1YkjyPO4zDCsRNqtRR2Mlq/ZpJ1mUWCtjwnI0PAXwIb65HmO
 MoDWPzlfdj95Xsq6UkYzT0VMT0JOTmnpZUwrszOh518Pk60oJZ6UWLRTfHxE66Ak7V4x
 RAOQ==
X-Gm-Message-State: AOAM532JbHRvkWNCpRV0euT6Svyq79eRLc3CZq1w8O6QgyCxYn0BxFIo
 jcpRGQjX7T5SeY0OCcki5Q==
X-Google-Smtp-Source: ABdhPJzWNqQ82LGFFmXVyboYOunuq36yDADhSjRjBxsMz++SfMFiv9RLtb3gzPemE+KZAIIdxJ6VMw==
X-Received: by 2002:a05:6808:f8f:: with SMTP id
 o15mr1238476oiw.38.1634823008338; 
 Thu, 21 Oct 2021 06:30:08 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id 187sm1064082oig.19.2021.10.21.06.30.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Oct 2021 06:30:07 -0700 (PDT)
Received: (nullmailer pid 353169 invoked by uid 1000);
 Thu, 21 Oct 2021 13:30:05 -0000
From: Rob Herring <robh@kernel.org>
To: Markus Schneider-Pargmann <msp@baylibre.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, linux-arm-kernel@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-phy@lists.infradead.org
In-Reply-To: <20211021092707.3562523-3-msp@baylibre.com>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-3-msp@baylibre.com>
Subject: Re: [PATCH v5 2/7] dt-bindings: mediatek, dp: Add Display Port binding
Date: Thu, 21 Oct 2021 08:30:05 -0500
Message-Id: <1634823005.099522.353168.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211021_063009_980933_F83F6132 
X-CRM114-Status: GOOD (  15.46  )
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

On Thu, 21 Oct 2021 11:27:02 +0200, Markus Schneider-Pargmann wrote:
> This controller is present on several mediatek hardware. Currently
> mt8195 and mt8395 have this controller without a functional difference,
> so only one compatible field is added.
> 
> The controller can have two forms, as a normal display port and as an
> embedded display port.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v4 -> v5:
>     - Removed "status" in the example
>     - Remove edp_tx compatible.
>     - Rename dp_tx compatible to dp-tx.
> 
>  .../display/mediatek/mediatek,dp.yaml         | 87 +++++++++++++++++++
>  1 file changed, 87 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dts:20:18: fatal error: dt-bindings/power/mt8195-power.h: No such file or directory
   20 |         #include <dt-bindings/power/mt8195-power.h>
      |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
compilation terminated.
make[1]: *** [scripts/Makefile.lib:385: Documentation/devicetree/bindings/display/mediatek/mediatek,dp.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1441: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1544239

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
