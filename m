Return-Path: <SRS0=/oO8=K4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7975FC47096
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 19:51:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4982F613EE
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 19:51:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4982F613EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yRs+D2g5X8u6w5de7QftEjAS8MsLaSzYx4I2Gie7Ivk=; b=1iHs6yNSvR3BiG
	2T7ixvDbInb25Ngh4v994vwRKcC+qpG7PHmhkB5ebdvxn7np5z/TOITIqtG1IhN3NUnabFz26WReX
	BpAo5aJsFXQ/KfiLJilfrPn5OCCmb6qf98v1CpXqLa5DUNXVdsp2795hQMrausHqmfs4rYwoMHWsD
	kbTLmdF+UpAekaRDl8XQ87OcVSGj9zfrMApsMRODhSWpYdtqJbSeSwdALI1imtkgWPaEJpj5LB4+i
	Of8zQOVcKN37rhjAO713WMHVdOBpssYDXex+PVEJt2vMgaMz5iPauoi4QOgTGo7M7WQ04ybhTopfg
	q2k4I11Gx8AXXsill+gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loWu0-0061pT-Ph; Wed, 02 Jun 2021 19:51:44 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loWty-0061o8-Pp
 for linux-phy@lists.infradead.org; Wed, 02 Jun 2021 19:51:44 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 36-20020a9d0ba70000b02902e0a0a8fe36so3534897oth.8
 for <linux-phy@lists.infradead.org>; Wed, 02 Jun 2021 12:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+Q7Dprv1XHrLOLADgwS+LUK9nX7U22rV5liWcuJi1sQ=;
 b=WUN7/moLMaPeS82PupjI+79pJ+Nta0O5HCcrap5wHWFUexrN889BxpN5n2MOh2fhUZ
 ehWeQQonJZr3yZvcGDC5icp9Z+yMPR02NVRpSUXP9+l9z9CxV8k2/gYw/b5K19k9h/Gi
 bMikRz35t6RMtEyu+QHGa3NWrIZeS1AIN4DO8bJoDjxKqna4wUr7JUGlHR6V6Yfokvkw
 9biCRLnw1NgT+UX6BMH2/mrH2TZcJT3cqpk0mil3d4wlHijplVDoYsUB4KUVuY4t4qmQ
 IDv0ZftHbBdqmDuOzYxX9utInxAsgUlO7M/hFDwvjozuJQttwE1rC+aaoTaTgVIbVWEd
 Q8ZA==
X-Gm-Message-State: AOAM533ld7WlrICmn2i0DwYMGf+JwlGawy54eAieaqKhBxPwlZ3/7dPa
 2eHewqNgHaquwwaEk9F0aRE0SlUBCg==
X-Google-Smtp-Source: ABdhPJwwMBhCZYX2BPqAsh/iJokBF2o4Qnby7q+rYIweMoIYXdgIomW7ueAVqAo+AIB0QXXG+duWFg==
X-Received: by 2002:a9d:3e5:: with SMTP id f92mr4917267otf.181.1622663501828; 
 Wed, 02 Jun 2021 12:51:41 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b81sm194380oia.19.2021.06.02.12.51.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 12:51:41 -0700 (PDT)
Received: (nullmailer pid 3875025 invoked by uid 1000);
 Wed, 02 Jun 2021 19:51:39 -0000
Date: Wed, 2 Jun 2021 14:51:39 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Maxime Ripard <mripard@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 Rob Herring <robh+dt@kernel.org>, Steve Longerbeam <slongerbeam@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>, dmaengine@vger.kernel.org,
 Benoit Parrot <bparrot@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v2 16/18] phy: dt-bindings: Convert Cadence DPHY binding
 to YAML
Message-ID: <20210602195139.GA3874992@robh.at.kernel.org>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-17-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526152308.16525-17-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_125142_860042_976D7A74 
X-CRM114-Status: GOOD (  11.41  )
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

On Wed, 26 May 2021 20:53:06 +0530, Pratyush Yadav wrote:
> Convert Cadence DPHY binding to YAML.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> 
> ---
> 
> Changes in v2:
> - Drop reg description.
> - Add a description for each DPHY clock.
> - Rename dphy@... to phy@... in example.
> - Add Laurent's R-by.
> - Re-order subject prefixes.
> 
>  .../devicetree/bindings/phy/cdns,dphy.txt     | 20 --------
>  .../devicetree/bindings/phy/cdns,dphy.yaml    | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
>  create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
