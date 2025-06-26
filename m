Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5472CC7EE32
	for <linux-phy@archiver.kernel.org>; Fri, 27 Jun 2025 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CGHyaGHzMxOQpDIC/r7IZ3OckhB7tShCowu01dV8Aks=; b=VHB6E+V1yBVKUC
	cyh35uvq34twl4ajiR6jDK4KjXsmEkNTgvytHNXgEU2TiwghwaiFIYbmqziSweJnx+zGxysQqH3AC
	30BZ3ONMrzaN3XT/hIrl3Z35BLfGSJvcnceYGCe6bza/87ufLpQ1jjjcVnim5bTbABdMYsQ6oR8vZ
	2fXGoi5EbOtkvTNJwpTz2BA+U6T6hRJL9QT9LqdIZRtkpXDu29qRJ+e6HWTsXNqRQXiOFQuOZ+4mV
	6be0GVazgD7NuzDVAgBSFFUnnF3vy5D8bpv5PY5XadnHx2Axj+nxMjRmxH++Pf8HPdSNQC6VzbPil
	zJUklrSf+NT7IUfU1zbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUwnY-0000000DBdC-3iok;
	Fri, 27 Jun 2025 00:18:32 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUvYP-0000000D0QA-3reQ
	for linux-phy@lists.infradead.org;
	Thu, 26 Jun 2025 22:58:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 20983A40BF3;
	Thu, 26 Jun 2025 22:58:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A4871C4CEEB;
	Thu, 26 Jun 2025 22:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750978728;
	bh=FNCnQJMtGBc1Bo5uRWoSDLrtdiU75nfOcOk5CROnpxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aI+1XuFqNCRM9yQ+XMdbaJKlAN5ieAC0T3Ga9EF2pMznUQQOm8gguPknMffxHojF7
	 yCOZ8NnCJzL44Na/pLOiHtMLRjsisQoi8BY4BjbwYD8PuMaFw5VvVOILHpdo1e4G8L
	 5EH9b2So+wfDSmObeQhUrCjU3ed9AtSrat0vIv57BgdQOfPzTpdBq0+8s/ysq6Yjur
	 B8veBiBfApow32yPLYetKZpzY/PWfBSe/6UOn8NWMmWDnzPV8XcBp9+YKn2KY6L60W
	 BXT5N0oxXwnIO/83zrJd9koXc7x7TaqL9m7Px3RlvTrTUtl2zeDAkmFi4SaCkHe3Nz
	 8YJmR5mO0cSTg==
Date: Thu, 26 Jun 2025 15:58:47 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Michael Dege <michael.dege@renesas.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Uwe Kleine-Koenig <u.kleine-koenig@baylibre.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2 RESEND] phy: renesas: r8a779f0-ether-serdes:
 driver enhancement
Message-ID: <aF3Qp730y_Vusb-z@vaman>
References: <20250626081723.1924070-1-michael.dege@renesas.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250626081723.1924070-1-michael.dege@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_155850_026662_E0A3A2E0 
X-CRM114-Status: GOOD (  14.40  )
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


Hi,

On 26-06-25, 10:17, Michael Dege wrote:
> Hi,
> 
> This patch set adds the following to the r8a779f0-ether-serdes driver:

I have a v3 and v3 resend and both are not threaded properly, Please post
properly as a series which is threaded and not broken... 
> 
>  * USXGMII mode support for 2.5GBit/s ethernet Phys
>  * A new configuration step suggested by the latest R-Car S4-8 users
>    manual V. 1.20.
> 
> Changes in v3:
> - Fixed wrong macro (reported by kernel test bot).
> - Link to v2: https://lore.kernel.org/r/20250527-renesas-serdes-update-v2-0-ef17c71cd94c@renesas.com
> 
> Changes from v1:
>  - Modify this driver for the R-Car S4-8 only
>  - So, this patch set drops the followings:
>  -- any dt doc modification
>  -- X5H support.
>  -- 5GBASER support
>  -- Registers' macros
> 
> Thanks,
> 
> Michael
> 
> Michael Dege (2):
>   phy: renesas: r8a779f0-ether-serdes: add USXGMII mode
>   phy: renesas: r8a779f0-ether-serdes: add new step added to latest
>     datasheet
> 
>  drivers/phy/renesas/r8a779f0-ether-serdes.c | 97 ++++++++++++++++++---
>  1 file changed, 85 insertions(+), 12 deletions(-)
> 
> -- 
> 2.25.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
