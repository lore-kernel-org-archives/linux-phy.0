Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F0C7C43219
	for <linux-phy@archiver.kernel.org>; Fri, 30 Sep 2022 11:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ezf4+u26F8KWr/Bg+mNybOB+BpD7uiLnXUwMIMezttM=; b=FPPuY7OOfUGkJs
	4JIS3rGlWGjjSkzciswjM+xbvdlObWN/PdIYEACisOeMsBz9hUHPySwEfmY6OMwp4B0qWqtNbEpoC
	7coU+ui6jAsKWgI+rednLifdjgTINV9DGXQwscGqEFXLLAaCLSH2LNsNKbe38AMoECK367hQmT6NK
	sYyapcdiBl600Dyxshw8bj3tI2iaUlElsVsQXGa6T2cKfORI45KDkjSXUS1VxUkGkzWIW+bfi3eSD
	uU9pJiAFeWgR5ljT7OCzkFAEQJVvNTE6DBlngla7x7CAq3qBqrE3wG2T//O6AYc+NGKC9OyfmuD+3
	2MDRDku2svgEI4k3S/IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED8-008sYz-Db; Fri, 30 Sep 2022 11:29:42 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeED4-008sVS-GH
	for linux-phy@lists.infradead.org; Fri, 30 Sep 2022 11:29:40 +0000
Received: by mail-lj1-x22e.google.com with SMTP id j24so4478243lja.4
        for <linux-phy@lists.infradead.org>; Fri, 30 Sep 2022 04:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=xzp1n+xXMR0oqgZ0eki3yQt/UeyORWIWI7FE7XVObuk=;
        b=unFiefTZF8EyuLh50hARNTELze3wWqOL0aelmZMEzJEDQLjwMey7RO4IOi/BJeUT+S
         /IwpbqtWujYeDC8HpL8DUpdOJxKkzo86nl17KYEZmwmr9kyhnAQ1HYnbB+ViWulhxD/0
         ncCesPE9nGwuE2ewztzCUGkS1wlyu1cI07XnBnFlPTDPKx/IvjZvgDBOtpYKQU+0dCo1
         k+ZgWqWt4QDohk9FQhrxHSTdTduOiuYMmvssiIWSRBmNkN4Ax7jnw8aHUVDgb7gGCQ7k
         zuFagEDRIj1SxYZs0hQHxxET+chc/C9f1iKuCt3scxgbBJMVtLJuX7ckF7sAJHTKGN9t
         Xirg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=xzp1n+xXMR0oqgZ0eki3yQt/UeyORWIWI7FE7XVObuk=;
        b=XCImQ1DDNrIkFp+3ttG2wNfXudajCSrCCe/AqBqb/DVdS+HRM2BuAfG9/3nPb4hb8r
         KNl46froWDrCEgCv9TyBk1n7eWQmD8p0ukbvRgeqjyVTN00iib/0aow+cJ8Yfy9sn21z
         oc+aAB6hlVR5iUmz4jGw797npsYa5VAohcWAT3C7W7geWgUug+eSkol8jlHH7km7Vkdx
         83f4wMvVsy/LaECyWzYWsGStxaYb7MmgQ57n2dSxdkuAq0G2iOU+mOjVR3E/HsP0rRoy
         Xhx7aB4f0QuJLYZ3QzU8aMpj+F1Q5akdtB8iDF8/d1UnRIaz+BmyFEIt7thaTfIkcGJE
         d3EQ==
X-Gm-Message-State: ACrzQf33IMDXg6IA3f/Sb5sEV8GofuP2+30rcKt1vZ0HqyTGyvDemjO8
	R0/X33ruViv7dX8GJTTheMkV0g==
X-Google-Smtp-Source: AMsMyM49+iQJ0gqA9WGzZo6uAWGfSefawXObvTNZdHdC2UHVrLAqUuv+BtbQGFqM7lQeFRhUfMxXTg==
X-Received: by 2002:a2e:b5d7:0:b0:26d:98c2:6ad2 with SMTP id g23-20020a2eb5d7000000b0026d98c26ad2mr2833581ljn.215.1664537376992;
        Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v18-20020a197412000000b0049493c14b17sm264672lfe.181.2022.09.30.04.29.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:29:36 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 12/12] phy: qcom-qmp: move type-specific headers to particular driver
Date: Fri, 30 Sep 2022 14:29:26 +0300
Message-Id: <20220930112926.638543-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
References: <20220930112926.638543-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_042938_604806_8A380321 
X-CRM114-Status: GOOD (  10.39  )
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
index 0561df216fb1..3ae02a2287fc 100644
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
index 48b49719b7a5..e73442174997 100644
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
index 064435c1b78d..9bfd5b473bfd 100644
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
index 2e3ccf3da0e4..fa955c11a10f 100644
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
