Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33C94C433DB
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:50:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CB81D65298
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:50:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CB81D65298
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rvWTh5zoImhmdOzw3nzmMRh6RwRHy8c6jBzNKoKTw5o=; b=HoseVfXR9cBbuCrIiBkOXPtkG
	tw+TG8EqHGF5x80iKokmRNrHrQEsdTcGINgpuX0fEOMEKuxFQY+AdHbls1YJbm8k7Z81yN1knRoP0
	fOUGGyQrOmWMhwhySTo+89Eu0wf/omD11ieAS2/vTrMb5ykyBpqQAyl8eV/faicOidzwAt3X0gpLt
	bpps04o5c5nwRE/nC+4fRHd9tSuMzEC2NHV+3J8eckogDVCCmzNk9XegBHBaQca1YAs/Kh3vGGc+F
	SHyEoEskUummSWilvuiIhIrg92yAulgpngrJ6YBst6ZDtKRWbeUw8m8bPTL3D7rk72xmVuHCebC3Y
	qyJy0fb4Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJK1A-001WmS-Ba; Mon, 08 Mar 2021 17:50:08 +0000
Received: from mail-io1-f53.google.com ([209.85.166.53])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJK16-001Wl7-7o
 for linux-phy@lists.infradead.org; Mon, 08 Mar 2021 17:50:06 +0000
Received: by mail-io1-f53.google.com with SMTP id a7so10823898iok.12
 for <linux-phy@lists.infradead.org>; Mon, 08 Mar 2021 09:50:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cqG62A6ECHx1ErMIyW9dOku1I1WJGyJu3tFPOBlLGpU=;
 b=EtudxaaVzvARptkrL5c7zT8VukMHQ+vbDMLXQyfeGsc/QcCzp72EWSIppM2ITi+nai
 4sQqtcYqpqV1ekEBeMSBrmP1WIBMSDzJi8GU4+8iJBCzJ/WvR2NjAFDpYz2kJLVN+wC5
 AHobbFWm9H23D4syth2XGMxQQ5ex98LokOFsZEBMtmd64Zpx4wctkl4LtkLrdUg4AigB
 tT63/a3+PYFCQeZeVseLCZvWBs4GDjsAAHmHm+ZPjjbXzO0RVkotsXQXyxUITt0h0XuM
 ZLT4bmpZ3mNlprWGGQJT9hW4sT696dYwj21Ez/W2uDNJkgFEV9+SvdYUqi4WQRXcX6ay
 78vg==
X-Gm-Message-State: AOAM5338poIFoHgMCeaFb8HpvPTWVcsgEttkKaYI8RBM6fRm/Wx0J3KN
 YthG14zFrxs0CqK/MuY8Sw==
X-Google-Smtp-Source: ABdhPJyQIlPVRS8gcc3++0/v5MEklYTA8j+4auW1vDU3cm7oYcIBlZs7P0coPzx2Ij5DU1gi2Cy+5Q==
X-Received: by 2002:a05:6638:329e:: with SMTP id
 f30mr7582086jav.121.1615225803214; 
 Mon, 08 Mar 2021 09:50:03 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id c18sm6681876ild.37.2021.03.08.09.50.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 09:50:02 -0800 (PST)
Received: (nullmailer pid 2696494 invoked by uid 1000);
 Mon, 08 Mar 2021 17:50:00 -0000
Date: Mon, 8 Mar 2021 10:50:00 -0700
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v2 1/9] dt-bindings: phy: ti,phy-j721e-wiz: Add bindings
 for AM64 SERDES Wrapper
Message-ID: <20210308175000.GA2693969@robh.at.kernel.org>
References: <20210222112314.10772-1-kishon@ti.com>
 <20210222112314.10772-2-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222112314.10772-2-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_175004_387550_F614A282 
X-CRM114-Status: GOOD (  18.51  )
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

On Mon, Feb 22, 2021 at 04:53:06PM +0530, Kishon Vijay Abraham I wrote:
> Add bindings for AM64 SERDES Wrapper.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 10 ++++++---
>  include/dt-bindings/phy/phy-ti.h              | 21 +++++++++++++++++++
>  2 files changed, 28 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/phy/phy-ti.h
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> index c33e9bc79521..bf431f98e6ea 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -12,9 +12,10 @@ maintainers:
>  
>  properties:
>    compatible:
> -    enum:
> -      - ti,j721e-wiz-16g
> -      - ti,j721e-wiz-10g
> +    oneOf:
> +      - const: ti,j721e-wiz-16g
> +      - const: ti,j721e-wiz-10g
> +      - const: ti,am64-wiz-10g

Why do you need to change this from an enum?

>  
>    power-domains:
>      maxItems: 1
> @@ -42,6 +43,9 @@ properties:
>    "#reset-cells":
>      const: 1
>  
> +  "#clock-cells":
> +    const: 1
> +
>    ranges: true
>  
>    assigned-clocks:
> diff --git a/include/dt-bindings/phy/phy-ti.h b/include/dt-bindings/phy/phy-ti.h
> new file mode 100644
> index 000000000000..ad955d3a56b4
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-ti.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for TI SERDES.
> + */
> +
> +#ifndef _DT_BINDINGS_TI_SERDES
> +#define _DT_BINDINGS_TI_SERDES
> +
> +/* Clock index for output clocks from WIZ */
> +
> +/* MUX Clocks */
> +#define TI_WIZ_PLL0_REFCLK	0
> +#define TI_WIZ_PLL1_REFCLK	1
> +#define TI_WIZ_REFCLK_DIG	2
> +
> +/* Reserve index here for future additions */
> +
> +/* MISC Clocks */
> +#define TI_WIZ_PHY_EN_REFCLK	16
> +
> +#endif /* _DT_BINDINGS_TI_SERDES */
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
