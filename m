Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28B98C10DC1
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dVcF+mrv3rWNk/TMDC4vIiFFOPLH29OYBTKjuk+1Chs=; b=cF0HfRiVakys6F
	G4G4uDyFB4NZh382VOUyn/aK61yhgsWbx7SJ9N7paiE9dU9WnlGZBY9DxecHeag14A2uo3UeNZaWr
	y4LhpFGsBZ3KC9QcGYceu/C5DjNplaHZ/3IuKvd6c2izthRMPGm2TMMj2ORv0CZ08Gm+lC4CzdTxJ
	7GznpQe1mwmGURhklKjw3ZoMhsf8zV51smSdlv26rTYA7o3gE5Ozku3ptyUlJ8/AWlPAt5B6xVt7F
	w32s8bI24ccZIqoCX3UV+bkS74i9MNHXST14vVTnClNKeWCeNNjJly4BZtGajR52939iTpIR3STF8
	l7ldiexgRForbEyISx7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8gD-004P29-2K;
	Mon, 04 Dec 2023 13:08:09 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8gA-004Oul-10
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:07 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-50bf69afa99so1223843e87.3
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695282; x=1702300082; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fFaNDvAciUYjYjthOi5eKX9jiH9kiUBWf4wtlJjm6Ro=;
        b=uDl9t8yHJ/FLx0U+a3AHzOYZQSa7x51RRrM6Vn6b7944gvkMoXmXCPKIbik90jNxvG
         zI0UZVvCMevYn57HF1drPy1cGymHkPQi5Zy7r3wdMYvapYziBRIJ5CWUMjk66XQsprmG
         cAc8i4sQaF4kAWYP/TNrgD5NscV8QGCxPUqbPpl8htc68XNPwdjWi5SU8mOvQNu/mRUq
         JU01H4py2tVMHEJNfQvHyGIrPy5Vc49PHdOUbzwWhLAq0tDT+k7tEUKyT5QqolEAJl2u
         WXYVjYA24GR/NimSl/6qeHuUDSMsMy+0FggP3qrUNH+2ro1IihrOwJJo4J0xnjJrT+Hd
         XKQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695282; x=1702300082;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFaNDvAciUYjYjthOi5eKX9jiH9kiUBWf4wtlJjm6Ro=;
        b=M8K8XkvdeOLA98WtrGMr+vINoY1SDSDJ+ESICYleW6mYU+3t7n7xQ1D1cCgeHLA/bF
         EjbP9eHUyh9bUkJbjWYLH9pxCQvAsU+1uwzGOa24viKm1SJOsdnE+tNHAf5uKyNraZfe
         sTXgvVjRoxHzKFcNeqvCv9kRvjuBLBQUZHmeqbR/hGNqeQg6kBN0uioSm7i55ztiyKnN
         spDv2VRQSLBXpt1XberboWYC36zi6mb04f04LTXJFoEFjmvNWg+KdyQHt6kluQ5gIZkN
         cUHu2oz/jDqXz1qr84xv2qKKbea6gBGChpB2ovyRLzKsunB5IPUk24PoPrRVVdto9qKr
         0AFQ==
X-Gm-Message-State: AOJu0YwSY2Ydw6o9wfd+coCAjw6D+H8WFsxnQk6CKIqzauqTh9+u/iph
	Uk58bWXMMOQgIbPBXCOAGRHBzUVKRaiJP5b3umE=
X-Google-Smtp-Source: AGHT+IGSMQhmuuR24eEKa3Yf6WfYllNbOcdr0y63lmh5viDT4S9MLSqk1Cwbe6aM71GCsQJ8cWpCoA==
X-Received: by 2002:a05:6512:3b09:b0:50b:e60f:4baa with SMTP id f9-20020a0565123b0900b0050be60f4baamr2186715lfv.47.1701695282584;
        Mon, 04 Dec 2023 05:08:02 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.08.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:08:02 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:41 +0200
