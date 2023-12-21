Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C624C35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qeYHvOhyY3xmsXUCItQpdCWJCAAb1ZzLCcWpI/CPGno=; b=Q+73MQnBWJ5JYo
	AgWhFZrXU7RLWv4sUCy4YKes/1crn2xU0H+/f/9rhx8OEmzEBC2tZXepkmkxxQ7+pvnigwnT7thi/
	MNMUjk+HiMMQxLySp2Ic5mN3vP1xDNG/r30it2wVHzghMiJJkkkCHwD4hN1Zip3jmkv3zJPSiMmir
	RCiVMWDimlrtXMksvq+I8+TbFD1qZBGRqQc+ibwGJWv/vuwgTcCwfxeCPJ/RcdaG0WpkkbfgL++oP
	FWkaOkxFEF3eUj/btEj8aTbk160ruW1nylyNf88V0Whg31aPIud8U09g5X5l/yANQ0rRnmhj2KT4m
	5P28M3M+ccjF91WLq3bA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeQ-003bcX-2Z;
	Thu, 21 Dec 2023 17:16:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeO-003bbg-0v
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8EEF261A1D;
	Thu, 21 Dec 2023 17:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60F5AC433C8;
	Thu, 21 Dec 2023 17:15:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178959;
	bh=T64o/dtQ7k7QygDUHe30OKZ2zq+ngvNvrISkp4YyKtQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=UTrt7OOzNo3cbKE4i5QqvfzjePciZenWP480tHgQoFs4pL99PmsDiT4rIXBRK0b/Z
	 4XqRnHccI7Ou4angSRI9f751qQULSmhI8ieQfhT5ZInR0Av0AGNfUiAIVHTBdOXTne
	 I3HG0tdHsYepIs3RAKOrelPS2r4cweJBGgEH3+8+6d0lX0uI7Gh8c3A1/bxRyhOKUu
	 HIcKZoZ/sXq8h9TeJqn7Q6f+U4ecQKshs8igttQaMIWm7/xe6MWDpxdptD8oSu4gyw
	 7ncDXprmqOqoK+Iwg2Rh/2s3JlSJa5pIBM9hbEiznUZKfAfipHp9UC1zLKKaFxhumU
	 hueHlTT74bJbw==
From: Vinod Koul <vkoul@kernel.org>
To: Wolfgang Grandegger <wg@grandegger.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-can@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Wang Jinchao <wangjinchao@xfusion.com>
Cc: stone.xulei@xfusion.com
In-Reply-To: <202312151407+0800-wangjinchao@xfusion.com>
References: <202312151407+0800-wangjinchao@xfusion.com>
Subject: Re: [PATCH] phy: phy-can-transceiver: insert space after include
Message-Id: <170317895592.712473.1040949125860507698.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:45:55 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091600_364137_EB2BB8D8 
X-CRM114-Status: UNSURE (   3.17  )
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


On Fri, 15 Dec 2023 14:09:00 +0800, Wang Jinchao wrote:
> Maintain Consistent Formatting: Insert Space after #include
> 
> 

Applied, thanks!

[1/1] phy: phy-can-transceiver: insert space after include
      commit: 57f31e911eaa5e682c0a03253f8b4348adee52cb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
