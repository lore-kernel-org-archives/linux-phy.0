Return-Path: <SRS0=B4Pq=PG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BF1AC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:47:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A05160EB8
	for <linux-phy@archiver.kernel.org>; Mon, 18 Oct 2021 19:47:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3A05160EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5TFQV+3bsl1pQWCv3mxhvgJtWnEmdvo0oZlh4AcUO8=; b=1MAhjlpDGZ+val
	mdvn7qBuYSxscM6I6qY7NPSz92pRiNREhy9nr9gMlfZVX7kgEM45U38gTBK9eTXq/BRhXOVujAym1
	1qEpBghTE+OLR7WVeOYoOg5vw3TMmXPlBwhnc4Glj0yRfiLOfb6c7XnJeuo3ASe3g45hyC2MV4UpI
	jq4DSkdoZeoDsruHl9jgzw56TEPdIEgLwKucYjSp3SQFGAx+fbCcnoxnoiAMd7X+sAFcfhWHcSIx4
	k+/LBQL8uM6TnrMEh+x3tl9VdLrP0xQVuCczYIWiG5RjXpQYCP7Mg8uQP5y6fhTjm5sA2SFPIucrK
	EEJY+m/RZ5Tc8puy4cVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcYbG-00H73T-Ek; Mon, 18 Oct 2021 19:47:10 +0000
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcYJ9-00GzTM-BM
 for linux-phy@lists.infradead.org; Mon, 18 Oct 2021 19:28:28 +0000
Received: by mail-oi1-f169.google.com with SMTP id o83so1255995oif.4
 for <linux-phy@lists.infradead.org>; Mon, 18 Oct 2021 12:28:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D0YJTgYqkI0d37F5afRzmNLlaPdJh1d4TAnzCXiblq0=;
 b=gWqOV8iP6yQbhTvfU9/nj/jvvjkPex7qKA0Wz/EJ5eFIUSZTgda4UMyORy3BdvIcIT
 8bU8Ga86qh+L/T4R6MWea8rluzggnjiY22GNIVYQxC1jUqiywlZYO4vGi4I43ILgRNSa
 bEXg687/A7Kz/rShhK48xUjTNt0o4xkVl5gYtce7wv1ZHyB1D7cE8UxdcyLKLrQi+Dog
 LnBNoMx5LPOGi6sYdN7lKbp7CmHB7RvddXod1QKIqNohgnEiKurGkCEm2q77THIrCZ2g
 CbSmcVnruytObGZFsv/nmkEyiZSNjID99JS0MgFQHeUkY2iYhBH+SKYL91Py05jmeY8Z
 33Eg==
X-Gm-Message-State: AOAM530651dEUs/8UGFWPsFaU3WYib+VpKh80ZSkpjth+pq+9g4TANen
 mVDPSXn8haPMb5n2Nk9iRw==
X-Google-Smtp-Source: ABdhPJxQC0Ll46fRBQVLIW3++nUDa/GFT9GC0+aR+CgO0yRDgNhs3+oQs0oc0WQaswcFQ9Pr0Q7IRw==
X-Received: by 2002:aca:f302:: with SMTP id r2mr656586oih.90.1634585305918;
 Mon, 18 Oct 2021 12:28:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id x8sm3143146ota.75.2021.10.18.12.28.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Oct 2021 12:28:25 -0700 (PDT)
Received: (nullmailer pid 2803420 invoked by uid 1000);
 Mon, 18 Oct 2021 19:28:24 -0000
Date: Mon, 18 Oct 2021 14:28:24 -0500
From: Rob Herring <robh@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: kishon@ti.com, vkoul@kernel.org, andrew@lunn.ch,
 alexandre.belloni@bootlin.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: phy: Add constants for lan966x serdes
Message-ID: <YW3K2GX+hmkwt3EE@robh.at.kernel.org>
References: <20211015123920.176782-1-horatiu.vultur@microchip.com>
 <20211015123920.176782-3-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211015123920.176782-3-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211018_122827_433168_0DE86EAF 
X-CRM114-Status: GOOD (  15.34  )
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

On Fri, Oct 15, 2021 at 02:39:19PM +0200, Horatiu Vultur wrote:
> Lan966x has: 2 integrated PHYs, 3 SerDes and 2 RGMII interfaces. Which
> requires to be muxed based on the HW representation.
> 
> So add constants for each interface to be able to distinguish them.
> 
> Signed-off-by: Horatiu Vultur <horatiu.vultur@microchip.com>
> ---
>  include/dt-bindings/phy/phy-lan966x-serdes.h | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
>  create mode 100644 include/dt-bindings/phy/phy-lan966x-serdes.h
> 
> diff --git a/include/dt-bindings/phy/phy-lan966x-serdes.h b/include/dt-bindings/phy/phy-lan966x-serdes.h
> new file mode 100644
> index 000000000000..8a05f93ecf41
> --- /dev/null
> +++ b/include/dt-bindings/phy/phy-lan966x-serdes.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: (GPL-2.0 OR MIT) */
> +
> +#ifndef __PHY_LAN966X_SERDES_H__
> +#define __PHY_LAN966X_SERDES_H__
> +
> +#define PHY(x)		(x)
> +#define PHY_MAX		PHY(2)
> +#define SERDES6G(x)	(PHY_MAX + 1 + (x))
> +#define SERDES6G_MAX	SERDES6G(3)
> +#define RGMII(x)	(SERDES6G_MAX + 1 + (x))
> +#define RGMII_MAX	RGMII(2)
> +#define SERDES_MAX	(RGMII_MAX + 1)

I still don't understand. #phy-cells description says we have:

<port idx> <serdes idx>

But here it's 3 numbers. How are these defines used to fill in the 2 
cells?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
