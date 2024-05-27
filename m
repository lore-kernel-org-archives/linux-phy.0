Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 790AEC25B7D
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 07:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3hKOvwvcATxDQdW+j6UDYjnMnE7wHlPmfPbNVZdR2gE=; b=jvgDGmDBGmAjhK
	/XX9rwiIsMMr5kBZT5W4hkXIvSdI5J3xUkW7Q0vkYBxddZkTDqfjUc7L/ndX+tPD/H3Jxi8RGqb4D
	evOgNHfDmJHqng7NHJ1k60qwRVu8L4x6Hii1LmtLf5Sk/6c1jnvyd586LRWRYGZnzag7qWkykAfQN
	scES2OTaqsWtAgZCzP5OA5L0o7Zb+obA5+f+aMNkulV0BAR2ZNks79CDJUYi7p/ohw4JgMFOOPZ6U
	DiMh9+KXkaZd0p6LHOAydcyMUCXXV2O1L4EEG8/jVive/NCyZma4pbloJfe0j1n0ySqpcVv8AetJn
	1F6fxegXJ0v6CZpwn/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf8-0000000E2OY-3sR5;
	Mon, 27 May 2024 07:20:55 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBUf5-0000000E2MA-1u6b
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 07:20:52 +0000
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-a6265d3c488so366655866b.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 00:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716794449; x=1717399249; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TW/LSfGwT5gH7WAKYUuPqo8Jagb7fI9CA0RtQ3h/hLM=;
        b=zM5fhEiwXcaVc6+7rDyJ1iyzZCLQGTqcCjFRKGyJXHi4AK9vxpZBPnyMd0nlrRT7MN
         bxyo4ZiIHQWj/8BiyNy54DEfoGpn5wEwoBhVArWgpwN680c0dOJMvtioAhI1j3ojKM1d
         WNFhKvagLjh8YaAvfe485k8rEWHv3U9Pvz22SLYc5SbBbXYUPNO9kaoyMXYtGaYD5NQA
         v/eXpv2BRVkaivBqatbP/7PI3AI+EXQG6nHotXRoqPUcl2YGjHV4W+YBIwwZq6p346aB
         jnl2UNHrmzymrU8sXggsSGjXmXhfXct1K3IEwT0tH7mNw8xznWM5v1BuAhEIWUvBSn7I
         Uvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716794449; x=1717399249;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TW/LSfGwT5gH7WAKYUuPqo8Jagb7fI9CA0RtQ3h/hLM=;
        b=ZwTwV4fUs7V7JxvtykghLlldCmFnsWZhtU28k1WpoMEDgOYHZ83OzQWJdOxe7Zi5aQ
         lE//7ldiFkotTfQTGeu99I2TFFUOfA7ed+baAecrN2nFF36Zp2CSBnldp273MMZfa9pL
         4ZmY2DdRvNTg6pQ6fbnicNYzRgf7A9kMvCMoziBLV8q6egi2aUZSHjijs1ZwRLc/1A4W
         YlbgZbeZ5t18FJF5lElqwxDCNGstNEytXckeRZe9B2wkN41VkHJI2IKmd5QPYwLaxQHa
         5+zG69qeUckJeY/MbMg8uDoY2NXvVLnzfNTmOscwsdns4SWdRKqFx9IL23Nvp7ei5g7W
         9mow==
X-Forwarded-Encrypted: i=1; AJvYcCV3AzsyuibUyphTfYlIiZROt2kgWhhMTmJ3S6d8VysE44IIC3P3Uuxd+Y8/IBEPFC0z6tIettxeBmfYeD9832eKA5Pc+sFaBizo7Sz2CA==
X-Gm-Message-State: AOJu0Yy1yAYaMPyI2ceqFa88PLoD3COKtmetp2+6gYwCRNmG17hYayWG
	R/AFRqvmOgbhaLxNcXJ8IJAvwyeLMh2Wf2l2sRcQHCQ8MuBGmPSqtkgeQezuZ50=
X-Google-Smtp-Source: AGHT+IEb9O/hRjCH/tIkevCOFftVSv6LB7cbfSWDciPmsu1sKUNRJG4uWQdtZUSQVFBIbQhj77IErg==
X-Received: by 2002:a17:906:b792:b0:a53:ed1b:f3ba with SMTP id a640c23a62f3a-a62642e9202mr804025266b.28.1716794449328;
        Mon, 27 May 2024 00:20:49 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8e295sm457915666b.185.2024.05.27.00.20.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 00:20:48 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 27 May 2024 10:20:36 +0300
