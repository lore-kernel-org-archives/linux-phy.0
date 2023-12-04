Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26287C10F05
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5cGcaQ3iepBu2sAQM3IAu92PtJX9D9QaAyA0vbtuX8=; b=3rWXhpxTVzgrCo
	a7Uhcnr5y++4iAY5Ee5ZP+Tre2IFtz9S/MLMgrZl4v9ziPxGCeA+1X2erPHdDHz7BpIVUZZ3Sy4o8
	aK6MkYhCaS+9Mm0wIK10Qm0FIvDCyKhn8OLZYYm7gsyp08ByJWeacvmWvWVHIZeSPtTmjiJNBJheY
	CedcsZ4HuNGq9c7Qf9EAZBHEjC+D1TXMME7S7m2nPUige2e/s5HNY2xpIHQt74Lanrx9wpvG2sjwY
	E3bItpIARIQQV2mZrf9wAPWaM9RQ9+l+MUGsrqfW1ma4OHQEX9yv0reYeHVoEkJYX5LB3zd2MMqrb
	iGx2UOjlXrcF9/PWjjXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g6-004Otr-2D;
	Mon, 04 Dec 2023 13:08:02 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g3-004OmO-1D
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:01 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40c0f3a7717so1509865e9.1
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695276; x=1702300076; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZWmmLlilX3gbcvar7gsjgLRS+VNIOWMovsTuXDoyOuQ=;
        b=xS8l8Vp1nyecRBaQTb5yE4Ud5ODrENSlR/bWWb3z0XZ10379PldXme+/AlMoI5cHOt
         +ISEcdA/y7tVEX1iZepKS4YwmrjebsgTZs+FCy6fg2FwllxLJgj1FPeH73U5dobEWNZE
         k2dmV2SCcI/Q6K7GyMsoAGR9+AY+0lQN/12rwcYoR3FC1K6DIgpw520oA87Sajz8cFaC
         OIVRfo1bphOK4Qok99ETypl517j/h1MUc97jSFoptlJTyIGbilQ6TapnnT1GdzuCMkXn
         /Uy/ve7e/DCImVR34ronkW5Qibm2bqK2pzFNgSGO5dp+130EBAJbQ6rFN0gQ2MIbsHi3
         a51w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695276; x=1702300076;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZWmmLlilX3gbcvar7gsjgLRS+VNIOWMovsTuXDoyOuQ=;
        b=NvGN689C73jarA+TMt7U7LXK/gga8oUQ0eRiTBOVp+92Q2YTIy49bFGwFjL1HPRg7x
         X+AswOA1T5B0fgUx7dOlNOC8g08u5OzSaH3GJLuPAKzZg9aQw25fwyVA8oHs8Aj0ZeYi
         UbHrNqLzIEpcsFVBStT0RJR01DLnDC1jTrz5WVcFv4jc3zvMQZV7KNif4CvADvXPSyMe
         DwhlaGy1sN5E9aQ2HiHY1ud5QcF1HaIDDezIaFtXYDo56lL6IDUzwwm2XxQNeV7PJPsb
         7S1XNOyJ9dF9CQkhKVN6AsjY/MKFBUt90fqk5P7PVZukMmhn90lGocHRECrV2q+wC7Lq
         Lxvw==
X-Gm-Message-State: AOJu0YxToGfRxX/wIdCwdl4/mHKNue+IcSlHcJMgC3SgkompYOSEpiKB
	m4vgErNtHmUt/nwzthIuodo+oQ==
X-Google-Smtp-Source: AGHT+IFO8TkC0YafqknzyJiHbazgApgqHTkVMt//R57Dc2eL4peWblxNN5ojXphtRGfK3amw+JdtUA==
X-Received: by 2002:a05:600c:4712:b0:40b:5e22:30e with SMTP id v18-20020a05600c471200b0040b5e22030emr1336235wmo.122.1701695276223;
        Mon, 04 Dec 2023 05:07:56 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:55 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:36 +0200
