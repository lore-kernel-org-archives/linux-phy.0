Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72FC2C433DB
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:52:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DB0F0652AF
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:52:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DB0F0652AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=J9zoosCLKJnSLIo7ar4rUxNpYWaCnaeVBhZg4aKMJrI=; b=SNQ4ExUyL+PkyYl0M6oM9/n1p
	38L3djwa6p1IhI7iXvyHgcyNPJvJww8ggURoE5HlgzDV+0ANzHtnW1Y8772TDEPkkDXvr40xcuiJs
	1Vg2z2C65uD4m7wT07MtZVOsqdYZQHboEo1ZN9iGHNM1Ns/g+XHrIg2dEDoiiwWbFiTUHs7ychz1P
	AWCAsVqQIz2ahxKGBoblw/hJdFhMvNjn9avwqjyvj4bJOqs1JP6f1A4cg/b1MzuAqVrWs0CA0KeKy
	ekLEYu2EswZke68zPBno1Y7AjPSgXV4Y99OCkC/wp7Q3SdgbERzVC9iotJiHOwp/lE92KIouwOPA3
	NAArB3P9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJK38-001XMG-PF; Mon, 08 Mar 2021 17:52:10 +0000
Received: from mail-io1-f54.google.com ([209.85.166.54])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJK35-001XLJ-RM
 for linux-phy@lists.infradead.org; Mon, 08 Mar 2021 17:52:09 +0000
Received: by mail-io1-f54.google.com with SMTP id o9so10879178iow.6
 for <linux-phy@lists.infradead.org>; Mon, 08 Mar 2021 09:52:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=xPB4huatYbwl80jYKwSF7UcinL+RMW/E9f/YgeQxn+Y=;
 b=DfQ9RMbLF2B91K3Vc2mRpeElxZgTkDXtfx/1dTT0mj/aQwDyuQBSJLN1Mpa5uCGFct
 6CoC4NuI/dZhBNB0gFLFr+OOE6XvA9NNWGhd1q9B+xeChdo1VChAFVvby34C+Z9e0sS6
 QL5rK10A6n6k4Td6Ku5/NkDKtyS+Npia/JE3ddvD8wFIykocEpqBXbWtX3PYMVXjiJES
 TDvIRCPj6iAz6AtrQDUyEGTnP2bPOrYdKTGROEYIXP79jB59OAtBROxQm0tLNbJtGw7y
 pacUA4Qlse1BeiqjZAvhGZFNW/Fm68L5jr3yuMp3+n1GqKz5cwqZjRiEUuo2s/AMtynj
 ybrQ==
X-Gm-Message-State: AOAM532e690k9mGqAY/1cW8yt1tTy/pBisJWaJhaPA5QC4+KvjeLl0XV
 svzEwR1BbhT3lXk/ge3BFXN/A1Ye6A==
X-Google-Smtp-Source: ABdhPJxBT9iwoqUcXW65Awv827IA4yDuByiJmyRaO4420WIC/jZsQA1Tw1dirDsINRWvGXiwv/Egrw==
X-Received: by 2002:a02:7086:: with SMTP id
 f128mr24249918jac.104.1615225926425; 
 Mon, 08 Mar 2021 09:52:06 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id i3sm6208434ioq.13.2021.03.08.09.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 09:52:05 -0800 (PST)
Received: (nullmailer pid 2699399 invoked by uid 1000);
 Mon, 08 Mar 2021 17:52:03 -0000
Date: Mon, 8 Mar 2021 10:52:03 -0700
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: devicetree@vger.kernel.org, Swapnil Jakhade <sjakhade@cadence.com>,
 linux-phy@lists.infradead.org, Peter Rosin <peda@axentia.se>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 3/9] dt-bindings: ti-serdes-mux: Add defines for AM64
 SoC
Message-ID: <20210308175203.GA2699351@robh.at.kernel.org>
References: <20210222112314.10772-1-kishon@ti.com>
 <20210222112314.10772-4-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222112314.10772-4-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_175207_984726_A907C141 
X-CRM114-Status: GOOD (  10.67  )
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

On Mon, 22 Feb 2021 16:53:08 +0530, Kishon Vijay Abraham I wrote:
> AM64 has a single lane SERDES which can be configured to be used
> with either PCIe or USB. Define the possilbe values for the SERDES
> function in AM64 SoC here.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Acked-by: Peter Rosin <peda@axentia.se>
> ---
>  include/dt-bindings/mux/ti-serdes.h | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
