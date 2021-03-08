Return-Path: <SRS0=qg3g=IG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D2F2C433E0
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:51:53 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D4257652B1
	for <linux-phy@archiver.kernel.org>; Mon,  8 Mar 2021 17:51:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D4257652B1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v423WIVZXRbSW1RWhL/ujx8u5DZQvMXirV+3MQ8og7Y=; b=IF/xnhZAqOtURZn2mFzZ0wwDn
	HTe3p/jTfvFhuxSlxUhX9JbBcTtXOSk/VnVY2OWddmjIFwS3nYKtkMHSStaX5NBoj3A+qF8mxUNcJ
	PwEPA1I5XC4Qd6hY7L5K91A0tWtl/M/J8WsGpBUHCh4pbehrIXVPjn9Kjm0RiHisormWi6vkqv1k7
	1rGYiIHoodrcIAKf3tCMsfpJ1gLOdEt8ozrAnBFciJ68DL1zrDuj3zofjIsNMpnLkxw1zXeklNzmF
	JdHkdoWDLYluc91YTfu3xPDy5WDZO8feyu64YKbQATrXEMWiK/Om6+UYA/h/T7SdzeyhvTfbT3H4m
	AjH68N8lA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJK2p-001XH5-BT; Mon, 08 Mar 2021 17:51:51 +0000
Received: from mail-io1-f42.google.com ([209.85.166.42])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJK2l-001XFw-RU
 for linux-phy@lists.infradead.org; Mon, 08 Mar 2021 17:51:49 +0000
Received: by mail-io1-f42.google.com with SMTP id n132so10906009iod.0
 for <linux-phy@lists.infradead.org>; Mon, 08 Mar 2021 09:51:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=1FOD5D9xxHDNgtK+29L+sX5QWs/XhQ0EtS1cLbdgvrI=;
 b=DyCYG1aeyafRFLp8QvacvREXy0jdgndd3yUwYrE+y8YcWrW5bJi7NgwqKeH0v2cnSS
 2eXtuNxhfbeHw4gq6sFjTXY0+jCOR1wYzU8tMxWjBC+N4nQWJoCC2+g0nfu4ou9QY998
 KRhMG8eJ/d6t/gFMqw3T6s1TcsLtX0ZW7K20HIod1rrY9TyaI3HPOuebx/ubp/rwyQS/
 sZyD/Kd72A499Ztnr4cl48CfGpUurX4ShNpR7oXdL0WMkozhyosR7euA1WFoc916K/FN
 PQhajWdvfmfkIm1vKSXHk+DmseWjLr1jQjjfh93Mo5dVmtXoqFBqPSoyjOX/BzpJNbmD
 4uWg==
X-Gm-Message-State: AOAM531d9H13v/5lcArqhnJ5J1jIUjf0KHt9Rx8UnHee8emhnLqf3JRs
 ZymOJMnSHEgfpi/Ttt5sLA==
X-Google-Smtp-Source: ABdhPJwUJytuS0RCGx4Q+0ue0LiQ/tA6r+XTeDw7X5gZsXBu+RQ+dGxrAGpT7mhTjck9tKkYZNtgMg==
X-Received: by 2002:a5d:9693:: with SMTP id m19mr18429388ion.46.1615225906920; 
 Mon, 08 Mar 2021 09:51:46 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id a5sm6523670ilh.23.2021.03.08.09.51.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Mar 2021 09:51:46 -0800 (PST)
Received: (nullmailer pid 2698859 invoked by uid 1000);
 Mon, 08 Mar 2021 17:51:43 -0000
Date: Mon, 8 Mar 2021 10:51:43 -0700
From: Rob Herring <robh@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Rob Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 2/9] dt-bindings: phy: cadence-torrent: Add binding
 for refclk driver
Message-ID: <20210308175143.GA2698807@robh.at.kernel.org>
References: <20210222112314.10772-1-kishon@ti.com>
 <20210222112314.10772-3-kishon@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210222112314.10772-3-kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210308_175148_262956_97CC7052 
X-CRM114-Status: UNSURE (   9.79  )
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

On Mon, 22 Feb 2021 16:53:07 +0530, Kishon Vijay Abraham I wrote:
> Add binding for refclk driver used to route the refclk out of torrent
> SERDES.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/phy/phy-cadence-torrent.yaml     | 20 ++++++++++++++++---
>  include/dt-bindings/phy/phy-cadence-torrent.h |  2 ++
>  2 files changed, 19 insertions(+), 3 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
