Return-Path: <SRS0=azk1=QD=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28037C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E978F61C15
	for <linux-phy@archiver.kernel.org>; Tue, 16 Nov 2021 10:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E978F61C15
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eB+M414wFB5SltGI+c6oZ0Qa9INOWyMz3I4Etu9gFoU=; b=xtruwbSNyQu+JL
	4xRGUG2OosqY5mKOR4yVNJW1S5cICIpH/rPHZuY4eVYtYfPlgRLuEli1Yfu8VFJnKhh5sNyt0ompT
	YuFNRsHGaGqnZ/2NE2gzWIOXRymU2eeFJTmEj2FtfH6xZ2yQlCfxxAX5kZ+FVd9qXYC9K0mgN72wd
	dz3syFTw+L2cxtF9Z6Y+MOkvB5cH5FMtKIBQUl979R2XJuPzvp/nVAFON8gGgoFVmXRCrHfnX06wO
	d7N/+NSQjLOLA9MNa6mAuZLgeEFtYoh6B3aZ/dCxDDiO4vdO+Gz64nQLroI6QrhMB79ZuuuO4lEbH
	FsP5W5gs7s0EfdceKfdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmvtH-001F9K-2u; Tue, 16 Nov 2021 10:40:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmvsm-001F1a-JD
 for linux-phy@lists.infradead.org; Tue, 16 Nov 2021 10:40:09 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9AD4063220;
 Tue, 16 Nov 2021 10:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637059208;
 bh=Qc8ZBQhWfMzGFC9zpZm7g87nQ9jQMAL3DvjJ2hBhgmM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kzPqL3UyQcmcZiJX6U3NS438wu6gGJ1n5sDkidLASCsTuQS6gzeFIvT5RsAMrHNx2
 Nf8q6PwMoO/Y7VOpSrAKYJe6hZbOS2Y792wKPu/CPeJOVShT+bqn7uIEJD2tKIRQkz
 m63fPTlvlkBwvvx91nSxXh/oqdTL/zyP//c95XclNT7scFNO6KOG1THq/UesFJS/EU
 ik70F4f0TjZ87JA7D1+gz+Zbh3hGE4Xa+bfS8cUWQxh9/S0T4qUZHocSRjgYPj/6nB
 3j/24P2A00o0Q9dri5OusssRrvBxEie4HUj62Pg/DP8/1nEuTAmdSxvbRnf/M0f86u
 QGpSQ8S1D0iVg==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 4/6] phy: qualcomm: usb-hsic: Fix the kernel-doc warn
Date: Tue, 16 Nov 2021 16:09:49 +0530
Message-Id: <20211116103951.34482-4-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211116103951.34482-1-vkoul@kernel.org>
References: <20211116103951.34482-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211116_024008_715515_93E25DE8 
X-CRM114-Status: UNSURE (   8.78  )
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

drivers/phy/qualcomm/phy-qcom-usb-hsic.c:3: warning:
This comment starts with '/**', but isn't a kernel-doc comment.
Refer Documentation/doc-guide/kernel-doc.rst

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
index 04d18d52f700..716a77748ed8 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
@@ -1,5 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
-/**
+/*
  * Copyright (C) 2016 Linaro Ltd
  */
 #include <linux/module.h>
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
