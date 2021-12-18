Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB160C4332F
	for <linux-phy@archiver.kernel.org>; Sat, 18 Dec 2021 14:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1cIhGraHtg9TWOT5PzzO3DVkXEN9lOirRs/DEYCibNw=; b=aFsnJ+uLG3z90O
	oEI6m7CcNu0DeIGOgPOEqFFpfDi5+KkK+tLve58M49L3bP1cjpgEd48NHYPy269YQ+2XWkjUSmmKT
	Hu5/QN5PmqneAP2/uGmuI2iOFt618QLvdaId83pIS2tP36BzuPj31GtSKH7AD5Tz3GGsto8PfxDAA
	WKmuVUUdPsKeBa9K9mlkH3PPTH9jlLQ/crGRyULukcYgtGLr61NzuJiRPgyYzzatmJhoRzfScyjaz
	mtTOKfBT8rqvixxC4xVfRV8E9LrZ3HAOEqmLwbqC0I5uED156+M74s1EEAAPDbAHt59KUYyEcwxIh
	FLZDPCXrJtZEm6oLgCTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myaQ3-00Dxb4-8v; Sat, 18 Dec 2021 14:10:39 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myaPz-00DxYR-Ox
 for linux-phy@lists.infradead.org; Sat, 18 Dec 2021 14:10:37 +0000
Received: by mail-lj1-x229.google.com with SMTP id 13so7831336ljj.11
 for <linux-phy@lists.infradead.org>; Sat, 18 Dec 2021 06:10:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=W9jdk7r3IOG4RIA9s1m47ShpIrTm4qBfDERhWxxlQOw=;
 b=NbDUiOJD95EDE6kdhY/TRXoJyaa120ukkikvm/2bD1iIZ/c9QOTFu8OUEXEf3hyLBW
 e2I2ABGPC12P/Fp3kpUWr3I07ClTUJ9QCkIpyTSo+D0qfOdhj0rZmeLto/8X+CZKEUbP
 1Ar0/PgJNWro/uE/QYInvF2COC7ZeZ0tqKunTYDry6NEsvlOkD6ATlmcXOaLaSAuzT4+
 qo7erjl166IA5/5kwpyv0wV29Gw9QtwPgNzl4UwPmknmO2DkgRK3mWKIv+7wOyiLXhnB
 VGtZpE33UV0WbqaIF5UwSWvU3o8SooBDeNkKdxJ7SA0MRkNV8ZQYNsYXst1t6EIo3V/8
 mECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=W9jdk7r3IOG4RIA9s1m47ShpIrTm4qBfDERhWxxlQOw=;
 b=ZUAiCddSYvSIF/3amOaL93KDoJ4qSq6HBq/h58LHxXJSnN5jOUS6qqfbskbkvVCjrV
 fzIOx3y/FkStEakxlKta8urkpR5VsNvvbr3AZ6O2mcRm0KY3upjd2oevYvXcKByn4+Xg
 YCQSW11iSpirw74wpWiNgTsbHyDdI5qtXRcUKqsrRbWeB+AjxmAZl1Ty7all13cm9nxe
 NLW6mFFkbHZRziJYMFzDN1jUBTdhuZuf6vA7deBTpMlPHAClcLlN1zKr4QkGOjyvAdeg
 tjQbc/TjQJkOcFX2ThnaH6ZVDHzHA+ez515sg08XCpbtvMLudaxVgZpQSR3sWgyYEWUr
 kfLA==
X-Gm-Message-State: AOAM532RGnjU3S6GW/LZ/h+sxX0A+AOvZeQ3eMuWnVKHsYTBNEuFD+mC
 6A5HsPCfYjpFSXYo6i2JtGevlg==
X-Google-Smtp-Source: ABdhPJydOkVbKGQ/hWi+9HUsHe1JrKrmVeYg/YxzxxgLW8yv3pS2beqnplZEFG4BHC5xEAl/MeRDoQ==
X-Received: by 2002:a2e:80a:: with SMTP id 10mr6891037lji.337.1639836634059;
 Sat, 18 Dec 2021 06:10:34 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
 by smtp.gmail.com with ESMTPSA id c2sm145789lfh.189.2021.12.18.06.10.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 18 Dec 2021 06:10:33 -0800 (PST)
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
Subject: [PATCH v5 3/5] PCI: qcom: Add ddrss_sf_tbu flag
Date: Sat, 18 Dec 2021 17:10:22 +0300
Message-Id: <20211218141024.500952-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
References: <20211218141024.500952-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211218_061035_837512_6377D5CB 
X-CRM114-Status: GOOD (  12.88  )
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
index 1204011c96ee..d8d400423a0a 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -191,6 +191,7 @@ struct qcom_pcie_ops {
 struct qcom_pcie_cfg {
 	const struct qcom_pcie_ops *ops;
 	unsigned int pipe_clk_need_muxing:1;
+	unsigned int has_ddrss_sf_tbu_clk:1;
 };
 
 struct qcom_pcie {
@@ -1133,7 +1134,7 @@ static int qcom_pcie_get_resources_2_7_0(struct qcom_pcie *pcie)
 	res->clks[3].id = "bus_slave";
 	res->clks[4].id = "slave_q2a";
 	res->clks[5].id = "tbu";
-	if (of_device_is_compatible(dev->of_node, "qcom,pcie-sm8250")) {
+	if (pcie->cfg->has_ddrss_sf_tbu_clk) {
 		res->clks[6].id = "ddrss_sf_tbu";
 		res->num_clks = 7;
 	} else {
@@ -1449,6 +1450,7 @@ static const struct qcom_pcie_cfg sdm845_cfg = {
 
 static const struct qcom_pcie_cfg sm8250_cfg = {
 	.ops = &ops_1_9_0,
+	.has_ddrss_sf_tbu_clk = true,
 };
 
 static const struct qcom_pcie_cfg sc7280_cfg = {
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
