Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86891C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  8 Jul 2022 05:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw+4LtpqpLN0yvEYTXYMRxYQ7KxGtYaWIE0JoloqhG8=; b=zNJ4eJdCCoyA9z
	IJGVnIieOlhjqsC/UvC5mgGH1qErnFAUe0ywh+Qyq9/EdRKMUEPNNlUrI8dHstCZ1CWFoYxYMfRfi
	3/XsDHl13STQfghA7s+KYzalQ3RB1vDOSmP2vVcC8yVkbNYLoHGxChRG4ThnCAFYMlaVf+tg1pPCk
	KR6VZ73ylERwX7nyC5nb3MZ0PzpBRjGMU3/Z8Enn7SEzbyiw1ob1jgWoNRBPGaKEWfYKqwbQUNFGC
	CNvlIJmNe5BciuI4/EERKDMi/cBuXuyraGE0Q4mC95Vyxn0GpPgTVbY1SuA91pGlWtYT6FBMXTS3A
	SEo0wlDzDb+DqXRpGONg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gHP-001nHK-V0; Fri, 08 Jul 2022 05:11:51 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9gHN-001nGR-PH
	for linux-phy@lists.infradead.org; Fri, 08 Jul 2022 05:11:51 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 040106243D;
	Fri,  8 Jul 2022 05:11:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DEA58C341C0;
	Fri,  8 Jul 2022 05:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657257108;
	bh=CRNCeDRx2gTmZvbFUCZcwCoIpZ7yIENeQY6jwpR3WuM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ln7jHpyUwj9hesGwTO02VHdcJPiJb3gWi36P9S1B4LQx2t6V1bMVpTGAnxqAiAQHM
	 oLKdYDjtEXntg156Dz0NdQDeGdp5bVMitwb4Y4ufulsEjnPynj9sni/imewivnyGY+
	 yrkKlsDgKrOkbKk586RsKEvVUuQyoctCZTIk06oBNb5ptV3PBH7B+1vjmwBxjYp/lm
	 ODQ9zu4HGVhDBHHYeIjo0cm5baCnAEomaz6bGENkAcnhSCJ8xnSBwbAafjwXpmoY5S
	 hYlHM1vKXu2jDgdV8bFrbR4yZErDXrVFM9TtQxfLFqJJO7BS7gDDa5I8CT9zx1C+Mt
	 xSGEUknkbUu5w==
Date: Fri, 8 Jul 2022 10:41:44 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Swapnil Jakhade <sjakhade@cadence.com>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] phy: cadence: Sierra: Remove unused `regmap` field
 from state struct
Message-ID: <Yse8kM499AmrIQ4d@matsya>
References: <20220707071722.44201-1-lars@metafoo.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220707071722.44201-1-lars@metafoo.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220707_221149_901397_9C4480E7 
X-CRM114-Status: GOOD (  10.53  )
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

On 07-07-22, 09:17, Lars-Peter Clausen wrote:
> The driver state struct for the sierra PHY driver has a field named
> `regmap` that is never referenced. Remove it since it is unused.
> 
> Not that there are separate fields of type `struct regmap` for the
> individual sections of the device's register map. These other regmaps are
> used and not affected by the patch.

Applied both, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
