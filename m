Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB316C61DA7
	for <linux-phy@archiver.kernel.org>; Wed, 22 Nov 2023 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o0+0yzgV+b8ypUKEgp+FIQthrUDLDkecRgU2k7ZY34=; b=PyyQU/VYD86mp9
	4kiRW9RKt2yDYpMTzl2FjL2tus1qSdX/Q9V4tkplbszPBJyOo0nTeZeZIstKSowrunfAPb4CJwh52
	2Aw+Oe2fE8vxMFHRAKinpopeJSPD7xyrHvbay5WFs+2AtkzcurcsoE95sdnFWE1pjlTbSBn8ndYay
	t1gfFiTfg76JMfNCe1sIXwVQiHeRYWDVB6yGxou2KYfPWHOH1FTYheXCv/ou1iz2hNekfCymJzUFh
	6dEnRsIxC3acp5v5rzcCjFFExMF+kJbDM14LosDi8KQsMNIXgahMSEBAN9tPM1Gb33DgRL4P1HGzf
	18UnAMnDCAwCA+4iP8Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5i-001O17-1K;
	Wed, 22 Nov 2023 10:04:18 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5k5f-001Nyf-0r
	for linux-phy@lists.infradead.org;
	Wed, 22 Nov 2023 10:04:16 +0000
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-543923af573so9647892a12.0
        for <linux-phy@lists.infradead.org>; Wed, 22 Nov 2023 02:04:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700647453; x=1701252253; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g1RITL8OxHsMLxeDHkjC7KO7ENhom6ryWU8RnZhuNzA=;
        b=euaGmLpshJkTI0EpGPgHSA6mtWaG39vrxSR9VxHQbDwxRMJOg69om2xrEI4VRQh/SN
         G4JbHmQMM32czCoswKLe0coq17fMJpDSAapnC4eSIxAXprXJ2JO8kDYhznV4Jut9nm8s
         +qNkRInK35S6f2q54k8HZZPZIUQrdij5XTPAvzA0i6OZaqWX3fv8lVGa1SEa/05xLbVO
         E1qruzQ9K3gDw2vLvs80mJRzb6x8pwx15AIzY6RgQuapZ4TT+oFPQ07io6DlkHQxefVS
         VbKwrdsE4zHaHOyGL5Slg9+vRmm6GRCSqJzL4YJanmO1eG1fYnu9Fnu+GPkONg54o1EN
         gACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700647453; x=1701252253;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g1RITL8OxHsMLxeDHkjC7KO7ENhom6ryWU8RnZhuNzA=;
        b=L/kIlI7LcS79Vel+IoZCMi8CiulipshsbolH/yJ1hl/ulqYN/rq7vQ8SccZyQ+aRAB
         JP6o2WpdC03JWw5up2hGsUPjlCvt4jwsIA61MFTyDHZa3xmKch/A2LuUW4RzYGZXk1n7
         NZ+7+IQWXQuwrBHSGv2EH/Lvutfl56t33HXesNL/N0N+pN+2BKqIHvK6cN7K7LPkzFDp
         xTAx4WodrZbyPH3N1yKwhJCKTW1y3ayKbRtbjRQU6KlZSVKHAEChHbAvvuQVhGjmNRVF
         VoXETM9uVI1A4Awma4MfiwV2dK28AYJbof+dfQNuLjFiJwBygeD9M0/SfNGayWhfukAA
         jwNQ==
X-Gm-Message-State: AOJu0YwzsvvEWkC6+bL3FF7UEy6iNtiYMN3mmcR4/VuImGZovbZR6JXG
	kLUydrVu/qY/X0T3LIO3fUfzzw==
X-Google-Smtp-Source: AGHT+IFg40vAD4gBPaLU21jOoVJQZlT6/h/8bJelp/ZTMRjvISy9S9dqXtTVKARnwEZDg+nt5Bhv2g==
X-Received: by 2002:a50:ef03:0:b0:533:9df5:ede with SMTP id m3-20020a50ef03000000b005339df50edemr1409247eds.14.1700647453483;
        Wed, 22 Nov 2023 02:04:13 -0800 (PST)
