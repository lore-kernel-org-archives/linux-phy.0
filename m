Return-Path: <SRS0=RYiS=JR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD159C433B4
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:22:20 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 64C37613AE
	for <linux-phy@archiver.kernel.org>; Tue, 20 Apr 2021 11:22:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 64C37613AE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JbWX4gQML0UvYmyya1zT+sb5aPiEFXsjH+jVnDgRiiI=; b=FlcWR7OFuI+Qmfp71UI9EBupF8
	ZiGVbmJCq766YUAYx9nDoy8PhadjbHE9gILaoan7gZOvcjNoFkKy1ZzGe4ppQIK8pM9YsctE3i2/v
	uGH8oDW6ooP6sOe5ySSAgvGxS1O76FwbiNxpwD37yCJGg58m6G23oCmZjabte1BCnmosV+xP+FBB2
	MEpr3VxdIT74Oj6ZfC0IU+CzBNOT3dtb6s/muSvURpJjWej9LnpA70hZrxZFV2DCgXcyNI94enw5X
	XUjXgT0mPHZVCWkACfqFCgjdugmIqjhWHRugGnHWSTVhq+xUYBSS+/PPhgVXHZlJopzIKXBincdkY
	BM/tXc8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lYoSQ-00Bxgo-JS; Tue, 20 Apr 2021 11:22:18 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS6-00BxeU-Av; Tue, 20 Apr 2021 11:21:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=IsOyx5329auSiGLl9oXxBEHOtRGke54U3FUD5+a41DE=; b=IzzR7bZSDlpUe+3EF/nF3urF4F
 Jxhz3hJCAS4tYibhqMJnKOL9O5UiklLw4RVHI2as0IiRbHtUI9ZJQ7dkIcodZAsd+TsOr924CUO/o
 7InQaK/hiUPDqWOpim6Pnw52lxvE8BDTTFJ8+4WbMCPWsNGHXcPtunoC5EbES5OSZwnmktsS6dmKe
 acvGG7E0Kv0vfMuwO0krkePJuNsLUlhgVCPA9tcZgq7m5TcrcZMhM6+7l0i+RckjuXmwriIIDc5ni
 9VYy0c9/bgqfdwcPncGABlVnxT6hCck/+GqCM8hH8SaYuL41KjnLaGC+lNjH20a3qlmltJs1AF6Ur
 F/jyyB1A==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lYoS0-00C40F-7W; Tue, 20 Apr 2021 11:21:57 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 28650440DF1;
 Tue, 20 Apr 2021 14:21:43 +0300 (IDT)
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
Subject: [PATCH 0/5] arm64: IPQ6018 PCIe support
Date: Tue, 20 Apr 2021 14:21:35 +0300
Message-Id: <cover.1618916235.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210420_042152_523223_93238514 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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

This series adds support for the single PCIe lane on IPQ6018 SoCs. The code is 
ported from downstream Codeaurora v5.4 kernel. The main difference from 
downstream code is the split of PCIe registers configuration from .init to 
.post_init, since it requires phy_power_on().

Tested on IPQ6010 based hardware.

Baruch Siach (2):
  dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY bindings
  dt-bindings: pci: qcom: Document PCIe bindings for IPQ6018 SoC

Selvam Sathappan Periakaruppan (3):
  PCI: qcom: add support for IPQ60xx PCIe controller
  phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx
  arm64: dts: ipq6018: Add pcie support

 .../devicetree/bindings/pci/qcom,pcie.txt     |  24 ++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  25 ++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         | 109 +++++++
 drivers/pci/controller/dwc/pcie-qcom.c        | 279 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 147 +++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 132 +++++++++
 6 files changed, 716 insertions(+)

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
