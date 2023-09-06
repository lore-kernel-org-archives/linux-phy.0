Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44EA9EB8FA5
	for <linux-phy@archiver.kernel.org>; Wed,  6 Sep 2023 07:58:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/TbkT2Hjia8+AoKsCzpqhd9TpocsXTmPnd8lGGTlvQ=; b=X1A9vIFzwa8bof
	qBW5kfO3/uGJil9WsshRDd74jzHCCBwoGZTSb+enpE0SoT81zZ+lnvNuLPi/WQyc2qDQcntN9wX2i
	5mF1sek4z1qMLGFMOfMicab8IJ6GG9YDTzIRr5bmq6yS35lu2rI0n6EYIozzNA3jamKtVt1w6ZQWu
	7oGUIZMxhF0GYuwmAn6V92SKXixCovmalct7RiQvEoLqTU1R2G8RwlkTke5sHwi2PFrcMPVs35l8R
	sj508PDEWeLEo2S0TX8y2AcuutmsQI22sgkjrgvEH9EG+WVYCRRuLGykGoQlkmO33VoWydl9ivzSd
	B8IDDcf2tzY3EoC1iqmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQr-007bVE-3C;
	Wed, 06 Sep 2023 07:58:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQq-007bUX-1p
	for linux-phy@bombadil.infradead.org;
	Wed, 06 Sep 2023 07:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Zc6GA/fk2/gKuWwX+Ah3/04hrLBk2zRiGZ82j7q3als=; b=D1glDAKFHEYMFumtCdiF3PHpB8
	qQZtD/CpKRdOnAdKZ+Orw5nPDV/YVeeDvZHVpTFXQeuT+Ys32vbeuzSCrnvyh3IHHL3OUstVJYkQZ
	Gs2E0eo0wJNokS4aVMxyknJ0csU8hgMb9z+/W5kgDjnNFw4fz5Bak457ruf7ADGColMDqcZO8zbuT
	byetPUNeS8fMD3A5lBMtCiJqezyEfIQ/YOI72YMC6eYTPjOd/h+oRbp2meexKcdF0uk5khIvmtWxF
	aSpyNMn9TWg0aCmM9CI0jtL0yEKEcJdqO4Lzt2Z3Mj5JOE7ZXFnIA1MM3uRmTalYgePO469hrWszf
	YcWPlpZw==;
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdnQj-000xaW-2M
	for linux-phy@lists.infradead.org;
	Wed, 06 Sep 2023 07:58:35 +0000
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2bd0bc8b429so56846211fa.2
        for <linux-phy@lists.infradead.org>; Wed, 06 Sep 2023 00:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693987108; x=1694591908; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zc6GA/fk2/gKuWwX+Ah3/04hrLBk2zRiGZ82j7q3als=;
        b=WJMxLoVszZ9zF1SkkCPn7fOKxcg+jWR+pduQqH4vL2uJv85VOyV17CI+QXMrXm02Ts
         ov1n2PJCcsnUVaaKTEEtpOZP/LtUAUpEQoZ4Sk5yaVUF2gr55TOYIWAO0RwO8FxtRBTY
         piTl9LZjx2CyDXXkYuGd0ym0v7IoyIFOk5BZtm+d3xguS79u+TvsWVbBQHxWNnot1TMb
         32l6VhENpcJGcX2NTI18ysTNtMRYhFK7UD0Uik5Dr3aysvg7VPGqO1QcR7TM+UtB7Y8K
         wjDjPonVctEGYu6qD39QntZW8ZTmym6cO016KHAnq551QyL2xEnNl6jcNxCzIAhRYPCI
         Ohhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693987108; x=1694591908;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Zc6GA/fk2/gKuWwX+Ah3/04hrLBk2zRiGZ82j7q3als=;
        b=T8vQkh5EyTg4TZaBomy+Sa38ilFK6uOVW4Jcs2zQT2jNMABvwsOwTFWJRk2BZ+q4vm
         RAn0swZh8NKscfvSSptjJMDVnN894lrFCG3oHaVTRp63PDX4xfdcNd4SwoQtXONfNKzv
         74rSScodO+cwwgtiN3+BOwD6+2b9x3Iu2pxvC2HIsS0Hs+UpBhEu3+/ktW3Qs1XGYWC9
         GkxA9kU7nXFCS6GdfsATy54K1bV56P8m6Ai2+jztgNOh6dMMdBa0gAE8b9aP+7C+jvob
         PdrS7Aj0WABAAJ7DyBILNJ8aJeQJ5lq0AibN10rCgrbG+mb6KpWkXX0IH8FZbUxzn9i/
         6DdQ==
X-Gm-Message-State: AOJu0Yw2ZIjHmKvPqtxrwHpd4Qn3xX4yVffEvWnh8Tc75v+InNC+jzn1
	HBkDEba/xsJ3mlsYOp489C6xfg==
X-Google-Smtp-Source: AGHT+IFqqL99Rw3jobuZLC/7QEGC/tZ3+6nal7nC4ZD3QhD+uwyNc0oNCd3h8cENdgcSz2u3ygHA/g==
X-Received: by 2002:a2e:9b85:0:b0:2bd:19c5:3950 with SMTP id z5-20020a2e9b85000000b002bd19c53950mr1501661lji.33.1693987107822;
        Wed, 06 Sep 2023 00:58:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id z10-20020a2e7e0a000000b002b9ec22d9fasm3268324ljc.29.2023.09.06.00.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Sep 2023 00:58:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 4/4] phy: qcom-qmp-combo: use v6 registers in v6 regs layout
Date: Wed,  6 Sep 2023 10:58:23 +0300
Message-Id: <20230906075823.7957-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
References: <20230906075823.7957-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_085831_592923_CC2EFAF3 
X-CRM114-Status: GOOD (  11.33  )
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
index bff6231d7de3..9c71a132afea 100644
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
index c95d3fabd108..496c36522e55 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -7,6 +7,10 @@
 #define QCOM_PHY_QMP_PCS_V6_H_
 
 /* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_SW_RESET			0x000
+#define QPHY_V6_PCS_PCS_STATUS1			0x014
+#define QPHY_V6_PCS_POWER_DOWN_CONTROL		0x040
+#define QPHY_V6_PCS_START_CONTROL		0x044
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG1		0x0c4
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG2		0x0c8
 #define QPHY_V6_PCS_LOCK_DETECT_CONFIG3		0x0cc
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
