Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48F71C3525B
	for <linux-phy@archiver.kernel.org>; Sat, 11 Dec 2021 02:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he/M2LKjmoMc47St+D4ap1iXvd/KSrd5UewN2/bTdZ0=; b=sb9WeQ3ckMhK53
	AiIs4UnV2KIJpqxW9WUEVWWSnRvWcbUh14iHx/6I4y12J4U04GHDirE08y5N0qKDlQdtO+IKLE9CH
	6KiuL9sfkVJ7BpbJqELy15Oo3budvx67ztXkaODqWEi2gwdgk21wvSiISfuDBnLM50Q3b+4r59//t
	IK4ma9uC8qSHS8kBDoqs7bUXvQORT5+DhdKQmn3enmPEB9sri/GE/wQQk3+0f7J27JevbQzeyLuR6
	M3nk1YFR3dCF7r6w9kw5777Y8urT1FhmKjFxouRcyEMmkx8Kyx/iVFkE8DTEvloUcxmslafdjvFWQ
	y2ThHet6yPQJ4e+jfCHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvrxk-004R9o-Lp; Sat, 11 Dec 2021 02:18:12 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvrxg-004R5R-06
 for linux-phy@lists.infradead.org; Sat, 11 Dec 2021 02:18:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id b1so21093388lfs.13
 for <linux-phy@lists.infradead.org>; Fri, 10 Dec 2021 18:18:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eVTN7b5L6Q8M7Gakr2H7R8BmSqA0Ma7LEj299lemVJw=;
 b=fX7/mVf1mpwhGeYX8NJmDHnFlvT8Ji0EZbFJlVGZtA88DN00jWmZ5yjlUVXGRYI8N7
 Mkvj+pJEBZ5fR+fel3eMyYZoziraTQBSkcJqo5t8VslNjm26git837WGBEzo6TWTgr2q
 wFSeDU5FYShbKFhSRw9eqhi0WNc9qiBMFhL+Cm1ldXBBRRquE2GphhZnk53xFfl3np/C
 8PgkH/HP06SzG+88LtRodKSAaDvKIu6Uww8bx07/GgCk9y2Om1Vr1jxGOQ9eRwl1F0AB
 wHTXzBhq+PSAS5ZMLPKdd5xrD2/9JTHpCNuScN5Nsaqhzzw2YRbEtlBbA82yzi81HKWc
 z4jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVTN7b5L6Q8M7Gakr2H7R8BmSqA0Ma7LEj299lemVJw=;
 b=HIutskbRjfjKtaBrtUM8DzCi9/tRGmKy21ZFw6dmMasBjh4o/BiE9Wrg5w0mNkfiux
 fgZ6rgka+ICpDNfihjMI6jBEHVMbSQhe/KP/8IOHExRwlcB8t3/m+iPjZa2/Zm7zSIZg
 3WoarhoQNuNrlJcgYEHBHwYK5fRbj5ucF6j0fAHamNbL3amXLiqe1Y5Xrwhnz9n4y+/H
 sR05NMZUyrQ+YOhzfzC8dxk7it4RZZdiJcSZCNG2SlnTW2716z8TDYvMWrsATy58gJjc
 Rn6rW/fPSFjlxE9xBthGfn+NrPELFC7au6r9StUphvvI1y7kOGFuUnQebCZpDZRGbEqF
 ScOg==
X-Gm-Message-State: AOAM530/B6AjWzo1W+mGbdWPybbGdJAbbN3pddSopTwBK8Bhjy4ih0i0
 nzOpCtUGY2m6l9UPrVZ/bzOVeQ==
X-Google-Smtp-Source: ABdhPJxI/E5VB6V/tJQHzMswPN2CPUgf4CckzS9pZ5XYaNYsLVnnRoLc9eY44Gd2DH6oNUvTkTsjWQ==
X-Received: by 2002:ac2:4d97:: with SMTP id g23mr15876898lfe.200.1639189086568; 
 Fri, 10 Dec 2021 18:18:06 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id y7sm504663lfj.90.2021.12.10.18.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Dec 2021 18:18:06 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH v3 05/10] PCI: qcom: Add ddrss_sf_tbu flag
Date: Sat, 11 Dec 2021 05:17:53 +0300
Message-Id: <20211211021758.1712299-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
References: <20211211021758.1712299-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_181808_072510_E5C0779D 
X-CRM114-Status: GOOD (  12.95  )
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

Qualcomm PCIe driver uses compatible string to check if the ddrss_sf_tbu
clock should be used. Since sc7280 support has added flags, switch to
the new mechanism to check if this clock should be used.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 51a0475173fb..2f9a9497733e 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -195,6 +195,7 @@ struct qcom_pcie_ops {
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_ddrss_sf_tbu_clk:1;
 };
 
 struct qcom_pcie {
@@ -1164,7 +1165,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[3].id = "bus_slave";
 	res->clks[4].id = "slave_q2a";
 	res->clks[5].id = "tbu";
-	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
+	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1512,6 +1513,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
 	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
-- 
2.33.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
