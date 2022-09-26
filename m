Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ECE3C07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNX84E/gJlaEKNUFXiOqnGB9+VBZGwOLXgAec+ePKZY=; b=NSF44gB+csv4bm
	eYERQg7hEeWJxYg/iHoZqyoCObuOxgUb5AuzBuKiubsKUXkvLxWkWMDdTOUYwAqZv837+XQvlvGNi
	WBS85SE3jgpiJS78cV7zCLVl4Y6SrTlu8GunYS+zMevwZ3tIqldNz2/VBPTflSrmku61jLnMYQPqp
	jOnBd0gHU37/pHeSsA1KDadiHGiExY5BX6KMepVoPk/tewarItqLDiYsECk0ErL1TMTKweZ4V8phW
	CuZotuw63FDf9qulCsimG/7cFetS1AWvKxFn8ka90DYRvZkQzscJlaPfxfd633VP5m5u10Xg7cu5U
	+K9yXcOTV3E8Z3r7YILw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0F-00636d-TV; Mon, 26 Sep 2022 17:34:47 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0C-00633V-DR
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:34:45 +0000
Received: by mail-lj1-x230.google.com with SMTP id c7so8239716ljm.12
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:34:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=3e3cQ74Y/JA5vVePYbQS/YusMBYX3fuhrdntX7uBS3U=;
        b=tmyP53QUXFzOp9SLY1CoGF+hY1IeGXbhzqP9dn2Qvm7k+SKowB2uBjxUiljWOuTrq1
         LZcvdrxufduLaTwXpTDOmuhWrzK3fk6wOmAi2Stfdo+4ZikMyg0SU3wGcIVWyYDGIfjE
         rACcJEzkQippph2lqQcSBxGnZklpqCPaGA60LpM2jgblD2cIaELVPVVo6V3He9lnaXk4
         l4EoDHKvkj52rsEaoCwS3Q56LV4sgQw9+qOLPqVT4e7YGtP4RN2oj5ms3fB5xJ1hdkwG
         429xQL/j23Oexxu+074VHCisu91237kfMNCFqgU6LODRQFuVhpXkm83UswtC9u10mnrB
         Aewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=3e3cQ74Y/JA5vVePYbQS/YusMBYX3fuhrdntX7uBS3U=;
        b=Hcu18m7j2+almDPWsVUCYeCpBr57jkZKfWMSXHsCzITu6jK7Pq+5MmYWHjYH3INCuL
         xLQNczaU/d49l3vejbdzvOJFOatbr15Hag9lKUvVx25y4Xu+uAOVif7uqRNp0403qc0J
         pXZaAnntB6oq9a7JKe+mamfw98RypJK5A7rHDmgVhCKIHJSbBUHWenMXiWZMEZB0T59u
         0UM//DyBxR28j6nlSV95vv6IN3Al//zfH+PhDH/8Y3tR9P0XAlnz9NvdxEY6R7CV75zr
         vu3HmswkYxjxyeP0wNKcJf2JrCgXiaTMxM6dQhGfz7VQH9RaNlKI6sMeOU4Uy2hUprnh
         LilQ==
X-Gm-Message-State: ACrzQf32OicZBAnWK63n0QYhl8XuSJo1vdBAWq3zrgpH6YhaRFmExTFq
	nclA9CUIS8vHDrRxJ3tgAsGXWQ==
X-Google-Smtp-Source: AMsMyM5hNPwJODDaBww/H/VnqGj2ast7kHgpwgltri59XzriXHUkEQhqnYIlplq8QvivFpiSsC35Nw==
X-Received: by 2002:a05:651c:b08:b0:26c:6911:4e37 with SMTP id b8-20020a05651c0b0800b0026c69114e37mr7917669ljr.336.1664213680686;
        Mon, 26 Sep 2022 10:34:40 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a2ea448000000b0026ad1da0dc3sm2402640ljn.122.2022.09.26.10.34.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:34:40 -0700 (PDT)
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
Subject: [PATCH v5 4/5] PCI: qcom: Setup PHY to work in RC mode
Date: Mon, 26 Sep 2022 20:34:34 +0300
Message-Id: <20220926173435.881688-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_103444_467331_0DE29CF5 
X-CRM114-Status: GOOD (  10.72  )
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
