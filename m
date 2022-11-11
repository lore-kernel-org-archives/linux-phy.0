Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE9EDC4332F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oYfJe2S3FKkzXUZ1s/ma07ImcF3Xa7IqOzPZQe8MVpw=; b=c8o7P8+PIjFySi
	FXmnGTkRjpghTdrgzfvyWQtUKvBjKom1x4jAYGilgr06mc5Cq+LO9y0MyVFDg2u2pwGG1W8bjIA49
	cPbxzq8AeXZH/pVogeQ+KwKgjEP5l2V+l2uRNVNjPGCBL4iFwr+lGXObAF2TPrwjVHWtpO/N3vPM4
	gF6PKIMEeHyUT4Pd9XI7c/kVDwtrMT+0K7MQFeqIhjGzp2HzMlNudNYD3kyt4SXPb6mvc+ejCRkgw
	9RrZ01PscBdUmwh0YxjhXme77378U9V9RczqYaW8u2VBU95SgCQX986WxAn+aCgWg+Z8BZxKYdSpD
	E1asVUCFSJGvaAMbd0Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZe-00EgLO-Cz; Fri, 11 Nov 2022 09:43:46 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQZI-00EfxS-MD
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:43:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 1B9E4CE25F2;
	Fri, 11 Nov 2022 09:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5888DC433B5;
	Fri, 11 Nov 2022 09:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159796;
	bh=8YG8lt72rO1Cs+V80J6Go1x/JXY6d0vosuLh08p4JvM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=F5jHfJUzbt3T6B3evWEbe7XBmR3i3yHG507NsBMsKamKI4dQu51FmTFke4ymx831l
	 eqzxRpr6QOMOH0RN8Cy8A87r2ejEwC5IyF/CtZTUXhMj9SXm6bvaPW+Y7QoTUKd0zN
	 TV7ACvzoaBfbbvD4ioCrB26gtGFGKHnmOgkOt91usj/Yvz53aKzOb4gYxi4Y90rEOu
	 59j9CJ5qsJPb3ZDgJ7yj4AE8RCDsYWTnBMe0KOaS7w0KLqTkKpqYjga+6yMhN6Hui1
	 O3N1HDKdplQnhKHVbwt5vczUdLOc0hsxRkZPGbDATJ6PxDH+uNvEi4E6lwCng3NZIx
	 GoXaR7YUF9rcw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQYi-00030b-Ep; Fri, 11 Nov 2022 10:42:48 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 1/3] phy: qcom-qmp: drop unused type header
Date: Fri, 11 Nov 2022 10:42:37 +0100
Message-Id: <20221111094239.11547-2-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221111094239.11547-1-johan+linaro@kernel.org>
References: <20221111094239.11547-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014325_201992_68B3CD87 
X-CRM114-Status: UNSURE (   9.12  )
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

The PHY type defines are no longer used in the PCIe, UFS and USB QMP
drivers so drop the corresponding include.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c         | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c          | 2 --
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c          | 2 --
 4 files changed, 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index ff198d846fd2..a088477e274f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -20,8 +20,6 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <dt-bindings/phy/phy.h>
-
 #include "phy-qcom-qmp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 111716e25b17..328708a09c37 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -23,8 +23,6 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <dt-bindings/phy/phy.h>
-
 #include "phy-qcom-qmp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 189103d1bd18..318eea35b972 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -20,8 +20,6 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <dt-bindings/phy/phy.h>
-
 #include "phy-qcom-qmp.h"
 
 /* QPHY_SW_RESET bit */
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 9b1f8c9d0eb8..8b111b7087b9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -20,8 +20,6 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 
-#include <dt-bindings/phy/phy.h>
-
 #include "phy-qcom-qmp.h"
 
 /* QPHY_SW_RESET bit */
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
