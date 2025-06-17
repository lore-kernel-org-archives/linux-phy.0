Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 431CBC71155
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 03:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qzXrkV9MfBncXilMOBG/pboko6UN4AcqQvShVXiYfzg=; b=aphclEzBSC0Rxt
	YGM5JaFtjFopLkYo8mRRWbgtGOwWtCho5AkXpI0nz8NN9P58XgEtyE7+SOWUu5gsWV5Zy9YnnGdQF
	s6WTS1iBcvm8dyfxl1uvxgePW/ajxZzLs64Z3Fy9HYlaxCSDQJnMy85uZKlBdkB7atfIrgbPmr+Gj
	koDskjZdgPaQqGwMdTz6QoRhIXJg3xW8Qq7v/mqsD82v4iOBX/xHqX3RJ/iem02a/lq2Z9I47ECHh
	ZaoIqT8CpVXZYtfroCxwpAbCIl0UjNPtrAgejrFkYuKnjRp0dzCE3x4cU4uqBLpK43Yx8+E9S9/Da
	PlOhuExRQcqmvWvRzfmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRNDn-000000067Fc-2k1s;
	Tue, 17 Jun 2025 03:42:51 +0000
Received: from [50.53.25.54] (helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtpsa (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRNDm-000000067FP-24iY;
	Tue, 17 Jun 2025 03:42:50 +0000
From: Randy Dunlap <rdunlap@infradead.org>
To: linux-kernel@vger.kernel.org
Cc: Randy Dunlap <rdunlap@infradead.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Melody Olvera <melody.olvera@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org
Subject: [PATCH] phy: qcom: add linux/bitfield.h header to fix a build error
Date: Mon, 16 Jun 2025 20:42:49 -0700
Message-ID: <20250617034249.2067135-1-rdunlap@infradead.org>
X-Mailer: git-send-email 2.49.0
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

Add the <linux/bitfield.h> header to prevent a build error:

drivers/phy/qualcomm/phy-qcom-m31-eusb2.c: In function 'm31eusb2_phy_init':
drivers/phy/qualcomm/phy-qcom-m31-eusb2.c:210:37: error: implicit declaration of function 'FIELD_PREP' [-Wimplicit-function-declaration]
  210 |                                     FIELD_PREP(FSEL, data->fsel));

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Wesley Cheng <quic_wcheng@quicinc.com>
Cc: Melody Olvera <melody.olvera@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-phy@lists.infradead.org
Cc: linux-arm-msm@vger.kernel.org
---
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c |    1 +
 1 file changed, 1 insertion(+)

--- linux-next-20250616.orig/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ linux-next-20250616/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -3,6 +3,7 @@
  * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
  */
 
+#include <linux/bitfield.h>
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
