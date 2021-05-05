Return-Path: <SRS0=jd0v=KA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE3CC433B4
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:19:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67A0E613E9
	for <linux-phy@archiver.kernel.org>; Wed,  5 May 2021 09:19:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67A0E613E9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tkos.co.il
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rMqfX+WeOSwb1TfosWSdO24uVgqT+8m+b+lUzUWUKSU=; b=jXDQNZ5eVNgN+9nw7N05hv0fXd
	i2gWFUBDK+0/pZA8U8NZMx1slk+l718RDYI8pGivZydG9Dx12mJ4n1fZQAuQNpU+DWP6/26TU8ndg
	Dv9RNkmoqp6PJC5L2TUDPNsfGfkHxErIdm9nN9xv9JR4pp3NXSFLDU0tZd4KtokHbU8YZhVBFygXm
	aP3XHg/LAMBQIPX1++gT4wQp4AoyVQeHC+EdIeLrT4CcTsgBOkL8KJcCBqI09cmnkpuSJZ0TMPEY8
	QeO2jTZjqATWG5DbwSutI9OJK0gIJM8ybhPclGmaNwjmyRlvCdVbQD0uM+9qC7jdAI7/7wkWT0xWD
	hcr/eY2A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leDgi-000hEt-Ot; Wed, 05 May 2021 09:19:24 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDgD-000hCV-DC; Wed, 05 May 2021 09:18:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=MUr9Dh3FcyUn1dsMfaHpogOkgM6Afmngn0FA4oekw88=; b=K5QwlLvpaBkg+fWe2Ie2gHk21g
 QsXDYSNjHO2tLFGw9JZlKVptdAYEpmdsvdYVlLbsPL8twkw7JwWxaToEJ/WvF8YI9XHReQ6GqwFYV
 752aVCk5WoRAAHxC8v5p2baoBPyRxW/5X9DnC7ZSfzGaYqrp4zMwCb55oQR5efwNm+EqPFtFnByzI
 c0jBujqWFlTjrJLmBmRAieAmGysFJQNfNgHFQigcj8YM3VlBbmjJwBM8vrwwiYk9sAofyRx4wlZYI
 Iliy5Za6duJ1vuiRbjYnvMCF1HhYGGuadfABM7PAKkVHrczRmrsZh/wr9qMzVQ2Bt8ta5Zrp8ANMI
 8tLUDtxQ==;
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leDg9-004bRU-Lk; Wed, 05 May 2021 09:18:52 +0000
Received: from tarshish.tkos.co.il (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id EC4B74407F0;
 Wed,  5 May 2021 12:18:35 +0300 (IDT)
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
Subject: [PATCH v2 0/6] arm64: IPQ6018 PCIe support
Date: Wed,  5 May 2021 12:18:28 +0300
Message-Id: <cover.1620203062.git.baruch@tkos.co.il>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_021851_073974_BADFA1C5 
X-CRM114-Status: GOOD (  10.88  )
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

Changes in v2:

  * Add patch moving GEN3_RELATED macros to a common header

  * Drop ATU configuration from pcie-qcom

  * Remove local definition of common registers

  * Use bulk clk and reset APIs

  * Remove msi-parent from device-tree

Baruch Siach (3):
  PCI: dwc: tegra: move GEN3_RELATED DBI register to common header
  dt-bindings: phy: qcom,qmp: Add IPQ60xx PCIe PHY bindings
  dt-bindings: pci: qcom: Document PCIe bindings for IPQ6018 SoC

Selvam Sathappan Periakaruppan (3):
  PCI: qcom: add support for IPQ60xx PCIe controller
  phy: qcom-qmp: add QMP V2 PCIe PHY support for ipq60xx
  arm64: dts: ipq6018: Add pcie support

 .../devicetree/bindings/pci/qcom,pcie.txt     |  24 +++
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml |  25 +++
 arch/arm64/boot/dts/qcom/ipq6018.dtsi         |  99 ++++++++++++
 drivers/pci/controller/dwc/pcie-designware.h  |   7 +
 drivers/pci/controller/dwc/pcie-qcom.c        | 150 ++++++++++++++++++
 drivers/pci/controller/dwc/pcie-tegra194.c    |   6 -
 drivers/phy/qualcomm/phy-qcom-qmp.c           | 147 +++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           | 132 +++++++++++++++
 8 files changed, 584 insertions(+), 6 deletions(-)

-- 
2.30.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
