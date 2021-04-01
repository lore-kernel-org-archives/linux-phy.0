Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D25DC433ED
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 16:05:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3AFE461374
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 16:05:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3AFE461374
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0ek+hdW5Ef2GtPkGC5U/6l3ZCgggvyX7SKYogUhLjYA=; b=OIzN1XAIVZVynVq4B+htOmEDQ
	uswpxBLUXb31gI6+iVcdJX3rztFY6u+fpKvJk09JKhC/AA2gWe0e6z9yuSEMinXzmBhFyAIYHSMEa
	6zWQBsRsOEAPyKUPBBYN2Q++QXASyLGeLNVAYXHT2FH+HOoOt9FHPZ7TIC1MJpBDzyBz8RGHpWto3
	fmwuEb/NFMF4ekkP2/42m4NzeOsD1av5LMnQOP6lmDwfOFqQFsziaKag2PusxYJUh2dXWX9XIWTXZ
	65HiyIlZ7McV2xYG4YrJCOgglp0bZxsMleIc6cWZ8SACbKM8M5C3SH7Or5WE0ZdlGT7ULdPaSIpvr
	TmQYfVBkw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRzp0-00A9dz-NZ; Thu, 01 Apr 2021 16:05:26 +0000
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRzd6-00A6AE-FA
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 15:53:26 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 k14-20020a9d7dce0000b02901b866632f29so2556938otn.1
 for <linux-phy@lists.infradead.org>; Thu, 01 Apr 2021 08:53:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vkQJQ0O5X0ESy+J810FdCD0SpVEINsP0ZlnS7rJtykA=;
 b=DVXMaeEc5czuOJmmycipn7LEP0I3V8WOo5pldijhJz34VjL47LbsLEDxpufXY3vU4S
 a8+aISzCYyGkeEXTKHp7hw3HvVyDrESXdH0Rioh4XbaQ61U2LmQnXPzK9om8dFdMdk9H
 R5Gj07+pr5gHyGYujDh1kKPtQ+kdu+COc2ffLJm2TiD/C0PDVmcUN/zQLVVEfgq3PGJ3
 rq6UmRB82YCgw6pR1wbQvO5BF/5mx97MrYfkcf/xzSamiKA7HNcJ2L1vFaXl8qbIwZ+m
 Sv0NJ0Oj42bG4K2/LEbAQugFTLhf6vjccanmVqE34odUifD0t5hBw6WQA5YUgMRfwnst
 AJww==
X-Gm-Message-State: AOAM533uurfiHsE1eWG6dtWz0+8wEJdlYDbiU88UdZ+Y3PTL5Ujqkpig
 pR//LMq1cqEDgY1v92vjuw==
X-Google-Smtp-Source: ABdhPJxTYMWgRjWTTEUoN54xBzLN6y375nT/Dx7htqlExcUIh3M3GXE6xcxxoCnomOvmTM8L0T/+ZQ==
X-Received: by 2002:a9d:7e8d:: with SMTP id m13mr7362910otp.54.1617292383853; 
 Thu, 01 Apr 2021 08:53:03 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id d2sm1271592otl.48.2021.04.01.08.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 08:53:02 -0700 (PDT)
Received: (nullmailer pid 498399 invoked by uid 1000);
 Thu, 01 Apr 2021 15:52:59 -0000
Date: Thu, 1 Apr 2021 10:52:59 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Benoit Parrot <bparrot@ti.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Alexandre Courbot <acourbot@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Stanimir Varbanov <stanimir.varbanov@linaro.org>,
 Helen Koike <helen.koike@collabora.com>,
 Michael Tretter <m.tretter@pengutronix.de>, Peter Chen <peter.chen@nxp.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, dmaengine@vger.kernel.org,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Subject: Re: [PATCH 12/16] dt-bindings: media: Add DT bindings for TI CSI2RX
 driver
Message-ID: <20210401155259.GB488101@robh.at.kernel.org>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-13-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-13-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_165308_787720_11BC8C37 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On Tue, Mar 30, 2021 at 11:03:44PM +0530, Pratyush Yadav wrote:
> TI's J721E uses the Cadence CSI2RX and DPHY peripherals to facilitate
> capture over a CSI-2 bus. The TI CSI2RX platform driver glues all the
> parts together.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> ---
>  .../devicetree/bindings/media/ti,csi2rx.yaml  | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> 
> diff --git a/Documentation/devicetree/bindings/media/ti,csi2rx.yaml b/Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> new file mode 100644
> index 000000000000..ebd894364391
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/ti,csi2rx.yaml
> @@ -0,0 +1,70 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/media/ti,csi2rx.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: TI CSI2RX Wrapper Device Tree Bindings
> +
> +maintainers:
> +  - Pratyush Yadav <p.yadav@ti.com>
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: ti,csi2rx

Also, needs an SoC specific compatible.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
