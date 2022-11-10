Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43269C43219
	for <linux-phy@archiver.kernel.org>; Thu, 10 Nov 2022 19:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pFEzw5mtCVG5IB6FbayzLGn1I0H1ZviGaV93YQ0lDk0=; b=yL6RM/ngBmsMu9
	KHribDXu5E9rCz1vIg+oW4gytMUKHX82AD0ZAmcU/1Yu+pNfKPicRlOVi/CZiXAxzX84SV77xUVSY
	BUMbV8H1W1PGVe+lBzmwHhq35GIrRZfXhPAmnSFTx+IM7VdqI2SC7EZVftsjD07L8dYavKLKwg9+y
	NW0VcLXRvqfrH+l1Q5nomvhGjdamFOJ5O/AhyPGs0xQaTFExYqgn12a+tiGg7qgIZk3DHy4M6p4Xo
	88t8TCabtk8K8+9uNqBx8MWkYO/x3ht6UJrA7K3OdKD2LcQemwlViU34OkGm3YKq72AqNify9hdeH
	AAl1qLF9m730ZVvt0XtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otDI2-008mLw-C8; Thu, 10 Nov 2022 19:32:42 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otD8f-008fhH-Tl
	for linux-phy@lists.infradead.org; Thu, 10 Nov 2022 19:23:03 +0000
Received: by mail-lj1-x231.google.com with SMTP id b9so2070107ljr.5
        for <linux-phy@lists.infradead.org>; Thu, 10 Nov 2022 11:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a1gdeRXCMD4G+HSEczKSTuxNPEtL/W00tRuw9hUzYKI=;
        b=bgymazws3x4oheAcwKgFE/qnAiIzb6PrxXawDSDpUvqNJApc2h3+Un3iDTupiZ/q+5
         J0Tsp5HIfM5HzTyx8O6f0IMQtgpv+HR26tESzdTfdc2t1NlL+Sahf9wjP8ePDKjr2lS6
         XE8ccT3fbqvyZS9c7SGWxwFrlqchtiVY7ZmV/cBjv5e5sLPYQADg7wdkXjOnWHGu6q/H
         Wp3PM1sVnwlyfEBHcmb36GxFLPpk27x7vij6kjIlAvqS+H3Jf1VtIQBKEycTsLsu8Kcz
         lPSV16/EgLpQEdHHFSa35Qz22RjZFtTLuWt5gmLgqpYxbRfqo7rUh9SKOXl8t0/0iYQn
         E3XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a1gdeRXCMD4G+HSEczKSTuxNPEtL/W00tRuw9hUzYKI=;
        b=HAM5ca5/GCWxhrwM/Chp5BeeO/lUXJsxP3yElOEncRk/ndTpz3hlf+rA1OY2wR/zmT
         c29qBgM4IyWpZjHNtTJqqtitgCnnEEZDpMLKMWAahIav9k/e5XfLSpz/+zAyOzm4Ym96
         HFU3NJRx29gARNq+k9JZkYFUVGr65uoyJZzgURSKgenCZ7Dx2eNFdVFx0AuLg1DuphDw
         VuyKZyqbgEejRhQsnyamScvhp0AMEW8ORGSwwkOVfTveozKIHCCj1xWtaxzYpy7P8hyq
         sJj+0ujLh53KJ6DRydtNJkGztWEwsPq9HW5YTxmqNo7oM2aG5Wx7Muh38MzyCgZcbOgG
         EKBw==
X-Gm-Message-State: ACrzQf00uiWagBNig4froXS3e7OYJafhJdfnYSkPzXGwx+t9A8NEO94U
	fdk1EaFSR0+pxn0fPfxyCr5vdw==
X-Google-Smtp-Source: AMsMyM5ajXcPPQP6552t0oVu+ptZunsUkWvEdl0O+Vur6Rv10UI4hb5EuqP87gPQSG21AJPb+mKQrg==
X-Received: by 2002:a05:651c:1304:b0:277:115a:1acb with SMTP id u4-20020a05651c130400b00277115a1acbmr9764679lja.350.1668108177927;
        Thu, 10 Nov 2022 11:22:57 -0800 (PST)
Received: from eriador.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651c124800b0027758f0619fsm40345ljh.132.2022.11.10.11.22.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 11:22:57 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v3 13/13] phy: qcom-qmp: move type-specific headers to particular driver
Date: Thu, 10 Nov 2022 22:22:48 +0300
Message-Id: <20221110192248.873973-14-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
References: <20221110192248.873973-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_112302_003375_9CFA3C8E 
X-CRM114-Status: GOOD (  10.19  )
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

Remove QMP PHY type-specific headers inclusion from the common header
and move them to the specific PHY drivers to cleanup the namespaces used
by different drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c  |  6 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c   |  4 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c   |  3 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h       | 15 +--------------
 5 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 5e11b6a1d189..f6f6dcb8bc66 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -23,6 +23,9 @@
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-usb-v4.h"
+#include "phy-qcom-qmp-pcs-usb-v5.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 4bab804a2ed8..783b45486788 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -26,6 +26,12 @@
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-pcie-v4.h"
+#include "phy-qcom-qmp-pcs-pcie-v4_20.h"
+#include "phy-qcom-qmp-pcs-pcie-v5.h"
+#include "phy-qcom-qmp-pcs-pcie-v5_20.h"
+#include "phy-qcom-qmp-pcie-qhp.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index c9698e17b617..081ee526492a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -23,6 +23,10 @@
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-ufs-v2.h"
+#include "phy-qcom-qmp-pcs-ufs-v3.h"
+#include "phy-qcom-qmp-pcs-ufs-v4.h"
+#include "phy-qcom-qmp-pcs-ufs-v5.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 74c04cb497f8..2d2136cb1723 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -23,6 +23,9 @@
 #include <dt-bindings/phy/phy.h>
 
 #include "phy-qcom-qmp.h"
+#include "phy-qcom-qmp-pcs-misc-v3.h"
+#include "phy-qcom-qmp-pcs-usb-v4.h"
+#include "phy-qcom-qmp-pcs-usb-v5.h"
 
 /* QPHY_SW_RESET bit */
 #define SW_RESET				BIT(0)
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 60c52a55f119..fd99a5d02703 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,29 +24,16 @@
 #include "phy-qcom-qmp-qserdes-pll.h"
 
 #include "phy-qcom-qmp-pcs-v2.h"
-#include "phy-qcom-qmp-pcs-ufs-v2.h"
 
 #include "phy-qcom-qmp-pcs-v3.h"
-#include "phy-qcom-qmp-pcs-misc-v3.h"
-#include "phy-qcom-qmp-pcs-ufs-v3.h"
 
 #include "phy-qcom-qmp-pcs-v4.h"
-#include "phy-qcom-qmp-pcs-pcie-v4.h"
-#include "phy-qcom-qmp-pcs-usb-v4.h"
-#include "phy-qcom-qmp-pcs-ufs-v4.h"
 
 #include "phy-qcom-qmp-pcs-v4_20.h"
-#include "phy-qcom-qmp-pcs-pcie-v4_20.h"
 
 #include "phy-qcom-qmp-pcs-v5.h"
-#include "phy-qcom-qmp-pcs-v5_20.h"
-#include "phy-qcom-qmp-pcs-pcie-v5.h"
-#include "phy-qcom-qmp-pcs-usb-v5.h"
-#include "phy-qcom-qmp-pcs-ufs-v5.h"
-
-#include "phy-qcom-qmp-pcs-pcie-v5_20.h"
 
-#include "phy-qcom-qmp-pcie-qhp.h"
+#include "phy-qcom-qmp-pcs-v5_20.h"
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
