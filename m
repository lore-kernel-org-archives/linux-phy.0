Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF536C6FA92
	for <linux-phy@archiver.kernel.org>; Wed, 28 Sep 2022 23:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/CeL7n9pz7w1/D67I1KuF0b+cz55GeiRGMx5kFT9vM=; b=1OLjronlHee7Kn
	ixG1JF82kRSeRoGs0HDVB11ZTVNonIzj36k0gky3tqkzDX7hIMnj1L+jBxH6z8BczrltNYp5YbI8V
	/SYs/a9R3qTH4n+U2lbHLbYj8lhq4eVpybkZZ9kDa38gd6B96teFQXSPcQkuPFx5IGYBxkJN+/Q8v
	84bfeWLYmKlL4rOFtR9L4UzxuCX14UYkDYImIGHOS21kEWEZoFSie8KBTGT064bEWk6t7byoQ/zjC
	OeI0G4eGJhQ0D5w5mvW5HpK5RtAJ1z4HzKxlzvFR0Tuw0D0Uj9JIhew6q2t8lACOIou60kkexoTWy
	+e/Qis8Z68qrakAaHMCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCO-000cNl-DI; Wed, 28 Sep 2022 23:10:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odgCH-000cKE-N6
	for linux-phy@lists.infradead.org; Wed, 28 Sep 2022 23:10:35 +0000
Received: by mail-lf1-x12c.google.com with SMTP id j16so22580977lfg.1
        for <linux-phy@lists.infradead.org>; Wed, 28 Sep 2022 16:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=bBleQqpHTorXjkfdMp9ADhfccQLxPaCPN1KQqTkgy1s=;
        b=Q7HJObxn1LBEh0NWEishjQdgx9kVPgzOyR167X72itC8hBeLjFngX6q2LdZ2B1NS0F
         v8SjyhRTLm8S8YLtjPYSgBj4idpE7xiX1P81C/ZfBoubWFMAFvLLGqUzwYcsb3/H5FrJ
         oLzJ2xmcH333phHqb2DmOHgFCCA3B7jTPLWrPjs2uNzuGWRe2NMYTeZtFKxOJbyxgkZQ
         99EK5xlVJOounnNlrxNGHQZ02o1PG7ulTJF3KVHI4eomoqWEWYCT9u7iPyGOUpLbLJfA
         kdaGXVRaTWlr/5ayGCV4n4mmVtnUny2O7WeYinxjot4O1LDPWCKPmIlv+1h/sMfz7KxD
         btWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=bBleQqpHTorXjkfdMp9ADhfccQLxPaCPN1KQqTkgy1s=;
        b=wQAN8Ms4xxcId8qjC94K08Sc+ziyOeYpbLi/Jq2W03DY8PLoa0Xo7ji8u9h6RWankZ
         3a5lM1sQoNqMnIV65xdtUM96K4BO5HSgnyIsEQ/HHDh6AXXc1Mrh9Ps/TSfLW/XANcMd
         bIKvntoCuccWhMudY2o89caF2Djhc7vg6ISr/lU4aaIrq4f0/qDq4vZ24oKXGa357tM+
         QfAN2BFTOotLXHsRqtjau6i6TbAFvuMLZE2bqqo6+Zp5ZOewJA0aXnBMuVmnE+iiSFdR
         U9omPVTG4R2XOrNjnivjsT7MiQ7vrmIvDY5l0lLbTdrmrOQhIMXz0LSqAnoPQ0GxfXC4
         4HBw==
X-Gm-Message-State: ACrzQf0iQgP/GS9UKCazCqVz1p8KUO6c0dBjRhZ4zrth5qk6X9eIxU64
	vdqo+Uyv1A4JrO/mKf0NUvMFZA==
X-Google-Smtp-Source: AMsMyM7J6q1FxgW51WqE1zvLRf3Qszwqpbf7aqsoKaQ6fhfMZwl4J6AfjhAJVr/y8xuL0bV59oZSxA==
X-Received: by 2002:ac2:5317:0:b0:4a1:abe3:93c3 with SMTP id c23-20020ac25317000000b004a1abe393c3mr102174lfh.527.1664406632336;
        Wed, 28 Sep 2022 16:10:32 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o16-20020ac24950000000b0049d5733fb3fsm597587lfi.212.2022.09.28.16.10.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 16:10:31 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan@kernel.org>
Subject: [PATCH 18/18] phy: qcom-qmp: move type-specific headers to particular driver
Date: Thu, 29 Sep 2022 02:10:14 +0300
Message-Id: <20220928231014.455201-19-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
References: <20220928231014.455201-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_161033_773575_DE51B515 
X-CRM114-Status: GOOD (  10.12  )
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
 drivers/phy/qualcomm/phy-qcom-qmp.h       | 14 --------------
 5 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7cc53765b300..924588c09a19 100644
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
index 688d9eb78a82..73fd5af50c85 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -23,6 +23,12 @@
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
index 593173167b8a..709b3e511bcb 100644
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
index 1d1cfcfd7c52..e3273afe7920 100644
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
index e6f327acbf19..08a3eccaeadc 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,28 +24,14 @@
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
-#include "phy-qcom-qmp-pcs-pcie-v5.h"
-#include "phy-qcom-qmp-pcs-usb-v5.h"
-#include "phy-qcom-qmp-pcs-ufs-v5.h"
-
-#include "phy-qcom-qmp-pcs-pcie-v5_20.h"
-
-#include "phy-qcom-qmp-pcie-qhp.h"
 
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
