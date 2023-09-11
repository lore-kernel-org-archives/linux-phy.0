Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BB5BEE57DF
	for <linux-phy@archiver.kernel.org>; Mon, 11 Sep 2023 20:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnYjqLc+yPIzobq5yUSNDx4rE57pH8uDVemc20BFFRY=; b=LF7NyGIVc95a+A
	vdvDxv3lOBYjne5Ky7z99MwapxLOK1sJd42Y2XLFHh6i2wz161fg7BHAzqyBcCHlP3tcJykBDvlBk
	equkSxax9nq1n+isSFJDjvhAmNDkkcYR0g7HsyKGglLPyTwKtTJ0G8ErzrbYnQK+zWeNJ20QsVk0I
	aOBwmG2Yza22QAymcTNX8UK/Y0kC+pnbVKRixG32HD5fHT8YYSlct/NbWMA7inHNyovLTtHnpD5t9
	teWMndQYn+APt7hCT0tce6I52kOkl92RtQbgZl+Wj4iOCLobpVw2oaR/7SAoJXg8vuydjfDk2Z5Q9
	L7ek4VG0K4dZktUGXK2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngK-001IFO-0R;
	Mon, 11 Sep 2023 20:38:52 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfngH-001IDe-1H
	for linux-phy@lists.infradead.org;
	Mon, 11 Sep 2023 20:38:50 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-502b0d23f28so3310896e87.2
        for <linux-phy@lists.infradead.org>; Mon, 11 Sep 2023 13:38:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694464725; x=1695069525; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rdWY449F0A/RTXzDmh1dt7uNo/RDI4zeu37xxl7ZSOY=;
        b=dpoqXPvQBA45kNbHIP3Iw6qvRo0JuWnPzxI/fBgg/Q86xdzrNtKqqNv1kEca18+iZi
         INwx11xksp7e1w4xetJwYMThfYnJuQM1PIrZKTNjOxDrFnVUXQ6ilQa96ekPe4B920jC
         q/Im4ncnYtHIkZD5kp9VW9CyFwFmESZrKHmj/mIYIg3glwENb66q8wukWsdu5LhO4fZV
         odRGIuHc/DaTsbzfwGNS0fgDCeJB7nAXR9ImB7hpOvTy1zMX3ky+xVQOgMZZJ4jv1xT6
         XxaMdd0uk67IuVI0T9h4QrqxAFtigAeHAltFyeBJFezAIRQtSwaSBPie3dlhZeGCJ6Ik
         WHtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694464725; x=1695069525;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rdWY449F0A/RTXzDmh1dt7uNo/RDI4zeu37xxl7ZSOY=;
        b=NUDNrkRqkI81hyrublMt+LC6Pfb2BepEtVXTmO29rXxS+dF7QCOTorC5HP1MIdHwf4
         n0Vp0qIjBhvpIqzeogZYsZEN1cn9PXBJH6hQPed6l2whnwqr1GrYSXbOedS55sgbkYU1
         ShPrPsDevyj9e4PQq/skgqzZd7yYhxjFUrLsgSIshZvw8fb73/DJLMOf6LjNpdhb8CVk
         LbNUfl1ZG2oM1VccMCYtkFso4Rw74jBidDR4Fr5djV+D7EnaQjFTCYoHivZbJcYXu8vB
         l6xMmS2ftNCREx7X4R7T8AFsZHNnBgKuu41kHjZ4RyAHMZ+8EwxYM6eiOE5f0LF1Gx/R
         6dNQ==
X-Gm-Message-State: AOJu0YwelYzxvgMLXDOC86v8P9iu3zaGR1WE4YbqVrohIwsA4Xv2i8mw
	7oUXhV/RvjM/6VB0Fel2wkYNzQ==
X-Google-Smtp-Source: AGHT+IFS3Ps/QBZINkNy+m3pMW5TCDI+8POCFXSq9WwEV1GQv+p73OXGyBUTFxZ2BsVZaA53uqF93A==
X-Received: by 2002:a05:6512:3f12:b0:500:bf33:3add with SMTP id y18-20020a0565123f1200b00500bf333addmr10307462lfa.47.1694464725579;
        Mon, 11 Sep 2023 13:38:45 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b00500b3157ec2sm1447753lfh.148.2023.09.11.13.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Sep 2023 13:38:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 3/3] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
Date: Mon, 11 Sep 2023 23:38:42 +0300
Message-Id: <20230911203842.778411-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
References: <20230911203842.778411-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_133849_433000_95043DBC 
X-CRM114-Status: GOOD (  11.44  )
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

Make sure that we use only v6 registers in qmp_v6_usb3phy_regs_layout.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c      | 12 ++++++------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h |  2 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h     |  4 ++++
 3 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 02d22595f747..9c87845c78ec 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -194,14 +194,14 @@ static const unsigned int qmp_v5_5nm_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
 };
 
 static const unsigned int qmp_v6_usb3phy_regs_layout[QPHY_LAYOUT_SIZE] = {
-	[QPHY_SW_RESET]			= QPHY_V5_PCS_SW_RESET,
-	[QPHY_START_CTRL]		= QPHY_V5_PCS_START_CONTROL,
-	[QPHY_PCS_STATUS]		= QPHY_V5_PCS_PCS_STATUS1,
-	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V5_PCS_POWER_DOWN_CONTROL,
+	[QPHY_SW_RESET]			= QPHY_V6_PCS_SW_RESET,
+	[QPHY_START_CTRL]		= QPHY_V6_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V6_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V6_PCS_POWER_DOWN_CONTROL,
 
 	/* In PCS_USB */
-	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V5_PCS_USB3_AUTONOMOUS_MODE_CTRL,
-	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V5_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
+	[QPHY_PCS_AUTONOMOUS_MODE_CTRL]	= QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL,
+	[QPHY_PCS_LFPS_RXTERM_IRQ_CLEAR] = QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR,
 
 	[QPHY_COM_RESETSM_CNTRL]	= QSERDES_V6_COM_RESETSM_CNTRL,
 	[QPHY_COM_C_READY_STATUS]	= QSERDES_V6_COM_C_READY_STATUS,
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
index 7c16af0b1cc3..0d0089898240 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v6.h
@@ -8,6 +8,8 @@
 
 /* Only for QMP V6 PHY - USB3 have different offsets than V5 */
 #define QPHY_V6_PCS_USB3_POWER_STATE_CONFIG1		0x00
+#define QPHY_V6_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
+#define QPHY_V6_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
 #define QPHY_V6_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
 #define QPHY_V6_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
 #define QPHY_V6_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
index 47cedb860fef..08299d2b78f0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -7,6 +7,10 @@
 #define QCOM_PHY_QMP_PCS_V6_H_
 
 /* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_SW_RESET			0x000
+#define QPHY_V6_PCS_PCS_STATUS1			0x014
+#define QPHY_V6_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V6_PCS_START_CONTROL		0x044
 #define QPHY_V6_PCS_POWER_STATE_CONFIG1		0x090
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0x0c4
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0x0c8
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