Subject: [PATCH v2 7/7] phy: qcom-qmp: qserdes-txrx: Add v7 register
 offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-7-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4572; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=DSABUphv7ANB5Lh18JmO/Nn4c0WU8ibscamqugkwAE4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8n73wEcEj219yAts+JXiqh7cb9UyOalp/Sx
 NrlXUnvMoKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PJwAKCRAbX0TJAJUV
 VomXEACFgS/Yn56v/EvRarO7w86BRhpfJkdC1P/7PlkjHrw4VACEkM6uP4FzXmoyMubetibLZLx
 cG0Ply6pniwF9SrEBIAGr0R9PNp+oMb9vJ2zFEJCfpQAFLMC8hc4p3B9aDGe23fLK6b1V8mxb4H
 hs7O/3HSzX+ZW48k86jlH6YccsbD+2fnNOiA2qcRaUp061tvWvxrYne0P0TgoDIT6DKc/xE7xbQ
 l24HKBsfx0JjK0tiK13jfwDflHtrQ+Twt8LFeo5ze8+1Dp7tWbZ/y73Xf6J8f2cRf5pECCzGam5
 gdvE7uhGu/Mo6m+kYbi4/pIhI6oE5jEQqgTsd06z7zODcU1d1Xi2gUXMS4Pw99jAQN5s1cvfzZC
 axO4OLVnhLex45mqW0phLs3753wT8wi45WBLyo1xTYLFiCv74hv1hqRg6j7daSi1vvB+xEEqeUh
 zZmJ/Vw/FGY4PKmjbcvL9QB4OtEkPNPc2+iuhSG5PV162ishn+/75yh9Dh0g9F1g3h09l4mZlsY
 4jpI/3waQAN60V+79TPto8p3Yswl+sv/9dPkDlu+huzF79FSqOXeuTaktrUWB3OyHMLuanHAewZ
 26J74DDfFNcSViO1UXw4wmdQLtoXkqCNQmyC4QQXP831M1IH1oQ7z/hi3WM99J2x68IKl0TOHTS
 9tN2GkEP/Mib6zA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050806_359966_5AF3CAB2 
X-CRM114-Status: GOOD (  10.58  )
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

