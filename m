Return-Path: <SRS0=iYEg=N5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23D5EC433F5
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 19:04:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E094861108
	for <linux-phy@archiver.kernel.org>; Tue,  7 Sep 2021 19:03:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E094861108
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nIJGd8nzlahZfjJNw3/Kuy16YEtopsSn49giJdjnymo=; b=BvnLkLxJdfgUup
	4xQo9WNY9MNn85rrw0kFMDDtQ3auUizCea75KkB4DLMs2gmYzHeHtE+OoxZTLqtx50qG/2aW+HwiJ
	4ob5vrAdwO2bfFQ8JfdnCwHML/j7SPAuyjC92WhYbB0YGNgtE1/efiQcHwwAm2EPReRlnopW39kcQ
	0f+jS/K+gFDVMfoPVjy4vfGKklzV3NyNxbaPqqh92q440D3rxNli1S45eIDNem3EFRIxW47OvYbrf
	lbq5Ycs67yKtTj5dcaiGgs0maT0llANMplUYJlbunaoIPgp6Of+G6E2mRN98c57X/PkzE3qC0J2XI
	SdlGpwahLwjmryd72MhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNgNz-004VpM-Eb; Tue, 07 Sep 2021 19:03:59 +0000
Received: from mail-oi1-f178.google.com ([209.85.167.178])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNgNw-004VoZ-Uq
 for linux-phy@lists.infradead.org; Tue, 07 Sep 2021 19:03:58 +0000
Received: by mail-oi1-f178.google.com with SMTP id w144so139509oie.13
 for <linux-phy@lists.infradead.org>; Tue, 07 Sep 2021 12:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UdQQQExBHiPR6qIP5oY8gqjMFJjYP3y1rT1TQorSqZY=;
 b=V/DmqnR2MxbvC7fiAuMoj3T1WFZ4T85Uw9XsC9VdUEoiLF1+lFHg+XzcjzgujSysV5
 uioeCd61iJJFrKvTdhZOz9H8hHwAY64WL6rKUR89QaT3GeUqaZU3tz82OYD845sHJcGD
 1BgEOBLHO8gQJ14ZQ6N+xrMLZiCClSrVbcpZ56LNMZGb+c+LjtlQOSSObWdQsbBkAhsW
 F9bjdZ5nTt+9SrwMKAlchL711x/BlhggF60GuazXRnZkCFJAnKzFrw8MMAeYlbhS/PA1
 7rcu9pdqMX0xFh451vfTQ0aUvC9A9YplpaFshTO70MJJ+h1hVzXx4kEsZdEg/bmAt6zk
 pMLA==
X-Gm-Message-State: AOAM533WDF3m9iaLQ4FNOS/JgPzYK0HZfmDnzR2g/CmO7QJtMREWrF00
 bjml0A66qO0gOtrtfhNjTQ==
X-Google-Smtp-Source: ABdhPJyuZ8CDEvv85V5xxEoQU6PojBqj9F3XU3VxctkZMnSq2K+26cFrvDhXC+jeh8QmrJJjPBgWSw==
X-Received: by 2002:aca:be56:: with SMTP id o83mr4090913oif.51.1631041435623; 
 Tue, 07 Sep 2021 12:03:55 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m16sm2379853oop.3.2021.09.07.12.03.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 12:03:54 -0700 (PDT)
Received: (nullmailer pid 165371 invoked by uid 1000);
 Tue, 07 Sep 2021 19:03:53 -0000
Date: Tue, 7 Sep 2021 14:03:53 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Nikhil Devshatwar <nikhil.nd@ti.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v5 6/6] phy: dt-bindings: cdns,dphy: add Rx DPHY compatible
Message-ID: <YTe3mUFPhkI910AG@robh.at.kernel.org>
References: <20210902185543.18875-1-p.yadav@ti.com>
 <20210902185543.18875-7-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210902185543.18875-7-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_120357_035124_644231E2 
X-CRM114-Status: GOOD (  10.80  )
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

On Fri, 03 Sep 2021 00:25:43 +0530, Pratyush Yadav wrote:
> The DPHY is treated to be in Tx mode by default. Add a new compatible
> for Rx mode DPHYs.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v5:
> - Use enum instead.
> - Add Laurent's R-by.
> 
> Changes in v4:
> - New in v4.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
