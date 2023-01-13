Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DEA1C677F1
	for <linux-phy@archiver.kernel.org>; Fri, 13 Jan 2023 21:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3J1nwXRmcIIJIZ9r2vzXgsyCdSmV7vJauYo09taBgY=; b=HfNrAgDiHq0T+h
	Z9An5UGEdScznVI17UTsCZB4hy4CM/dp0RWC+RRQGaa59O65lBLO8lfWD13X8jsz0IfsOxMimlNGR
	W9l8XeH9WC6TYXa2II+PKeLm5m0W1QFpkbVxK4n2oLNdFy8mQ21hRGk4Ff2d3W/UV687aG81SPQTh
	Tm0MSK0Y6YuZysMxDqedZueCmJLuBxJMJy/ZMgZRIDswovx2tLp19funKHDAJhqmTHHTWU4q0+Jwu
	r1f2lehQyrqzsthTnL55rG7mZOtn8WRr1D32uKL7+8GbSwnxaqrFTH0TFYq5HULMKmPPMzisK66c9
	Bi9MRDrt4xDywNAX1Teg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRUA-004Zdr-2x; Fri, 13 Jan 2023 21:21:14 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pGRU2-004ZYZ-HW
	for linux-phy@lists.infradead.org; Fri, 13 Jan 2023 21:21:11 +0000
Received: by mail-lf1-x12a.google.com with SMTP id g18so1974515lfh.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Jan 2023 13:21:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpyz2dI2IEWxtPn5OOZkau5aG7TwHghPb62KuzuT3OU=;
        b=PqMeNQKeM1Wd8enwt9bNqCoOzBGJiiN+Del6b8f7S/4Z+N72qacvgMiRiUWAj7mMmH
         uX5mLDbIYC2+eoSmEgDqAYpmtllkjChOVFvi4yL1IiO9PN5zXV3D7wyiDxLoAimLmXZX
         MXRQrkIQokGNq3uSbUUNV09nJMXLMM9cJ6lWw/usQcrhimIXLKB3gVo8Bmf7eAsRIYiq
         T2zm5NkW9Oc50KB/uR6IPJpsgxzyJBshfVltBlJ/VVNS69QGDWhf7Lq8tzLjVu0Bkrgj
         zxe0tVBAaQMS/fOluPjMDbZRTFNGC16u1sCqYB9c8wJ67bRrDKtGqDL/gT4r/QOHOIIQ
         JRZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpyz2dI2IEWxtPn5OOZkau5aG7TwHghPb62KuzuT3OU=;
        b=qvHnTMaUKRd/LVf2Z1i9iDMBZUZA8KNwpQjPIVEPT7373WBDwBORq5L/m3gNLUNzO0
         dUjrV2mZEBOYndP1lo/FKp27x+FelSeOq6Yb0G3t5Y26JVIFdCuQZO87rBbv7n+fhV09
         xYuGSrYSWPtMJ0o5sVLZtWXY6W8WtjCNiJgH0z2ZZ4wdD/z9mKCMIE4RfDl7kFqr03M5
         c/Ky70dfAe39j6/QmtFWQ8q97N+1ATqrIFrHcsyI//gwbuRnyGmLdnU3aW5NrvSi2a8U
         1ibqt8r7W26dkdvpGiVeDOyGZ5JA2tXQFNHgyuCsQgLJeTe3avNZ+1gk6rjFaLyQa0mk
         jyWQ==
X-Gm-Message-State: AFqh2kqp0+XXwRXdXXOzWU3ib1uRGdnoin9Wl2ytSgwXo8AbcpMjEVOL
	HvdAIjCsuN0HTZp+7Ye0Ul8Gjg==
X-Google-Smtp-Source: AMrXdXsbuIaRUET/eHo42N9cM6jodSQvlXKjhMYJ+pU3c/InTbqAwHuB1ZBuEdCszUbOtS8xLeQ66g==
X-Received: by 2002:a05:6512:1688:b0:4ca:fa75:a64a with SMTP id bu8-20020a056512168800b004cafa75a64amr24280429lfb.0.1673644864594;
        Fri, 13 Jan 2023 13:21:04 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id t24-20020ac25498000000b004d39af98b04sm80602lfk.19.2023.01.13.13.21.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 13:21:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH 2/2] phy: qcom-qmp-combo: rework regs layout arrays
Date: Fri, 13 Jan 2023 23:21:02 +0200
Message-Id: <20230113212102.421491-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230113212102.421491-1-dmitry.baryshkov@linaro.org>
References: <20230113212102.421491-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230113_132106_615692_F618FB29 
X-CRM114-Status: UNSURE (   9.52  )
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

Use symbolic names for the values inside reg layout arrays. New register
names are added following the PCS register layout that is used by the
particular PHY.

Note: ipq8074 tables appear to use a mixture of v2 and v3 registers.
This might need additional fixes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 24 +++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ee35bcd2bdb5..1f022e580407 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -102,23 +102,23 @@ enum qphy_reg_layout {
 };
 
 static const unsigned int qmp_v3_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x08,
-	[QPHY_PCS_STATUS]		= 0x174,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x04,
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x0d8,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR]  = 0x0dc,
+	[QPHY_SW_RESET]			= QPHY_V3_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V3_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V3_PCS_PCS_STATUS,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V3_PCS_POWER_DOWN_CONTROL,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V3_PCS_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V3_PCS_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const unsigned int qmp_v4_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= 0x00,
-	[QPHY_START_CTRL]		= 0x44,
-	[QPHY_PCS_STATUS]		= 0x14,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= 0x40,
+	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= 0x008,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = 0x014,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V4_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V4_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 };
 
 static const struct qmp_phy_init_tbl qmp_v3_usb3_serdes_tbl[] = {
-- 
2.39.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
