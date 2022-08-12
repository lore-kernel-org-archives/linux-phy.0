Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06EFBC19F2D
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 15:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYoCXfjtwtr4Ub4JJu6xgglPN1bwF0uvWUdWQ+xDhNE=; b=3H4mVQnUJkGyym
	tIzOuyAHkRkvZePr/NWSJjhLFsOIqvXD7LBA7QAv6fmfh9KzatjJR6yzBy/oMQttV59lE104BqG6H
	VbpgQ2kPEU0QNLMX+F7U2Rg2fyuvMRO2kU9apWm3TvsC8xCK3g0g+CTQ0JW2eLFUMFN7scjz/FbhM
	+TwJZAsYz8v0x83YUjPskGsun+TZzks+UNKSjTm2i9hFPeyQZ/sMQB9J5nOmcPLa6f+kzwjaQzX12
	lWnAhkHWMzE9VzNz6hLr7oVyI1Xu2yMrf/r6LaIrlZRrU+nQfSBimti4LxKOc8GLnNDtGOCE7Y9iz
	jjK3467SFboyVmXURhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMWMx-009nta-8E; Fri, 12 Aug 2022 15:14:39 +0000
Received: from mail-il1-f177.google.com ([209.85.166.177])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMWMT-009jIv-35; Fri, 12 Aug 2022 15:14:12 +0000
Received: by mail-il1-f177.google.com with SMTP id l9so620366ilq.1;
        Fri, 12 Aug 2022 08:13:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=iLtu9hJNizm2ENvwqp87YzdTn+996PrzRE54oAzKcMM=;
        b=VZty7EAACE1CbkilGecaq7sYBrwE276KTxNSKkcLLLOd0GAitmnJUL4WoEAicGvBir
         aEQxVDO3Z78XR99hE7NlIcKRmc1X/wrMiwLsllQkv3/wuNTPiNyXctHdhbMLF5WMKDX0
         20yOVRBX9NAG5RYsaTv0I6g+QSAGvkHfkJbOPoIum/gLAeTHNcJ06yIJoSKbr0ykkxz9
         6GQbK/aRXOo9RTiUFmVX2xg8TzGka0GyPfvzXqTkqodP5WAbMKr222y7F4zuCfeeZW7X
         LlFWglY5CsalTbG8YYR7nGY+KchGzNWGdd2RS4N2yp/m2r21O+mjGeNF5Mze6du8NN3w
         OLgg==
X-Gm-Message-State: ACgBeo0i24TIMZyK72G7OZNSweF3kuvdWizQU4nb+1Nr6WXSYF52ydRH
	Ci2D0nXEIdsuXieQqv8u2A==
X-Google-Smtp-Source: AA6agR7KRpnUyFMI150wo+Sdnq1BIvRsT6BExj1A3Xi3z6PcCcJJtet+x4xVVJ+NmoSp4yKkpTJ+hQ==
X-Received: by 2002:a92:cda6:0:b0:2df:a33b:202b with SMTP id g6-20020a92cda6000000b002dfa33b202bmr2085796ild.161.1660317238913;
        Fri, 12 Aug 2022 08:13:58 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id o4-20020a927304000000b002e4c8200225sm70611ilc.39.2022.08.12.08.13.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 08:13:58 -0700 (PDT)
Received: (nullmailer pid 168982 invoked by uid 1000);
	Fri, 12 Aug 2022 15:13:53 -0000
From: Rob Herring <robh@kernel.org>
To: Samuel Holland <samuel@sholland.org>
Cc: Jernej Skrabec <jernej.skrabec@gmail.com>, Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, Maxime Ripard <maxime@cerno.tech>, linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>, Maxime Ripard <mripard@kernel.org>, linux-arm-kernel@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, linux-kernel@vger.kernel.org
In-Reply-To: <20220812075603.59375-2-samuel@sholland.org>
References: <20220812075603.59375-1-samuel@sholland.org> <20220812075603.59375-2-samuel@sholland.org>
Subject: Re: [PATCH 1/8] dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
Date: Fri, 12 Aug 2022 09:13:53 -0600
Message-Id: <1660317233.444952.168981.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_081409_166040_D7BF30F9 
X-CRM114-Status: GOOD (  14.50  )
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

On Fri, 12 Aug 2022 02:55:56 -0500, Samuel Holland wrote:
> The sun6i DPHY can generate several interrupts, mostly for reporting
> error conditions, but also for detecting BTA and UPLS sequences.
> Document this capability in order to accurately describe the hardware.
> 
> The DPHY has no interrupt number provided in the vendor documentation
> because its interrupt line is shared with the DSI controller.
> 
> Fixes: c25b84c00826 ("dt-bindings: display: Convert Allwinner DSI to a schema")
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---
> 
>  .../bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml           | 4 ++++
>  1 file changed, 4 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.example.dtb: d-phy@1ca1000: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/phy/allwinner,sun6i-a31-mipi-dphy.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

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
