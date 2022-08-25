Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 687D6C64992
	for <linux-phy@archiver.kernel.org>; Thu, 25 Aug 2022 10:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w1BRgK9rcaMcpbKQIu+yEY12dnzWOpFRIEXTwW83EuY=; b=g/SeILwg9RB44j
	P3sCDnzz9q9a66BjDXFSawA8oYnXuMocT17dpZJZHVN7MEYkLL9BrZeTaSstEsw+lq0iasgBvlzFL
	Gxmup7AQDQK+GW8gEbQ6JmRsYroOXoJcaN2tWU+4jY8AoDAJ27AKr18hgSYF2EdZBXMdNSoIGxHkk
	ySZKQ1NfSQqdlG+PN+keYuakzfoGsQGpEVS7jiAhWuIF7+zxYuez6EmCXDagzgAEejuVAbouGUOJC
	+0cGlTur2mNLDVQ4nqgHuGF7/q8G5WTFEiqSYMBSzDx0jqdB9AqiKJry6vU/uS5jefU77QtFEJpoL
	vDNBHBI8ut4KRxzM5Mmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARo-00C455-N2; Thu, 25 Aug 2022 10:50:52 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRARl-00C42r-TJ
	for linux-phy@lists.infradead.org; Thu, 25 Aug 2022 10:50:51 +0000
Received: by mail-lj1-x22c.google.com with SMTP id q18so18022378ljg.12
        for <linux-phy@lists.infradead.org>; Thu, 25 Aug 2022 03:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=10qWqNWwct0k03IB/GKclWJkUQlncNZrJzbA4LyiZJo=;
        b=Rstp6Iplj0RUiP/cB/ximuaHD1evEKfdPdHQkicXj3MPSbqhrBRv2D7etIgt3YPnnR
         6YHOnOchsQi3PcKsSeUwC0pO3BNNdfY6YlqxXCwtVpVKtnPZPjN/pNfylmTQAoeUah8o
         KsYu2aXULW/3JEvcWYNXmEtuzKNLQ39AdSFcPZvOshEn8bzmvcHb/HRENy1f/+fxWLoj
         kDM0NNDn/FSXlKpsE7+Um8oHkROoEotPCO1u3boahatoQ8sLLAcxDE6bhoK9sACuEOuD
         sRiMnyMPdxCOFNgDgoyZfvJ/69juFN8OrxNxLdjbljPxCLnS5Tklqar4hoIYsEx6+fUY
         J2KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=10qWqNWwct0k03IB/GKclWJkUQlncNZrJzbA4LyiZJo=;
        b=7D+p7udqNzHZ467UKpnwr2TxLtf8D5cT5P0BaSEsJT1aQzray736P9FDgm3fkILozQ
         MxBNlV8Vt0VXB1fdMlcsVYePeEToHvXOkI2t03Edi2hUZ4GpVNvBwTAOqnQEaqx3lnuu
         iWIsgWjuueNcNZCo+Ww9hBumwQoPcRcWsi5GivcKWvFcv3khtpGT8mVAinQFzGvigA8h
         vZeTQJoJ/7I2tjsfIYGqNj/b4L5eLYYIPAF73ccAlATKCl44Q+GMvIPlEdCGk8DeEGSR
         U1YxxR3iLtvSKk/NbT7koucSSJxx491QT/jF/1bXibftoxZ8Zj/TIHjdSdtMNaZYcmY+
         5kEg==
X-Gm-Message-State: ACgBeo1SxtY8/qSHQOW5zTQwNUm8bNMiSVcdCSJ2Frk+Un7iqQ1/YMbl
	iCoXK2VVn7AdRxYnl7yykPcfGQ==
X-Google-Smtp-Source: AA6agR6/3sRBbr7+OueBdJ0egxRoqKNqNFMwj7yOhEJNlfmxYJEbkyeM29cHOZvlUABzy3PXyDWOxA==
X-Received: by 2002:a05:651c:1025:b0:261:c071:c473 with SMTP id w5-20020a05651c102500b00261c071c473mr926266ljm.71.1661424646349;
        Thu, 25 Aug 2022 03:50:46 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u14-20020ac258ce000000b00492f49037dfsm429609lfo.152.2022.08.25.03.50.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Aug 2022 03:50:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn@kryo.se>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@ti.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
	Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v2 0/6] PCI: qcom: Support using the same PHY for both RC and EP
Date: Thu, 25 Aug 2022 13:50:38 +0300
Message-Id: <20220825105044.636209-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220825_035049_970634_62E2CC91 
X-CRM114-Status: GOOD (  14.74  )
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

Programming of QMP PCIe PHYs slightly differs between RC and EP modes.

Currently both qcom and qcom-ep PCIe controllers setup the PHY in the
default mode, making it impossible to select at runtime whether the PHY
should be running in RC or in EP modes. Usually this is not an issue,
since for most devices only the RC mode is used. Some devices (SDX55)
currently support only the EP mode without supporting the RC mode (at
this moment).

Nevertheless some of the Qualcomm platforms (e.g. the aforementioned
SDX55) would still benefit from being able to switch between RC and EP
depending on the driver being used. While it is possible to use
different compat strings for the PHY depending on the mode, it seems
like an incorrect approach, since the PHY doesn't differ between
usecases. It's the PCIe controller, who should decide how to configure
the PHY.

This patch series implements the ability to select between RC and EP
modes, by allowing the PCIe QMP PHY driver to switch between
programming tables.

Note, there is no direct dependency between PCIe and PHY parts of these
series, so these patches can be merged into respective subsystem trees
separately.

Changes since v1:
- Split the if(table) removal to the separate patch
- Expanded commit messages and comments to provide additional details
- Fixed build error on pcie-qcom.c
- Added support for EP mode on sm8450 to demonstrate the usage of this
  patchset

Changes since RFC:
- Fixed the compilation of PCIe EP driver,
- Changed pri/sec names to primary and secondary,
- Added comments regarding usage of secondary_rc/_ep fields.

Dmitry Baryshkov (6):
  phy: qcom-qmp-pcie: drop if (table) conditions
  phy: qcom-qmp-pcie: split register tables into primary and secondary
    part
  phy: qcom-qmp-pcie: support separate tables for EP mode
  PCI: qcom: Setup PHY to work in RC mode
  PCI: qcom-ep: Setup PHY to work in EP mode
  phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode

 drivers/pci/controller/dwc/pcie-qcom-ep.c     |   4 +
 drivers/pci/controller/dwc/pcie-qcom.c        |   4 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 261 ++++++++++++------
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
 4 files changed, 188 insertions(+), 82 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
