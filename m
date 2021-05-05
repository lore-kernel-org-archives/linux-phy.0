Return-Path: <SRS0=jd0v=KA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FFF5C433B4
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:19:07 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF922613ED
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:19:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF922613ED
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iyJy7o/NwIn3eebSGgT9L0dFWHnEJt7ZWKM/qrGGTaE=; b=Vm8q4p8SjvGJwL546SVUE0TiV
	GjsHrZo2mC2XFYkCsB+Zcg1jk8jZ02rcfISBXvvlreetHBpyUPpmtFe3Af2T2YkcYzxa3VLQKhNr7
	SA5ddhXiKN+elBU7jlU1lGZnzQxCpcZBYPexpwE2tpJN5ZiXmGwYQkrrR/PDyd+1wVZ+cYzAMCE44
	IqxTQIbDyc0N05bgjYl6OCEoWo+pat61DCUJGqeNr5/lV6tCLmvZkqFCKd0+J4KTwaljzgJSVFlsq
	3dSdBM2nmhA9wgtZb6CnsPD1NsxgjSMZnh9vvMV5oeVESmJWJSXRP47+D5Mf6ByHJCjfl1QPbFMzH
	01yS9tJOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leDgP-000hDu-5f; Wed, 05 May 2021 09:19:05 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDgC-000hCL-6h; Wed, 05 May 2021 09:18:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=5tWYicnI6FID6w6cHs2yfL6A3Yltao6Iy0b5CpW2s2Y=; b=xfhzys2ladxZFmmAwhVgGZix5Z
 yKg86TZG2lpWTxO7fGvWH37/FVl+tsWtiEfwM2ANHd7BviQ3lfaKSXz4GygdICusag6o6gUW1KSCc
 1D1weGwOvY0fqQfYuXE9eabgjeN+oYnNCweeqOtzeDhqUFfsy+SQQLziskzghqAf6LMaUpMdqRl2V
 UrB5ZFCW2GpvXuHsmlBNRyoj14rAQ6+VDv6Bt0ZedjkWa2SiyNudkOXPOYLpxNyT74rto2Wp9/32n
 qY+iHAY+Ch7ESIVH2ucAViNV4T6dZJkfqmroXcphu4gM631ExpagXtXwlx2xL7YqxYYjMDo4BczLz
 IvbwMnGQ==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDg8-004bRV-Um; Wed, 05 May 2021 09:18:50 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id A9019440870;
 Wed,  5 May 2021 12:18:36 +0300 (IDT)
From: Baruch Siach <baruch@tkos.co.il>
To: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Baruch Siach <baruch@tkos.co.il>,
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
Subject: [PATCH v2 1/6] PCI: dwc: tegra: move GEN3_RELATED DBI register to
 common header
Date: Wed,  5 May 2021 12:18:29 +0300
Message-Id: <c15ac1443ec765e32a2801241dcd8e924abc769b.1620203062.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1620203062.git.baruch@tkos.co.il>
References: <cover.1620203062.git.baruch@tkos.co.il>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_021849_343986_518331AD 
X-CRM114-Status: GOOD (  10.71  )
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

These are common dwc macros that will be used for other platforms.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 drivers/pci/controller/dwc/pcie-designware.h | 6 ++++++
 drivers/pci/controller/dwc/pcie-tegra194.c   | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
index 7247c8b01f04..ceb359b6e6a6 100644
--- a/drivers/pci/controller/dwc/pcie-designware.h
+++ b/drivers/pci/controller/dwc/pcie-designware.h
@@ -74,6 +74,12 @@
 #define PCIE_MSI_INTR0_MASK		0x82C
 #define PCIE_MSI_INTR0_STATUS		0x830
 
+#define GEN3_RELATED_OFF			0x890
+#define GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL	BIT(0)
+#define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
+#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
+#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
+
 #define PCIE_PORT_MULTI_LANE_CTRL	0x8C0
 #define PORT_MLTI_UPCFG_SUPPORT		BIT(7)
 
diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
index 6fa216e52d14..57203f32cfdb 100644
--- a/drivers/pci/controller/dwc/pcie-tegra194.c
+++ b/drivers/pci/controller/dwc/pcie-tegra194.c
@@ -193,12 +193,6 @@
 #define GEN3_EQ_CONTROL_OFF_PSET_REQ_VEC_MASK	GENMASK(23, 8)
 #define GEN3_EQ_CONTROL_OFF_FB_MODE_MASK	GENMASK(3, 0)
 
-#define GEN3_RELATED_OFF			0x890
-#define GEN3_RELATED_OFF_GEN3_ZRXDC_NONCOMPL	BIT(0)
-#define GEN3_RELATED_OFF_GEN3_EQ_DISABLE	BIT(16)
-#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_SHIFT	24
-#define GEN3_RELATED_OFF_RATE_SHADOW_SEL_MASK	GENMASK(25, 24)
-
 #define PORT_LOGIC_AMBA_ERROR_RESPONSE_DEFAULT	0x8D0
 #define AMBA_ERROR_RESPONSE_CRS_SHIFT		3
 #define AMBA_ERROR_RESPONSE_CRS_MASK		GENMASK(1, 0)
-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