Subject: [PATCH v2 2/7] phy: qcom-qmp: qserdes-txrx: Add some more v6.20
 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-2-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1487; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=BcYxyyV5U8qIZKRy35xFhfItj4d9siglk0tFq0+vIS8=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8ho92yuYXpr2ZC24qzfXEwRLKyy2TQE4a33
 dGVHGv4zDaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PIQAKCRAbX0TJAJUV
 VuqdD/9m3AXtVNuH8aSMki/XqjE84QzISF3tonZMyckA2cAQ+3LJkoHbps5WtRcxSjlEItR8lXI
 u0Yq8Pdjs4CqL1h47q6IXwtUF8mNnir1dJRB6Rz9mTd9321RqSW/RH0jLkFSng938odhEtfXCnv
 sw/lrZ1/9LZQCEtxNuak4hatZyxuw/YYGxqiK/5XCchIPvIsQrhO9w1VH3/Eicd9rAGwQoTHohQ
 vkZ0JahRjYosHQl1J81NjN+muMOGIVpbJA1bN6j4Pjz5dGYywCkd65tVuO06w0ykbPO4pJ72Y+m
 OubgPImwaGiaAbEnL9I7suZeisPKr8Kki1cylAns8U+89YqaAdipV5rEdNsNZsLs/vANCXw3PJO
 vihRGKFw5HXX1eXSww7hMaQq9UaxBPvqRqiWqdGwUtfmyFVm/aQeL8Yvx7gjxg0bsi323X0O/ZL
 pfdG4ctc5jl+5iEJVLgZTgtenzOwjKwhMcYwu1GRch7orMMgnF3crr6/W+sA/vLTKCmedHeLvAb
 k3eJxZKnzpkdQqWpoJESIZur8Xrb3KMT6WKbbu3p+wx+LZqP7F1uUIpWo34V8+q+oaILB0eKMe8
 IKCSU/0M6oEHH3DOgVUSGuTMtCzzAcZZHnOuKPWfmEvgThgSIPQzK4x4MvO7Mu5XYwaO6ko6+Xi
 A78xEOJkSzKVzSw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050759_628068_2C33C26D 
X-CRM114-Status: UNSURE (   7.58  )
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

Add some missing v6.20 registers offsets that are needed by the new
Snapdragon X Elite (X1E80100) platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
index 5385a8b60970..6ed5339fd2ea 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h
@@ -15,10 +15,13 @@
 
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_2			0x08
 #define QSERDES_V6_20_RX_UCDR_FO_GAIN_RATE_3			0x0c
+#define QSERDES_V6_20_RX_UCDR_SO_GAIN_RATE_2			0x18
 #define QSERDES_V6_20_RX_UCDR_PI_CONTROLS			0x20
 #define QSERDES_V6_20_RX_UCDR_SO_ACC_DEFAULT_VAL_RATE3		0x34
 #define QSERDES_V6_20_RX_IVCM_CAL_CTRL2				0x9c
 #define QSERDES_V6_20_RX_IVCM_POSTCAL_OFFSET			0xa0
+#define QSERDES_V6_20_RX_DFE_1					0xac
+#define QSERDES_V6_20_RX_DFE_2					0xb0
 #define QSERDES_V6_20_RX_DFE_3					0xb4
 #define QSERDES_V6_20_RX_VGA_CAL_MAN_VAL			0xe8
 #define QSERDES_V6_20_RX_GM_CAL					0x10c
@@ -41,5 +44,6 @@
 #define QSERDES_V6_20_RX_MODE_RATE3_B4				0x220
 #define QSERDES_V6_20_RX_MODE_RATE3_B5				0x224
 #define QSERDES_V6_20_RX_MODE_RATE3_B6				0x228
+#define QSERDES_V6_20_RX_BKUP_CTRL1				0x22c
 
 #endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
