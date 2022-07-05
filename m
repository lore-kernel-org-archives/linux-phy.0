Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63049C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 14:59:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cs5dztly778bLulHBkmcbMuyySSsDEB44QHS7I4l+4w=; b=wvqGZmQo0+9Bwu
	NfaQ6OHGoLtY9LZ998J90QZGj5ikUyzIWfJqyeqh/pTc4jN/aj7t1JDUE81ldN1LMXY+v9x5vsvM5
	f7UvRt+hXXcEPpEfjz5zfaOWfoqkm+UjeJ+wm06I+R64azN02uKwMLX33guDV988xItoqLgVCuBRs
	uX22ZhjqjxtkojAOHdG2BjuGyVIgU/TQceYPakxTeFlZMtxIUZYkUd10vMXrDiEXk6YdR3qFanidi
	reUpwaFYvOcffjCewWbXVfLkl92w/Rol4cXd0HFjbmHGDgr2VnnSU+lesumrfDWJWSpOwyIhNOOFo
	bG/PfvClnjfBgKzO33mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8k0y-000zTj-MM; Tue, 05 Jul 2022 14:59:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fOY-00H219-68
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=r40O6REgM4H+xDkzuTHsv/xRso8J5tjXKsdP8vEmFGA=; b=FQml3DNFqsZ1PlAmrInpRZN42p
	hKAvPXYXNn3WDUCqUFVDWOxMtYa6t6jZZmxokSHl8h5uM6WAnTvysNeWaSPZFialg8TWi+KB1yKcq
	4+u62mVuN5ydR8xlGSSCCLAQFsrB0KWsmwhRndKH72Htujganncfd2I5HvasO84trRpQpnMhNwbPZ
	Gli+iN6y9RObyHD0rZpYDtcxbfnH/dnDxvaGrrRTupKjhwqkKOE49iQVhO2C1nKQRJYIts8w/1cHR
	+vyrWfYsGcMrF25TmuC18TBgtdf6WperXjSaK/A8VYL/E/gto+QYL+/xGgnr1WUzA7DIZaG4HUfwz
	G3zW6qjA==;
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8f5t-00HUyW-UV
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:44:07 +0000
Received: by mail-lj1-x22f.google.com with SMTP id n15so13793403ljg.8
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 02:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=r40O6REgM4H+xDkzuTHsv/xRso8J5tjXKsdP8vEmFGA=;
        b=UPADZUSSp9NYZUnWo3/vOt3diwXiegfbIVCz4XFyYNek71jRBwAnTeLB3U/ykjg495
         6ASimyuWLXR++OkZIxXhTFCwbc8sshRpYdCbgpnbt9MjzJMntpxfHPgfD9sOYCmQ6wKU
         oYYRJTaiRhkbJliTxm7NiURciMELHQRZSJTLWwL5t2bNQLee028WpmtGbqiNxq27l+NA
         9PmeIOnV/tBYYjLxsTlDuaUqSOhCBAxQ8PFnZNz5E0CBZkMddzPEc3MmxuX97F9qpwzY
         cnMedtdvhq8QpZ3oQkKvt0uEc9cPkK0J6RPIrDlAv8eCoDix9swPSOxKBm4/tVNnw9bj
         FI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=r40O6REgM4H+xDkzuTHsv/xRso8J5tjXKsdP8vEmFGA=;
        b=7e49R8zAXvR+4gza4kU3+T2joNlgW9HZo61MtiZ0IVAmJWDCrRzQMdSOxwtnT60JPd
         PWfMJ5cz/7JEbURZvMq4gIMXWQWK5JMabQcg+ahqjECy+JcynwlRAQnOXReJl+Xmo+HM
         mo9uqTLNG/hbEpCy23axMqSxOvAlZIBqzoapTlfg8EeiwY+W0XecBmDPZdh+N4MHBnAZ
         zk5127CB7G0nSePvEvwqEHYaIH34HHmhNwcITR8OSnyIloqAyQa0dALhtUjk3iyu2QbD
         LKyR9Nk7X/37lQLhndTkZ1qT5BKsqtDf+Wn0CD32FcI6YaadveR7wstVeyzK884zq1/s
         Gzew==
X-Gm-Message-State: AJIora9AnvsogH8y6VkQ0xwtJ1z0uilekGsbNUzGZnbAd7bnr6SPlWcc
	GigRgk1U5kQaMcvW0s9QCa95KA==
X-Google-Smtp-Source: AGRyM1vqo8NHOykUwtBSlALcOjZguUjofZb0obWika6f0RP6QzX1iMFQTWeiDVIDobmE22bSaYC7GA==
X-Received: by 2002:a2e:92c6:0:b0:255:84cb:4eea with SMTP id k6-20020a2e92c6000000b0025584cb4eeamr18611013ljh.204.1657014223877;
        Tue, 05 Jul 2022 02:43:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f7-20020a056512360700b00482f206b087sm491683lfs.39.2022.07.05.02.43.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Jul 2022 02:43:43 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v1 27/28] phy: qcom-qmp-usb: replace FLL layout writes for msm8996
