Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F255C30658
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jul 2024 13:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k35XNWCwKReSL7sQXw0nFUMpsD2e2DVk8+Hf6kXuKYI=; b=vJ2I88dECKS6wB
	xcE6QjByuf9PcmxseTUXIsbq5dw2qIW8S/hynRw7XdE3BQDhvvRLwrX4LfrFEHXF3aLRDbtr7wvt/
	NuDQlrLordEdcTpitLlZYU2NLeXpeqmabGBevZVGq1t41OxmRd9C9JgcAdToQ64AmQm2Sjzw+a5t0
	gtEhNOFXby/Yc/1h1+RuvC2nKBm5zrFGFSOxAxuVNHBesOZH6g0Dbya7wck6BIOMOBi08KdEOGIUV
	MlimzcbYaVqvh6NgPXHbYo1X3IJSM1aNss26CwYtc9tbrEJHTQDR8t/3HWZGvB8mGrP9B5Ce319Hw
	1rWDvgBvfsSmNZLI587A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdgG-00000006sNU-0pHO;
	Tue, 02 Jul 2024 13:36:24 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOdfw-00000006sDL-0caN
	for linux-phy@lists.infradead.org;
	Tue, 02 Jul 2024 13:36:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9225C61C06;
	Tue,  2 Jul 2024 13:36:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25A07C4AF0F;
	Tue,  2 Jul 2024 13:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719927363;
	bh=CRPpCcg8sabBXb3tgEQPqA139aSG+VS5DqRUi3V5DPQ=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=gMYRdYCZHMs0Q3tYzuIrXQz8myt3+q2EM1gqhA7UeUPLYmKzVIhBkoJMG2vf9ELqG
	 xUN1mhlMeRNd65l37JLUXhfacMxi1dVfWWJgJwf1grwX/HFSZ9sUVXVnb7dL9omFeQ
	 w5Luf1CLgkJ2ax9FOTk4Ni9Kcsm8drdWgoEMCvicrvQCwftrcctv6HV4Ta1O8in/Ki
	 1D3kcJnEQOp+yB5ALo2WjxFo8GJs0YpC/yueCb9BTvKLIBnR2ETA8pknQznpd3NqNp
	 0c4uDMZplwWD5axXlE6B77D50dxhIQdVBlSZG79Z6sa26kffuBqdHidOwCOeHeSDbg
	 o5fSiSQh8HUhA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Miaoqian Lin <linmq006@gmail.com>
In-Reply-To: <20240626080911.203630-1-linmq006@gmail.com>
References: <20240626080911.203630-1-linmq006@gmail.com>
Subject: Re: [PATCH] phy: core: Fix documentation of of_phy_get
Message-Id: <171992736176.699169.3316181143323311956.b4-ty@kernel.org>
Date: Tue, 02 Jul 2024 19:06:01 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_063604_359809_86CBBAF6 
X-CRM114-Status: UNSURE (   3.40  )
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


On Wed, 26 Jun 2024 12:09:10 +0400, Miaoqian Lin wrote:
> of_phy_put is used for of_phy_get to release the reference count.
> 
> 

Applied, thanks!

[1/1] phy: core: Fix documentation of of_phy_get
      commit: 4c75fe2a5ec409b773ed5edb0e83e2f0a88d1138

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
