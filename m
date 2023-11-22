Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8CD0C61D9D
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+z1klMguJboQdaxpX73xNzkkQCmcGKEb1ta6Ci49OPY=; b=qYUdISke7GBgz4
	NLb5HFTasxUshVU/tWal+SqWRGmRiBM0MWd+vmFZkw22WgF0gTm9AtRwd9hrgTObII2NFMstnaRm/
	ibENbYnsUt5+XBWmZz26mCpWx8OMuXIfbKx5PoDNCykHwKvJP84eguXkPqAKJ2aMh3nXLBxHS1UXI
	RIXSTkFfSNrZsZWoal0ctyHhEPQl6m1zc91gy3K7546xkrMu+q8xvCp1GtI9rKSuYrxC50rU1AZZQ
	Al7Kd05XQlycdWRk+n6gZCRMKuLnXg24I8+HNuVwjf5CU45Fq7u50Kp2L5jWhIkRWWsj0jWd0Xr5f
	Wvlzbhsd+q019NeiGBzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5n-001O3D-1N;
	Wed, 22 Nov 2023 10:04:23 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5k-001O0g-2o
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:22 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-548f74348f7so2733339a12.2
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647457; x=1701252257; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aoX5uB+BF3efXMI0yxqwvmNtTa7dNWj91nG0J2f2fYs=;
        b=FegIqA9xZPc8d+oxfEU4KsZj0EnL76WL5AMQ1P8TIXBhKLo0XzOt2RBGWpHMNz98Jw
         iUnBqL29EgnHcGMN+My9mUZAZdBTuX6Ywa8PGfmuBhOALjVtFsu0MTRM4EKhZ3bN63xJ
         Cv5KUEVsg06f43tN+XpMrclKN5k15HvE8B5t50RibfIYIF3cNtwo/YajhhL9Kb1pQkRK
         VlKgM+yEhldfsVML3VNzjHQooaCpPVPqsNJSzfQU8VUDYdckvrLY5X0LHwwGrszm7kTr
         7JEsLoqrSGq4+SEJRDU39RWfhZNMB58L7FTli2nZf48CLaS3lUpDi0YYRZqmhcdrHgK7
         SAMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647457; x=1701252257;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aoX5uB+BF3efXMI0yxqwvmNtTa7dNWj91nG0J2f2fYs=;
        b=CpsdfvSNI1nXjNud+W3JpLnIABEOttijqIoHP60vrBEnGryWJ4iIIew4w34DiuP2/O
         6kna8nK3ASwJgCrWN/vE0DJvZEgZ9hbFZHPK81euGo7sdNecZraZmP0RVNQjguLa2zZ4
         DdFAAeVBICRqWl61hBpwmrGj56IKmMzrsAhViWCCE4MZVHHuKlDqtoUwcufWSKy9WgV6
         BOoHoMjM3A5pHODo+6OJ3rFnd1oYtG8/cGOPnveXXOEusT5cELKUsNtE0dG3ZW9CZFjy
         pdcG1FEf9YvdvPoKtguxoiq8BtzZ4wInc0ABc9RiwV6g8TRnJ9plgaWMhjAWE7fBf6s3
         TKDg==
X-Gm-Message-State: AOJu0YxAURIep9iIDe9Fz6u8f+YsElp9UEnosgaKHOD3RwGF5Dy4XEZj
	0cNo1xTUetSQ6sIjTstdfr+rqA==
X-Google-Smtp-Source: AGHT+IFvspBRkaxaPwVPBpdyZPYwvAOthr0IYbioLW5AaJu2Q7WL9YsT7pCXH9vUULGeMERrB5xBow==
X-Received: by 2002:aa7:cd74:0:b0:543:5f7a:9e27 with SMTP id ca20-20020aa7cd74000000b005435f7a9e27mr1464175edb.12.1700647457211;
        Wed, 22 Nov 2023 02:04:17 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:16 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:59 +0200
Subject: [PATCH 7/7] phy: qcom-qmp: qserdes-txrx: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-7-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4580; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=h3a6bhb68prVh8MCjOsfWms2L9QVp3zvpbve1dpq10k=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdIW5MVDXZz9L02Q5QkintYeyIvSmnKslK3uI
 ZflrufqAsOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SFgAKCRAbX0TJAJUV
 VmQqEACRJViQeHSrEXByPFue07HDYG6S25m346GXyyWGlOSaqp1OYj9i4Ye5I+4yfjWTK0o8eFh
 swdq+NjBYzE7AKDd9cN0wc+E3Ur7k4JHsP0UGUJEYapSJAGnRQnSkLt2iulkK6T8FZua3SuKU39
 v07zN7Hrq2LCZnjby8+JqUaThm5vFxp0r0nIchrLlfR1pvSbtS4GOA8Wc5t9TXnu1ECSZHQvDR4
 odqiWlSu1VF4SZkYgRJ/EO8WGHo1riQmMH5jtvadU64VNfCe66NZ2yUecr/ZauckjjHT3W2RCMC
 Vf4crB9m7yOcZ7CdhPEILVg+n1NBHsyNm2qa8HhQgr+mu3JS3UDmYA79QoL4k/tbLGD8BQZ0ese
 BUumhCG9CftigBQXA/GihTghEGNustcNShMmZEmWjnvlg2SG66scVMlaOwtCgArIbQiW8dW254L
 MFmN6K5c2U+PqRIe58Cog5JLZcEyuT1NXaqeci4IcIbhiISWpf5Pb4q2GTM7ueJVBGRXa6XTj1Q
 k91KJpvczvilcc2J7F5GSwXrNbwOpTDTqKIjeSmHdEse7yWzBbU8r1yX3sZwOJUOIIOe5C82xKt
 uOIv++Rlbm8O+ggWkpx8ZiBKp3wibiOiZsU9YdWENA/yD+SVbNSGkoxeDbsm/+DjZWv2dt36pyT
 pL1teL6VrgCO2lg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020420_912107_930E0384 
X-CRM114-Status: GOOD (  10.43  )
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
index 000000000000..14023f47a95c
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v7.h
@@ -0,0 +1,78 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_TXRX_USB_V7_H_
+#define QCOM_PHY_QMP_QSERDES_TXRX_USB_V7_H_
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
