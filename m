Return-Path: <SRS0=2YxO=I6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B5BC433B4
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 16:05:27 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4DD0E61373
	for <linux-phy@archiver.kernel.org>; Thu,  1 Apr 2021 16:05:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4DD0E61373
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9iKLPSlxd7bnU4GaF1ZmbhUED9x2QwBkofNuaoUugEc=; b=Llb9rJmGLyQPyKOvL5ZkZVE8o
	5NA0nnlTUrdqDFnJf9/2bOZIqHN5KhZyWRRcp+92r3zWZ+KOZezF/T/KztBiEk3ewvQd7BSQtqWF7
	G114QTTwoktDqwyJ9v1OzgwPqolURj+bBRx0nzafS621D1juhLNxEeqcM5LOY7J2785i/brlybiya
	7VYzWXH9VkLTkXcMhMOxgVfZttfDyj6Lj/oK+QL4xMti87rpZDeXie4uj5MS0h9Oy+iCmeHTSxYh/
	zyQeq6BrH2gzJNIRQGfse7DD1XFOHYEwtcmqhKkF8jypdut8vbHFewxVmBx2VvPmdl82KijSngnc2
	SwhYo61ZQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRzoz-00A9dc-Je; Thu, 01 Apr 2021 16:05:25 +0000
Received: from mail-oi1-f174.google.com ([209.85.167.174])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRzc6-00A5q9-RV
 for linux-phy@lists.infradead.org; Thu, 01 Apr 2021 15:52:32 +0000
Received: by mail-oi1-f174.google.com with SMTP id x2so2240600oiv.2
 for <linux-phy@lists.infradead.org>; Thu, 01 Apr 2021 08:52:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VCJBZCXzAN+MxhllMnbhP5O5FvIPxJsE/5NIO5Ghwkc=;
 b=VgxQFWav0oM5Tzze3WZwyobMrskm7nhI3/BrfjH5w+zB27UWbYQE9tc5YucE1QUXv6
 UnepltiqUwKSHfx1o/8aWfIEo2Po4GYrCi1bHiKXZ/qwMgM4k39/zTGxmjEaKSZ0CA5O
 8R5o94krHLmmzx600lFgIzEuOKNQ81jWPtZIo0E4k/JFugWAa5T4ExItzM8oA94Z1p5B
 OKb4eQekeWwXdFwKv6bESWVRmz7y15zGXBB9C8t6lkCqcGKT378NIg9moB/R6kanGLbi
 RUEG3G4bNR96295/fjpZWSWSjmK7vz7blzfxOYuYx640+SjGum5NqooEEI61wCpdjBVY
 o0pg==
X-Gm-Message-State: AOAM530cC16YbPGbhUSGsQi/keo0NjVQgD6umvhEQZhgWGzMMiXmv0G0
 1ddg27NI/ipGZdVtYJc7uw==
X-Google-Smtp-Source: ABdhPJxO9AoojIw/ebyZy4l8CETZvf8HZLdBQLapN1YEqr92AAk3qapozPuPsyUw7Xyz7HD7HnFZEw==
X-Received: by 2002:aca:4e55:: with SMTP id c82mr6392280oib.43.1617292325284; 
 Thu, 01 Apr 2021 08:52:05 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s21sm1178599oos.5.2021.04.01.08.52.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 08:52:03 -0700 (PDT)
Received: (nullmailer pid 496890 invoked by uid 1000);
 Thu, 01 Apr 2021 15:52:01 -0000
Date: Thu, 1 Apr 2021 10:52:01 -0500
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
Message-ID: <20210401155201.GA488101@robh.at.kernel.org>
References: <20210330173348.30135-1-p.yadav@ti.com>
 <20210330173348.30135-13-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210330173348.30135-13-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_165208_119672_09118447 
X-CRM114-Status: GOOD (  17.10  )
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
> +
> +  dmas:
> +    description: RX DMA Channel 0

items:
  - description: RX DMA Channel 0

Or just 'maxItems: 1'

> +
> +  dma-names:
> +    items:
> +      - const: rx0
> +
> +  reg:
> +    maxItems: 1
> +    description: Base address and size of the TI wrapper registers.

That's all 'reg' properties, drop 'description'.

> +
> +  power-domains:
> +    maxItems: 1
> +    description:
> +      PM domain provider node and an args specifier containing
> +      the device id value.

Drop.

> +
> +  ranges: true
> +
> +  "#address-cells":
> +    const: 2
> +
> +  "#size-cells":
> +    const: 2
> +
> +patternProperties:
> +  "csi-bridge@":

"^csi-bridge@"

> +    type: object
> +    description: CSI2 bridge node.

Just an empty node?

> +
> +required:
> +  - compatible
> +  - reg
> +  - dmas
> +  - dma-names
> +  - power-domains
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/soc/ti,sci_pm_domain.h>
> +
> +    ti_csi2rx0: ticsi2rx {
> +        compatible = "ti,csi2rx";
> +        dmas = <&main_udmap 0x4940>;
> +        dma-names = "rx0";
> +        reg = <0x0 0x4500000 0x0 0x1000>;
> +        power-domains = <&k3_pds 26 TI_SCI_PD_EXCLUSIVE>;
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +    };
> -- 
> 2.30.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
