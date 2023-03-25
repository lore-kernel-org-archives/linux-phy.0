Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A9F8C77B62
	for <linux-phy@archiver.kernel.org>; Sat, 25 Mar 2023 12:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUGwFNfM3uy4zBUbx9sHrJHZHHeWIjiMzwMB6hzKD8w=; b=ofU23paujavD1q
	Kf6pIboqRINmzkFfM/eQfRFCVk4Oy99XthfzPgn3NfEJwFwtwkBls0V/Ucb8bAdQX1PJj7/2lVZwO
	OEJp1jgKFIGVWabznnN6qoyXH9gBhwY1Ddm7KbDrkDMVU50d3Rmsqny0kRyqSAuMfUm4h3hTVJ25K
	klEla/wGvHzf2urHyclfLDVK0tBTwTkfUizTQW+eUNd5zotsp4F50efrr1nVVcl2hzh13KGDUNpJ3
	3tlZILChxJrkJx8n8LTfN8yBf/4VUzv9EtQrwLozLVG/xg9MASZfzd9K4VEuSLwMOp1X2oNAIIr/4
	w1VMoqD84nCPeCDq6KGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xC-006gF5-2A;
	Sat, 25 Mar 2023 12:25:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pg2xA-006gDn-0i
	for linux-phy@lists.infradead.org;
	Sat, 25 Mar 2023 12:25:01 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D90C260C37;
	Sat, 25 Mar 2023 12:24:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 334BAC433D2;
	Sat, 25 Mar 2023 12:24:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679747097;
	bh=1dklbVwFwR0zhMisSmK0/9gJpIfc7bnmRJm4tVTpEP4=;
	h=From:To:Cc:Subject:Date:From;
	b=kq+hukc6ikZx9SJzvxhdssupIjoLs/fpTfE4xWR1GCUAQf+ej4+CZPJ6As1nBx/Np
	 LnTe6uwtqRqgrBX8wcFx7iA8t9RlLfsrIhHjEF5zws5SH1BNQEw5/apXO7k4iKqEPN
	 Uy7pV/q9o/Dh1UqRs27VBKuLeF+QbeTJYbTLOInceRv5Os9TizexZ9yXkIxh/nxT68
	 rKRgc/2/r6fPkD5tZD46tl9Fnb/ND04aN/xOju7u135zEC1uc4Nn4GKbm+20O4KZKj
	 8x3BBE8d1WSRsffNs0PUWyactCPqtrXyQxPNcfK3Mi5YCLhNVrOxR7Sfku/eXrUcvl
	 Io5wExRlyhzbw==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Georgi Djakov <djakov@kernel.org>,
	Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vinod Koul <vkoul@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Marc Zyngier <maz@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	linux-pci@vger.kernel.org,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-phy@lists.infradead.org,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-usb@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH v2 00/12] Introduce the SC8180x devices
Date: Sat, 25 Mar 2023 17:54:32 +0530
Message-Id: <20230325122444.249507-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230325_052500_351741_BE888FE2 
X-CRM114-Status: GOOD (  12.55  )
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

This introduces Qualcomm SC8180x SoC which features in Lenovo Flex 5G
laptop. This also adds support for Primus platform as well as Lenovo Flex 5G
laptop.

I would be great if submaintainers can ack the binding patch so that
everything can go thru qcom tree

Changes in v2:
 - Fix the ufs pcie and phy bindings
 - Lots of error fixes for dtbs_check
 - Add few more missing compatiables

Bjorn Andersson (3):
  arm64: dts: qcom: Introduce the SC8180x platform
  arm64: dts: qcom: sc8180x: Introduce Primus
  arm64: dts: qcom: sc8180x: Introduce Lenovo Flex 5G

Vinod Koul (9):
  dt-bindings: firmware: document Qualcomm SC8180X SCM
  dt-bindings: PCI: qcom: Document sc8180x properties
  dt-bindings: phy: qcom,qmp-pcie: fix the sc8180x regs
  dt-bindings: usb: qcom,dwc3: Add SC8180x binding
  dt-bindings: interconnect: split SC8180x to own schema
  scsi: ufs: dt-bindings: Add SC8180x binding
  dt-bindings: phy: qcom,qmp-ufs: fix the sc8180x regs
  regulator: dt-bindings: qcom,rpmh: Add compatible for PMC8180
  dt-bindings: qcom,pdc: Add SC8180x compatible

 .../bindings/firmware/qcom,scm.yaml           |    1 +
 .../bindings/interconnect/qcom,rpmh.yaml      |   11 -
 .../interconnect/qcom,sc8180x-rpmh.yaml       |   76 +
 .../interrupt-controller/qcom,pdc.yaml        |    1 +
 .../devicetree/bindings/pci/qcom,pcie.yaml    |   49 +-
 .../phy/qcom,ipq8074-qmp-pcie-phy.yaml        |    2 +-
 .../phy/qcom,msm8996-qmp-ufs-phy.yaml         |   18 +-
 .../regulator/qcom,rpmh-regulator.yaml        |    4 +
 .../devicetree/bindings/ufs/qcom,ufs.yaml     |    2 +
 .../devicetree/bindings/usb/qcom,dwc3.yaml    |    2 +
 arch/arm64/boot/dts/qcom/Makefile             |    2 +
 .../boot/dts/qcom/sc8180x-lenovo-flex-5g.dts  |  590 +++
 arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi   |  326 ++
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts   |  706 +++
 arch/arm64/boot/dts/qcom/sc8180x.dtsi         | 3950 +++++++++++++++++
 15 files changed, 5709 insertions(+), 31 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sc8180x-rpmh.yaml
 create mode 100644 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc8180x-pmics.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/sc8180x-primus.dts
 create mode 100644 arch/arm64/boot/dts/qcom/sc8180x.dtsi

-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
