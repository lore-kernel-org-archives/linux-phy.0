Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 317ABC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED374613AC
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org ED374613AC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKxfDT6M9BV45l0G2MeVyANxRdqj3izF8qhdxxNDm80=; b=2yEKf0HITcbNDC
	BGZbuhFcFzM6R6HM8pkPKtNlPHVZsc4APl+yyWiYM0U7B0XGHeMvSddLp0+NHqP7L6LDGbuaP8Enp
	zrD+X3c9sZzsIWaebQCxhS19Ozb8OJd44kOAF0JqceVAJrb7ePz3VT+hFABPUjxbNdJihw6fxy5B0
	rwLfd7gOpcWyMVufNwnXzYjyrwnJBgQ7FvxFDm7ywycwGV01earTxOIXqIJ24OVeFFVbygXuTOOrK
	8nT+AEc7O0CxjmAWfvyxI5B3ax3TM0uaowEan/ur0FCaxOIHtuRjQZxV6HeRgSWRn57AqixOay0+7
	vvV7U21CmRwpTd0TohWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtI-001F9p-3k; Tue, 16 Nov 2021 10:40:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvss-001F34-OG
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:16 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0380C61A58;
 Tue, 16 Nov 2021 10:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059214;
 bh=d2c7/cvf4goFuY/ZG1KO0aHiDqa+L1wLp9mPZr+E3SI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=aIUOpCTIhwWaRvPJOwenE9tcC9LKRQ+cHbYLsun0xPkjVpvCA9b+2dx9aSsVUCSAM
 MAeJcF3JrDfjE6dHoSW/UOZGknL6V+kT71cgzfzTOW3LyT4l0IMF5XsLPp0+EN3Zw0
 owYufzd99YhukQ8QB1UupBtGFEuhBbJf5p7s62+1ZImk2RplkeCqPxIyK4EPcZ6HRW
 dV+UIAoDkMwd4m2OT8iE4qEzZkqgz7zMyeZKr9WhjJhR3XPR1K6pM4J8q5o6P+pBqg
 7Fxfiy3ErSa4IiGE1EaAagblS4p917XK+0sJcFLn4eoISAKgmBWuA/7y0YQpvuoXoA
 usk2OEFNU2ehg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Roger Quadros <rogerq@ti.com>, Liam Beguin <lvb@xiphos.com>,
 linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] phy: ti: tusb1210: Fix the kernel-doc warn
Date: Tue, 16 Nov 2021 16:09:51 +0530
Message-Id: <20211116103951.34482-6-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211116103951.34482-1-vkoul@kernel.org>
References: <20211116103951.34482-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024014_852696_7CF89D9B 
X-CRM114-Status: UNSURE (   8.24  )
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

The comment is not kernel-doc one and starts with /**, so fix that.

drivers/phy/ti/phy-tusb1210.c:16: warning: expecting prototype for tusb1210.c(). Prototype was for TUSB1210_VENDOR_SPECIFIC2() instead

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/ti/phy-tusb1210.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/ti/phy-tusb1210.c b/drivers/phy/ti/phy-tusb1210.c
index a63213f5972a..15c1c79e5c29 100644
--- a/drivers/phy/ti/phy-tusb1210.c
+++ b/drivers/phy/ti/phy-tusb1210.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/**
+/*
  * tusb1210.c - TUSB1210 USB ULPI PHY driver
  *
  * Copyright (C) 2015 Intel Corporation
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
