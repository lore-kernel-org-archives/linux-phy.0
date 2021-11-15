Return-Path: <SRS0=nYWN=QC=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF711C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 03:06:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 629896152B
	for <linux-phy@archiver.kernel.org>; Mon, 15 Nov 2021 03:06:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 629896152B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=infradead.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Pg2THrV3Q1JmoDm/N0LS2x8fkApaYyjtis0ZE1lilw=; b=u5sMksrpVEX4fS
	wu9KnFLw0GREd98tUVwCPa3jvdaaepdnU5y6v+cL8xI5/FBUJUZSLjKyHfsXi0mYED5kPqOa744Ja
	JN9jPbVpw4jSXgOewcBAjjMIOLC/yksGEZCQMLdFhqb9LnVVCAQfBuFNKnK4DBxVh30OPh213Jf8M
	Z+zkaXGGLUVP76nG9uJcEZv6sfZNQ2VLyPXma4s/RuvxicXe/4D6pLeqW3Av3HaJH2ck+IVvz+DHN
	qhDfi3kDlCUdK+MmGNGrAf3QHnx8Fefl6OASnYvTKnGEun7DsjhaMPZ3916fLZ5lACbrANttvbpIv
	ReMwwGmqmHGPGCWRyMkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmSJl-00EI9O-Qy; Mon, 15 Nov 2021 03:06:01 +0000
Received: from [2601:1c0:6280:3f0::aa0b] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmSJj-00EI9A-Tf; Mon, 15 Nov 2021 03:06:00 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>, kernel test robot <lkp@intel.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-phy@lists.infradead.org
Subject: [PATCH] phy: ti: report 2 non-kernel-doc comments
Date: Sun, 14 Nov 2021 19:05:59 -0800
Message-Id: <20211115030559.13994-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
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

Do not use "/**" to begin a non-kernel-doc comment.
Fixes these build warnings:

drivers/phy/ti/phy-am654-serdes.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * PCIe SERDES driver for AM654x SoC

drivers/phy/ti/phy-j721e-wiz.c:3: warning: This comment starts with '/**', but isn't a kernel-doc comment. Refer Documentation/doc-guide/kernel-doc.rst
    * Wrapper driver for SERDES used in J721E

Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Reported-by: kernel test robot <lkp@intel.com>
Cc: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: linux-phy@lists.infradead.org
---
 drivers/phy/ti/phy-am654-serdes.c |    2 +-
 drivers/phy/ti/phy-j721e-wiz.c    |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

--- linux-next-20211102.orig/drivers/phy/ti/phy-am654-serdes.c
+++ linux-next-20211102/drivers/phy/ti/phy-am654-serdes.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/**
+/*
  * PCIe SERDES driver for AM654x SoC
  *
  * Copyright (C) 2018 - 2019 Texas Instruments Incorporated - http://www.ti.com/
--- linux-next-20211102.orig/drivers/phy/ti/phy-j721e-wiz.c
+++ linux-next-20211102/drivers/phy/ti/phy-j721e-wiz.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0
-/**
+/*
  * Wrapper driver for SERDES used in J721E
  *
  * Copyright (C) 2019 Texas Instruments Incorporated - http://www.ti.com/

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
