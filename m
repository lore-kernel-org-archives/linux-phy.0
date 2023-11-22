Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 702DAC61DF4
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9akt6+chCKgz1irBCCl5e868YIHNmBXnG7mS7X9NuDc=; b=y1MkRppRwb8UY8
	jctZu9u+jj/Os1EjW0DzZ/nN+oSFRCT4FeGY0aU7b0UNCFxQc6t12rETaBpeNaIQ3FmXq90nO1DBo
	GAZ94Ph0vPKMMcOdL2c9c292xZFYMBUS2SP04ID20HgV99CgCt1vufi5pWD12liqP6estTJdPlSiI
	5dHAfy3J4Rw4vZ/U7ZtetM0kqbiShTUwiYyIvTG8xWTJRS2tYIkZYXfH53qBa6F12nu2DCQFXyDGE
	1V+9ixCy7kdh8cKIbyWbZDZyHh7RlcieZchx5H2V+jPUgjXE4mePKaXcwcFIOcm0XgGf4qLqgl4aY
	+kFJ8UJlYZ4cPcsHgqcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5k-001O1s-0A;
	Wed, 22 Nov 2023 10:04:20 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5h-001O03-0h
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:18 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-548f0b7ab11so3062550a12.1
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647456; x=1701252256; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MQR+FwOhW+4znWOcODnwJLSOHCpztagEF4Jo6brt37c=;
        b=myOnSg158YSotMMCP1GYj6cGRM1XkMXK59qTBscVQSBH28JSeCiQn8/GiTCLodYWvL
         qyA0et2uOE2IE4uBihOJEAC/terfEanym3Ih0UnfE38YbNDQFhnRQtiVHb5A/zwNmQAk
         zy3rqLqG1GIJfDwik5o44M4TFi83dDITjXKFRJbwEbi/aCdnL52rDDTZ5TtrspL6V4Ow
         xZQxOFYcL7axD1xoqbZzUaJTgpBzYbeCBaGIyrEMxOy88VBWy0qNH0LxWb2tA+T++kEv
         T2vXRP8T1GVHCgFvvBBOVMuffYRzR05DfX0KcvXDCnWeEn5jSKBcD/oyuppswLes9AFK
         13NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647456; x=1701252256;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MQR+FwOhW+4znWOcODnwJLSOHCpztagEF4Jo6brt37c=;
        b=kDJ8uLZbgvBtmwGQCD02D+eEdMKXAEfv9A4VnE5kmf1Ty72xMp661Vuw3MQo4ey0HK
         +m/8CAN7UmoNm/j9iCtXsFy59G5th+oV+uTrUnY2rVzpA5N8PZ45JzaMQir9VyIxeB/V
         urL03FAjky196d92l06CQ5FKgBuHtNqzWb72Hua2Cowix81oE6iU+HWDZGLPApnssBX0
         Tj3/iST8yPvIm2FX2sSBLtTGvhHmKcB680Icbk2Ut3SySl+79x7mwMk1v8P6fyYVcyLY
         DAg3bfEisLIZUg2V6sPxmrZvPBtnDIi+CFOh9ilar58HVdr9z9h+hkUxUhDhYkvrmZCu
         eaqg==
X-Gm-Message-State: AOJu0YznpAcJ+kTRV57iBE0xnjgIp5raPa4uPwTdlAaWmy0cU/81Zt4B
	QTvG1nbtYePobEPzPqcayDrYWQ==
X-Google-Smtp-Source: AGHT+IFruNFuilsWN9k+BJEv2RT9etp8k1n+3oECwf2s5E+SmoC/tSjyKIApoMLCcrKybjgZrQwoRQ==
X-Received: by 2002:aa7:cd0b:0:b0:543:7f7d:4a3f with SMTP id b11-20020aa7cd0b000000b005437f7d4a3fmr1442164edw.30.1700647456027;
        Wed, 22 Nov 2023 02:04:16 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:15 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:58 +0200
