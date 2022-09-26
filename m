Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F692C32771
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUWUIgKamFWsLTtWU56q9QhB5tDQIJ7zAuQg7eqWIJk=; b=WGhf3KWxwkqye7
	mkFf6N7mkSGuNNzzj2Pcs6glN/2ehErEHJ5Gq7yNBlQ1ETzjM+Jikh55lh/rje2pic4Ei4Yx0W0At
	ZKJ30HpA79Jjvz4yXh2NcrHP7YtBEhKu8xfCJt5ihgowjtR1cZ59ioqJvyhmPKnRwLL5dqSzjiLX9
	8nZDOwoZFUt6nVVA1qvyLIPlgNa0LzXDePUYtP2G9MKb2fLOzzEb++qgb0nQldhul1+3vxnI/IQD4
	dL6le4iqwmWoACymGopMU4NBQUluPnj01KDpICWhBsiR/JIZHyYn+zjB8YPOSU6s3NoLd9yHVWq9h
	QQ5pQIgb59kyv60XQgzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0F-00636P-PC; Mon, 26 Sep 2022 17:34:47 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ocs0A-00633h-SN
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 17:34:44 +0000
Received: by mail-lj1-x235.google.com with SMTP id a10so8342604ljq.0
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 10:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qNP6ThRLpHNI/EUjMpjjuQG55s6ZxCbGqJcYBGEJHG4=;
        b=D241F1ruvGGAEpCL0UxqPIIzUojP8zxvdNFGSfGxOKiwcjhFKisVC/TsvqXfMYrkXw
         xQ5+/ItFJ5s0KyyLw9lvJL4VjEAzuZ2/RIAk9bk/djI9tx6xozuwHUUZKAGeLWGzj+YF
         y2u7fJlZJmIXijPbCwfS5VhUJbtM+wauaZQik3cWcgL0eJVePyF6SUFooTv3tZGO8k+8
         bAKWilh3BoAi5tOMq5hEiYO01WFl+NmGNt3BQbAO33NBnAavtQUMQmRZ6izfaJKvyKrD
         du8dn/XHpOo4jUgmSvcne7VL/7Jt2TMP6KnMTeYBS9ZAuYzun7Pb6DGF7q9wZgE3UW1G
         W0OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qNP6ThRLpHNI/EUjMpjjuQG55s6ZxCbGqJcYBGEJHG4=;
        b=x0cm9OmSZO03asyNY0kAj/sbP53cEA1QQGEpE47klWhK882V3IaTIG1rvIZHvO/ZBz
         lw5xm1IXhwvcjMvkQfNPoFEAsswU0DfstSejS79zgQNlWUls5Lz2CHUZaSNn8XQ4Ysyw
         WZGhibehbIo/xZ42Il0Ik1q5lxg21bzJeL5BE3d3uB85k3ijHXU7YMp+AsSOt8ZCUwaP
         ckv+zwc4K8erO17X2nXUNi9nNwstnAtNVTzKr6ewGXhP4ihAXu0yGvZ52lI+ARAN6/9u
         JIc5rVogdAej+ZcNSg7jBNFPNAoqjiYd+9ELYs6TVQqkenRE+MMaX1LDDQcK7A17klcb
         vO/g==
X-Gm-Message-State: ACrzQf1M2xm1O16aBdnQouxDQw3vkhkVi54YNyffNHYfPv+/5vKeAV7V
	WtjGwsAl13CDWmIMSxwTfaQP2g==
X-Google-Smtp-Source: AMsMyM7LrmvhClw5NVJoD/nWT17WiMh50/6toM504DFeDEb2bcd+5q1FYQTr/d+5XGmaMXdSm7TEyA==
X-Received: by 2002:a05:651c:4ca:b0:26c:50be:5df6 with SMTP id e10-20020a05651c04ca00b0026c50be5df6mr7896118lji.177.1664213681585;
        Mon, 26 Sep 2022 10:34:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v8-20020a2ea448000000b0026ad1da0dc3sm2402640ljn.122.2022.09.26.10.34.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Sep 2022 10:34:41 -0700 (PDT)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 5/5] PCI: qcom-ep: Setup PHY to work in EP mode
Date: Mon, 26 Sep 2022 20:34:35 +0300
Message-Id: <20220926173435.881688-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
References: <20220926173435.881688-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_103442_931703_9862E023 
X-CRM114-Status: GOOD (  10.51  )
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
used in the EP mode.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom-ep.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
index ec99116ad05c..8dcfeed24424 100644
--- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
+++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
@@ -13,6 +13,7 @@
 #include <linux/delay.h>
 #include <linux/gpio/consumer.h>
 #include <linux/mfd/syscon.h>
+#include <linux/phy/pcie.h>
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
@@ -240,6 +241,10 @@ static int qcom_pcie_enable_resources(struct qcom_pcie_ep *pcie_ep)
 	if (ret)
 		goto err_disable_clk;
 
+	ret = phy_set_mode_ext(pcie_ep->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_EP);
+	if (ret)
+		goto err_phy_exit;
+
 	ret = phy_power_on(pcie_ep->phy);
 	if (ret)
 		goto err_phy_exit;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
