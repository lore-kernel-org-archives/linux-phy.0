Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773DDC38142
	for <linux-phy@archiver.kernel.org>; Tue, 24 Jan 2023 12:47:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cjMpIMarnd9UFCj4Qjo0jNyMGdNC0e59lsEkC+XBJwE=; b=xa+ID5uT0hXQe6
	PBNQAfyW9PaZoPaLd3yvthsFrMIENgMXL39a3eBvF+0n+ReBIa5DHoGmI/I3dyEAVMgdWy/udsybQ
	+lhTdKt5oXPGWiLAPI1/atY+JIayUavoF1D54YqZqnqnKLb6s5hf0ZuacsnY+8CacUlmEYQkIVRPP
	N5E0ll2yPJ3To1SmgPNhJ8C9fa65fQ+P+g5rTY9Q9EZxGjVOnNWlsiSbq/Ug+yhqMnJKQm7x2wTTR
	K9GxtaGhgAEE/fKnkXcJDYi7LGnLq/cMyGYMqYexDROOamzPidaR2XnApoz9JgUmdYK+Fy+tqpAbH
	U7T7h94s/1/+xbYYb1Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIi0-003mza-U5; Tue, 24 Jan 2023 12:47:28 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKIhx-003mwm-Fr
	for linux-phy@lists.infradead.org; Tue, 24 Jan 2023 12:47:26 +0000
Received: by mail-wr1-x434.google.com with SMTP id n7so13757395wrx.5
        for <linux-phy@lists.infradead.org>; Tue, 24 Jan 2023 04:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NQY35x77x8kOxBsXweZuI8QRw64wWTJF3dft8bDEqWY=;
        b=PiMMyODDWRQalMesG3gfe5bcjonEYBSCvJw/RQKhDkj8rVDL85SL3V7NUqvU9Tx7mg
         /jjHHUivYBes8xRQhqokxAILXlynP0KUbQEtTYVND0yahLoiHyL3CLqktoQr+Y/NopUX
         mHRTyBITWCcndRFO3zkI2UKFAEi1CwWBHFsWy6+Opp7h9M8nLoXOeuuh6BEqXcKbE3p0
         NNN3ugOyaK/TpA53cLo0F9droSpVeNMnGo0xnmk7yd7LjVYiVMfYC550vflqOhnLpUm8
         P0m4j9boYN5yD3rSOCy0pwlVHipMjULnvDxnMtDMUqcFUmY88DJwyEw9lZLbaGbf59Hn
         8EHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NQY35x77x8kOxBsXweZuI8QRw64wWTJF3dft8bDEqWY=;
        b=1M8+r1ORUgKwTS8aKGV6hzAblQZJ9yPluZeoD6J5BOMY37MxjrqVWRcQXMsOdiKEKP
         P8XXYPbSxxGWQ0o4XNgkYfdBK8pF4ux9Rv3DGEhKDnaQusvrQyx8hCXaC8P9eV2eBetC
         h+UgBX9v6NmUy01q2xROd3RD1Vv8ZWHOZTWKGNbJoUUHJffCwy+ug+DBX2o+++CTzkbc
         Rg9E0aJPiLPBU+6pkC43OH4j/a0BWMnTMXyKM+zxs98E/o6HZL2nFWcSQaZ7AN6UaSgC
         1yIuO4dFej1tmPSYjiVzFyPcdBXQxrvIoeOWoWzykAxcne+SVdQJXTA9cA+9gO9FLIo7
         1T9w==
X-Gm-Message-State: AFqh2kpS4Z1TGlidyu/vmTi/VHQf9guifnH4GWt5N2I+bDrwOoqg75m8
	ZrxeSwGpViOdrVoq9TDslWxkEA==
X-Google-Smtp-Source: AMrXdXv5jJuf7e8t1rbwRrcG+mysui5oKWwSENlk39CSpsFbmdFPiRUPasU4MUTSIxXuNY1nRxqWrg==
X-Received: by 2002:a5d:457a:0:b0:2bb:e993:6c85 with SMTP id a26-20020a5d457a000000b002bbe9936c85mr23682176wrc.35.1674564440879;
        Tue, 24 Jan 2023 04:47:20 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d5705000000b002bdbde1d3absm1766840wrv.78.2023.01.24.04.47.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 04:47:20 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 00/12] sm8550: Add PCIe HC and PHY support
Date: Tue, 24 Jan 2023 14:47:02 +0200
Message-Id: <20230124124714.3087948-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230124_044725_544979_E22982D6 
X-CRM114-Status: UNSURE (   8.82  )
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

Abel Vesa (12):
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
  arm64: dts: qcom: sm8550: Add PCIe PHYs and controllers nodes
  arm64: dts: qcom: sm8550-mtp: Add PCIe PHYs and controllers nodes

 .../devicetree/bindings/pci/qcom,pcie.yaml    |  44 +++
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  30 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  37 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 203 +++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |  25 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 369 +++++++++++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 846 insertions(+), 17 deletions(-)
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