The X1E80100 platform bumps the HW version of QMP phy to v7 for USB and PCIE.
Add the new qserdes TX RX offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h    | 78 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 2 files changed, 79 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
new file mode 100644
index 000000000000..91f865b11347
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V7_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V7_H_
+
+#define QSERDES_V7_TX_CLKBUF_ENABLE				0x08
+#define QSERDES_V7_TX_RESET_TSYNC_EN				0x1c
+#define QSERDES_V7_TX_PRE_STALL_LDO_BOOST_EN			0x20
+#define QSERDES_V7_TX_TX_BAND					0x24
+#define QSERDES_V7_TX_INTERFACE_SELECT				0x2c
+#define QSERDES_V7_TX_RES_CODE_LANE_TX				0x34
+#define QSERDES_V7_TX_RES_CODE_LANE_RX				0x38
+#define QSERDES_V7_TX_RES_CODE_LANE_OFFSET_TX			0x3c
+#define QSERDES_V7_TX_RES_CODE_LANE_OFFSET_RX			0x40
+#define QSERDES_V7_TX_PARRATE_REC_DETECT_IDLE_EN		0x60
+#define QSERDES_V7_TX_BIST_PATTERN7				0x7c
+#define QSERDES_V7_TX_LANE_MODE_1				0x84
+#define QSERDES_V7_TX_LANE_MODE_2				0x88
+#define QSERDES_V7_TX_LANE_MODE_3				0x8c
+#define QSERDES_V7_TX_LANE_MODE_4				0x90
+#define QSERDES_V7_TX_LANE_MODE_5				0x94
+#define QSERDES_V7_TX_RCV_DETECT_LVL_2				0xa4
+#define QSERDES_V7_TX_TRAN_DRVR_EMP_EN				0xc0
+#define QSERDES_V7_TX_TX_INTERFACE_MODE				0xc4
+#define QSERDES_V7_TX_VMODE_CTRL1				0xc8
+#define QSERDES_V7_TX_PI_QEC_CTRL				0xe4
+
+#define QSERDES_V7_RX_UCDR_FO_GAIN				0x08
+#define QSERDES_V7_RX_UCDR_SO_GAIN				0x14
+#define QSERDES_V7_RX_UCDR_FASTLOCK_FO_GAIN			0x30
+#define QSERDES_V7_RX_UCDR_SO_SATURATION_AND_ENABLE		0x34
+#define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_LOW			0x3c
+#define QSERDES_V7_RX_UCDR_FASTLOCK_COUNT_HIGH			0x40
+#define QSERDES_V7_RX_UCDR_PI_CONTROLS				0x44
+#define QSERDES_V7_RX_UCDR_SB2_THRESH1				0x4c
+#define QSERDES_V7_RX_UCDR_SB2_THRESH2				0x50
+#define QSERDES_V7_RX_UCDR_SB2_GAIN1				0x54
+#define QSERDES_V7_RX_UCDR_SB2_GAIN2				0x58
+#define QSERDES_V7_RX_AUX_DATA_TCOARSE_TFINE			0x60
+#define QSERDES_V7_RX_TX_ADAPT_POST_THRESH			0xcc
+#define QSERDES_V7_RX_VGA_CAL_CNTRL1				0xd4
+#define QSERDES_V7_RX_VGA_CAL_CNTRL2				0xd8
+#define QSERDES_V7_RX_GM_CAL					0xdc
+#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL2			0xec
+#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL3			0xf0
+#define QSERDES_V7_RX_RX_EQU_ADAPTOR_CNTRL4			0xf4
+#define QSERDES_V7_RX_RX_IDAC_TSETTLE_LOW			0xf8
+#define QSERDES_V7_RX_RX_IDAC_TSETTLE_HIGH			0xfc
+#define QSERDES_V7_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1		0x110
+#define QSERDES_V7_RX_SIDGET_ENABLES				0x118
+#define QSERDES_V7_RX_SIGDET_CNTRL				0x11c
+#define QSERDES_V7_RX_SIGDET_DEGLITCH_CNTRL			0x124
+#define QSERDES_V7_RX_RX_MODE_00_LOW				0x15c
+#define QSERDES_V7_RX_RX_MODE_00_HIGH				0x160
+#define QSERDES_V7_RX_RX_MODE_00_HIGH2				0x164
+#define QSERDES_V7_RX_RX_MODE_00_HIGH3				0x168
+#define QSERDES_V7_RX_RX_MODE_00_HIGH4				0x16c
+#define QSERDES_V7_RX_RX_MODE_01_LOW				0x170
+#define QSERDES_V7_RX_RX_MODE_01_HIGH				0x174
+#define QSERDES_V7_RX_RX_MODE_01_HIGH2				0x178
+#define QSERDES_V7_RX_RX_MODE_01_HIGH3				0x17c
+#define QSERDES_V7_RX_RX_MODE_01_HIGH4				0x180
+#define QSERDES_V7_RX_RX_MODE_10_LOW				0x184
+#define QSERDES_V7_RX_RX_MODE_10_HIGH				0x188
+#define QSERDES_V7_RX_RX_MODE_10_HIGH2				0x18c
+#define QSERDES_V7_RX_RX_MODE_10_HIGH3				0x190
+#define QSERDES_V7_RX_RX_MODE_10_HIGH4				0x194
+#define QSERDES_V7_RX_DFE_EN_TIMER				0x1a0
+#define QSERDES_V7_RX_DFE_CTLE_POST_CAL_OFFSET			0x1a4
+#define QSERDES_V7_RX_DCC_CTRL1					0x1a8
+#define QSERDES_V7_RX_VTH_CODE					0x1b0
+#define QSERDES_V7_RX_SIGDET_CAL_CTRL1				0x1e4
+#define QSERDES_V7_RX_SIGDET_CAL_TRIM				0x1f8
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 63b3cbfcb50f..6923496cbfee 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -28,6 +28,7 @@
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-com-v7.h"
+#include "phy-qcom-qmp-qserdes-txrx-v7.h"
 
 #include "phy-qcom-qmp-qserdes-pll.h"
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
