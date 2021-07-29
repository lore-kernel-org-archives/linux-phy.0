Return-Path: <SRS0=z2Tz=MV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65EEFC4338F
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 11:56:50 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2BEDD60720
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jul 2021 11:56:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2BEDD60720
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ij4sQMdp9J69pndPqTZHdzq3qqY7MlG1omSlKtI+knA=; b=gbjWGSuMKrnn0C
	i0NBKQlgd9tTX8K1iqcsl81HHtlBm4NTv0MBvJfv/ONIghEC6Mkw8gDI0MER1hrQWOw/teMIwLF77
	vO0Ir8rJJ1/zLF6OiREJ78Fk1fCVFrL2CDKQkiOgARRvhjjpsjbgVrEotOzThubaYXCXAPDjAuJSA
	sExJbfVy3K72+YNzdvYY9kMasl9xPuJpXsrEEOi64nBaajKgqRwu9IqJ8gfUQTGUNlYV8I5D/1mWq
	Pp4fQJCWHpaIYscC7Q6A+ofvl8U8lNoPAsdtzu08rIdj/PruTS31NdK4dxR0YConDL0EZ4G4cewfJ
	anEEZaCl1VbsJGdKxEfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m94ef-0041aY-LQ; Thu, 29 Jul 2021 11:56:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m94eQ-0041X0-IC; Thu, 29 Jul 2021 11:56:37 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6D5B060F22;
 Thu, 29 Jul 2021 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1627559793;
 bh=rncMA8vl1pvuHqou4S/RmnWLK3jVEoJLkOEd1M5JIhI=;
 h=From:To:Cc:Subject:Date:From;
 b=fLPd42EVOWcLWnoiOJqYIqiQrdQpBsRkPih7KHw2/dYfSsCL/ex6Yw6Ei1ZE4olea
 qvTcvRh7tHWtGa0rTNg7u1dZ043YkXofUH797NYyzPftgyWuiurqMjsMfOtf7CDiz0
 JW3TFrrUD2hVu+Z9ip58s2iQlmOTuGbY7EzlBMER6r3L6vZFd3X+p9zvUpvsmCgzPa
 Yf+vDpTMG8wYIANpPG9mPD1jZCnt+HrcjXfIVYjIR+Y80z74g/Ylz+oLhPHTEOC5Vw
 D+vV3WWYfd3cp7yjlsGbcwYuaRQ+3BZtJz0M0N0BDdmjLPa7qjWXCG3WCRTTStSUSj
 bhaXOB0bWulRw==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m94eN-004d1p-6f; Thu, 29 Jul 2021 13:56:31 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Binghui Wang <wangbinghui@hisilicon.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Jingoo Han <jingoohan1@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH 0/5] DT schema changes for HiKey970 PCIe hardware to work
Date: Thu, 29 Jul 2021 13:56:23 +0200
Message-Id: <cover.1627559126.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_045634_728334_05CCE319 
X-CRM114-Status: GOOD (  10.39  )
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

Hi Rob,

After our discussions, I'm opting to submit first the DT bindings for the
Kirin 970 PCIe support.

Patch 1 is there just because patch 2 needs. You already acked on it.

Patch 5 is also there just as an example of the entire stuff added to
the DTS file.

The core of this series are patches 2 to 4. They contain the conversion
of the kirin-pcie.txt file to the DT schema, and adds the needed
bindings.

Currently, it generates some warnings:

   Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.example.dt.yaml: pcie@f5000000: pcie@4,0:compatible: None of ['pciclass,0604'] are valid under the given schema
	From schema: Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
	
  Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.example.dt.yaml: pcie@4,0: reset-gpios: [[4294967295, 1, 0]] is too short

Not sure how/where to fix those. Perhaps at the pci-bus.yaml?

Please review.

Thanks!
Mauro

Manivannan Sadhasivam (1):
  arm64: dts: HiSilicon: Add support for HiKey 970 PCIe controller
    hardware

Mauro Carvalho Chehab (4):
  dt-bindings: PCI: kirin: Fix compatible string
  dt-bindings: PCI: kirin: convert kirin-pcie.txt to yaml
  dt-bindings: PCI: kirin: Add support for Kirin970
  dt-bindings: phy: Add bindings for HiKey 970 PCIe PHY

 .../bindings/pci/hisilicon,kirin-pcie.yaml    | 145 ++++++++++++++++++
 .../devicetree/bindings/pci/kirin-pcie.txt    |  50 ------
 .../devicetree/bindings/pci/snps,dw-pcie.yaml |   2 +-
 .../phy/hisilicon,phy-hi3670-pcie.yaml        |  86 +++++++++++
 MAINTAINERS                                   |   2 +-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  99 ++++++++++++
 6 files changed, 332 insertions(+), 52 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/pci/hisilicon,kirin-pcie.yaml
 delete mode 100644 Documentation/devicetree/bindings/pci/kirin-pcie.txt
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3670-pcie.yaml

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
