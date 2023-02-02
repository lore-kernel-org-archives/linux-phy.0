Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 994CAC05027
	for <linux-phy@archiver.kernel.org>; Thu,  2 Feb 2023 12:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vpDi1AIhWwqFX6vj8oPVGgwpmcw1pacPP1TRtLKuOVc=; b=aw8tPNETce2OYj
	QqvaKps+k/WXrzf2HX60V+IuuK/AG8YEX3kU6eW7akZY51HVLJi80QYpmEDw40Vroo1N1b2MLHFpL
	kXT2m6LndbtJ9/2NnwvKi+ashemQYrQuchEqGuqYMdp/gxbV99bDIcj96wPyDafxhoaKj/Q0JRSx5
	0v/eeffyHJLPnnKqIhYUOER7tcRBUWlhrEYNybVtdB4J1BYlJfGJgUjVKk6tUAQCt7detitJgxVoz
	g/Puy3zuvnLHWrBJ3C6lXMTM2eSzluHxafcmlubWeK3EoD9UnVir3VQdVXtuc5cPBdJNEolxX8MaH
	rj7s8wyvkjOFp2j1apwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYs0-00FpCs-2F; Thu, 02 Feb 2023 12:39:16 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNYrx-00FpC7-Fm
	for linux-phy@lists.infradead.org; Thu, 02 Feb 2023 12:39:14 +0000
Received: by mail-wm1-x330.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so1290538wms.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Feb 2023 04:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zlZndr/Xexpx1FJ6qzYopCyK98Fm20nZ/gdrxKxxBl8=;
        b=C4Z2jcQloy00i40SwfiwkDblC0TFewrd5wlTqTxWF9eFn+OhE6sg4xgYhXTlme4V2a
         7NpBa7HTQ76YyELpe/9jbdLOPW6LuJstV7EnpEEq44hwJ6x9ZHxJpapy1nxHp+P137IX
         ZVvuPIMvA75u+wJ8WXOBW2Qq+cXemBtIt3OE/ScU6pmaFHxGQFrBAifBAtpTlJgruy5J
         uTKI8rnkA4k5fAVEQWiIjOAsurHrtH+dE/Szzkjr/8Nn3pNViAWHfBdZVCMWSMjP4N+K
         I4zuzZ8rR4F3qwI9Vt/7EsspcCkwJ7p6g0E2U8XdMV9ZCs5om6m47/IRLiVEifmTFV3d
         61JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zlZndr/Xexpx1FJ6qzYopCyK98Fm20nZ/gdrxKxxBl8=;
        b=8SSWA85PO2nJt+7qWuCWuEANWVYh1LvS5ilmi3SCjuhXD5o06x0fWZdv/EO167wzlw
         wikuTTPTCEe84OHhJ7+tp3EUXUvJWQjaIF6VragpjxH4ZKYx3gmaOfeDDu0AvtFL+3kM
         wTpDcr3+5pdwssIcV0dXAeBETlJkr76rLWUQraF8E/NgBWEaQIyQb9LP8yLb2WZVwly/
         gEL5upUCG2E0puu69rBuxLZdgJ7lfRfJRFbjFHrxBT0SOsNhi4iojkO2zdYyw2m9bsqf
         wQ83yR2xuAKUh5dM+AjjuXEcTHor5Zw2Q5C7CJoE1I7mFOQLlxR5nU7rZvpCBdlFEUl+
         ZhvA==
X-Gm-Message-State: AO0yUKVjGbh7+JXgJTJEnx0kP5EaU/X1/N60mGeraNXBRwbFMUsmCkzV
	K5ydgC3lbRHDs1qtpjULM7ADgw==
X-Google-Smtp-Source: AK7set8NZe+DbGPlG32ChRQ12zNv/gAXhW6Byz18RrufHiLXw/dncDeZVwj5pQAfT/iqrXk3bPaAZg==
X-Received: by 2002:a05:600c:4f06:b0:3da:b40f:7a55 with SMTP id l6-20020a05600c4f0600b003dab40f7a55mr1811857wmq.6.1675341551096;
        Thu, 02 Feb 2023 04:39:11 -0800 (PST)
Received: from hackbox.lan ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id j5-20020adff005000000b002bddd75a83fsm19525644wro.8.2023.02.02.04.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Feb 2023 04:39:10 -0800 (PST)
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
	Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH v6 00/12] sm8550: Add PCIe HC and PHY support
Date: Thu,  2 Feb 2023 14:38:50 +0200
Message-Id: <20230202123902.3831491-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_043913_604386_DB1983E7 
X-CRM114-Status: UNSURE (   9.10  )
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
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts       |  38 ++
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
 13 files changed, 847 insertions(+), 17 deletions(-)
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
