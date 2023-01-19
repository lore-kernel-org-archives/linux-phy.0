Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C0CC004D4
	for <linux-phy@archiver.kernel.org>; Thu, 19 Jan 2023 14:05:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H1q5i57ksCGcxUnumpUTcTFPt37OLcOfPUmUukKTT58=; b=1CWseRe4vHY1IZ
	QzJ6FLPDDxCx308eiIferiPtpFH3ifGPLFE6Iq6Refq6+8vwJb25Vr8CEW6r4qPoswS9kf0APEcOp
	9bgj5xSCuP+BPL8v+HKYLa4oS7R2a1nX/Kpg1n3uTdm8BVC0X9FRNsdusGxzVG1nSPN+Bd//hEJkv
	FOTi3z60c0w1i0fJtDnwVOtuGvg4rlcrVTp45AOKXS9bLEERQO295IFoo1eqBUB0XBjOhavcsY1xJ
	GuM38prbiu4Qqh+GHEXOaicAb2m1MZpKcQGP6XruZFv0+vdCTSlIb9YKivRTi+pTosGVg/eAxMAE0
	wCeeM1wiycC2gWkr4XCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXb-005EBM-HP; Thu, 19 Jan 2023 14:05:19 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIVXR-005E4J-S7
	for linux-phy@lists.infradead.org; Thu, 19 Jan 2023 14:05:11 +0000
Received: by mail-wm1-x32b.google.com with SMTP id bg13-20020a05600c3c8d00b003d9712b29d2so3658893wmb.2
        for <linux-phy@lists.infradead.org>; Thu, 19 Jan 2023 06:05:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9dXl5MSAf6THUl/3TA+I7jX3wEzwzpDXufOnVHww1WE=;
        b=uA2hhR0cBXUfloKo6JvvK7dyc314WNntf+GxNQLjpCdE5UB14EXGT8mjXjOLG84kTL
         zM7QyUYCAKrEqvpaVZy9KFXWuZXC1kewLqywsUGhwhMJlKGBTv1ZNmduXnlqXoz7nptY
         8lAiVPZIWDt7Pm/224Fh7/Hc74Ebf35Umh5V5YG9PWYuGV1zqW6fhTPKqjyCyi7qfgCv
         LfXnw8JrH3gVi49TaA9XLgvk5cjESP1fm7XgD2DR6pUm5OmhAZ7gZyDryiFaiZ73SuhM
         jMI8wD8IzW8bBlDn2LyA0v/9c4vKhiMLPt+aPAlel5Z9SZKwKs1setpw8m97FRq+wnHQ
         NfJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9dXl5MSAf6THUl/3TA+I7jX3wEzwzpDXufOnVHww1WE=;
        b=Gd6h/zMAKbryE9pUUXUnOi4CAY1X15PjG2gBzsSQISPg0rjhx6y8lpW2Ffdf3xSAKV
         aNnlKcIgSbvF4XBj/P/aUxzpLqZOb3XCo0lLXZo5PO0i9hs76pmGwvMqXS7kkjmQNoT6
         pv7dlbmfHhzdzgc+oV/23iRd7sEys//8poYedDCViJkMoSaJ7mAtk96YDvAM4uqwzBLg
         J+VVfVdL52VaJaw4U0mC58hKLmlAb+XniEuS1f8y9mmoA4QvsNrUee7ElcLhv1oRbcl3
         loW/niAASF7FWCUPZxHq4qsQ7szqtee6IWASulvkf66fS6FK6k9nvuw87pyTBep34dQ0
         BCug==
X-Gm-Message-State: AFqh2kovE/fPHhFFUoen7znxUCaUQOC80Ags5uEbwT1sO/A8rCuMzfxH
	sRkVvlmL5/oo6RAedvGPlzSuFw==
X-Google-Smtp-Source: AMrXdXuFCeG5Oi9K6Cs7CIYf3ikTo6UoLal3U73PVjlaOwcshPkD6BKNJtNiRr5vPMOxClhadO/IBA==
X-Received: by 2002:a05:600c:1d29:b0:3d9:69fd:7707 with SMTP id l41-20020a05600c1d2900b003d969fd7707mr19004751wms.2.1674137106143;
        Thu, 19 Jan 2023 06:05:06 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id m10-20020a05600c4f4a00b003d96efd09b7sm5263883wmq.19.2023.01.19.06.05.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 06:05:05 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	"vkoul@kernel.org"  <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v4 00/12] sm8550: Add PCIe HC and PHY support
Date: Thu, 19 Jan 2023 16:04:41 +0200
Message-Id: <20230119140453.3942340-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_060509_944130_C0978C81 
X-CRM114-Status: GOOD (  10.08  )
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

In order to make sure the bindings are properly updated, I decided
to send the whole PCIe support for SM8550 in a single patchset.

Sorry in advance for the inconvenience.

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
 .../phy/qcom,sc8280xp-qmp-pcie-phy.yaml       |  11 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  29 ++
 arch/arm64/boot/dts/qcom/sm8550.dtsi          | 207 +++++++++-
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 367 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-qmp-pcs-pcie-v6.h   |  15 +
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v6_20.h    |  23 ++
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6.h    |  16 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v6_20.h |  18 +
 .../phy-qcom-qmp-qserdes-ln-shrd-v6.h         |  32 ++
 .../phy-qcom-qmp-qserdes-txrx-v6_20.h         |  45 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   6 +
 13 files changed, 812 insertions(+), 5 deletions(-)
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
