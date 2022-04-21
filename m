Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6380DC433EF
	for <linux-phy@archiver.kernel.org>; Thu, 21 Apr 2022 10:23:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YpbmipEIvgVvvsBg/LG0AR2A0XSUnD0noJv4RFNrVvU=; b=Sgt6A0g6MklyqC
	gnDvyA9AO18mubkqb+6Pbor4+t2CxssNid70c8DkE2vs8yvngnm6mTsK+HlHF4uxKAgYAD8iJwJ7V
	8CoHdhTJxwG7vUpO6joCauMlwUi2UfRmj8diitrFEkCm8PHGXZVehWiJuWsur3UpEkIX/hktzHhgl
	uE1f7Lj6pwkg9pEcIxQigZAAvKpYU3alISe+t3SCC/XjMlc4r3rPlM8fgqSX+X8ac1kzvAzBQD43w
	Y05ThpEpr9lRdQlw+6eo+0CeYKjZdbOZ+6wRGo9PC3Hz5GHRxrIujp/ztbKayhDJt2FjAgQsmChL9
	VZNisv0oHX6/+sM4cpFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhTyN-00D1CS-R6; Thu, 21 Apr 2022 10:23:39 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhTyL-00D1AX-6G
 for linux-phy@lists.infradead.org; Thu, 21 Apr 2022 10:23:38 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 891F9B823ED;
 Thu, 21 Apr 2022 10:23:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0DFFC385A5;
 Thu, 21 Apr 2022 10:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650536613;
 bh=PLPfqK1kInufZpDRYtLVy/FfrLJYvtPIqiJbh2gX40Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cK/Kn2tbYHBJjKGmUXRXQ0n+/8esHVntKqfRjQvZosnuimAODJGbxWx+9mk+PqizZ
 g+Q8rDS4/HhLvEFXdE3nz+6Y5boAO9yklqyF/nxFgbc+bqSmj03sQRBjmO9E8Ylu3U
 Q/XQOk1lS0EM1vfWJitapsbpVxwQMuhKsM3Ou7E9/dkbCdq+75bCzNWArF70dDOueA
 EtWtfK2N2oJyz59TQq9d0PcKYalcvDdZJ03N0z0D3IJSCgld1ATZEjCIBFhx2NYhQ4
 LdOm6aWbnFV2JZbci07iFNb9dhD5NBou8meYWCO8kPryCV6wzXN1Z9K1grwVUixkUB
 7h6P50urBG0vg==
Received: from johan by xi.lan with local (Exim 4.94.2)
 (envelope-from <johan+linaro@kernel.org>)
 id 1nhTyB-0004Xm-M3; Thu, 21 Apr 2022 12:23:27 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 "Stephen Boyd" <swboyd@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Stanimir Varbanov <svarbanov@mm-sol.com>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Prasad Malisetty <quic_pmaliset@quicinc.com>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RFC 5/5] PCI: qcom: Drop unused post-init callbacks
Date: Thu, 21 Apr 2022 12:20:41 +0200
Message-Id: <20220421102041.17345-6-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220421102041.17345-1-johan+linaro@kernel.org>
References: <20220421102041.17345-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220421_032337_415369_869B5E9D 
X-CRM114-Status: GOOD (  11.87  )
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

Drop the unused post_init and post_deinit callbacks that were added for
the now removed pipe clock handling.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index d6e33ac9a01a..7606a9f6eb21 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -180,9 +180,7 @@ struct qcom_pcie;
 struct qcom_pcie_ops {
 	int (*get_resources)(struct qcom_pcie *pcie);
 	int (*init)(struct qcom_pcie *pcie);
-	int (*post_init)(struct qcom_pcie *pcie);
 	void (*deinit)(struct qcom_pcie *pcie);
-	void (*post_deinit)(struct qcom_pcie *pcie);
 	void (*ltssm_enable)(struct qcom_pcie *pcie);
 	int (*config_sid)(struct qcom_pcie *pcie);
 };
@@ -1331,27 +1329,18 @@ static int qcom_pcie_host_init(struct pcie_port *pp)
 	if (ret)
 		goto err_deinit;
 
-	if (pcie->cfg->ops->post_init) {
-		ret = pcie->cfg->ops->post_init(pcie);
-		if (ret)
-			goto err_disable_phy;
-	}
-
 	qcom_ep_reset_deassert(pcie);
 
 	if (pcie->cfg->ops->config_sid) {
 		ret = pcie->cfg->ops->config_sid(pcie);
 		if (ret)
-			goto err;
+			goto err_assert_reset;
 	}
 
 	return 0;
 
-err:
+err_assert_reset:
 	qcom_ep_reset_assert(pcie);
-	if (pcie->cfg->ops->post_deinit)
-		pcie->cfg->ops->post_deinit(pcie);
-err_disable_phy:
 	phy_power_off(pcie->phy);
 err_deinit:
 	pcie->cfg->ops->deinit(pcie);
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
