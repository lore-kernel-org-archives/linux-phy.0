Return-Path: <SRS0=jd0v=KA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07F7FC4363E
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:20:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B82A56141F
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:20:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B82A56141F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zb6UZzOYMVI4MmHQRi3MmmxlCTP93ixGf+m7EsSYjBU=; b=HryntLkHXVDE9aJIpgtARJBo3
	JIHuEHpBBvCOKG7eBy2u98z5p9bQIgqbzEQuwOYMdB326L6xIDEbo2+5/JYMHcDQwEaeYcOLDbtP5
	TxtAd6jIAmD9XAoYUxcRAuR7Shzi1p0E61V3ja2NDk9ZjAYjiBxZQ7g0oSymlOzG1UAaBU5uA/ZXn
	K4gIU8zKYMLcVt+uo4xOeE5N9H62+cr/bY0BeeaLq1e3VyUuZhsfG8Sq/M7V2DYhAdI14+Yc6K4qd
	vIHuyjTH7iXxh5Lla0MoeoNtfcH6bD+tE2srrgUne26gw8MRuxu4oLigQ5DSjlPi4yKKaniz0NIGw
	8DBefh5nQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leDhS-000hNa-2I; Wed, 05 May 2021 09:20:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDgF-000hD0-Tb; Wed, 05 May 2021 09:18:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Zt8HBvD2Zjy6nZ5BJN8Y1Hhj50GnxumsHbCD4Yg541k=; b=u5QWKDiaWroUTFZfSOxVV9fl+M
 EKHUXVoNwCTUivB8jS4KnXmzse160u55GBiNql3QQxx20xgeOUwuf7jQdFrDS7a7rk8fbMTxycLD3
 sTtSdgNmwMWYz0Br1hOv+83iBttC6TFlxdL6Tbncxq44K7M0FaHDbupq7V3oglCYH0OHUfa8I1bbs
 +h3O85zKA/lboxQ6m9Bgfuae1NvEMA0TdSY5RGBbVfkB92XYFjoyjgdkOHWQ4gMGY5M1OGUMpq5M+
 KdbXsHNSXCMI891oyI6+EI7HKsWsHDtLaEYoPnhYYifa/+Tg9ezcowpXN2TZHwM8bjEPfXKqKtOFN
 DFyV2ujg==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDgD-004bTP-7g; Wed, 05 May 2021 09:18:54 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 6C55E440DBB;
 Wed,  5 May 2021 12:18:42 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>, Rob Herring <robh@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jingoo Han <jingoohan1@gmail.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Robert Marko <robert.marko@sartura.hr>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-tegra@vger.kernel.org
Subject: [PATCH v2 6/6] dt-bindings: pci: qcom: Document PCIe bindings for
 IPQ6018 SoC
Date: Wed,  5 May 2021 12:18:34 +0300
Message-Id: <fd732635f4ad64263e361ce98af2944bfbd513ef.1620203062.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620203062.git.baruch@tkos.co.il>
References: <cover.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_021853_541524_CCDD321C 
X-CRM114-Status: GOOD (  10.78  )
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

Document qcom,pcie-ipq6018. This is similar to the ipq8074 with a few
different clock sources, and one additional reset.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 .../devicetree/bindings/pci/qcom,pcie.txt     | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.txt b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
index 0da458a051b6..25f4def468bf 100644
--- a/Documentation/devicetree/bindings/pci/qcom,pcie.txt
+++ b/Documentation/devicetree/bindings/pci/qcom,pcie.txt
@@ -14,6 +14,7 @@
 			- "qcom,pcie-qcs404" for qcs404
 			- "qcom,pcie-sdm845" for sdm845
 			- "qcom,pcie-sm8250" for sm8250
+			- "qcom,pcie-ipq6018" for ipq6018
 
 - reg:
 	Usage: required
@@ -123,6 +124,16 @@
 			- "ahb"		AHB clock
 			- "aux"		Auxiliary clock
 
+- clock-names:
+	Usage: required for ipq6018
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "iface"	PCIe to SysNOC BIU clock
+			- "axi_m"	AXI Master clock
+			- "axi_s"	AXI Slave clock
+			- "axi_bridge"	AXI bridge clock
+			- "rchng"
+
 - clock-names:
 	Usage: required for qcs404
 	Value type: <stringlist>
@@ -209,6 +220,19 @@
 			- "ahb"			AHB Reset
 			- "axi_m_sticky"	AXI Master Sticky reset
 
+- reset-names:
+	Usage: required for ipq6018
+	Value type: <stringlist>
+	Definition: Should contain the following entries
+			- "pipe"		PIPE reset
+			- "sleep"		Sleep reset
+			- "sticky"		Core Sticky reset
+			- "axi_m"		AXI Master reset
+			- "axi_s"		AXI Slave reset
+			- "ahb"			AHB Reset
+			- "axi_m_sticky"	AXI Master Sticky reset
+			- "axi_s_sticky"	AXI Slave Sticky reset
+
 - reset-names:
 	Usage: required for qcs404
 	Value type: <stringlist>
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
