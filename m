Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63536C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 17 Jan 2022 00:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrjYZr9eiDHFW647qcaUU1/saHzrxubRw1EOzU/jqLg=; b=icXVSssuK0fl5E
	0//+PiVqTEZmG1Wmt8HrDbGLwIOaiU57hjBwz5c6JiLcEu2zoTV9Qyk1F1xWyMVBXFzmP+gtCEokr
	/hBt06mubBR40UEHlnjzSQUxxhFvvnuoFExHR7+6R2DVWBPgoYpLo3WbDtN522+clJ8GDagPr09qA
	ykLeDFqFaKO/G3bVx8Ni2cYnKIAer1czg3Jusr6dPVZ1RWfCZcIBTJLUx3pBp/LGdhhLkfxu0GC3g
	1l9t6y2LY++oAnYE7wOCjxV8Xnt13RMXlwx3f1uiKWML8zIdv1edy9Yi98w0lR0JepYtHeKhxn3mT
	mq2zG6eBqa9WkwWPhPrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9G7x-00DAtc-Sc; Mon, 17 Jan 2022 00:44:05 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9G7t-00DAst-Vo
 for linux-phy@lists.infradead.org; Mon, 17 Jan 2022 00:44:03 +0000
Received: by mail-ed1-x535.google.com with SMTP id c71so58712323edf.6
 for <linux-phy@lists.infradead.org>; Sun, 16 Jan 2022 16:44:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WyTjsYAqJre6WBuJN2gLwpHyZHUA9DXs/0qZoICj1G0=;
 b=jQuaq0y+O5L6GO4bjUCOQ9A/Mg373V15MBKhEAX0Rvrk8AUTttyNuRg//wLxc/dQXQ
 W9c5Xrweqcw5rLf/YZ4xbsI+VXMiwauZCA0Bdehno9ZK2tRWkQCdXIslj38ZguicXNzP
 H9FmrocNbwh09OEt+81WwfhVfTCJcpxFvwHOz/r2UDIGCH30GHQLpObvPGLycQunuQ1u
 2NfhuTJaZ5tSj1tR+1kgX5veWd6+bNaObmTDLcO64OA3RiFfCrq+9oOOaaJGAM9NJTvJ
 p+gzkGsZTw1HWPeHmQvZ9lJ62S58Z/oP1Fz3BhXHITVM2KGcPbs+Y0YohUEQXPIEyCZX
 y/7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WyTjsYAqJre6WBuJN2gLwpHyZHUA9DXs/0qZoICj1G0=;
 b=v3BRCPWwJA2QfV2ea43EbQIUocPQ6huVJ8KVByGVdSvsvugzD5qYdhCjTgH+68Wqby
 X0i8rc5KjDjYs6yVcUeIubB6phT/kse11JK/Euyxu4IkRLWpdsaE1Za/iBLQSoJ18qni
 99y0lHeEW623qrkJ8PWG+iehSemRihjnCO3g/nDScRXR679QJu/aPQq3lGoZXsW34JEj
 lUE+5O+tFCHvkNJubpmvOUGdnF3GYdeY0IqBcsjk9qxbCD5qOTULBKqpRmuv1O5wyTcw
 FF0UPGwCiDAC4GTZ/6Taj2hVWkyRDtcmzsQXWDvupPo7ULnGLutP4ZG9IhqTan4cPump
 R6OA==
X-Gm-Message-State: AOAM532N9qg8nnKfVhiJN5LX9OASfIFGEogY7ZV2HGe2mmBtzRFGZz2U
 Nqstn6FQFCuVh25keh6SL6w=
X-Google-Smtp-Source: ABdhPJycHDJDK2wIcZ9MrKh20kbDlM+LzNtCQKuPryr8jJpJPvyJUwDwk9l2Zpc42McZ1yARtziNUg==
X-Received: by 2002:a17:907:961d:: with SMTP id
 gb29mr14852565ejc.123.1642380240431; 
 Sun, 16 Jan 2022 16:44:00 -0800 (PST)
Received: from localhost.localdomain (93-42-71-246.ip85.fastwebnet.it.
 [93.42.71.246]) by smtp.googlemail.com with ESMTPSA id
 go41sm3879266ejc.200.2022.01.16.16.43.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Jan 2022 16:44:00 -0800 (PST)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Subject: [PATCH 2/2] drivers: phy: qcom: ipq806x-usb: conver latch function to
 pool macro
Date: Mon, 17 Jan 2022 01:26:41 +0100
Message-Id: <20220117002641.26773-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220117002641.26773-1-ansuelsmth@gmail.com>
References: <20220117002641.26773-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_164402_042776_1C2CEDD4 
X-CRM114-Status: GOOD (  11.27  )
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

Convert latch function to readl pool macro to tidy things up.

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index 6788e0e8272a..ab2d1431546d 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -112,6 +112,9 @@
 #define SS_CR_READ_REG				BIT(0)
 #define SS_CR_WRITE_REG				BIT(0)
 
+#define LATCH_SLEEP				40
+#define LATCH_TIMEOUT				100
+
 struct usb_phy {
 	void __iomem		*base;
 	struct device		*dev;
@@ -156,19 +159,9 @@ static inline void usb_phy_write_readback(struct usb_phy *phy_dwc3,
 
 static int wait_for_latch(void __iomem *addr)
 {
-	u32 retry = 10;
-
-	while (true) {
-		if (!readl(addr))
-			break;
-
-		if (--retry == 0)
-			return -ETIMEDOUT;
-
-		usleep_range(10, 20);
-	}
+	u32 val;
 
-	return 0;
+	return readl_poll_timeout(addr, val, !val, LATCH_SLEEP, LATCH_TIMEOUT);
 }
 
 /**
-- 
2.33.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
