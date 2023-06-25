Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5738C001B1
	for <linux-phy@archiver.kernel.org>; Sun, 25 Jun 2023 11:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C1LIgT2jlUBcIo3/CByeaKOvmUczfFPpmVALLPQik/0=; b=HRmE0G+UeASFzz
	lW1UbAuVuk0fxUGvp4SmO1edKqFbG3jpHzmYHS76WRnrZMXojs08tKIU9PFVaFTcF322kRtDPuHpk
	5/kHydiVIXI6ZW1wMYUhZmmZOblIl8hVzl3gGWb9QonlPHqH5/W0JK41vkivsOgM8L9oZPnuNTya+
	DTRrKL7WW8OA78ghgGvZqUDFVh0taODNd7/U6p51xxLrm1WebRZavMZEMptBkoZaa41lxE8Ko7Azw
	3Gxln7+uJzFrT+Z5h+XPSGCxUAhY/QJqKLTYKoBIR4jHQ1PG7XKgHdoTk2yASJpgYKPojZsVezJPS
	1fuZmRaGQB2LA+alyS4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8Y-007w20-1k;
	Sun, 25 Jun 2023 11:42:34 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qDO8T-007w0C-0W
	for linux-phy@lists.infradead.org;
	Sun, 25 Jun 2023 11:42:33 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4faaaa476a9so769456e87.2
        for <linux-phy@lists.infradead.org>; Sun, 25 Jun 2023 04:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687693347; x=1690285347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=OLi4x4GkdUR+Cxl3aKSon63oxzruMR2edWIzhpNwIShhXIlrrdPy0zWtXXAtXZhsLr
         PUUysi6UQ3QtbqZ3oCAbKCzB/SWB2/KLKuq2oL7vTmWZXMxp3esriuzM590dlnWtBqMx
         opewwBpX0PYFKCW6aH6AEpAvNITkYzFaNejH+IFII2/yIf2XcdiddtYzY5rRXzSzoZc/
         0oPs4D7VFlMZ2qzcqD7zNKblWGvLzhJeHOZsl/H2bzNY8tsBKv7KpUC+Ve/o4ZEa4Ab6
         38unTGjS46Bf/XW8YYMpd0KHiMty+lZ8L5KfF014JM7OyKirdUiSJOVE/Z3vzlBuooAD
         mpmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687693347; x=1690285347;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S0sobRIk6tCMFCwXhjjdodtZDMDOffBV8iCIEpNnHQY=;
        b=bz7+q7RwrjEosUoLQU8JEKSmUsl2s+fQIYTVt4j60N6cX1s5QvJFm2mUangwiUoDwP
         7099SD3IaBdVMZuXPgCZaM0thcmXS0WOePb7P1ROEEX4paMProzr4pRYyJ81ya/LErD9
         HtGW4JzifJqe4TiD5IUqzrUxfCwf49tzqHbCTWQP92uHH3VtXJSyYQ00ZLnFz/Znwr1/
         0R6e7/4zzznXsu2FHTHyUMdBsWcWIBdkg9GP1/BSNP7Om7j0EgmbFAsFzFcmxGwVTxb8
         V3VtiykiG6ti2pBPOLpmoMqHBMtW2OD2ycwxKlB3jNKsVJK19oXaZBozFbAS2yEhdnVC
         yK5A==
X-Gm-Message-State: AC+VfDz0boeICBqK7JQwj0f7dbKbPKXwa7TZbmJjRzU2gETocobZ5dny
	rpMop1IMnnhv+iI9VrpfIawPqg==
X-Google-Smtp-Source: ACHHUZ73tKr2l2ETdzev4uMFqeCsXgWv4JhZjphUi7YqFNbO3jALO+Eg0LV3bds8Mw/y+uC5vo3IWQ==
X-Received: by 2002:a19:f242:0:b0:4f0:223e:7916 with SMTP id d2-20020a19f242000000b004f0223e7916mr13774505lfk.62.1687693347019;
        Sun, 25 Jun 2023 04:42:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b23-20020ac25637000000b004f87893ce21sm637323lff.3.2023.06.25.04.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jun 2023 04:42:26 -0700 (PDT)
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
Subject: [PATCH v2 04/15] phy: qcom-uniphy: add more registers from display PHYs
Date: Sun, 25 Jun 2023 14:42:11 +0300
Message-Id: <20230625114222.96689-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
References: <20230625114222.96689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230625_044229_251344_34DA2A00 
X-CRM114-Status: UNSURE (   6.67  )
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

