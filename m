Return-Path: <SRS0=RYiS=JR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E12DC433ED
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:23:13 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4F136139A
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:23:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4F136139A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=89MBIjN36R+qpxqSjOKkuGjL4vVjzz2SZby3hLEegQ0=; b=B/7nhO/BRp0joEksuTye+cauh
	nlVyBwrpP/TRKOGnZynTcey9iD2Fvvmf7WB59WAnkU5KLwloBA+1i30YMtfrqSCOl1YnR+fncOU2g
	PJUFhXmIb1tMbh9/iOeoK2eQ1oFEfzrmusP8DnkyDZ3JIueVxvGSWATbj2Hfm2crJhiZ32L20njls
	b4ZGaAe9A1bV9wA6kZTgb2rLkauHHetfTxfH2uIzHe+vjVXx/UbvkYdtwoknBaOQI3cOYjX3qaD0u
	FeUf/SXz3igEX9mOjre1GbmZFlpqqneT0/tWeGgyHCt8KTzgAJCYyma72sg8k6A6PmDU/pOVETyXR
	C7v5qqwGg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYoTG-00Bxv2-Sq; Tue, 20 Apr 2021 11:23:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS9-00Bxf8-Ci; Tue, 20 Apr 2021 11:22:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=Iq1+jHdS0OV0pmoHSJlQubkOTixHRINpF32Ja6SjNtI=; b=ddFCRFn5xG6kz2f68KjMA/o7rr
 fTSeb5DBBkQyX/Xg0nDoSLtSx3/1YHsLDiaxjiIwlHjRlqWdNBY29ZYtIpUAlQMQ2Pz49uhNr1ZhA
 cJ6TDYfZDyoPYzb5jOcQnanafDdF64gnsSSLB93gLtXWOWKdNgqztrYUXqXoXYZ86RM9ZSu0dm1h8
 BGK9QLbuiKOEL0hBDLJBeL3ri4WhCUI1Fcz4kCoT7qUdwvXPglEkjNrcP4vs17Yw/pMj8g/yBW/qn
 wvVKSC3S6vhD3yw1zxuRtuf/wDdmD9pZV+ECPKhhmzyS7eArnCuBbzmvBw6qFwH60BG8ksomAJ70h
 YLzUn2ug==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS6-00C41v-PY; Tue, 20 Apr 2021 11:22:00 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 475FA440E71;
 Tue, 20 Apr 2021 14:21:47 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 Kathiravan T <kathirav@codeaurora.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/5] dt-bindings: pci: qcom: Document PCIe bindings for
 IPQ6018 SoC
Date: Tue, 20 Apr 2021 14:21:40 +0300
Message-Id: <e285d5041b8c19d4a7fab4d1a3ce9dd2b487cbad.1618916235.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1618916235.git.baruch@tkos.co.il>
References: <cover.1618916235.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_042159_091014_C0115688 
X-CRM114-Status: GOOD (  10.82  )
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
