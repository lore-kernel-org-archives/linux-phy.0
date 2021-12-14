Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12391C4321E
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=he/M2LKjmoMc47St+D4ap1iXvd/KSrd5UewN2/bTdZ0=; b=MptIA0lYO1djvX
	fxAMuBR+tNEzHuA3ZG++SuEO1Dgbzzu/fF4ODhaIo3wIh1Dj80uk1qeT0BIVVVwDzDi4iu9dPkTlb
	jUaoe39nXcUChKJKNQoSozBNDF6ZNmdCxRyyuGTlHjJX1NQE8AB3i4cisHlYp4K8PZoPQ9cJ8WPR1
	RK9bRZqYJXPk9wlwJg66gpfNMJUOPCsvO5lGhWPx49sm8XO95tOP4o0QHZM8y9KjZRiOOHb3JBNws
	yUjKlkdnx2U77k6MgqKPyquDqmS3BQiZ5shtFjsrQWggvrfR2Fiiz977sOnii06QGPqkuCtEqsBaE
	ExNSNBhqL2LnxO/XYslA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxGlF-00G0SR-BY; Tue, 14 Dec 2021 22:59:05 +0000
Received: from mail-lj1-x22a.google.com ([2a00:1450:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxGlD-00G0QO-7j
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 22:59:04 +0000
Received: by mail-lj1-x22a.google.com with SMTP id 207so30547369ljf.10
 for <linux-phy@lists.infradead.org>; Tue, 14 Dec 2021 14:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eVTN7b5L6Q8M7Gakr2H7R8BmSqA0Ma7LEj299lemVJw=;
 b=u25SOxCO3JB/utRYmekawJl9xgJ5rEi0zDDqVP5yErMJ0+rZL0mqcwEVoEjbUWK8er
 iskKeDvf/3xrXLW9XhYUogdFqxgVcVttf66xFVFor6veUwmn/WUMX6gPTbtMuOdqIK3G
 g95lgiuGMY70Q9eC4SB2i3GXbOVTgFhnSu3+joM6YUsOOyhSVb0V71K7TF7u5thBL44J
 3ilmgAcYacoqe/T3+yEQzT6Gd1PigrEr6ajV7FYF4Alc4sEGJRRFSpVGAur62HHc6+4X
 0sZvhZEuec3AyhNbVbDLVERcVRg4MvftfieVQ9A73LcXjcnhwh2UoKkhKtr5TbsPhyd2
 qXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eVTN7b5L6Q8M7Gakr2H7R8BmSqA0Ma7LEj299lemVJw=;
 b=bhwHE/4iU1dRqv/97GITgQz27xpLkCdivz2S/MuQr+27KwkYjRhaPlAqmqiyUSUqtj
 Mu1kLQlt2QgI1JrwWCpBkjLE6VrETVvk7Nze8sWGr/rDSajnRYKnnqGEum2kRVzh4cVs
 LmvPbGyzjdBReXzPMIw4JStGxQ3gY0DyZxCq7itI2wwdz7JZdaKZ1Abz2pMSu+cIyyIO
 lL2WrWXxJWMd8G5XqJShfcTo6uMyagyzTksrnJF9I8WDcwNJIrgphaC62kRnCps3Qvic
 a9/UGiVfoZMZWnW0Q/pieLhBAI8B/vBt/Gln5YXzVPwnCcpuOicAHIxqslcoskbsBAz9
 P1WQ==
X-Gm-Message-State: AOAM531GbfAACU03V5/CPA3JE6KLMIX+lABYtIcjGptReQmwC7EqbloI
 joqDOuvAOdtV7q7HfBT/aCpQtw==
X-Google-Smtp-Source: ABdhPJx6msu2NmfNxTTO83aq/yuWL5QYRT5KBGPxUFW+4cP+SYRDslDr94tHFjMioTpxWIqZ8/xSQw==
X-Received: by 2002:a2e:7c16:: with SMTP id x22mr7744708ljc.460.1639522741463; 
 Tue, 14 Dec 2021 14:59:01 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id t10sm45115lja.105.2021.12.14.14.58.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Dec 2021 14:59:01 -0800 (PST)
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
Subject: [PATCH v4 05/10] PCI: qcom: Add ddrss_sf_tbu flag
Date: Wed, 15 Dec 2021 01:58:41 +0300
Message-Id: <20211214225846.2043361-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
References: <20211214225846.2043361-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_145903_302347_3AF74C91 
X-CRM114-Status: GOOD (  13.14  )
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
