Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B88F6C4345F
	for <linux-phy@archiver.kernel.org>; Mon, 15 Apr 2024 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n3beAJQC16Hw16mR5j0/g/uLUw5psE7q0m/ddFFYgBo=; b=wT1Gpx6once+Lq
	Io0lLzavjwepB5MtrqZzV2D1ouqqGMCdloQo7Zb3htZjQWqay1HRT4Eh4oizS1POka2ocZmrqe+JF
	87lDFeUdhtf+FZ3INPwL7dAYCMLFrMDMQp8+7oy0pzvP6nhiHpT6eZ+yV58w2TV1KAIcEAEECxNqT
	W7+TKopJlkLhGFcVqc9ntiSh4oUMFnjP9TiIH6QD4QfTDscseGEWhaOC6m+wnbdbQj2l8AJ1D5smG
	5/emKqPFBZ9A2TpHY/dTg193AXXEnMWYs5CqZlWosPE+w8c9oj8U33/e+0+BCTZWuaLLnGJRUE0PN
	y7uLgkaXVHF2wYHod6yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxJ-00000009Qm4-1NT0;
	Mon, 15 Apr 2024 18:21:25 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwQxH-00000009QjA-0HDL
	for linux-phy@lists.infradead.org;
	Mon, 15 Apr 2024 18:21:24 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-22edbb5dd40so1375384fac.1
        for <linux-phy@lists.infradead.org>; Mon, 15 Apr 2024 11:21:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713205281; x=1713810081; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=u509fpdTL3x8h0sKnxRrMd2Q/Sm/IRVlvPpLmK46sCY=;
        b=G9v7oNzMdtEPchcfEmhyfD0kTLwJwlOqhJbn0ZEeTUW1nZtIyIgh+lzeVxnQlzeZzQ
         JCezDfVFqNmdJOGv/iknnSV5gJ3fYdZcwM9eHKRfinQSCBzxwyDQOoG5vVQU/WYm0Nej
         tC3Kh/WV04fm3N18jLIlDZWrCLMWktxxhMCmwdOUIgQRh2l/OeZKXby8IH+yR51eUH+b
         Mrd0oR9Ig0uTAdpJk9hGc6hqRWa/mZtCMu8CITNefz74KR9p/djwKY/yeVxXerNZ6NJy
         Q0JCxsrA72+XHRS4BuilWTKQhKk+7SrViOsyPPsFHRm/gqnLwDoapeG7c3PzwUEcnye+
         NHUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713205281; x=1713810081;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u509fpdTL3x8h0sKnxRrMd2Q/Sm/IRVlvPpLmK46sCY=;
        b=ZmQW7Up96PQBvbHaN/ZQsl0PL/S/r/iCHicmOslt2EP8nLRnHp6V7Fk76ljKJLiiyc
         mV3t9RkgxKtp51PYkkbnhf0/qnxUl0EHKsNGBd4ILacB2DX7PO2dtRO1nMVbjuGDMwhE
         Km8ljHaq+hJ2wBvyJVdKewIQVo4H3dKjE624SAmOSngwZPwyAd3rie6Hk5si1OTBWOAN
         Um5YHTPN0NQ5f/qS9UlajCHDtpiMc/1e3bH8SIHM1RbxySGDIr2URp1ookcrhl5+UNwc
         PJuqN2iJuiNdyBb5qnWDdEYTS2Zh3iUrRGs5afgeCTBY4aWGCPH1g2s0QoE1+yfnn0KI
         BudA==
X-Forwarded-Encrypted: i=1; AJvYcCXlj1CLWePphQG8ig6zK4jnofTL0ZZbztZQLj5NtNgK9zZGra273fDwgZcq+dorNWvD5cexM65YTsKIbdabityrMgVCZ6vHP8O2jQYNUw==
X-Gm-Message-State: AOJu0YwFCJuQNcM6BEEY7jHzeUdJQ8Y8LHvL/ajEUyNvtuIDHNub1H5/
	SKDae5nzBprC/mE9GBSmSuTkSkXifDS/KjG1rKNA5oipv3AVDdYB
X-Google-Smtp-Source: AGHT+IH/8B0e9NM5WliOP9w/PF1ZRgCApTZi+SCJC4O7CiUjYmCpNmOGWSyNpvTqihZDA+VKDZbWTg==
X-Received: by 2002:a05:6870:f694:b0:233:6e01:69b8 with SMTP id el20-20020a056870f69400b002336e0169b8mr159816oab.3.1713205280834;
        Mon, 15 Apr 2024 11:21:20 -0700 (PDT)
Received: from nukework.lan (c-98-197-58-203.hsd1.tx.comcast.net. [98.197.58.203])
        by smtp.gmail.com with ESMTPSA id x4-20020a056820104400b005a4dc7abc01sm2177494oot.11.2024.04.15.11.21.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 11:21:20 -0700 (PDT)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-clk@vger.kernel.org
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v3 4/7] PCI: qcom: Add support for IPQ9574
Date: Mon, 15 Apr 2024 13:20:49 -0500
Message-Id: <20240415182052.374494-5-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240415182052.374494-1-mr.nuke.me@gmail.com>
References: <20240415182052.374494-1-mr.nuke.me@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_112123_138282_F4E8659C 
X-CRM114-Status: GOOD (  13.78  )
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

Add support for the PCIe on IPQ9574. The main difference from ipq6018
is that the "iface" clock is not necessarry. Add a special case in
qcom_pcie_get_resources_2_9_0() to handle this.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 drivers/pci/controller/dwc/pcie-qcom.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
index 14772edcf0d3..10560d6d6336 100644
--- a/drivers/pci/controller/dwc/pcie-qcom.c
+++ b/drivers/pci/controller/dwc/pcie-qcom.c
@@ -1101,15 +1101,19 @@ static int qcom_pcie_get_resources_2_9_0(struct qcom_pcie *pcie)
 	struct qcom_pcie_resources_2_9_0 *res = &pcie->res.v2_9_0;
 	struct dw_pcie *pci = pcie->pci;
 	struct device *dev = pci->dev;
-	int ret;
+	int ret, num_clks = ARRAY_SIZE(res->clks) - 1;
 
-	res->clks[0].id = "iface";
+	res->clks[0].id = "rchng";
 	res->clks[1].id = "axi_m";
 	res->clks[2].id = "axi_s";
 	res->clks[3].id = "axi_bridge";
-	res->clks[4].id = "rchng";
 
-	ret = devm_clk_bulk_get(dev, ARRAY_SIZE(res->clks), res->clks);
+	if (!of_device_is_compatible(dev->of_node, "qcom,pcie-ipq9574")) {
+		res->clks[4].id = "iface";
+		num_clks++;
+	}
+
+	ret = devm_clk_bulk_get(dev, num_clks, res->clks);
 	if (ret < 0)
 		return ret;
 
@@ -1664,6 +1668,7 @@ static const struct of_device_id qcom_pcie_match[] = {
 	{ .compatible = "qcom,pcie-ipq8064-v2", .data = &cfg_2_1_0 },
 	{ .compatible = "qcom,pcie-ipq8074", .data = &cfg_2_3_3 },
 	{ .compatible = "qcom,pcie-ipq8074-gen3", .data = &cfg_2_9_0 },
+	{ .compatible = "qcom,pcie-ipq9574", .data = &cfg_2_9_0 },
 	{ .compatible = "qcom,pcie-msm8996", .data = &cfg_2_3_2 },
 	{ .compatible = "qcom,pcie-qcs404", .data = &cfg_2_4_0 },
 	{ .compatible = "qcom,pcie-sa8540p", .data = &cfg_sc8280xp },
-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
