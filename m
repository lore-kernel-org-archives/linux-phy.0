Return-Path: <SRS0=Nzjq=OL=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3D32C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 17:10:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B292E611ED
	for <linux-phy@archiver.kernel.org>; Tue, 21 Sep 2021 17:10:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B292E611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNbQ1uCX55dHdxNZtnqH+npLlC1YP0XlXTOdhb1DGaw=; b=vOFNuMkBIXU4Nz
	A/UgusiTpBJ/zCwwCNHKjj3/JTdywsYvoZrcNv436ZFqrmNK7eWdbUqrFL71qSy77x4t6MrzwHB89
	kWxOR9jhGK640oBDHfUkZwuB/gIQXtAXO8ptT2UNW+EsgxMJMVAs69aHx38763ZPYuu6n9un+4tDN
	HNjKOc9jMzjAgLey9zCzKENOTcQmRinkJIntzDgQ6Ifs90MOPoVQwheZN2wJQ5FyU2g1ASGLm6PBz
	13YeJkOymQ43Fu7xpe51OWqgbRt3VB92x2R6zAov4SwKvgsPmyZVJGGW8yIqZiMw7+/JI8ej2RmBK
	DQzmw5Z3aG4w39jXXjWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSjI5-005ILu-7Q; Tue, 21 Sep 2021 17:10:45 +0000
Received: from mail-oi1-f175.google.com ([209.85.167.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSjI2-005IKb-QZ
 for linux-phy@lists.infradead.org; Tue, 21 Sep 2021 17:10:44 +0000
Received: by mail-oi1-f175.google.com with SMTP id o66so53589oib.11
 for <linux-phy@lists.infradead.org>; Tue, 21 Sep 2021 10:10:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=RSqqPC5RzPI5oNtELEMcTpcIl+PKFrmudC28hXLnces=;
 b=Az94op6RzaIXYQC3lDBiUbtmFtjUNkWyGYjLEOuVBi1jNCnWQW16jl0BiAO6flz046
 PYjRqwTRhBQ4YwdyvXSpY7EKUM7knu3lngxqNZkH9TDfdtIhwDGf246IbEUTUzK67bph
 qmLvZP3XB1NmL9+tMdD9qTlq4etqS9GYRFmiKnr9Te84RaghYtxqFhdHRotExfI6XI3M
 LgS9GM6+rh/KDHeew3JAVCTGa3NMh99Oi6/pJUcTg8nklv8BAl/i8Zsjt53ii9tfh19L
 Ejhy9bcDL119z2zeaPE2sMpHIWGojKjaO/YiLyDe8l6r/CMGfOiZoTg1D1ZTD4kJrodr
 S4NA==
X-Gm-Message-State: AOAM530pDgYkmjJichHTneNaGrjX1u6pshLeeGTwc5KH6tWQ8+vfbBCM
 ESDCUoLy9ubFjSY/zLID/w==
X-Google-Smtp-Source: ABdhPJwH4CIpoWu4dhzELcwDixUt6gnKWJgymPlA4a/K671+NFCsyUlD18BbtS0xC5ek7GB5KvEByw==
X-Received: by 2002:aca:e009:: with SMTP id x9mr4608457oig.156.1632244241496; 
 Tue, 21 Sep 2021 10:10:41 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i1sm4286746ooo.15.2021.09.21.10.10.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Sep 2021 10:10:38 -0700 (PDT)
Received: (nullmailer pid 2968018 invoked by uid 1000);
 Tue, 21 Sep 2021 17:10:37 -0000
Date: Tue, 21 Sep 2021 12:10:37 -0500
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, vkoul@kernel.org, lokeshvutla@ti.com, a-govindraju@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, mparab@cadence.com
Subject: Re: [PATCH 2/5] dt-bindings: phy: cadence-torrent: Add clock IDs for
 derived and received refclk
Message-ID: <YUoSDVVTs4em6UGP@robh.at.kernel.org>
References: <20210908182628.28364-1-sjakhade@cadence.com>
 <20210908182628.28364-3-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908182628.28364-3-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_101042_909822_E0058D5B 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
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

On Wed, 08 Sep 2021 20:26:25 +0200, Swapnil Jakhade wrote:
> Add clock IDs for derived and received reference clock output.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  include/dt-bindings/phy/phy-cadence.h | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
