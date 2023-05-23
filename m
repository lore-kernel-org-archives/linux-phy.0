Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36A59C7EE26
	for <linux-phy@archiver.kernel.org>; Tue, 23 May 2023 13:42:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oU0d2/HsT9SaHh+qccLdG1cmbp/a2fb96TlkTzbsIt8=; b=zLBCv5g+40Co/9
	yUwb1yKcI7/3Q5na99IJEHhamVLKR/pOB6LS0GwZZKuwuhIxoHbQP7/RZq5OfAn+yhVnsoy1WQBcC
	aXJKd9xeEInIDk+4enDm1tvf7hQq1ko6A/0FX1Ji4uLVNcjGzOlR1USgl4Kw+z82axJdqXO1+XUEd
	4EyvVlMKxz47x9P1Y6meU3MM5fAleWDLCPHxIdOAdXSqkSNZI/UGYkHzF6Sl2sxtwpb/hUbtbo9ag
	fWq4wyL+3bzeywV9WiOVnW06LV7+Ykh8dsIDl+SVsGOv/Hc3fsXN9V2+NJ73R24DssDAJWbBn7wXF
	TcmABjAV0kJo/hcvB3OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHv-00AOlf-2m;
	Tue, 23 May 2023 13:42:55 +0000
Received: from desiato.infradead.org ([90.155.92.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1SHu-00AOkw-1e
	for linux-phy@bombadil.infradead.org;
	Tue, 23 May 2023 13:42:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oekQjRFBIrAygoTditdy5x9KkvJ1geHU7IHNMEp5myg=; b=JmeppnNCAKtRn/NAZ3xTsVbznV
	+ga08NBEdGn6JITrOZanQlDIrwpjYEhqKYRAvR9YKUJ/jVVbgLAPExehsQtjn6rCizVZWF8K1E9II
	PUk5aCBPEvg0C6X0ovGHvEdud28w9cWH9n9gCdCKqQYLrTOe0l1kDGB5HozxpWQ/f54HL1AIErjZf
	7hxVWNiuHaDzWh/FdBz7uiJHrevXTN84qBwaAIR59mIHpNxDjXOd674v29SRG5bpgpjjFrtsFDPel
	nLvZXyfXiqpFek/FmlFaSmk+ULVpzLnlC+48Y99fLtbroHEOvMpMwbJ4y7PX/W8sr/BfG7Aoo0f5f
	ZxydY5DA==;
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1Qvu-003VxJ-0c
	for linux-phy@lists.infradead.org;
	Tue, 23 May 2023 12:16:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f3a611b3ddso5847147e87.0
        for <linux-phy@lists.infradead.org>; Tue, 23 May 2023 05:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684844101; x=1687436101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oekQjRFBIrAygoTditdy5x9KkvJ1geHU7IHNMEp5myg=;
        b=pER6DvtBYvZcUs9mr3h/rYIfKF+AF+ERIBYWqsz6nI0gS+92VC8E1OPK6wBpmdffpK
         qXuQJu3cfeUBwxNE4szc71laSxqNr67vTf7hruSgG60yHyaBCebJtoCCunLjOfTMfdU4
         B+Ux9+q9H8JBz7NR+0n2nQi92GTamyLIjaLkZLE6S+Vc6Qgc6OmTnU/00l4g8w0DvEtg
         8ABQPtHJX7XRhelM/TroNxr9hwxl76o+1DVW6o0UzwGYnwPh7pOv3NvjQGszUOLr3AyH
         8wsxw162gIPalyc0EE3JyG3VLlDfOQGpndDi3mfxvBiGN7A9KZXC1NoJ73FUVGmLQE9r
         sMGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684844101; x=1687436101;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oekQjRFBIrAygoTditdy5x9KkvJ1geHU7IHNMEp5myg=;
        b=Z1virvf/67c1RAygrn8klISDE7LLQGbNedJTmD+RqeWLYRReBZHp7R4blwlUJKfkrp
         yhLl+Dd9Xt2E+fspBajfX9Aof+nDsVpG95K9j1TryijfrskLeL6CPwzjnpLCxl668oAo
         9ofYvkVS3zD5rIhb7/pdQlkwO1E3/MOe9jubub66hPgC5x+54MOhVcX5E4+EmT7lbZTS
         o6dNAcKubz9RQp9qeZo1D2PlW9QzoBGrTkroOp6lEJdwmDIAamvm7Hdn2UUHT+UBclRM
         CRbWsJoKd4WhHfKCrPHnUw64MrevYiVxuaCc6kcJhTew2tT71V5JIfYR6TFdqG4oZY3h
         FHEw==
X-Gm-Message-State: AC+VfDyXKTSczcs7U6HQP4+bbhcOOs6D43Z5CrzNRTWiPiXmg07AGD98
	06NjAekUdms2zL20gUhUsrIExw==
X-Google-Smtp-Source: ACHHUZ5QKmn14LzKukoTWcZuPZoMzzO6QtSUJ9uk65D6dYNPL8VebCPjC+8oLciKQFXnMuHXWqd+Aw==
X-Received: by 2002:a05:6512:1086:b0:4dc:8049:6f36 with SMTP id j6-20020a056512108600b004dc80496f36mr4982158lfg.1.1684844100968;
        Tue, 23 May 2023 05:15:00 -0700 (PDT)
Received: from eriador.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2531a000000b004f160559d4asm1319616lfh.183.2023.05.23.05.15.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 05:15:00 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Stephen Boyd <swboyd@chromium.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 05/15] phy: qcom: apq8064-sata: extract UNI PLL register defines
Date: Tue, 23 May 2023 15:14:44 +0300
Message-Id: <20230523121454.3460634-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
References: <20230523121454.3460634-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_131606_410218_CD9C3B89 
X-CRM114-Status: GOOD (  11.35  )
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

The "uni" PLL is shared between several PHYS: APQ8064's SATA,
MSM8974/APQ8084 HDMI, MSM8916 DSI, MSM8974/APQ8084 DSI.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-apq8064-sata.c | 23 +-------------
 drivers/phy/qualcomm/phy-qcom-uniphy.h       | 32 ++++++++++++++++++++
 2 files changed, 33 insertions(+), 22 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy.h

diff --git a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
index d437a249cd73..caabce5214b7 100644
--- a/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
+++ b/drivers/phy/qualcomm/phy-qcom-apq8064-sata.c
@@ -15,28 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/phy/phy.h>
 
-/* PHY registers */
-#define UNIPHY_PLL_REFCLK_CFG		0x000
-#define UNIPHY_PLL_PWRGEN_CFG		0x014
-#define UNIPHY_PLL_GLB_CFG		0x020
-#define UNIPHY_PLL_SDM_CFG0		0x038
-#define UNIPHY_PLL_SDM_CFG1		0x03C
-#define UNIPHY_PLL_SDM_CFG2		0x040
-#define UNIPHY_PLL_SDM_CFG3		0x044
-#define UNIPHY_PLL_SDM_CFG4		0x048
-#define UNIPHY_PLL_SSC_CFG0		0x04C
-#define UNIPHY_PLL_SSC_CFG1		0x050
-#define UNIPHY_PLL_SSC_CFG2		0x054
-#define UNIPHY_PLL_SSC_CFG3		0x058
-#define UNIPHY_PLL_LKDET_CFG0		0x05C
-#define UNIPHY_PLL_LKDET_CFG1		0x060
-#define UNIPHY_PLL_LKDET_CFG2		0x064
-#define UNIPHY_PLL_CAL_CFG0		0x06C
-#define UNIPHY_PLL_CAL_CFG8		0x08C
-#define UNIPHY_PLL_CAL_CFG9		0x090
-#define UNIPHY_PLL_CAL_CFG10		0x094
-#define UNIPHY_PLL_CAL_CFG11		0x098
-#define UNIPHY_PLL_STATUS		0x0C0
+#include "phy-qcom-uniphy.h"
 
 #define SATA_PHY_SER_CTRL		0x100
 #define SATA_PHY_TX_DRIV_CTRL0		0x104
diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
new file mode 100644
index 000000000000..d8be32b5317c
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -0,0 +1,32 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2014, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef PHY_QCOM_UNIPHY_H
+#define PHY_QCOM_UNIPHY_H
+
+/* PHY registers */
+#define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_SDM_CFG0		0x038
+#define UNIPHY_PLL_SDM_CFG1		0x03c
+#define UNIPHY_PLL_SDM_CFG2		0x040
+#define UNIPHY_PLL_SDM_CFG3		0x044
+#define UNIPHY_PLL_SDM_CFG4		0x048
+#define UNIPHY_PLL_SSC_CFG0		0x04c
+#define UNIPHY_PLL_SSC_CFG1		0x050
+#define UNIPHY_PLL_SSC_CFG2		0x054
+#define UNIPHY_PLL_SSC_CFG3		0x058
+#define UNIPHY_PLL_LKDET_CFG0		0x05c
+#define UNIPHY_PLL_LKDET_CFG1		0x060
+#define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG8		0x08c
+#define UNIPHY_PLL_CAL_CFG9		0x090
+#define UNIPHY_PLL_CAL_CFG10		0x094
+#define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_STATUS		0x0c0
+
+#endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
