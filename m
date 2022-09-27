Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C41C7C6FA90
	for <linux-phy@archiver.kernel.org>; Tue, 27 Sep 2022 09:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CeXzwXbL+25ET+04Vih5YWFJrA1CYx7o3UYYPaysW0=; b=QY3HcNtCdFxhfD
	ZFDYdyL3vst42S1Bj4xDkuupkP9UmenjHPNPNmC3IJLzOw+Hajn4p9myXWirdmhOk2zAIaJCMCRCj
	P2gMEHlMW4f3rXs7hCtkVQYXGmfTVoimIqNyes8NpKlEyqPaI2JAW2dG9KnoIY5vEh5fBoNNiUH7R
	IVG3ByDstTYB1HOb1deHqPWw+hijhoVrRDBLnd2QKPIS5A6Kz47cWaD4WKJyiU1xh0I5yrjtvcV9W
	U90GLLaGbBsUVeiRPZ9A/6wUUJyDujNpTskF4I5YHPCMZM4+8D5mo7bFzZQ/64fvUgLeMzX71ynyy
	F0NFVaIuSJLcTBtf/6Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6sm-009XSX-Hd; Tue, 27 Sep 2022 09:28:04 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od6n9-009UjA-7y
	for linux-phy@lists.infradead.org; Tue, 27 Sep 2022 09:22:21 +0000
Received: by mail-lf1-x131.google.com with SMTP id z25so14814479lfr.2
        for <linux-phy@lists.infradead.org>; Tue, 27 Sep 2022 02:22:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=+cRD+CYxxlYh0TtwkYsk8VGD+YRN12siaZ7YI1JRdBU=;
        b=C+ikIGiHKrX2JWV6Ywhc5I8pRpcwLG1KuPK9+Gg9V+ciLX0Dip4q7RgKbBUirPd7dJ
         riaaUEyoi5mNaSPNfyMqWeCoue1QdN8UlvotASSsbjwjvrR2wAilVhfWX2z45ZrQJ/4p
         FCAgbaKe1t8q4D/GbnD6BlBEiw5XcDzviIJSeQlZHh/9ijSMUnOg/4RFrO6PZQF72Wxo
         haebmx3l+i+QUzNsm/isbYmaY/wza8HOwVX44vzjCKFSTNM6v7llYwCH92/qVE4Jg6ty
         KOZSkuNx/ULlCESmJ5y/+iWFc1S3NQmvydfH24pdL0Y3P10KW/mp45Di5i7NcKilFSRA
         0ylA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+cRD+CYxxlYh0TtwkYsk8VGD+YRN12siaZ7YI1JRdBU=;
        b=y3LdbK7MfdtV9Jj/kWFMt8p5eUURwJQ9eDVs6Y9VYRfp3PHHS4RTeDyDIJ/noKjujz
         xqO/9eeOz93WDf8Spj48aglFksWrdtyBf/ng9kKAOOxlVAfjehL01x4h2x5tkF48ZfxO
         vgXvI1bnjFC1iz5ldvI3Y8PSbZ2i3exxCWRzDsUOR/RK3An6TOohQTV2JGZMvncnESmK
         9agblzkCGtqllt+pKfZUWiGl6WM9tal1tsTaRXO4zOOBQI+R9W/PsS5k7YTWDuTsJQHG
         nhWyO+Ry2peV6iiyuRs6Yt8AQQP+ZccoOAWWkd3z7pHLqOzT4MqQx90HxQ9h/yubVPKE
         roSQ==
X-Gm-Message-State: ACrzQf2L0yGUTEZ7y0xyKYr24J4lRGTB/HiiMtId9MtYdsAMKBE14hKZ
	g/b2qI9E56W6qH8DmVCmUM3k/Q==
X-Google-Smtp-Source: AMsMyM7dzWp7+3RxnEEZRbvsOsxHgCe3YxG7c2tkgPLG9OrgwrJ7+K09IWXwKsgU/E745SVrDqEhhA==
X-Received: by 2002:a05:6512:3ca2:b0:497:9db7:ec10 with SMTP id h34-20020a0565123ca200b004979db7ec10mr11480446lfv.350.1664270531318;
        Tue, 27 Sep 2022 02:22:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id r28-20020a2e8e3c000000b0026c15d60ad1sm104584ljk.132.2022.09.27.02.22.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 02:22:10 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v6 4/5] PCI: qcom: Setup PHY to work in RC mode
Date: Tue, 27 Sep 2022 12:22:05 +0300
Message-Id: <20220927092207.161501-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
References: <20220927092207.161501-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_022215_417360_80501CE9 
X-CRM114-Status: GOOD (  11.26  )
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

Call phy_set_mode_ext() to notify the PHY driver that the PHY is being
used in the RC mode.

Reviewed-by: Jingoo Han <jingoohan1@gmail.com>
Reviewed-by: Johan Hovold <johan+linaro@kernel.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 66886dc6e777..1027281bd6ff 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -22,6 +22,7 @@
 #include <linux/pci.h>
 #include <linux/pm_runtime.h>
 #include <linux/platform_device.h>
+#include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/regulator/consumer.h>
 #include <linux/reset.h>
@@ -1494,6 +1495,10 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
 	if (ret)
 		return ret;
 
+	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
+	if (ret)
+		goto err_deinit;
+
 	ret = phy_power_on(pcie->phy);
 	if (ret)
 		goto err_deinit;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
