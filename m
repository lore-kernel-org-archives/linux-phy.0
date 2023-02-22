Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E127EC636D6
	for <linux-phy@archiver.kernel.org>; Wed, 22 Feb 2023 15:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bbv9rUt7Ed9HF3pn+mafNZYSWj9hHZraKmBWcDvoCCo=; b=jYLcKGh6qOOCRg
	GggFhwPZND1Xy6s047EIVB6ofReIr4jQJqE5omCckLDRPa12EEKilVTHIeSfqonsSuGeFWn8CoJM5
	L2nwUQ6djcGxJPlDAkgaXs0vxYv1E4jAAt4XrFUEp1MV2AlNtRS4lmsMb8+qcNH7cYF/9JFUOBqJY
	5px+Z/eeY4cN74i6EI22+r6zReyjSna3P/UBPWkVTphfHTBqhZaiAkE3AI+dPiAbqSBD/x9aD39CJ
	XnskG7NUNBWEY10PXzxbuDTC2zfdo/zqbLgzTz69Cc75g3exkGzj1heVSc4xgHydaKxRdluTzOLEC
	5vIKqsC+Pdlo1yZxrUTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7H-00CsR5-AX; Wed, 22 Feb 2023 15:33:11 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUr7E-00CsOs-Op
	for linux-phy@lists.infradead.org; Wed, 22 Feb 2023 15:33:10 +0000
Received: by mail-pj1-x102e.google.com with SMTP id nw10-20020a17090b254a00b00233d7314c1cso9342854pjb.5
        for <linux-phy@lists.infradead.org>; Wed, 22 Feb 2023 07:33:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rMyy7zeolGJx13EdVfIC3dMjyuc5oDyD182TrCmkF94=;
        b=wETPq4VhxDAwhLSfECSszph1RsgRzfh4oibhGIpn9iT5NJpHbusmsb0OpMZbure3dP
         Co050tyAU4CZ+2K9MM2SYdx/JBr3QzaaYmd6LyQf4y61HQNUCf+gDJe9lgHj+eQL0pAR
         GF/+wHqCJqb6s2pfVAjS4kHSFePjhdJs2rBc0SMsiZZmQozNp575eg9f0B9JiJyiPEuX
         qQZIpqyO+ii13hTPIbOJ2jxtftbfM/e7GTnnyImmfPC5SMOzMyneTNHABE5NxU6YiW+y
         91PbTg+/i7Ht5CNZt6nH69TVz0x3knXefTv88Vq59yYKz0eqgliSF1R9Qu2dlpzynvqn
         Ob4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rMyy7zeolGJx13EdVfIC3dMjyuc5oDyD182TrCmkF94=;
        b=ApResYGL15/0StdmLtzQAp1qRCw8UcxJ6DDlEIWsNXxPEDmX9CIWg+IABoRdMegFKi
         3ZBTjH4u7Wi/zyUACzQtvb5VtW3xmg6HVm/9/i/HvuCBRig+nFyCl0v3g6IZ+y/0LvWK
         c4A/BMc133FGrfhqTdwnx0Lj6m8t1UBefGq2IV3Ga7eM89zhvkgsaEMC9Jb9/eTkaaQP
         NloMGR/bJNvBjt1eUBb0/I2z0gKJdjiIVnAZEs83q7O341hpOu2pSZ3w/ZIDOWmLxv8s
         kYYZve7TokS8I1qR1fcG/SmYICDwZuCT+dJ14U+uFmTmx5Pqtr+m/BbiMqOJDFbusGIP
         0rJA==
X-Gm-Message-State: AO0yUKUSHY6HkcRstM+dXx5S18AHK0h3GAgvdsTAqKnI3rTPJYsMYq52
	9RKIYggAgRPGlQpc8ZbGW75W
X-Google-Smtp-Source: AK7set/n/8dgaH07ptoAOleRUMSTtz2iry2jJrEygcUsEgQBJo45ikFu/zvY7ufBlzLlACL+ZmlTww==
X-Received: by 2002:a05:6a20:12d2:b0:c1:2027:f4a2 with SMTP id v18-20020a056a2012d200b000c12027f4a2mr540878pzg.49.1677079985963;
        Wed, 22 Feb 2023 07:33:05 -0800 (PST)
Received: from localhost.localdomain ([117.216.123.15])
        by smtp.gmail.com with ESMTPSA id f15-20020aa78b0f000000b005ac419804d3sm5222482pfd.186.2023.02.22.07.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Feb 2023 07:33:05 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	lpieralisi@kernel.org,
	robh@kernel.org,
	kw@linux.com,
	krzysztof.kozlowski+dt@linaro.org,
	vkoul@kernel.org
Cc: konrad.dybcio@linaro.org,
	bhelgaas@google.com,
	kishon@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 00/11] Add PCIe RC support to Qcom SDX55 SoC
Date: Wed, 22 Feb 2023 21:02:40 +0530
Message-Id: <20230222153251.254492-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_073308_828532_CF7A225E 
X-CRM114-Status: GOOD (  11.42  )
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

Hi,

This series adds PCIe RC support to the Qcom SDX55 SoC. The PCIe controller
in SDX55 can act as both Root Complex and Endpoint but only one mode at a
time i.e., the mode cannot be switched during runtime.

This series has been tested on Thundercomm T55 board having QCA6390 WLAN
chipset connected to the PCIe controller. For powering up the WLAN chipset,
an out-of-tree patch has been used since we do not have a proper driver in
mainline to handle the power supplies.

NOTE: Even with this series, I couldn't get network connectivity using
QCA6390. But that's due to ath11k regression for which I've filed a bug
report: https://bugzilla.kernel.org/show_bug.cgi?id=206923

Merging strategy
----------------

PCI and binding patches through PCI tree
PHY patches through PHY tree
Devicetree patches through Qcom tree

Thanks,
Mani

Manivannan Sadhasivam (11):
  dt-bindings: PCI: qcom: Update maintainers entry
  dt-bindings: PCI: qcom: Add iommu properties
  dt-bindings: PCI: qcom: Add SDX55 SoC
  dt-bindings: PCI: qcom-ep: Fix the unit address used in example
  ARM: dts: qcom: sdx55: Fix the unit address of PCIe EP node
  ARM: dts: qcom: sdx55: Rename pcie0_{phy/lane} to pcie_{phy/lane}
  ARM: dts: qcom: sdx55: Add support for PCIe RC controller
  ARM: dts: qcom: sdx55-t55: Enable PCIe RC support
  phy: qcom-qmp-pcie: Split out EP related init sequence for SDX55
  phy: qcom-qmp-pcie: Add RC init sequence for SDX55
  PCI: qcom: Add support for SDX55 SoC

 .../devicetree/bindings/pci/qcom,pcie-ep.yaml |   2 +-
 .../devicetree/bindings/pci/qcom,pcie.yaml    |  35 +++-
 arch/arm/boot/dts/qcom-sdx55-t55.dts          |  42 +++++
 .../boot/dts/qcom-sdx55-telit-fn980-tlb.dts   |   2 +-
 arch/arm/boot/dts/qcom-sdx55.dtsi             | 154 +++++++++++++-----
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      |  91 +++++++++--
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v4_20.h    |   2 +
 8 files changed, 272 insertions(+), 60 deletions(-)

-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