Import register definitions from 28nm DSI and HDMI PHYs, adding more UNI
PHY registers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-uniphy.h | 33 ++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-uniphy.h b/drivers/phy/qualcomm/phy-qcom-uniphy.h
index d8be32b5317c..4be9bda37fa3 100644
--- a/drivers/phy/qualcomm/phy-qcom-uniphy.h
+++ b/drivers/phy/qualcomm/phy-qcom-uniphy.h
@@ -8,8 +8,19 @@
 
 /* PHY registers */
 #define UNIPHY_PLL_REFCLK_CFG		0x000
+#define UNIPHY_PLL_POSTDIV1_CFG		0x004
+#define UNIPHY_PLL_CHGPUMP_CFG		0x008
+#define UNIPHY_PLL_VCOLPF_CFG		0x00c
+#define UNIPHY_PLL_VREG_CFG		0x010
 #define UNIPHY_PLL_PWRGEN_CFG		0x014
+#define UNIPHY_PLL_DMUX_CFG		0x018
+#define UNIPHY_PLL_AMUX_CFG		0x01c
 #define UNIPHY_PLL_GLB_CFG		0x020
+#define UNIPHY_PLL_POSTDIV2_CFG		0x024
+#define UNIPHY_PLL_POSTDIV3_CFG		0x028
+#define UNIPHY_PLL_LPFR_CFG		0x02c
+#define UNIPHY_PLL_LPFC1_CFG		0x030
+#define UNIPHY_PLL_LPFC2_CFG		0x034
 #define UNIPHY_PLL_SDM_CFG0		0x038
 #define UNIPHY_PLL_SDM_CFG1		0x03c
 #define UNIPHY_PLL_SDM_CFG2		0x040
@@ -22,11 +33,33 @@
 #define UNIPHY_PLL_LKDET_CFG0		0x05c
 #define UNIPHY_PLL_LKDET_CFG1		0x060
 #define UNIPHY_PLL_LKDET_CFG2		0x064
+#define UNIPHY_PLL_TEST_CFG		0x068
 #define UNIPHY_PLL_CAL_CFG0		0x06c
+#define UNIPHY_PLL_CAL_CFG1		0x070
+#define UNIPHY_PLL_CAL_CFG2		0x074
+#define UNIPHY_PLL_CAL_CFG3		0x078
+#define UNIPHY_PLL_CAL_CFG4		0x07c
+#define UNIPHY_PLL_CAL_CFG5		0x080
+#define UNIPHY_PLL_CAL_CFG6		0x084
+#define UNIPHY_PLL_CAL_CFG7		0x088
 #define UNIPHY_PLL_CAL_CFG8		0x08c
 #define UNIPHY_PLL_CAL_CFG9		0x090
 #define UNIPHY_PLL_CAL_CFG10		0x094
 #define UNIPHY_PLL_CAL_CFG11		0x098
+#define UNIPHY_PLL_EFUSE_CFG		0x09c
+#define UNIPHY_PLL_DEBUG_BUS_SEL	0x0a0
+#define UNIPHY_PLL_CTRL_42		0x0a4
+#define UNIPHY_PLL_CTRL_43		0x0a8
+#define UNIPHY_PLL_CTRL_44		0x0ac
+#define UNIPHY_PLL_CTRL_45		0x0b0
+#define UNIPHY_PLL_CTRL_46		0x0b4
+#define UNIPHY_PLL_CTRL_47		0x0b8
+#define UNIPHY_PLL_CTRL_48		0x0bc
 #define UNIPHY_PLL_STATUS		0x0c0
+#define UNIPHY_PLL_DEBUG_BUS0		0x0c4
+#define UNIPHY_PLL_DEBUG_BUS1		0x0c8
+#define UNIPHY_PLL_DEBUG_BUS2		0x0cc
+#define UNIPHY_PLL_DEBUG_BUS3		0x0d0
+#define UNIPHY_PLL_CTRL_54		0x0d4
 
 #endif
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
