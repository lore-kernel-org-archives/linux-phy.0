Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97B8CC10F07
	for <linux-phy@archiver.kernel.org>; Mon,  4 Dec 2023 13:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MlHHivsOBp6FpnI2W4B+LGiXMu8vLTWaHsV4D49bOZI=; b=XCz3090OCLO4Ds
	G2vsJn1aSmxa1/cHq4ObtpqXryW4Eb1xrjSSypXM7zAs1Xd98DDdQmZYnavJ6Cl6za+91ihiIsnvT
	6rzawUb6aLKc0VCwjxJnmI4LeAovgMoORdE2IrvYolO/gThV/kr1TGoQ6vVzjecoP0lom38viDEeG
	U0GrxjFUEwTKaJx93onJ2ljzi/gEfFc6iq4vIQrILIUeHw9ve+/obyx8Jf4vAwZTmiOWYhgQDDVt4
	5hdywxBocyoIBwRhFBHKN09/byq6Ra1LDgKfaT0HvDdzt6yrAbhnbWbUPALBsTGj1EeRDe/mMDcc/
	EN8LLDvMWHTNtgJW6e/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g7-004Ouj-0X;
	Mon, 04 Dec 2023 13:08:03 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rA8g4-004Oof-0O
	for linux-phy@lists.infradead.org;
	Mon, 04 Dec 2023 13:08:01 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-40c09fcfa9fso12451795e9.2
        for <linux-phy@lists.infradead.org>; Mon, 04 Dec 2023 05:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701695278; x=1702300078; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cwBpTlor8QGPHD6RCGBwXqu4uW7ps+IkBJil9Sq0JkQ=;
        b=pIZiBNrO58/M7R75nUl/1w8QNcHvAFXk/zyv7UZF2EB9DPwBxaDejiBprmCKsOxsES
         Gjy5vXP5zaj6hF7RE1ygE4IAuhO+ZG1HhsX54ig+8iD1La6+W08yKIqNaQ0+eDlm8Qvt
         31SJ5rFKf1vLBS+MZqfgnmUR4wbc9LhE8lR+wLFI3xB0/LmXZiCwr2+WbKEnP2HtojfE
         GHzb4S6F0p9v0259vWklU/Syo7gPTMi5dOm0jN2PFE6xA602sZMjxkUi/vSPT+aNRRew
         CZFb6GKgJ+NHLUkRVzu4XflslQeG3xAjmrsH7WYWjbC/WCM1+a0+kv0NuPTR1tMflsc5
         vwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701695278; x=1702300078;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cwBpTlor8QGPHD6RCGBwXqu4uW7ps+IkBJil9Sq0JkQ=;
        b=mOWKoyQeXPPRelUkR6vQXFDQBO84MEkN42LCsWJS4T5IwKdnGCoRciU6XVSS63tiai
         PKJqlIlqu4MPmGNdSuzaHe1wZgv/MV+8k8r+bMEb66nL4U7/tURGcMPmsXnEJpiTHver
         pc34zDJmSv3HnKS+Pndl47MHsId0/wvXPClQnhMOuKQyKUhWe09ap3la93TrKa8rOQCt
         9rxf4L1otBbgCXxfTtXB/rOSZkDbqz220J4Anc2tRBaAveHVIWKyrxed7z8HmIhZomrW
         Vi070GHjkI7uS+0bnyUJFfXsYhbxTwtW86D9125K9pE0k1R6bIdWheWDCKHZ1Hvf6upP
         m74g==
X-Gm-Message-State: AOJu0YxFLI0EstsIf5oOcAr5aT/SVrotH1ySUHkyHgB6mv3HAqd4OHC2
	rMj//xFbKyUMT9ce8CPWKefVOg==
X-Google-Smtp-Source: AGHT+IHz6z9FNxdUY89GlaEKZKo9VT8cN4GSZp+9MkJvNXaV2qURb9hzGEg+cOJVQYnkAzpc1YZTTA==
X-Received: by 2002:a05:600c:4713:b0:40b:5f03:b3db with SMTP id v19-20020a05600c471300b0040b5f03b3dbmr1123061wmo.253.1701695278472;
        Mon, 04 Dec 2023 05:07:58 -0800 (PST)
Received: from [127.0.1.1] ([82.77.85.67])
        by smtp.gmail.com with ESMTPSA id n10-20020a05600c4f8a00b004053e9276easm18494166wmq.32.2023.12.04.05.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 05:07:58 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Mon, 04 Dec 2023 15:07:38 +0200
Subject: [PATCH v2 4/7] phy: qcom-qmp: pcs-usb: Add v7 register offsets
MIME-Version: 1.0
Message-Id: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-4-21956ae0c5c3@linaro.org>
References: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v2-0-21956ae0c5c3@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1034; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=4M+XfVf6Rbtz4QjGiR/Rgm75VNvkMBMlXyXrx+AsN/Q=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlbc8jlAoI7yS4kGdu5+tw6hM+aSjBAPwyaEbTx
 SwXDvPLVRiJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZW3PIwAKCRAbX0TJAJUV
 VoLCEADHCXTn+LJx/Z0vGhTOpLqN5JAUkTvZLybJOk3hlMamTWm00izxsZhkYrnJoj2q0jx3aAS
 +XEC555bIMY3TZ5XSUPRxHomlLpWZPjGUqDhQ+d7nWXI5S3haKfA3eRQPKnjOvQpwO1TNpX1Orn
 HMP6gQw66LoCVgQqbKHqFIOp7mnCMpPab7jzgvKcNhYKDvMMWQ+VlI5tSALlwh7j1K7gA/9eED9
 sjINJ4MjgpWnAivi8OcgalTLAJRLvyfZ/xjaS3tkevTRb8uIKCeDO0+TqE4cTDnTu3J1CQy3uib
 67Zwr8bV2HeHsZatkNGYRa+fnuWVkiO7mYyO2/1IfPVlJ0VMG3CsiyUGDLUJHua8Pq2H3I6GN8S
 B3hO0/mkaA0crGmi/0DhWUMOj06rPJv0VA+mgi2YpRVOG3OEe7YPVXRiTyfj8aBfy2Uuz+B5dup
 ikBBb8ntBjwcy3N4T9L4hwM8j7Qe3p0Hfy0jaCwZfhYFlT5XPCZc0hj8znCHYBwDdE4+1AcEwnl
 Dg6yG3WLV8aJk8KiUxN/mBtjudEiwiys443mQk3zgCx+29etM/3LzkOv1sK+eya5OtidEhpiCg+
 GvInk2ac/f9XhSI6zpj+uE7zrwnqefqJg8UKWO7Bugso7RBiaLCZrbbKUJXcAGWps1HpVrAHiAr
 PhlcqqREJq6Kyhw==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_050800_236050_4C9B14B5 
X-CRM114-Status: UNSURE (   9.27  )
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
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
new file mode 100644
index 000000000000..6e785c73f4da
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-usb-v7.h
@@ -0,0 +1,15 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_USB_V7_H_
+#define QCOM_PHY_QMP_PCS_USB_V7_H_
+
+/* Only for QMP V7 PHY - USB3 have different offsets than V6 */
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
