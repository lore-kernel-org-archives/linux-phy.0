Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8E897C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 08:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hY0aTODsXjYYzZdI/CLc5ycRmiNhHByWTuhBQFTpghI=; b=B7MafDOnMsHr3a
	1SOUDgkj/R6F5epjlWzmWPvMyVJXTzaSF89mw5Lxft/svWy7kSzQjBgR3HmxaB505eKDTUfLNOg6C
	21GGRQ46DByXMO8w6YALO+57AZCAmlyfaIETLrpSNRPhxLzGVO4e6GWZ1ESP3Bn7m7yC/6IFx0yBF
	d801V0Fub+iYFD0Ffn1EnPGdzjCFjzpx0Vccbtkv5iQulMeehAo4YczW0ctfhu9iFYyIMoyW5uIiK
	3965KMVB9uXmRzBHAuLB/pODGQ3HyPo8Aq/kFn53e6q2wTfPr692Og3kqGMIysjbDRhH4y08ekUyN
	kCiJ0y+yQXBGit0TPrig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx3ay-00D8z1-W7; Tue, 14 Dec 2021 08:55:36 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx3aX-00D8Z6-Cq
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 08:55:11 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 0F1E6B817FE;
 Tue, 14 Dec 2021 08:55:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17510C34601;
 Tue, 14 Dec 2021 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639472106;
 bh=c5bIKjhU7AKff/gZKhxbNUDAZ9nnvhaiyTZKD0N2dLw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=CSAaA1w06C2Jf1Auu+C/Z5TKIUF2vNve6t5XVeE2nA7HJfuTkpa2o8yUJjOVyzGFo
 3pRSBgL437qQoY7bFNswuOyDDAypsXvnLF9NpidTERpQo1wE3sOMWs9YM+wVLPXh+K
 /5MPZ4/rqD6KiIIg9lVdU7OAHQymCnxIm+9LCX9KOrO/kQ0lVa5kW0gmv1ORPhc+Fd
 gtiR95y5ObnFhCR8tBxM5nGu72T59jl2ABeeLOR1sKDDBfExnub0m4UJsgYP/2MRHn
 RjWqT97FxsOspaEo+2VVYLzepiSnB4NmuU5BkrrV+Ym0idX4BanZnZ/Xn6FmHwe3TJ
 vtHO5kcmQhkIw==
Date: Tue, 14 Dec 2021 14:25:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Horatiu Vultur <horatiu.vultur@microchip.com>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 kishon@ti.com, linux@armlinux.org.uk
Subject: Re: [PATCH] phy: lan966x: Remove set_speed function
Message-ID: <Ybhb5uTlpOhpRf3o@matsya>
References: <20211211214717.1284306-1-horatiu.vultur@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211214717.1284306-1-horatiu.vultur@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_005509_625615_7FF527BF 
X-CRM114-Status: UNSURE (   8.09  )
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

On 11-12-21, 22:47, Horatiu Vultur wrote:
> Remove the set_speed function and allow the driver to figure out the
> speed at which needs to configure the serdes based on the interface type.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
