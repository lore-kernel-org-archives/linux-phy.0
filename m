Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18A9EC4167E
	for <linux-phy@archiver.kernel.org>; Wed,  8 Dec 2021 17:15:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rIV4dIqRST5IuMLH5xzjqak+i4UQfmUFtkD1mHyP0hc=; b=halIYpvFcMYpJJ
	uIk2uRs25n85tqBLrc6RWgJ6YGYROyZiUBC/AHg6fca6QvH3rLd4uhK+gdcbDoYKDjt+idIk35Sgu
	hNeq4Z0ecHW5v10sQUJ5sQWSyTl0xc5YUWQ0t/4Uut++g7KviEyZH9MiFhFD4ulmhTXwLeV2fhk+N
	S95I1YbeoMa3+Un6x2Ey8JCCnAVpheQcqeTY+ALOLVr24oYGNdsnnd7SaCEbNFY8wIZ6RbTT06IXg
	betUYNSROOChosu7MDCNCeu76VzIkUVDi3ECIgEh/rVyB8rkQ3MZ8u2RZVkOseq7+gdUA28R4i4bC
	gI7bV1mHBKaxNbVyxoaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mv0X4-00DgzM-HF; Wed, 08 Dec 2021 17:15:06 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mv0X1-00DgwN-Kr
 for linux-phy@lists.infradead.org; Wed, 08 Dec 2021 17:15:05 +0000
Received: by mail-lf1-x135.google.com with SMTP id n12so6976016lfe.1
 for <linux-phy@lists.infradead.org>; Wed, 08 Dec 2021 09:15:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dt6ihFbYfqd5aPj9M//CpdMA5RnM8gPqGCN6JmxEFho=;
 b=LePC9wR8Kh0skORad1zbzTg5eJWAWBKeXylgYw9knG0Vxk8T8GsXoxJaioFtGaFzeL
 C2bt1KVKbQ3Q21iibLRhyiSFHCosVpbVT5xb1uu0uSBTYCFQUYPjE3j3megDsB3iSsG3
 PgDEhLsG/0Ne1iDK0fBEzwciTVkgF3XRcnWdDaBFfJzPOBfssvW9/T8jcV/9iawJcO/N
 UGJhGuglrshHw4YyWLMafwepsGXGpgrL7N9L1dXjqYDbFcaisDIkTG0syTfvr/1nNAGD
 2jC4C6K7Q9tKnJv1QyXRfBQJe5fKLpvv160FW+XuxwhIpiS+zdSYjB7UPJdCHPwROPCp
 Q6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dt6ihFbYfqd5aPj9M//CpdMA5RnM8gPqGCN6JmxEFho=;
 b=4IAIQJFyGkYxdKc42LcPxxH5gSbPUPUwQ/WY52tOtZDN0zCrNodyItqaWZfPfxd6nZ
 sy7HMOuiYKR8YT8Sil7dJOYLzs4eF+aupkL3V1TxRhpFsxEveQg4GTFkzv0hYl2vQDj4
 jlsybL10yEtAoIji6xBRp6r7/Ha8RwVtMPed75i+E/CX0psQ+WwC7PbUA3NpbVyf64vU
 oE3WGBrl8OOoMOvz9gQm225Q3SLmOy5jrUPBy5kJSgowCqEzl7Km8Fn+TqnR2fpxC4Xr
 DajcEFEBw5TF1sB3B/oPPrOQsNUBvovAlt+aDF6JnehwZOaEg29n8R54aiNRWKJmCIjk
 +OxA==
X-Gm-Message-State: AOAM533PjWgp24rr4fv6kLnv6iFOTt0ve1Pk0MfgTvIpxd2If+SNjPF4
 5LsqBvoKrc55Oo9GcPQ1KAIoXA==
X-Google-Smtp-Source: ABdhPJwp2iyfGP9Wq/y45iLN3gPhc74Dj8WW6mUkO3BHNWh/VJp8RSvtgMIqv51PhVPdfpyoprGjIg==
X-Received: by 2002:a05:6512:1194:: with SMTP id
 g20mr716006lfr.58.1638983702065; 
 Wed, 08 Dec 2021 09:15:02 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id t9sm307213lfe.88.2021.12.08.09.15.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 09:15:01 -0800 (PST)
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
Subject: [PATCH v2 05/10] PCI: qcom: Add ddrss_sf_tbu flag
Date: Wed,  8 Dec 2021 20:14:37 +0300
Message-Id: <20211208171442.1327689-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
References: <20211208171442.1327689-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_091503_730746_2CE671CD 
X-CRM114-Status: GOOD (  14.46  )
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
 drivers/pci/controller/dwc/pcie-qcom.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 51a0475173fb..803d3ac18c56 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -194,7 +194,9 @@ struct qcom_pcie_ops {
 
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
+	/* flags for ops 2.7.0 and 1.9.0 */
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_ddrss_sf_tbu_clk:1;
 };
 
 struct qcom_pcie {
@@ -1164,7 +1166,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[3].id = "bus_slave";
 	res->clks[4].id = "slave_q2a";
 	res->clks[5].id = "tbu";
-	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
+	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1512,6 +1514,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
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
