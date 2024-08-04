Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFF41C3DA7F
	for <linux-phy@archiver.kernel.org>; Sun,  4 Aug 2024 17:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BJv70r+slG2ol8VxKlakyqis2VX84pjM0Dvv/grQukQ=; b=0bLL8CL9b223v3
	0pFYUvQjOFTTP7RApbW42qMGCKccyz00g91WR1ytqarHNziE8AY7f5enxFKLjQMA5alKPPRyuLxU0
	euD23FbfWOYizxe0R2NTyudvSfoFQHzSZM+MLN2Zi+4qKcOLmoPu2dYr9R6PQkx014D0TCU6TupT0
	ftY/c3bK7s6AduI5y9umCy4V3jGuEyyq+IXEfqtY5dpVXGSI25bZOsQmtY0c1vUoECqIPC7Qeycns
	zeB2/xMXCgKPtuqQMXvVbkLY/zqF9sjtA112VydZRfsVoxihtDR5BeLSYIl4FWW71LshV64ioLXLG
	Qa+yi1PNL4ij8uVFkRFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOa-0000000Digd-0yVW;
	Sun, 04 Aug 2024 17:51:52 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1safOY-0000000Dig1-1Uhl
	for linux-phy@lists.infradead.org;
	Sun, 04 Aug 2024 17:51:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 7FD72CE0973;
	Sun,  4 Aug 2024 17:51:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3414CC4AF0B;
	Sun,  4 Aug 2024 17:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722793907;
	bh=VedGGHkCfVOcHhXI8Ri7pGj1eHQ0z/dLrioP/zCd6AM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=VXT2oydY5hHVbDoqUqN0AxxVCRva+16Us6M/FGWKLsSBSpw+X/u3oK/46j0Li4yRL
	 WftKYXI5CSQo9BHGkRd59oxa/TY16lRmuFtkNaqJwSFSxSh7MBUea9/erSWOW+zhzr
	 wBa3n54Q0vneLki+qXwv1OHYM5PrdWF46WgxYZTTEQD9WH3rDoevUaqa5PpbKnR8ZP
	 Irx8Wrt3nFloX693DQFIRKixr1lcMiPayy2Nj3iTLRk5Bc4ezhnu8L5Icmd88rpbs8
	 +GXTiYfbUkfxNrE+yNG5XYcbTxMQ6EcTutcWGiu00XljPswZ+of0kyzyB84XjH2duy
	 S9nn2PoQ18P8Q==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, thomas.richard@bootlin.com, rogerq@kernel.org, 
 theo.lebrun@bootlin.com, c-vankar@ti.com, Chen Ni <nichen@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20240710031626.2003110-1-nichen@iscas.ac.cn>
References: <20240710031626.2003110-1-nichen@iscas.ac.cn>
Subject: Re: [PATCH] phy: ti: phy-j721e-wiz: convert comma to semicolon
Message-Id: <172279390484.406109.8757122625415415901.b4-ty@kernel.org>
Date: Sun, 04 Aug 2024 23:21:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_105150_603897_203319A7 
X-CRM114-Status: UNSURE (   3.13  )
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


On Wed, 10 Jul 2024 11:16:26 +0800, Chen Ni wrote:
> Replace a comma between expression statements by a semicolon.
> 
> 

Applied, thanks!

[1/1] phy: ti: phy-j721e-wiz: convert comma to semicolon
      commit: 0f20e326e723075f98456bacf8de475421f68be6

Best regards,
-- 
Vinod Koul <vkoul@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
