Return-Path: <SRS0=0RCf=OK=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02BFC433EF
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:56:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FB3760F6E
	for <linux-phy@archiver.kernel.org>; Mon, 20 Sep 2021 23:56:29 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5FB3760F6E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPUrXGG/62M7mKuFtp0VbocNSFTcTP93J2/H6mjcxs0=; b=hJYPx/RGcmcbn6
	cg+iAOSh0WrY1M2pwHTC+XZvUCG7gf1hTK2rSb74XGnSeFRqkCRiR+2/P0DdZGYXLf6XHB7C2j9xg
	ineYoXXAI0OD+/X9TzOryNh9yNud+ypkZYnYuMCSpXaQwqSO7OqLFXsMZzGfpa0H92zwh8EB/K4Y0
	uqMTbj5CsoZ7ixkchrkD3p9UdscMWcl0FjH+Tz3TiOskMAZL8763wVKhLnzXVVUc+cTazBegyH5mv
	AwFu8x+7vGsc1Nb0Kv2x5tJldFKFS78peMC6t80NnuY3Uyb3gRvAyULeiOQxyWsEV8j9gqRQEeK57
	o4A7RhN1eo3KrXdeSoBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mST9A-003MA1-UB; Mon, 20 Sep 2021 23:56:28 +0000
Received: from mail-oi1-f176.google.com ([209.85.167.176])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mST98-003M9G-6n
 for linux-phy@lists.infradead.org; Mon, 20 Sep 2021 23:56:27 +0000
Received: by mail-oi1-f176.google.com with SMTP id u22so18909242oie.5
 for <linux-phy@lists.infradead.org>; Mon, 20 Sep 2021 16:56:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=c93NXpgi+p5XaCllWBXTLuYEA3fNOgZcX/nvr8ucDT8=;
 b=54XXivy4lpHDobFNzDJ6Dtx2dci3MjWXl1w49jCCUvS5cFL7lAbkudZ6ivLu28fIHw
 qXyKYCF6g+Jqd30jURCRrq58vdYE2OIiYZSef/0BBeOy9ZvggFvicPAAjevywllaIhjb
 y8DolA5Ff7C3P/tw7O/tOSINbSywj0vtjWk3kp1JuvflFKeChFCdhZRg8DgUn9ZcH8lY
 yvrwS31lW0KAhpwhuFW15H6W3AOWs2YXQ/9f1O3xkLJd9X+nDcOAu37X/yxS0NrXmZs6
 Xr7qzgxJ0wrhKiL2tZx2qE1VPpX/d9VzTaaNufO1O7VU+1BeW5QEkJd89scbC9GEynO7
 WaKQ==
X-Gm-Message-State: AOAM5312Ez41OGnUg3aKdRckeM0RUqKsjJeU+B4E7Ww6EADCG+5xujxC
 bdZNFhRgFWrQtf83eb1Ifg==
X-Google-Smtp-Source: ABdhPJxbShQYydLWhlk/xGNiMTT7AzAb2ftOT6Bl3SAFnSA368SVgvPwj9OmarpSNVanmN5IIk0uVA==
X-Received: by 2002:aca:afcc:: with SMTP id y195mr1309932oie.71.1632182185308; 
 Mon, 20 Sep 2021 16:56:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id a11sm3462634oiw.36.2021.09.20.16.56.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Sep 2021 16:56:24 -0700 (PDT)
Received: (nullmailer pid 1068768 invoked by uid 1000);
 Mon, 20 Sep 2021 23:56:23 -0000
Date: Mon, 20 Sep 2021 18:56:23 -0500
From: Rob Herring <robh@kernel.org>
To: Swapnil Jakhade <sjakhade@cadence.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 p.zabel@pengutronix.de, lokeshvutla@ti.com, a-govindraju@ti.com, kishon@ti.com,
 linux-phy@lists.infradead.org, robh+dt@kernel.org, vkoul@kernel.org,
 mparab@cadence.com
Subject: Re: [PATCH v2 03/15] dt-bindings: phy: cadence-torrent: Rename SSC
 macros to use generic names
Message-ID: <YUkfp/sARPD3i82R@robh.at.kernel.org>
References: <20210908122930.10224-1-sjakhade@cadence.com>
 <20210908122930.10224-4-sjakhade@cadence.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210908122930.10224-4-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210920_165626_297473_24C7E09C 
X-CRM114-Status: GOOD (  11.87  )
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

On Wed, 08 Sep 2021 14:29:18 +0200, Swapnil Jakhade wrote:
> Rename SSC macros to use generic names instead of PHY specific names,
> so that they can be used to specify SSC modes for both Torrent and
> Sierra. Renaming the macros should not affect the things as these are
> not being used in any DTS file yet.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
> ---
>  .../devicetree/bindings/phy/phy-cadence-torrent.yaml      | 4 ++--
>  include/dt-bindings/phy/phy-cadence.h                     | 8 ++++----
>  2 files changed, 6 insertions(+), 6 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
