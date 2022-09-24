Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4551BC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 16:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNX84E/gJlaEKNUFXiOqnGB9+VBZGwOLXgAec+ePKZY=; b=DB6bXB+87eyUKi
	qpK1H4lfTD9N81a9EK96lqv4s9SkX8QkWrCrm/dHl/Wu+UsuAdod6QJMiyPLu+p2GNoWF0EN5/Hkz
	46wFHKCV5JUuOQMixGHqDosBlhWYtCnI8BMF0NrqYe2UCERLwoebK5tOd/BwvFOCxxUxT5+gQ7Lvn
	JJIEf8Q5lBzyMN2LjtqYMlapDPwy0E6OdD0fm+yju9gCHnh27UaQEEOM9i11VpNrrmF+sQzcA1SOH
	crSVkVC+ywxLj/+qUVrodCPg8rqo95Xs4YCbsXsfsFMJ+NlJ28i8mK/iTeJwwvr5aHjpPxXSy6wft
	wS4jmSjBj4dhM6mRUu8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cW-007t4S-KA; Sat, 24 Sep 2022 16:03:12 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cT-007t1P-Qy
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 16:03:11 +0000
Received: by mail-lj1-x235.google.com with SMTP id h3so3168323lja.1
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 09:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=3e3cQ74Y/JA5vVePYbQS/YusMBYX3fuhrdntX7uBS3U=;
        b=KUvqDjmY6EuOVysiL1IAoJUyVxCGESqo2ysnLe7B2bagzto7dyFl72pP0ZiwwfZBkg
         qOTfaDBx65yV6LoTMlxegEUgK0O56I0ustInI0N6XtpfxjX7R7ogNyzsIuWOob0S6tsu
         elnFplzczGm9bzjvr0p2m5kMPrk6ti+if/OtNJsH0ikF8ynAU4jGWZWhl3z+dySKLTwX
         1PbjTcUy0Qnk/TtA9Wq031WMk78tFLHt95leoMpf7cr84+/8kPE253CNMD4fUfaLE6wa
         0PjQR5Ge0sTcvr1mUMrk9DiI8olFIrVokzLb8gX9LVoaBEM2+Husnkc/ned05NFE6vf6
         a/iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3e3cQ74Y/JA5vVePYbQS/YusMBYX3fuhrdntX7uBS3U=;
        b=KynDF0vg6X/RqvaWre8f/3zQc7FBHR+v+LEL6/7Tai3JcWuU0NM4BjL1fcOH3RsBFl
         kDs0en4hziWDjhPBhtfE/PeS5Q4r5Lb7VBELrnx2x9SBq/jhJvMxtKmQEF0kq0xtmMuN
         6NCzWDopjf+NANOPF4igKVO/C37Fp27bqSLogZqDnYF0athhzQ+NFaBGQ8pRtlpLKEMr
         zzmqqQ3YXB20I9hbtqQuuPJKxhg8Y+1ypnjmGL2ua44mcomxRwH4wrgb9XHuHhhwCQ/U
         cC7eehkIA4K9C/mufgvyO0kUjzv7XBhhZkvdI65BK3V00HOG2juXn6U5tyqqNUXgTgCm
         PMVQ==
X-Gm-Message-State: ACrzQf1+QbCju4mPcBpU6C46bDtlByu8qEUDPDsyhmkJcefyQYH8Trpv
	PQb3NqTEETmuO4GKm1iJazisvg==
X-Google-Smtp-Source: AMsMyM5XQors/dq+7LJVGbMfHKBDMa+6z5wIeH38QsMBoDVJGocnChEF/rch6EwppsF29MaDYb65OQ==
X-Received: by 2002:a05:651c:2103:b0:25d:6478:2a57 with SMTP id a3-20020a05651c210300b0025d64782a57mr4779718ljq.496.1664035388407;
        Sat, 24 Sep 2022 09:03:08 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([95.161.222.31])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25f09000000b00499f9ba6af0sm1928015lfq.207.2022.09.24.09.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 09:03:08 -0700 (PDT)
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
	linux-phy@lists.infradead.org
Subject: [PATCH v4 5/6] PCI: qcom: Setup PHY to work in RC mode
Date: Sat, 24 Sep 2022 19:03:01 +0300
Message-Id: <20220924160302.285875-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
References: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_090309_890700_1EA07379 
X-CRM114-Status: GOOD (  10.79  )
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