Subject: [PATCH 6/7] phy: qcom-qmp: qserdes-txrx: Add V6 N4 register
 offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-6-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3380; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=V5aDYla2oajQuDh4yCHt0Oi7qh0FHOyH6K0sEcW0K0g=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdIVY1h5uD6cRoI8WYfZO32XKCK+eEibKDJk6
 LViEKSEiAqJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SFQAKCRAbX0TJAJUV
 VoooD/9Ka+JvStPWHtIvAdVVGxU8TJkNPKpCS6dXyA3Jc3Q/JYFLxbNKKkFAi5d3vQQ1BGQyNDB
 oC1n90M0s/86BZ6uXsGd0y+7khuHDs+EmfqMNYogaWHfRQw/yxT0s6bTc8UI1D1Z40PatjlEjQz
 b/tSmlq8t0p9SR/ndSwm5YlGV8hEGIj+bj81p9rBt0YZLdS7LLsHHvrJO1EpzjU1O9LoasKUMvi
 kv48D2bhjC1yZMZ1RCRyn+fsNQDLVnGL+kR5JSh1nvISn9V2xWGCcfIHmDWjHN8rPw9l/FLmHmn
 YEqKQftAJOGNBrMkIcCuBU9F4+Eb1BcaSmPBD26NgyXNlEVOn9ZqtQCkkIoNBfg3w/NkVXek6Vb
 blnjnjfLOIqQ/CwCqGdO1iCxoeTqYBvjzMb4OLVmMSmr+WHcnn5lN/m3CMEQOrIbNktJguPaHhE
 agTLdfh2QgX5BVE6BbbMP/FVKPmYsGLrIEVz9RCW1QjOdpvHYVjzHqWGV5Clre8DfekCmcfXcpt
 0IYsPCI/HiIz9Eq0pG+cwQI3OeHguO6z/d+QaWBvvOGE0eG1/L1W0EKwvlJVcvf00iaRl9b66NS
 ZFSVqVMm50LMszSomKrM3iP5ejKz0MZVPomYTYkM1ZcY+Hpxv7zzH3ASM4ocTIuyXD6NECCIrfk
 Qa+7s82d92Wf8bg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020417_264415_2EB7BD38 
X-CRM114-Status: GOOD (  10.91  )
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

There is a variant of V6 offsets that are different, the QMP PHY N4,
and it is found on the X1E80100 platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 .../phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h | 51 ++++++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 2 files changed, 52 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
new file mode 100644
index 000000000000..a814ad11af07
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_n4.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_V6_N4_H_
+
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_TX	0x30
+#define QSERDES_V6_N4_TX_RES_CODE_LANE_OFFSET_RX	0x34
+#define QSERDES_V6_N4_TX_LANE_MODE_1			0x78
+#define QSERDES_V6_N4_TX_LANE_MODE_2			0x7c
+#define QSERDES_V6_N4_TX_LANE_MODE_3			0x80
+
+#define QSERDES_V6_N4_RX_UCDR_FO_GAIN_RATE2		0x8
+#define QSERDES_V6_N4_RX_UCDR_SO_GAIN_RATE2		0x18
+#define QSERDES_V6_N4_RX_UCDR_PI_CONTROLS		0x20
+#define QSERDES_V6_N4_RX_IVCM_CAL_CODE_OVERRIDE		0x94
+#define QSERDES_V6_N4_RX_RX_IVCM_CAL_CTRL2		0x9c
+#define QSERDES_V6_N4_RX_RX_IVCM_POSTCAL_OFFSET		0xa0
+#define QSERDES_V6_N4_RX_DFE_3				0xb4
+#define QSERDES_V6_N4_RX_VGA_CAL_CNTRL1			0xe0
+#define QSERDES_V6_N4_RX_VGA_CAL_MAN_VAL		0xe8
+#define QSERDES_V6_N4_RX_GM_CAL				0x10c
+#define QSERDES_V6_N4_RX_SIGDET_ENABLES			0x148
+#define QSERDES_V6_N4_RX_SIGDET_CNTRL			0x14c
+#define QSERDES_V6_N4_RX_SIGDET_DEGLITCH_CNTRL		0x154
+#define QSERDES_V6_N4_RX_DFE_CTLE_POST_CAL_OFFSET	0x194
+#define QSERDES_V6_N4_RX_Q_PI_INTRINSIC_BIAS_RATE32	0x1dc
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL1			0x23c
+#define QSERDES_V6_N4_RX_UCDR_PI_CTRL2			0x240
+#define QSERDES_V6_N4_RX_UCDR_SB2_GAIN2_RATE2		0x27c
+#define QSERDES_V6_N4_RX_DFE_DAC_ENABLE1		0x298
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B0		0x2b8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B1		0x2bc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B2		0x2c0
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B3		0x2c4
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B4		0x2c8
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B5		0x2cc
+#define QSERDES_V6_N4_RX_MODE_RATE_0_1_B6		0x2d0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B0			0x2d4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B1			0x2d8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B2			0x2dc
+#define QSERDES_V6_N4_RX_MODE_RATE2_B3			0x2e0
+#define QSERDES_V6_N4_RX_MODE_RATE2_B4			0x2e4
+#define QSERDES_V6_N4_RX_MODE_RATE2_B5			0x2e8
+#define QSERDES_V6_N4_RX_MODE_RATE2_B6			0x2ec
+#define QSERDES_V6_N4_RX_RX_SUMMER_CAL_SPD_MODE		0x30c
+#define QSERDES_V6_N4_RX_RX_BKUP_CTRL1			0x310
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index 3a0512c3e07a..63b3cbfcb50f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -24,6 +24,7 @@
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
+#include "phy-qcom-qmp-qserdes-txrx-v6_n4.h"
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-com-v7.h"

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
