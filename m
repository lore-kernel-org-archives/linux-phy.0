Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DA1CEE342
	for <linux-phy@archiver.kernel.org>; Tue, 18 Nov 2025 17:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x7iTppML+zCLcYZrFNhV70xMnU4FMBenpjj/tC8uQtc=; b=jV3gmzqx42hnqn
	Pk0gqlX2TjCBZ+Bq3tJJJkMvs8rcTr7FfHKh9UuYRMDeO8ddQB5Zd2rpv95Lip9AgkE3FKrLyJVlx
	Qz2T4braNmv9DyPoqccHX/NFz2vFqWWJRYVVUN/81CqvPE+dCM8Y5zRsiWSNOEFEFRjW6fNjE/Ytn
	OrSEqCYDxuWoI+M6Kwop7zcIGpckVJ6+yPnyyl053EGYvc8zbNgNNS2uhfCaGdo/5ZLr6ErKeexpo
	aJ4Rp7oCMZSLRlL3ziq6Mg78il24RTp2LrqSSm0l7TnBvoE9aqoH5dxbHOM9jEGJs6gHivhqdzzFG
	FpNei8TRUd1zO5tzRRng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLS-00000000qSz-3YW1;
	Tue, 18 Nov 2025 17:18:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLPLS-00000000qSQ-0dDS
	for linux-phy@lists.infradead.org;
	Tue, 18 Nov 2025 17:18:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 430AB61106;
	Tue, 18 Nov 2025 17:18:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CDBE4C4CEFB;
	Tue, 18 Nov 2025 17:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763486300;
	bh=pSCQcByahWJnRfLSXLmxMBD7rknLLPO4nqRz9Tsoy6s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=FcU3nQYB2qlfIz4uXVOLKguWLApHIVYACw7R4O+42DUsqnF4IMSeeOTdZFGXLUVT2
	 BFSFmnozoPkzVvHb6c2wNOKrbI5hWuzSnofDFh0x3Ow11/rUnW4KJbU6y+pq8SGjWQ
	 Tm4GyqUas52RTx3GZziPzkVb1pcTg4GYv1vM+Q/6lPCVmtZvGmvqn1f6ph9CnOrEC6
	 YTgJ9qD1DINcGZbW9Bi27pndVGwJKFyTWAx2AKXsZXOKbz46hOPz/vUSZj4RJoLAvt
	 lxJY9jOaL3nOEeCsldziMDJ1kkmJLjKNpr5aKJChflXNpxTfbhxm9u6oBG4bpGUN5z
	 pgWAXpLUrAZVA==
From: Vinod Koul <vkoul@kernel.org>
To: Inochi Amaoto <inochiama@gmail.com>, linux-phy@lists.infradead.org, 
 sophgo@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Chen Wang <unicorn_wang@outlook.com>
In-Reply-To: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
References: <20251112085220.1452530-1-andriy.shevchenko@linux.intel.com>
Subject: Re: [PATCH v1 1/1] phy: sophgo: Remove unused of_gpio.h
Message-Id: <176348629841.62598.9297270264044310664.b4-ty@kernel.org>
Date: Tue, 18 Nov 2025 22:48:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 12 Nov 2025 09:52:20 +0100, Andy Shevchenko wrote:
> of_gpio.h is deprecated and subject to remove.
> The driver doesn't use it, simply remove the unused header.
> 
> 

Applied, thanks!

[1/1] phy: sophgo: Remove unused of_gpio.h
      commit: 42690b8ec861b502538e425c5a7feb7a38764f04

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