Subject: [PATCH 2/3] phy: qcom-qmp: pcs: Add missing v6 N4 register offsets
MIME-Version: 1.0
Message-Id: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-2-be8a0b882117@linaro.org>
References: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
In-Reply-To: <20240527-x1e80100-phy-qualcomm-combo-fix-dp-v1-0-be8a0b882117@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2174; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=kaV21qO6GYNjhKLxdxIBJT19wvTGFK2gerZ38MtKK1I=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmVDRLIpngrysYu+odCHNQ1ihTi2HjKGK3kajka
 o5g5+S1rQWJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlQ0SwAKCRAbX0TJAJUV
 Vp6CEAC1RTXQdEOn4Z0PpOv/6boLkn/EYuDV3dW54c7Kug8NlbEKXizESrytBv/tSGyy8givfDi
 ld2Mm0eU73K8dGdgVUNdtblJz390BZqdtJtCcB5snvZoDl0Q71Wp99h7TuQ8O46AmxW19nPQPmC
 ZWzSTe6SRs9Ad7zND6/zVVk/uoQYh4IZPfhmgpwsgMovALxyW1wrf2lYUnTZywp4HxOI8lpIvPU
 BBD4s0hC979Nwg+3MbtN/86G/sy9ZulQsOcDwn1EeXf7+nmP3/Lid8qXdSR1EsjIlgbq0wNrq8a
 QgDAN0C9NizmL2Um3IJoljnhoG8uH4cNg616fI34pFhv8uH/Z/Tvq0eq3RGW+94xvJzplCFMAmo
 lBu+BKwE8/iPHvIzlTRxyItFuYS4/qr6e0gfQ/cwATENJQZRstrznAqtg5lBYEqPzqFEOt2KETG
 EXlsympwax++Kpet6lC5LXhleDBBiVW2gc2m6vnv3IcpBg0E1AE14gtK8BIswKMNk1Sc9AlKs8T
 NS6Qn/ccgmuMyd3O53/s8h8CI58AslGa4FJ/XqhEgHfG8vnfZy4WXMmZfGWfftI8W9I0lEUVUZh
 HIlABdwZk/j9bPDCxOuB4NJM7rLyYOMjuS0E7SqZU4ALJ6Aw+oqEx1fQf58NfUhG8je3NBTNAFE
 o8vZ2Lhyhn0w6RQ==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_002051_537643_B1902C97 
X-CRM114-Status: UNSURE (   9.82  )
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

The new X1E80100 SoC bumps up the HW version of QMP phy to v6 N4 for
combo USB and DP PHY.  Currently, the X1E80100 uses the pure V6 PCS
register offsets, which are different. Add the offsets so the
mentioned platform can be fixed later on. Add the new PCS offsets
in a dedicated header file.

Fixes: d7b3579f84f7 ("phy: qcom-qmp-combo: Add x1e80100 USB/DP combo phys")
Co-developed-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h | 32 +++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h
new file mode 100644
index 000000000000..b3024714dab4
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6-n4.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_N4_H_
+#define QCOM_PHY_QMP_PCS_V6_N4_H_
+
+/* Only for QMP V6 N4 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_N4_PCS_SW_RESET			0x000
+#define QPHY_V6_N4_PCS_PCS_STATUS1		0x014
+#define QPHY_V6_N4_PCS_POWER_DOWN_CONTROL	0x040
+#define QPHY_V6_N4_PCS_START_CONTROL		0x044
+#define QPHY_V6_N4_PCS_POWER_STATE_CONFIG1	0x090
+#define QPHY_V6_N4_PCS_LOCK_DETECT_CONFIG1	0x0c4
+#define QPHY_V6_N4_PCS_LOCK_DETECT_CONFIG2	0x0c8
+#define QPHY_V6_N4_PCS_LOCK_DETECT_CONFIG3	0x0cc
+#define QPHY_V6_N4_PCS_LOCK_DETECT_CONFIG6	0x0d8
+#define QPHY_V6_N4_PCS_REFGEN_REQ_CONFIG1	0x0dc
+#define QPHY_V6_N4_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_N4_PCS_RCVR_DTCT_DLY_P1U2_L	0x190
+#define QPHY_V6_N4_PCS_RCVR_DTCT_DLY_P1U2_H	0x194
+#define QPHY_V6_N4_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V6_N4_PCS_RX_CONFIG		0x1b0
+#define QPHY_V6_N4_PCS_ALIGN_DETECT_CONFIG1	0x1c0
+#define QPHY_V6_N4_PCS_ALIGN_DETECT_CONFIG2	0x1c4
+#define QPHY_V6_N4_PCS_PCS_TX_RX_CONFIG		0x1d0
+#define QPHY_V6_N4_PCS_EQ_CONFIG1		0x1dc
+#define QPHY_V6_N4_PCS_EQ_CONFIG2		0x1e0
+#define QPHY_V6_N4_PCS_EQ_CONFIG5		0x1ec
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
