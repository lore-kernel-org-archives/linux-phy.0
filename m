Return-Path: <SRS0=/oO8=K4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16B14C4708F
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 20:03:36 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CD985613B8
	for <linux-phy@archiver.kernel.org>; Wed,  2 Jun 2021 20:03:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CD985613B8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=losE+1LK6TlhNBdDPsgfZF4kA7m6palRyCyADWioO08=; b=QLtmTEgYR12Xwz
	kam7AyBIfKVHOWE+SQO/+SKxUujH1+lOZOqaca2dAkg7qO7XDw3Jp3DSADEJzJD4QeZ+atNEr19LX
	JsAQPgNunilBHYhEEnzgWbys3q0HiIWQLcvGoAf9VVJukKM6LrSe/t65+194E75jMqOMDteZuqELC
	Pc0b8peTjRsSfeCiBUtufbmP1l5ZwnPDqPGEcaT88AcqFuxuq/xi/bDnTDIY7LBsyuDJQGvCzBovX
	jtgSq96va3E+TMXHqpkQz7/jINcR3dlbsRnhRdqn8vUpOpivmFIp7/dQjD0QGMZY3m0RgEDx+iU+o
	hOCmOl864sTS1gCWIYUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loX5T-0062yd-Al; Wed, 02 Jun 2021 20:03:35 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loX5Q-0062xf-FC
 for linux-phy@lists.infradead.org; Wed, 02 Jun 2021 20:03:33 +0000
Received: by mail-oi1-f176.google.com with SMTP id d21so3845266oic.11
 for <linux-phy@lists.infradead.org>; Wed, 02 Jun 2021 13:03:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FjEK/cX+BI3n6vnExnE9Eyw2QgCenmcMJowoMHQs3c0=;
 b=J6RT3lUNPRvqZMV8NUVtsPH6t7AyDnvG2iZW65rMBoDgiyoaJKl8cT6wd/NnBWJGZ0
 hvnNrEQejmlAfZME9XldXPCZgAcN2krVx5wgyL/VsciGkC7yjwd86a0UaNrfNNb3f4R8
 T+z38NJZpKnzUPkpXUIS08izSRvmseLHbbAGOuocyR429a1T01oN10Uyw5068efHbPZV
 Wbo8Syhz6SJEwKZuavjAuBClfNejeHf2PMI3eTi9Mu3FbCz7k1vXG/mo0SJmzkq+NMR6
 VkA3aQM24EO7azT/kshw9R0Ojqvvzdzdgee8qOEUACDtI4q2JXypAKrEJzloGetJZdA7
 LvZg==
X-Gm-Message-State: AOAM531gtKJL9bYTrA7e4RepiFz71WC33txOOE8vqkoRnKomFtNAqwKW
 5qzsxaSEFeMKFWzIMse8G2ljj0Wjdg==
X-Google-Smtp-Source: ABdhPJy/dFj5lq9utpS+hog7W+dkdat5s6XM18gdtDyQiihpKHVccVMI+H73F4x+Vb1d99f05UTxjQ==
X-Received: by 2002:aca:2311:: with SMTP id e17mr23343284oie.160.1622664210887; 
 Wed, 02 Jun 2021 13:03:30 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 7sm202636oti.30.2021.06.02.13.03.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Jun 2021 13:03:30 -0700 (PDT)
Received: (nullmailer pid 3895257 invoked by uid 1000);
 Wed, 02 Jun 2021 20:03:28 -0000
Date: Wed, 2 Jun 2021 15:03:28 -0500
From: Rob Herring <robh@kernel.org>
To: Pratyush Yadav <p.yadav@ti.com>
Cc: devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>, Steve Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@gmail.com>, linux-phy@lists.infradead.org,
 dmaengine@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 17/18] phy: dt-bindings: cdns,dphy: make clocks optional
Message-ID: <20210602200328.GA3895198@robh.at.kernel.org>
References: <20210526152308.16525-1-p.yadav@ti.com>
 <20210526152308.16525-18-p.yadav@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526152308.16525-18-p.yadav@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_130332_536332_B3FE626E 
X-CRM114-Status: GOOD (  10.91  )
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

On Wed, 26 May 2021 20:53:07 +0530, Pratyush Yadav wrote:
> The clocks are not used by the DPHY when used in Rx mode so make them
> optional.
> 
> Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
> 
> ---
> 
> Changes in v2:
> - Re-order subject prefixes.
> 
>  Documentation/devicetree/bindings/phy/cdns,dphy.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
