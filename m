Return-Path: <SRS0=iYEg=N5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D4CEC433EF
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 19:02:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5628161101
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 19:02:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5628161101
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwhlWZCRIYUGM0ZebUq7qfhUEcInWfRqX55YFb21v/g=; b=1wvBoChozxA5bq
	WHm5gd/C1houacdMf6rP+b6vgD9P5ZNCZW1nOPPYrFQIzgB5Q5yavO/TKB6xhL2PEF7X5anlh5XQ/
	Gxo23SVn+vQm9rn5LW/N5x8/M8vkXszT1rGB8nTcWQWas/GoeWrbrjAgLTFXaqH//0ZFlnFt0M0u9
	DMA5trEwkdxjpFDPsMVuGKj5x0EgB6X2j0F3NsbI1ag7rN8p0Du7FwzNI8kBozF6aRYzWc9kY5ugn
	Vig494DT+EjMwfXmuwdCdb5+4uy+Ic/1AckoYKFIbTmiNEh4gOVDhPFzX8ul4jurytuUUp5BlmJVg
	qBVHNYQlV9eSV/o2xzKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNgMU-004Var-TT; Tue, 07 Sep 2021 19:02:26 +0000
Received: from mail-oo1-f43.google.com ([209.85.161.43])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNgMR-004VZP-Uc
 for linux-phy@lists.infradead.org; Tue, 07 Sep 2021 19:02:25 +0000
Received: by mail-oo1-f43.google.com with SMTP id
 g4-20020a4ab044000000b002900bf3b03fso100751oon.1
 for <linux-phy@lists.infradead.org>; Tue, 07 Sep 2021 12:02:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Uf9oAMweWSvXHeUJ78rjsUAw0orQH67zgtFYqz1QUvI=;
 b=XMMevEtkwldxR1twjD6XmkzmRXJuV5Fgj0MzLYrC3+q9xVVGBMS1rv2WL9uhqZwpxc
 Z/4LRqoLAnGIWe9JB39Egl9WKcaJtZP5l7Wd+x4CeQxmHHN1c3yrgkcu7FeDAfupYr63
 gQlU1bDsoEGIHdocJPjkiV2/vZJtOsRV8w3hjz3UPcjWe+wGFeNQulBE/07ahyCPeQ1z
 MxloqTUaat2GB9Hq8QgioKp6OHXwZwJlxpoJ2RCYx+AIWFIVId0xteEd6cT81KvG/9ij
 eUw6npVQRZYRE7MylLyzS4A6thyEkH/l5oT3qn7gaDA0v+6zrRS6vc/THAWeyV8cqvKT
 EWwA==
X-Gm-Message-State: AOAM530rtnBj+LU0CSM5B6y0+qIRzR+IzlUmCvcFPO2ztOCt/R8i07Q/
 RegkSiU6QbbDdoH5UGb/vQ==
X-Google-Smtp-Source: ABdhPJzzEU9OPNW0P0QTHLeD3TNxPLYcOxjSNkaHogHMEA8afDB76z0jrTVRTxpd0RpUYsiQFZRXLg==
X-Received: by 2002:a4a:db68:: with SMTP id o8mr1124351ood.98.1631041342612;
 Tue, 07 Sep 2021 12:02:22 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id b24sm2280646oic.33.2021.09.07.12.02.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 12:02:21 -0700 (PDT)
Received: (nullmailer pid 162836 invoked by uid 1000);
 Tue, 07 Sep 2021 19:02:20 -0000
Date: Tue, 7 Sep 2021 14:02:20 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>
Subject: Re: [PATCH v5 4/6] phy: dt-bindings: cdns, dphy: make clocks optional
 for Rx mode
Message-ID: <YTe3PDnhtBcRj9ti@robh.at.kernel.org>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-5-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210902185543.18875-5-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_120224_028660_E9C42218 
X-CRM114-Status: GOOD (  12.25  )
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

On Fri, 03 Sep 2021 00:25:41 +0530, Pratyush Yadav wrote:
> The clocks are not used by the DPHY when used in Rx mode so make them
> optional for it by using a conditional based on compatible.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v5:
> - Make clocks a required property based on the compatible.
> 
> Changes in v3:
> - Add Rob's Ack.
> 
> Changes in v2:
> - Re-order subject prefixes.
> 
>  .../devicetree/bindings/phy/cdns,dphy.yaml          | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
