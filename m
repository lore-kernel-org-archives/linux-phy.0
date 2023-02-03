Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B62F7C6379F
	for <linux-phy@archiver.kernel.org>; Fri,  3 Feb 2023 08:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31iDd7vSAZ09Lsbft2irsR+Szek2eRb4FpdH8hO3JxY=; b=L9Z2td9TwUGf/T
	1W2E8oPcjLdlpvlHziv5qr0n0BvOChaTMZrYgBeBfGAvK+IYtMKc4PbX6np8QwwITov7yZ/3vRHcf
	o/t40/PDO3SZJ6mb+meeKJFs+7nivH9/u53n3T51DN00FofEeB06vR1QbbsgTQFIlif8VJB/IJj1+
	Mck052hzJeiIJ9hTGUdWkkUsv+TRq5zByFiV+mQv7fmMar6C3Th1Bu0+hWlMTnmy4QE9zXZP7lRWx
	h61urWRVXjRSqH3m/9swWYJPa/ZgqoRF8dDET+V7ft3tUxPINPVCGtbu3w6J0NcchPKpFGKxAI+Lr
	l1ZrjEHHHsPInLuwJl8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrH2-000ywM-4U; Fri, 03 Feb 2023 08:18:20 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNrGy-000yu0-PY
	for linux-phy@lists.infradead.org; Fri, 03 Feb 2023 08:18:18 +0000
Received: by mail-wm1-x331.google.com with SMTP id o36so3250604wms.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Feb 2023 00:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FiecONjnq8HfLhexUmKPGLEolULuRBwbc0h4TWAn85E=;
        b=X6mPaZTpjFizpOMchI/a1sHGuRmF2XN4ZbpawbdBkQaHzUmmqgmUmfdiip5ZTdQtAV
         WeBH1su0BBWwp0BFd1OUqPB/XDeHXVgr04815QXfs5ieWC6f+FUW2cgeyhcfQAjOUc13
         ivD6wxIvDq6MkLY8oiCWXy6zueWQmvEGXkgVI0hPQbxvhj2V+qu6AM/Wcf0lwMKetbCi
         ilOdXoYF9mGHc3wRdZsxn1zIsb6XHhhdQLNXwEo+a+jFkaZjUVmK7XteDbx29+myVItC
         30Xx1xbqCVYQ2wbsNl9FRq9ELO2yWAgn0jJyK224Olp7ED2K83UkVUU/nU4M+zMsNoRp
         L7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FiecONjnq8HfLhexUmKPGLEolULuRBwbc0h4TWAn85E=;
        b=33FuIE3mW2p3DOWCj+pun4CjCqaVwh/5iJIru/L9z5ViGWrSVjsX/jOWCei4jyCch8
         OmHqSZI7KDk6tYwOFVzXV85R7FA51fDqfvxJyadvfwORkS7FwoDYdLVfe4mjTvWy9d2D
         d3Zu7whpS6XeQJei9jkag4/HyF5CCymywx0vhoBQKundngCoa/i+jwjQgYMM9jYgQGHl
         qmlbd/NXW8IuYr34gmN91DiSe5FQ+TwUFnHNsoKuCsZqYccCoU5iwD4JwQ3vMTnGgckg
         Ge6fJe1t/o2mAjOUvaaUTUSRzLPdDR1x+5Ek4vOUqnJlxarOheerUHDrbNP8/GTqwUfP
         Z6Xg==
X-Gm-Message-State: AO0yUKUsURevlh6kRwol6q4PxYJCf1Asj/lJjTZ4SbMWV+TVPjudsNNU
	4etbt1YJoVLwnF4MzFBF2admRA==
X-Google-Smtp-Source: AK7set/lzTsLd+rgFUvvYg4aOMoZSOb0DfaNnncE/+1uFkDA15IGFp64lTVdeX8TfpGY0utkBqpsZw==
X-Received: by 2002:a05:600c:3c96:b0:3da:516:19ed with SMTP id bg22-20020a05600c3c9600b003da051619edmr8395217wmb.29.1675412295617;
        Fri, 03 Feb 2023 00:18:15 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id az24-20020a05600c601800b003dc4baaedd3sm7316591wmb.37.2023.02.03.00.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Feb 2023 00:18:15 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v7 02/12] phy: qcom-qmp: pcs: Add v6 register offsets
Date: Fri,  3 Feb 2023 10:17:57 +0200
Message-Id: <20230203081807.2248625-3-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230203081807.2248625-1-abel.vesa@linaro.org>
References: <20230203081807.2248625-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230203_001816_871192_C9C29326 
X-CRM114-Status: GOOD (  13.17  )
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

The new SM8550 SoC bumps up the HW version of QMP phy to v6 for USB,
UFS and PCIE g3x2. Add the new PCS offsets in a dedicated header file.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patchset relies on the following patchset:
https://lore.kernel.org/all/20230117224148.1914627-1-abel.vesa@linaro.org/

The v6 of this patch is:
https://lore.kernel.org/all/20230202123902.3831491-3-abel.vesa@linaro.org/

Changes since v6:
 * none

Changes since v5:
 * none

Changes since v4:
 * none

Changes since v3:
 * added Dmitry's R-b tag

Changes since v2:
 * none

Changes since v1:
 * split all the offsets into separate patches, like Vinod suggested


 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h        |  2 ++
 2 files changed, 18 insertions(+)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
new file mode 100644
index 000000000000..18c4a3abe590
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2023, Linaro Limited
+ */
+
+#ifndef QCOM_PHY_QMP_PCS_V6_H_
+#define QCOM_PHY_QMP_PCS_V6_H_
+
+/* Only for QMP V6 PHY - USB/PCIe PCS registers */
+#define QPHY_V6_PCS_REFGEN_REQ_CONFIG1		0xdc
+#define QPHY_V6_PCS_RX_SIGDET_LVL		0x188
+#define QPHY_V6_PCS_RATE_SLEW_CNTRL1		0x198
+#define QPHY_V6_PCS_EQ_CONFIG2			0x1e0
+#define QPHY_V6_PCS_PCS_TX_RX_CONFIG		0x1d0
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index a63a691b8372..80e3b5c860b6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -38,6 +38,8 @@
 
 #include "phy-qcom-qmp-pcs-v5_20.h"
 
+#include "phy-qcom-qmp-pcs-v6.h"
+
 /* Only for QMP V3 & V4 PHY - DP COM registers */
 #define QPHY_V3_DP_COM_PHY_MODE_CTRL			0x00
 #define QPHY_V3_DP_COM_SW_RESET				0x04
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
