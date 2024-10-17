Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CADCDD374A9
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 15:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAk6XIwuDeIxkYT3BUQBlcVrCYFRg1ghxGKYs1kh1T4=; b=kUH8Blv2/Nj7+V
	hzdJ+unJDuBL64nELK999KnCbGiGd7NnT6PcXrTUvCFaIQ15OPg4gg3vHqr2KaY9CMUICP3I8U1B4
	vag/dl5b11hsVDl/V4UXb5Xa2undYPEm9rw6R7K7hYXRBDFHHi4sS6rpizp1bY9xzrp8JXCfzARmK
	+sGqjCGES//8oOvbtJE17LcxwAkfVVp3t0sL3DvPHvYKxX+aTU9TxbnHTC16y7f7yffkGLXugbC0i
	zNrpDwKikDIm0r8Ztx4ExY59ROMBnjnLFYhm2wu0W5550oz/UAAowYB8Gbk9UmmVdw76OFaBr3cFB
	0PpgNGx8+yYjn/tqyjJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SZY-0000000FJYa-1jC8;
	Thu, 17 Oct 2024 15:37:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1SXO-0000000FIlr-1kd3;
	Thu, 17 Oct 2024 15:35:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 652445C5942;
	Thu, 17 Oct 2024 15:35:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 43C6CC4CED6;
	Thu, 17 Oct 2024 15:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729179341;
	bh=P1lQx9wD81DvlOvlceUyKmrKzmEfjIo6JQtVyhf4K9o=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=bOHvnN9g8fljhOdINWlyNyGP4IZRmhKnmafva44/BXp+zznL1xVmMDoCfLADuqVil
	 YL0HYtlcgrWHTaizPUmV0Qc6BZfxj3lmBuGJa9PBpDzktUV3f3OGqAN5JTC5qKSlEs
	 OncktYtJPj3VHz4jriSezjena8f5qx51B+j+3NTKZDicX684p16QO4rVlou96solup
	 69Jeueio4FIaqLkye6lqUbr8s87WewcDfJ8fdGPU/Sjzj8TYU9xHETZxjXGM3FH8p2
	 IhnUrycAoWYIqzj+zdJW6hBhFGIC7s4Um68/J6VaE9ZM23LNDpK1wPtgSYrVy9ptLq
	 uB/JVZcCPs3Pw==
From: Vinod Koul <vkoul@kernel.org>
To: christian.bruel@foss.st.com, mcoquelin.stm32@gmail.com, 
 alexandre.torgue@foss.st.com, Yang Li <yang.lee@linux.alibaba.com>
Cc: linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Abaci Robot <abaci@linux.alibaba.com>
In-Reply-To: <20241017040657.33992-1-yang.lee@linux.alibaba.com>
References: <20241017040657.33992-1-yang.lee@linux.alibaba.com>
Subject: Re: [PATCH -next] phy: stm32: Remove unneeded semicolon
Message-Id: <172917933891.288841.1409635021239519028.b4-ty@kernel.org>
Date: Thu, 17 Oct 2024 21:05:38 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_083542_555078_7941B689 
X-CRM114-Status: UNSURE (   4.51  )
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


On Thu, 17 Oct 2024 12:06:57 +0800, Yang Li wrote:
> This patch removes an unneeded semicolon after a switch statement.
> 
> ./drivers/phy/st/phy-stm32-combophy.c:226:2-3: Unneeded semicolon
> 
> 

Applied, thanks!

[1/1] phy: stm32: Remove unneeded semicolon
      commit: e592a65584fce0852825156086cfa1d5ef4dc2b0

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