Date: Tue,  5 Jul 2022 12:43:19 +0300
Message-Id: <20220705094320.1313312-28-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
References: <20220705094320.1313312-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104404_997626_783EB331 
X-CRM114-Status: GOOD (  10.34  )
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

Other PHYs tables directly reference FLL registers without using
reglayout. Define corresponding registers to be used by msm8996 PHY
tables and use them directly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     |  5 -----
 .../phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c  | 10 ----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 10 ----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h    |  7 +++++++
 drivers/phy/qualcomm/phy-qcom-qmp-ufs.c       |  5 -----
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 20 +++++--------------
 6 files changed, 12 insertions(+), 45 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 2335658affdb..3f2c89ffee21 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
index 4b6ddc7ec862..4517f05fe45f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie-msm8996.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -147,11 +142,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
-	[QPHY_FLL_CNTRL1]		= 0xc4,
-	[QPHY_FLL_CNTRL2]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_L]		= 0xcc,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xd0,
-	[QPHY_FLL_MAN_CODE]		= 0xd4,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index fb41c90ed96a..59ba40c39ab3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -154,11 +149,6 @@ static const unsigned int pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_COM_START_CONTROL]	= 0x408,
 	[QPHY_COM_PCS_READY_STATUS]	= 0x448,
 	[QPHY_PLL_LOCK_CHK_DLY_TIME]	= 0xa8,
-	[QPHY_FLL_CNTRL1]		= 0xc4,
-	[QPHY_FLL_CNTRL2]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_L]		= 0xcc,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xd0,
-	[QPHY_FLL_MAN_CODE]		= 0xd4,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x174,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
index 3fc3c0562d16..9593277cbd3a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v2.h
@@ -24,6 +24,13 @@
 #define QPHY_V2_PCS_LOCK_DETECT_CONFIG3			0x088
 #define QPHY_V2_PCS_PWRUP_RESET_DLY_TIME_AUXCLK		0x0a0
 #define QPHY_V2_PCS_LP_WAKEUP_DLY_TIME_AUXCLK		0x0a4
+#define QPHY_V2_PCS_FLL_CNTRL1				0x0c0
+#define QPHY_V2_PCS_FLL_CNTRL2				0x0c4
+#define QPHY_V2_PCS_FLL_CNT_VAL_L			0x0c8
+#define QPHY_V2_PCS_FLL_CNT_VAL_H_TOL			0x0cc
+#define QPHY_V2_PCS_FLL_MAN_CODE			0x0d0
+
+/* UFS only ? */
 #define QPHY_V2_PCS_RX_MIN_STALL_NOCONFIG_TIME_CAP	0x0cc
 #define QPHY_V2_PCS_RX_SYM_RESYNC_CTRL			0x13c
 #define QPHY_V2_PCS_RX_MIN_HIBERN8_TIME			0x140
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
index 701b03a13b17..7ab129cd739b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index aa7e193f2206..ff1e10bfdea3 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -122,11 +122,6 @@ enum qphy_reg_layout {
 	QPHY_COM_PCS_READY_STATUS,
 	/* PCS registers */
 	QPHY_PLL_LOCK_CHK_DLY_TIME,
-	QPHY_FLL_CNTRL1,
-	QPHY_FLL_CNTRL2,
-	QPHY_FLL_CNT_VAL_L,
-	QPHY_FLL_CNT_VAL_H_TOL,
-	QPHY_FLL_MAN_CODE,
 	QPHY_SW_RESET,
 	QPHY_START_CTRL,
 	QPHY_PCS_READY_STATUS,
@@ -142,11 +137,6 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_FLL_CNTRL1]		= 0xc0,
-	[QPHY_FLL_CNTRL2]		= 0xc4,
-	[QPHY_FLL_CNT_VAL_L]		= 0xc8,
-	[QPHY_FLL_CNT_VAL_H_TOL]	= 0xcc,
-	[QPHY_FLL_MAN_CODE]		= 0xd0,
 	[QPHY_SW_RESET]			= 0x00,
 	[QPHY_START_CTRL]		= 0x08,
 	[QPHY_PCS_STATUS]		= 0x17c,
@@ -318,11 +308,11 @@ static const struct qmp_phy_init_tbl msm8996_usb3_rx_tbl[] = {
 
 static const struct qmp_phy_init_tbl msm8996_usb3_pcs_tbl[] = {
 	/* FLL settings */
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL2, 0x03),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNTRL1, 0x02),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_L, 0x09),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_CNT_VAL_H_TOL, 0x42),
-	QMP_PHY_INIT_CFG_L(QPHY_FLL_MAN_CODE, 0x85),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNTRL2, 0x03),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNTRL1, 0x02),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNT_VAL_L, 0x09),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_CNT_VAL_H_TOL, 0x42),
+	QMP_PHY_INIT_CFG(QPHY_V2_PCS_FLL_MAN_CODE, 0x85),
 
 	/* Lock Det settings */
 	QMP_PHY_INIT_CFG(QPHY_V2_PCS_LOCK_DETECT_CONFIG1, 0xd1),
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
