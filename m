Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 174BEC433FE
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4+grI4pkrkbrjoJFoEBkSpW5WIlFTx9Qubm1S0DNNw=; b=g1BbRIclIQhdPK
	nQGEGXutsmzGEMXwD+QBABmVnMKhym1I/Cge+z0dPoCYG1JrbSc0H/8gxpQ/vRBmpyHQwNuniXvSM
	x50B2dZf6ZOheg33dvqd5Em8KEau1aWImm0UYX6t0eclvzZyiQcUp6y3lvkfMC0w44Hd4U85Md/B1
	jJVUCy23ynYLz7y+bs7Rh8ASwYWrJXzYEsJPiJ1POFewJlO52KNiSHEwDYyEL7VNQ3TOJ3ygjcsvy
	NmB7lvrfnP/T5n3vj6ZnvBbPpXqqVz/BZS839ENZMs0Q1ytwg7Zu6u1XX5/7tWTQmwJB0yR7JMf+o
	PtaU1XWB97iqyXzF3wJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZNs-000LGi-Gh; Wed, 13 Apr 2022 09:33:56 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZNq-000LET-5z
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:33:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A4158B808C8;
 Wed, 13 Apr 2022 09:33:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91667C385A4;
 Wed, 13 Apr 2022 09:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649842431;
 bh=hEhA6vlEbgiN/xrO95gWAor7RejqPLSP7eutiio7lyU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=bUeCiA6ljOPCKhNZSYEPSmsreon9E4L/fiv5x8KOA5PTYgPjF77h7ViZvfO+MZG1S
 DUJBOw8zLT41y8GIJxWusMpX/gACXHF4QNpK2JwywEgyIV7Bz0E9jOsLmuo9FlwiD0
 wge3TbuEbqPjrB0sfka5+2k6bJpsWj/XfdAQoMKkuuSXC9QLdJOD9+W7Uxn+Vtkg12
 EJPKb+j387t3q4kvQrhmppGoWqCHhfnSpCAq8nl+FGzHLCNj9fN4L4h+jvVpmi3vmj
 9wRscZypVWFNJLySDdj/Wfa03ozdcGfavLjTtAiVozcZOR8Dd4QAQ7AfWo4Lo7P7+v
 hnTgqEDKqF/Ag==
Date: Wed, 13 Apr 2022 15:03:46 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Miaoqian Lin <linmq006@gmail.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Liam Beguin <liambeguin@gmail.com>, Roger Quadros <rogerq@ti.com>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] phy: ti: omap-usb2: Fix error handling in
 omap_usb2_enable_clocks
Message-ID: <YlaY+mIN8QAzDd43@matsya>
References: <YjIC1hWuVN3qkdqx@shaak>
 <20220318105748.19532-1-linmq006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220318105748.19532-1-linmq006@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_023354_397752_0B7307EB 
X-CRM114-Status: UNSURE (   7.94  )
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

On 18-03-22, 10:57, Miaoqian Lin wrote:
> The corresponding API for clk_prepare_enable is clk_disable_unprepare.
> Make sure that the clock is unprepared on exit by changing clk_disable
> to clk_disable_unprepare.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
