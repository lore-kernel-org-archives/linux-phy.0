Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 190D0C64EC7
	for <linux-phy@archiver.kernel.org>; Mon,  6 Feb 2023 21:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rL4PN3BWRfJE/6f5/S7UPCHc5Tnwl3DK94CerPnRGCw=; b=GhfRflXp4VcbTf
	Uxz0u2RYTaEaj995Kbw7wrLe7oTAHVJAx5r5GVK+HyfzyuvQ0krWxt6nQ8o+tSmYNil7zY4a++iDC
	vSHh4vdGWHubztsW/ZAnBFYAb9JyjPr0hezv4q70Ylj1IcpTlfhzpSZgxR/OK1QLt/SIywEXi0Afl
	RiNRLn3mgwsN4JBDZX3Rdm/DJuhpbgy1r/aoaNA+dE8qyfRwsv6v+9E/fvifyS/1ixkHAE+SNR3d4
	+U5AHrGZ2/98RdUE5+vYx6Z7OiFRISZ2B/Z5EJZu3Ej7q3aJ+Uz3dKAPW1HVWlgJchXmUEitAzCJj
	mQXK48gqkrKugWopAM0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90Q-009zFh-66; Mon, 06 Feb 2023 21:26:30 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pP90N-009zEt-AT
	for linux-phy@lists.infradead.org; Mon, 06 Feb 2023 21:26:28 +0000
Received: by mail-wr1-x42c.google.com with SMTP id h16so11718377wrz.12
        for <linux-phy@lists.infradead.org>; Mon, 06 Feb 2023 13:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pXfjugPVwiiZL4YZi+/2x2YG+1ce/SaQsZb0dADm9n4=;
        b=nZuNJknrREMRZtgrKcJs1rhNy10GsHm4Fl/LnU3lfiG+BKEuaVtySkmuvlJtsZvN36
         Hy1DBDi6CZ4MZP0SZffv5AaE2/MnvQOHv9qsOIkOfcUbfSTWPEBe5dU1TPV/nQa8VGx7
         x36sHfgJ9kcG8jzAfKeodYOMI+O4ywI+sfm3ojEKuX0SgKp2zjud6CCYChAz0gh9dAIC
         zw00ahSN4TaSM/8hl6KJAkKWucYU6dNTMwcFXmJWY+bPITjAPQ3pQravyJXfNwzlf/Nm
         wlzAvdpSzcUPpd8lATW/oasc11JRlrB/vVsS1Yf7dkdJZDHH4wJVo57WKa6uaxQ2PyEj
         Y7mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pXfjugPVwiiZL4YZi+/2x2YG+1ce/SaQsZb0dADm9n4=;
        b=D52v6qO4uMnYajGXv8Nh0/hheiI1cI0BoKYlbikNZw97F69VNqa5n4NM5LG6omLI3s
         C3d6biPYMawonvUduFPNItAUqKm0rbhqdb2z89wn7mnq4UFoiO0QcfeQYaCOxQfZE5/x
         GlP0x0ZCPCkIjSJYSHAsWzXFFc2BD6+l7EfVkuT+ef5HWhZyJ6h//rgdiDHHsvh20+m9
         CKO/REs0pG058rxRIsgYnnHBG6YCU8TdinP0WJoPg2jKI7+gX+I9ubmVFJGrKxXLlNME
         9DHkj1bIqmmaBcbwowULHfYDWN/pptK3JUWZtepdN4F/nqIJcIUOHfDU6DVkFflro09I
         bwhw==
X-Gm-Message-State: AO0yUKWvlYR/N+v68pZ1/tmnf5XZyzX1g9vVFf5JbPPifP4mCY/NBwvr
	HRxk68qYX8VUlebj03Y1SEN3BQ==
X-Google-Smtp-Source: AK7set8JsDj9i24v8I3bpSCZSnTJnytHnJGs1kE7mep2Eh3n0OWxurExwxy0uWSzzGewFaO2IQ5PLw==
X-Received: by 2002:a5d:6684:0:b0:2bd:e8c2:c9bc with SMTP id l4-20020a5d6684000000b002bde8c2c9bcmr294655wru.42.1675718783464;
        Mon, 06 Feb 2023 13:26:23 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j11-20020a5d604b000000b002b57bae7174sm9783341wrt.5.2023.02.06.13.26.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 13:26:22 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v8 00/11] sm8550: Add PCIe HC and PHY support
Date: Mon,  6 Feb 2023 23:26:08 +0200
Message-Id: <20230206212619.3218741-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230206_132627_383279_1A667CDD 
X-CRM114-Status: UNSURE (   9.75  )
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

For changelogs please look at each patch individually.

This time, this version has an actual fix for the already merged PCIe
devicetree nodes, to get them in line with the SC8280XP bindings.

Abel Vesa (11):
  dt-bindings: phy: Add QMP PCIe PHY comptible for SM8550
  phy: qcom-qmp: pcs: Add v6 register offsets
  phy: qcom-qmp: pcs: Add v6.20 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6 register offsets
  phy: qcom-qmp: pcs-pcie: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-txrx: Add v6.20 register offsets
  phy: qcom-qmp: qserdes-lane-shared: Add v6 register offsets
  phy: qcom-qmp-pcie: Add support for SM8550 g3x2 and g4x2 PCIEs
  dt-bindings: PCI: qcom: Add SM8550 compatible
  PCI: qcom: Add SM8550 PCIe support
  arm64: dts: qcom: sm8550: Fix PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  40 ++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  10 +
 arch/arm64/boot/dts/qcom/sm8550.dtsi          |  52 +--
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 346 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 611 insertions(+), 47 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-txrx-v6_20.h

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
