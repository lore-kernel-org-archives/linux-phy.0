Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56EC3C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 23 Nov 2021 05:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhfbA1KEXSe+Dm4W7ydvTO8JbAL4IdB38U+qxgGx1Aw=; b=LzM4A62v8NRGPe
	zQKsrIhs69qeOtXI+wyVTs6mSf2PCWfxX2gRc49GD6mHKlkzwgfpUhP04BvW8xCGPgXhtxpmf4gba
	enKzrr8QG8lD1+H+41FrTW5qjdNe/lMn8dpLmqSDAEQWqQmvXShDVNU9+vOEwt28mSivgJtMInhRA
	bJekfBIn9qf8b8Mj+4U/AgNQVyuf/T15qnQ/KuNBrdWPxycJjRdabwz2wisDvzCq6sE4TxUi32j08
	p+cZrrl/0HwPLMp5j7ySL4x8M+dkIcggjMp7YZLEW15s0QZXb2FymwQjshtJCEhhpDo1m0v+Y81OH
	16lmUdehSmfoQcHBBN7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpOlU-000wAK-Mv; Tue, 23 Nov 2021 05:54:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpOlS-000w9b-Fj
 for linux-phy@lists.infradead.org; Tue, 23 Nov 2021 05:54:47 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9C39060D42;
 Tue, 23 Nov 2021 05:54:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637646885;
 bh=lznfS8zSE5nuh0D8xA9Fyveb7LHT+lLHRDD/nS7+tso=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tzLfOYh6lSaaZTx0okiy5e+Hnb53Coyocau6LI6SM3nP3obJi7X7TGxrN7wL/GRZB
 vhQK61+iwzDsSltQbeqxWmy+8Y7i1hY8tcQ9JdfQ7xEs/ATuF3nFHyxjmDNplOlDhK
 UFoYXAPfFnmbUzZQg6FZTXsualzL2FyIjqM9Y/K7W0aFTCIY/N45jlDIUicQp3xGWi
 Bkm/6u7FsJptEFGFbxWuhdhg7xUeyhBAhPE03lhT7ZM3na4Q1X3k5kw8Y7S/vQQCig
 PPsGM4B7ostAdBajRmmTD8Z5+KLLt32itGGG2Mma27Z1plD+0+NWR4eWH92rav0sEJ
 lYKHHgsVcYhgw==
Date: Tue, 23 Nov 2021 11:24:41 +0530
From: Vinod Koul <vkoul@kernel.org>
To: davidcomponentone@gmail.com
Cc: kishon@ti.com, sjakhade@cadence.com, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yang Guang <yang.guang5@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] phy: cadence-torrent: use swap() to make code cleaner
Message-ID: <YZyCIUzvG+eERc32@matsya>
References: <20211104065233.1833499-1-yang.guang5@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211104065233.1833499-1-yang.guang5@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_215446_563831_1D330BE3 
X-CRM114-Status: UNSURE (   4.78  )
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

On 04-11-21, 14:52, davidcomponentone@gmail.com wrote:
> From: Yang Guang <yang.guang5@zte.com.cn>
> 
> Use the macro 'swap()' defined in 'include/linux/minmax.h' to avoid
> opencoding it.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
