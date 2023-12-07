Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C98CC10DCE
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 12:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0bVsAYjhmJeYAy8BEu2bnWNb6m//UJ9Y3V6xreCWYAU=; b=KpyXd+WA3Tx+FU
	8ionceskhC/jAZGp5wAVEqmfcVeNrtnp3or53yI+U+8rQxta8NTuc1PBcXrjtHmeKk/j6XdMvpPwK
	FXqpY9MsiS9bS7NGF+Xti6QR+plYWiwwJ67A4jF4JlbuKJuE68yRzaKDeyo1FvTeEvadsINcmHJHH
	pU6b/pKlgDGMuqK6O6n5N+6sRSy5BHnoomLWStvUnxt/0seufN2iy2WolynGglAPfqo7rv+oAj0gu
	bUxeNemawIc/z9ymLoJMewQxTqemJ7GADvMlBfUu5nQtX1mkpSP5Kl8dhAsh40k+VFCVGQ9HXyPm7
	llZmaVSF9oqTrsslnQDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDM2-00Cldh-0L;
	Thu, 07 Dec 2023 12:19:46 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBDLz-00Cla9-17
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 12:19:44 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a1ca24776c3so395054166b.0
        for <linux-phy@lists.infradead.org>; Thu, 07 Dec 2023 04:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701951579; x=1702556379; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7On32Ao7taWCroDJzXI//r1UxZ6SeERvRI44tfdfGvE=;
        b=XAlZorbP1ldqC89Nb0wXFvobelwSTMPzctceHcw1LGDb6S2uG7+oLj6DieE/sCDyWC
         w1ElmNs+z+CEorsXUJ0ig7qfo50gGin4tX1zRniPA2UEaJ6Re1U8QHFB4Lv2Avp1fzV8
         pHlw6VeUC7JpFaCYpaciSXb3RCA5YNIGOtmEkL4QiVw3Mhce1XGc9Efnrlwj5r2hTghM
         ce2Aek3a8D+iL4Fume0VvUUA/TYELr6UUfHsj0p2EXI++NBoNrDfTJJTok5SsTvL6kie
         gkOfUBgkmMk/uuw2Xmwm0W5gDEpmJ/GMLoF65UxR6eRc+ASMKkgfxfM18uOpDZ5pwskL
         GQLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701951579; x=1702556379;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7On32Ao7taWCroDJzXI//r1UxZ6SeERvRI44tfdfGvE=;
        b=Fb/zc391+g7t18jkeVQLfVmugDp/BuiNP9CBnXtBazfn/T9XRtgcwVIFbxF0kBcTH4
         HPQ9stAetXpWHwupVqexVUEH6IoCadqvyZFUR39NcQNslIs85vyZZOkAtywVB5k/5us/
         2goyVwRRlxorY7R6s6Ga1m4Kh16apZGtq3Z8j2Sh7y1HBpZ4O4lFY4Pctg2jvYZjld4W
         xXK3pMYMO6iDFZ7QTWhoGjXXPPEwKfWE+Pi4adLlQbGgWuk26OnfIWH1snHDfJXgoUCs
         TcTmjd7XhpHFiSbngoXXqbAgMNUd/Pc9Q/pC5EGl41XwFddBAw/Sex6ATBMUGHLCiE6H
         fM3g==
X-Gm-Message-State: AOJu0Yz1HzwiP1DmnI1dA2hSSgjCnK8aOgVjb1KgSaGYYvCOfgAak7W+
	TpsVNskvrQOAu3vnb4tnOTXUtg==
X-Google-Smtp-Source: AGHT+IF61+QjWE2AWz41aasoYB8cRvYzAzPEIV5U9doaUwbMp6/Fx2hixokB3I8/2YAu02VxHQVUYw==
X-Received: by 2002:a17:906:bc4f:b0:a1d:6780:8fef with SMTP id s15-20020a170906bc4f00b00a1d67808fefmr2619897ejv.72.1701951579736;
        Thu, 07 Dec 2023 04:19:39 -0800 (PST)
Received: from [127.0.1.1] ([82.79.186.233])
        by smtp.gmail.com with ESMTPSA id f24-20020a170906c09800b00a1e814b7155sm761394ejz.62.2023.12.07.04.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Dec 2023 04:19:39 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 07 Dec 2023 14:19:13 +0200
Subject: [PATCH v3 4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-4-dfd1c375ef61@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1132; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=094Egkf62OVqF7D0untdpemc272H0gSJ6WbJhC5msA4=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlcbhQMxZFgnrlpDPmWBSqqG6wCOokWQjV8TfhW
 YkzQvmz4pOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXG4UAAKCRAbX0TJAJUV
 Vr4rD/9LuG7frASaJswBxrabFG8ybpg4BmpxcBxFemfvMleShmPjSXU6i0D91hXkwFBKpWXgeFM
 750TMGcVrZQIDjV05bc5DwxAkGcbQPUX+zGHy6RsT8fZl5HVHn1h+ZCsYfAWd6T37AWNT/ju4Zo
 MsFyAqkHeSWAp/CiTyonIKIYBSPMCs9ohNrLcB1EXQgJCTrCwgKCfSHaq0cVOgV4gkPKhr+scL1
 faadenslWvQMLcFCiIJuJV939PnHavI6kTHc7TRG5QrgzJfOUNGYZqmZzE6p72gcyakznSc/KSQ
 YVaPe2HfGD3sx+1k6zuM74Ddf89NoGhRwuJdJ5wqSRg69VSZ2LTThGqJJmby8o5UTIQ19ohTfr9
 9jYQPCjFYui7I5RRxISp1qlvNzuFNF4BiCTrVVCcj8GjFgL/rr7EDBkAHH+tiRqTQYS09vF9TUB
 5cViI6ULLuLNM7EoWJIK8opvAjPX3+OvN6U3ob/qS8iVkbj8TJeUyuaNpElkzUWR+iBuMAxv8Qb
 YcZFVtPTBCl1zE4iabH+BTqnpwCfZ0H3T33KlOUva1WvYN8A4XP2BmZh36bDsC0gWOwnRw+kBNx
 AhZlBum8Wpj3wTTebkHrXXkNRWs98UsUYcAeXvad2a9xb/ujopTQS4bC+dtkyqm+gzPzs5xz7py
 DE4GK5p7nVKiwxg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_041943_399575_BA16770D 
X-CRM114-Status: UNSURE (   9.09  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
new file mode 100644
index 000000000000..24368d45ae76
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V7_H_
+#define QCOM_PHY_QMP_PCS_USB_V7_H_
+
+#define QPHY_V7_PCS_USB3_POWER_STATE_CONFIG1		0x00
+#define QPHY_V7_PCS_USB3_AUTONOMOUS_MODE_CTRL		0x08
+#define QPHY_V7_PCS_USB3_LFPS_RXTERM_IRQ_CLEAR		0x14
+#define QPHY_V7_PCS_USB3_LFPS_DET_HIGH_COUNT_VAL	0x18
+#define QPHY_V7_PCS_USB3_RXEQTRAINING_DFE_TIME_S2	0x3c
+#define QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_L		0x40
+#define QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H		0x44
+
+#endif

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