Received: from [127.0.1.1] ([86.123.99.122])
        by smtp.gmail.com with ESMTPSA id o9-20020a509b09000000b0053deb97e8e6sm6110456edi.28.2023.11.22.02.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Nov 2023 02:04:13 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 22 Nov 2023 12:03:56 +0200
Subject: [PATCH 4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-4-d9340d362664@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v1-0-d9340d362664@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1832; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=LT5rjK1uiRAEbfGyqfhSN1OpzVOqugP1A59DYdF7d9k=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlXdISFRKy1XkwISL/zdm5baaZ9mvX8+WRzgPTS
 uglR4SQSE2JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZV3SEgAKCRAbX0TJAJUV
 VtjYEACgyQcQAzYoXRTEQTC4k+Z+E8UvZ9oO6a7eZSV2cENJKik4H3VUg9NoF87HbZemKAsAwse
 HoCT4K69S1nBmev8DXaiqGgG+/bha6Cx0KoeR46sRDZa+IW9CK+3jBaKL3Fe12Xou+GCOLRs0R2
 WIuezzSwJMELkrzJ2U1BQeNVTBEhgx0dT3hWFlOYVVlQdbv5eFxThYA8eWS0p8/t+x8yXT1UuD1
 m2svfDs9zy6WC6T7u7WH+pHipyclh9rKUStm1SbjKFpMxUMHlxFe4Ur5uFwG7Vsash7O9604KmI
 hUG1Ls5f0pVsPuiyQJBEmrQvSzp5BsipoRkU3eGpnObEoStzD07lLsY+ptgfvUlFqkC1ad3iWOH
 VkEmEVWz/sr4i2fVoUVc7JM7aVP+gCRrNsf6DQeFoDRfuWuyZO121sVGd3p0CKTNlbm+GJx1ayl
 72/cI3NiIYyyqPL8CeMlt+7EYsWnbX9l6HjkniuplkDgQoYrkHKDueNNe+lBtIfuvrb9nevPLXO
 /bTCPjJxuGoH6KcRVuTbx4QR6jDVexjQ9hhmy6NOH3sFUDhTCQ3Q5t4/vZTv/Q5wBoQzgkzmj/+
 2z1RRjx5ZL0n4qjxVxUpsZTW4fT2k4NSoEcSN0X8HK2ItByavKHqN1olRPCOSlGwKHQssO9f8k5
 Iuoe+yI6Oq0BHcg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_020415_329727_DE9A6FF6 
X-CRM114-Status: UNSURE (   8.98  )
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

The X1E80100 platform bumps the HW version of QMP phy to v7 for USB.
Add the new PCS USB specific offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h | 31 ++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
new file mode 100644
index 000000000000..dbb75964cef7
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
@@ -0,0 +1,31 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V7_H_
+#define QCOM_PHY_QMP_PCS_USB_V7_H_
+
+/* Only for QMP V6 PHY - USB3 have different offsets than V5 */
+#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG1		0xc4
+#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG2		0xc8
+#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG3		0xcc
+#define QPHY_USB_V7_PCS_LOCK_DETECT_CONFIG6		0xd8
+#define QPHY_USB_V7_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_USB_V7_PCS_USB3_POWER_STATE_CONFIG1	0x90
+#define QPHY_USB_V7_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_USB_V7_PCS_RCVR_DTCT_DLY_P1U2_L		0x190
+#define QPHY_USB_V7_PCS_RCVR_DTCT_DLY_P1U2_H		0x194
+#define QPHY_USB_V7_PCS_CDR_RESET_TIME			0x1b0
+#define QPHY_USB_V7_PCS_ALIGN_DETECT_CONFIG1		0x1c0
+#define QPHY_USB_V7_PCS_ALIGN_DETECT_CONFIG2		0x1c4
+#define QPHY_USB_V7_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_USB_V7_PCS_EQ_CONFIG1			0x1dc
+#define QPHY_USB_V7_PCS_EQ_CONFIG5			0x1ec
+
+#define QPHY_USB_V7_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_USB_V7_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_USB_V7_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_USB_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
