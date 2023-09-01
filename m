Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA880CA0FE1
	for <linux-phy@archiver.kernel.org>; Fri,  1 Sep 2023 08:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w3L+dkmXaEEkG7VqVzsMUAxXrWYUZhOonnbXBt5XbEE=; b=1E0uHiUh1sZTkP
	T0YoYxuqJvHIEoMcT9/+ZAeQZY9jz4mIiDvPb5o4ZSjocZd3C3x1p92/LBT7ST8MbwuGJfQFv3HTD
	UtRZWTk7SDRctO4wO2KQOKkr8SH/FIi14L2TvWHfVtYhFkuuStbpYgzpcU7Q9cqBkdP+bnGfr6+Wj
	F9p+jvoY7ZC1W0dBHspdQvdenSfruP6xQR7V/NdJLZEgSvlVQWXVk/8heIwCasybkThfnCXjlcnCG
	OQlBX7HGjbYTjRp5q0YxP2IHBuHTtfzUkjLo+4iiIDIzllapCQY61x0ilvWCOvNQYFXw+jcn2tP9X
	Q5SzOhzpUFaaPeQMouVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbzTq-00Gghh-0T;
	Fri, 01 Sep 2023 08:26:14 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbzTm-00GghA-0N
	for linux-phy@lists.infradead.org;
	Fri, 01 Sep 2023 08:26:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 77A29CE2378;
	Fri,  1 Sep 2023 08:26:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3897AC433C7;
	Fri,  1 Sep 2023 08:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1693556762;
	bh=CXiP13N7qsjHmYG49BhvmegJlZFdEbfqzjcHoBVG/KM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Cphk2iMTRb8mkXLWzcxuhYJadImxAq1AfdvBLCwEbXsFauMSaJSmPVRkPYSz5bY3h
	 IbgDJEfj9a2RZhAXP5mSKos2FJCSJO72T3FSt1xA9gq1yh3EnV7pN1q6j7RSbTME9s
	 sa5B/zp5D7pjeEPpGCtoeOfFsiLMUXfymA2YQ+Kw=
Date: Fri, 1 Sep 2023 10:25:54 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Jinjie Ruan <ruanjinjie@huawei.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Stanley Chang <stanley_chang@realtek.com>
Subject: Re: [PATCH -next v2] phy: realtek: usb: Drop unnecessary error check
 for debugfs_create_dir()
Message-ID: <2023090143-semifinal-espionage-4926@gregkh>
References: <20230901075231.1368947-1-ruanjinjie@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230901075231.1368947-1-ruanjinjie@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230901_012610_364296_9D5E3AEF 
X-CRM114-Status: GOOD (  11.70  )
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

On Fri, Sep 01, 2023 at 03:52:31PM +0800, Jinjie Ruan wrote:
> Both debugfs_create_dir() and debugfs_create_file() return ERR_PTR
> and never return NULL.
> 
> As Greg suggested, this patch removes the error checking for
> debugfs_create_dir in phy-rtk-usb2.c and phy-rtk-usb3.c. This is because
> the DebugFS kernel API is developed in a way that the caller can safely
> ignore the errors that occur during the creation of DebugFS nodes. The
> debugfs APIs have a IS_ERR() judge in start_creating() which can handle it
> gracefully. So these checks are unnecessary.
> 
> Fixes: 134e6d25f6bd ("phy: realtek: usb: Add driver for the Realtek SoC USB 2.0 PHY")
> Fixes: adda6e82a7de ("phy: realtek: usb: Add driver for the Realtek SoC USB 3.0 PHY")
> Signed-off-by: Jinjie Ruan <ruanjinjie@huawei.com>
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
