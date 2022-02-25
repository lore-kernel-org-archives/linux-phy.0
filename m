Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9970AC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 25 Feb 2022 08:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gon0sGzdMhOZdHThXFXx0h+Lhimzabw8DZce95Yxk+Q=; b=F/lGW+OZf6uHiZ
	8ukiiVRLMd3iTqFIm7kdy/HmzAyJKOVuc8dU+LmrEwmqRTYNvRbF7IgEpo/puw7L2tt6TRVDVUh5V
	3yjn9zpI70cDqDOfvw1odxM8KP0Vs31sPrtu2hIOWZRdJmMgoxIm1nZy6wNxO8YwGfdNPaJkJVUWo
	SAkELONsO+JnF0gj7Is1ugYLK5qIbiF+ZzE01RxfAGRvlSL76IqP6luKUgNdP7i6lflt8OLCemwTm
	g4bvpJe/LsIlCkgC1oARqDfD22T28Tsp+2s9KynBbZaAtMvhKMwnZJ6QRMd5FRsXx7Qv99cDVbuub
	U1QxnzjQ3qoNNrIepk0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNVxo-003xOk-1q; Fri, 25 Feb 2022 08:28:32 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNVxl-003xOC-SS
 for linux-phy@lists.infradead.org; Fri, 25 Feb 2022 08:28:31 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 6501B61C50;
 Fri, 25 Feb 2022 08:28:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33C3DC340E7;
 Fri, 25 Feb 2022 08:28:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645777708;
 bh=nhUImlcEfUVQ3AnB3IAWai1Ov9lBtp35vbO8g3TVH4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sj4sYTRodxHZ6quzQ4MX4ggaH/K8CTJgGyUQW56lEmeyOejLr4AcdIFA4LPaRKrNN
 6pBF8XOgacmoQKyK6A6MGzf/pFgLB8T5tVeKBfveD78mTQBcpyHw7Onl+OHuzZ603F
 RWPWHet4ioaD7BS6J9m6xn5Xc+yOHzPxqFWKyN7TEaszm9sFdHS6YXEecf6/+509Us
 agQVYILEcqSOsU1lBXMjct+k+qISOktl8VYfR9hvIm8tTk4PTGL3JqyK+/Rfs7LV4q
 qrR+38Pml6J7xZQqR1PFbjt9XIBQvmDKjOo73SusOMg2MRbYvbUNXyYZCblHg70yHz
 nzHSVr8nWFKfg==
Date: Fri, 25 Feb 2022 13:58:25 +0530
From: Vinod Koul <vkoul@kernel.org>
To: cgel.zte@gmail.com
Cc: kishon@ti.com, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy/cadence: Use of_device_get_match_data()
Message-ID: <YhiTKXpJ5a9tWmbg@matsya>
References: <20220214020626.1714696-1-chi.minghao@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214020626.1714696-1-chi.minghao@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_002829_979375_E754F77C 
X-CRM114-Status: UNSURE (   6.13  )
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

On 14-02-22, 02:06, cgel.zte@gmail.com wrote:
> From: "Minghao Chi (CGEL ZTE)" <chi.minghao@zte.com.cn>
> 
> Use of_device_get_match_data() instead of open-coding it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
