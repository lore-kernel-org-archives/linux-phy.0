Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 415E9C4167E
	for <linux-phy@archiver.kernel.org>; Thu,  2 Dec 2021 14:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H/z2MwCTu+ncFpLLoTfCeMbdzS5PoyN0ty51gMbU0GA=; b=S43Ry0+U55f/9M
	bw9DtbtQcDI4098G2xYQu74IKobI2OZWrvjq+v1bmn0tlxRToryeGZEmqXgEu8+2kQUq0Sv6C+xvr
	8hvcwPvdegq+Zb4tqOsKjdiRfH1crzmZyeVfZ0AnqvvgMvUh6H7BZZyjAD6hb6HSwLoDm4jnUAyGb
	PMYcuNF0qlh4uey35nsJCr0ZUv5oqL9ar40FI7e4IMsqf8lYbxiZJhUIkY7NB5FzHUoPDDguwpsik
	9ZJp4ys9yutnUx/+OsdM2rtmMHdVLP7gyhB3m/2HEDvyzjc/GG+1p+1LOtRzRzF+PCaSe/UwjNiiu
	2yPyR6tTxq+r22fCltdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msmuU-00CWvr-6r; Thu, 02 Dec 2021 14:18:06 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msmu3-00CWhZ-Dh
 for linux-phy@lists.infradead.org; Thu, 02 Dec 2021 14:17:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id b40so71857912lfv.10
 for <linux-phy@lists.infradead.org>; Thu, 02 Dec 2021 06:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7XpIRjQZ79ljvTybR5ID68//9KyOGikxNlLnhL/AsxY=;
 b=GjbKm6cBPWQgGDmVl+xK87e0VVUhNQ2UM1CMPiWYFDyFnEMR5Vzgwq3rvcgPld5J+c
 F7NFORVOi0PiYcG6nsOmPNNmJbZQ6vw6aThZa5nX+JWldkLbdWfzs2XWK9+lYwwoFkTg
 EhBdvmY9A/b7vsN4S1m8HFWn2g+gd5r4Xxg8tfuac+MidmuaCDZ4gWpPuGzPZiqYmg8j
 Saen6x3ejvW6wQHOLJw4RVGLDBpceP+iouoGxvb7wzvO9mUGq1n2Wk/xogCzkwH0lVei
 KmPfjGyw1Qx7xy8rIhWzCbvzv1+t8LQ7cTb+7Ksplh8JG754ypttF5vXwZ1oqh8ugSyH
 bFNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7XpIRjQZ79ljvTybR5ID68//9KyOGikxNlLnhL/AsxY=;
 b=ec//5jAWPPOdtvFTQzvnYKy1AwTBsI+Lc5ZZishTvH4eUJqAAOuY2PJCEa4oktGq+l
 uY3ir++ev3IxrD0jnyGGfBbUQJ5cYy6t0cqD1vPd5ZYbtlQmZlgmYMnPz96cTyG86c7o
 Q4bzhSwQOKs0HOk72q7FEhJuuhqHm+/5q+OSj5caQpBmZwzaVD8aP/8BPDPBzFQe3lik
 u6+Wjlq5THYaeJh4uGvcC9JTLtkJ6J729Lk0CVLdysMOjayNjd6coPGsVU4J2pQiidzP
 KPRXxy0izVeSi/efU+QoFWLjvc448+hJIS7vcFxiic9VuC2p4E3ckvR6FafkemBPCEP+
 /0mQ==
X-Gm-Message-State: AOAM530ENrCE7Q7Wk/VL7uCoRs1czu7rXwSTZdsQQfneOssnuIIST0mj
 nKhyrttwiCKiieSXTEjhJj/94Q==
X-Google-Smtp-Source: ABdhPJxgf3GFxoYI6OSpLzNMdNbq6FLz7S5vCi3MP52NaF3uIWWC4GlslvQEEWcqPTMWW+7bHBKb/w==
X-Received: by 2002:a19:c74a:: with SMTP id x71mr12543087lff.354.1638454656050; 
 Thu, 02 Dec 2021 06:17:36 -0800 (PST)
Received: from eriador.lan ([37.153.55.125])
 by smtp.gmail.com with ESMTPSA id m15sm362487lfg.165.2021.12.02.06.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Dec 2021 06:17:35 -0800 (PST)
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
Subject: [PATCH v1 05/10] PCI: qcom: add flag to enable use of ddrss_sf_tbu
 clock
Date: Thu,  2 Dec 2021 17:17:21 +0300
Message-Id: <20211202141726.1796793-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
References: <20211202141726.1796793-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211202_061739_509079_089630C9 
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
index 64f762cdbc7d..e51b313da46f 100644
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
+	if (pcie->cfg.has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1515,6 +1517,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
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
