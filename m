Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B7A2BC32771
	for <linux-phy@archiver.kernel.org>; Sat, 24 Sep 2022 16:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h0xV4L33K5xo5f7P3c9EoyV1tnyc0ImFEYjR5McqXgg=; b=iEuMsAeObf/iBe
	CJIkTF2YLCj1dI9b7VZaIMz4RzPlPgQ1GaRHYTYrQe4Q16luxvwe/OeQHezqlJIlq+RmNv2f9biz0
	1dIq+irLmUxMd9WokVJtGF7tohjBsS2daHBSuBc2nIfuP2AHKXLeyQX6Gu9CdU2sUL6baCqCkyPDf
	RFbQ7kODoB+cJGnOTJaosKqv5UlFBTWqIZipm2wpRjYG33hlcQHXXZeN7nFvqZvD1HhH9+KORNZIb
	ZX6hLC/Hv98Et5iHGJCmEYY1eaC5Tc8tLj0SEq9mHwMC6da8V0dE9ti/H53GBEG67mEpaurrk8EbQ
	9wgGyZnfocWiqqzXkjnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cT-007t23-VG; Sat, 24 Sep 2022 16:03:09 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oc7cR-007szQ-0W
	for linux-phy@lists.infradead.org; Sat, 24 Sep 2022 16:03:08 +0000
Received: by mail-lf1-x12c.google.com with SMTP id z25so4671805lfr.2
        for <linux-phy@lists.infradead.org>; Sat, 24 Sep 2022 09:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=BucyVOTsY93CmgDyVGjJvCDbPEfzNq863eBEEbR0ty8=;
        b=P8iGfXM7V6D4PZU/Rq9v2t6Wz7Ww4eUzr8f2CGVtC9TxKUOKUDT0Qn+cOXuqKmmfht
         n/zW35BOL37tMg2mkRNgSHnoWHB/v6CbmVIsH81Cg9+Qt8yku2hzWapyVUu4qaMphlTo
         x64l7DrN1M8ceHYp4ObS2L297GC4gsAYl13Efa4otrwxpb+t8LL4jYCoQBcJiXKJKd5y
         G5z98gu7LMcENPuHjkqEUITbkQpJVKm/T2nnJAPi3qjVQzmobadAxUR/Ib+via5ROYM7
         gEp8Vb7eoiBi06IEePKCIntawSR7cSTO97DBWesQ4aKyMUziLCwIIXQHO4MNcxDigBIr
         mFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=BucyVOTsY93CmgDyVGjJvCDbPEfzNq863eBEEbR0ty8=;
        b=iCH7ZcgwtwQi28/WTP7M3XhuQ/ZbCsqbnduLHAuWcO+pCyVJQdgYMqzdITU1wTFNbO
         TS1NuqceY9q4zICY+N3lLyxqwIu5TI3/O4+88wrxhFHBN99FFc1aQincyPZ4VMyKAK6C
         f7Yokinvgi6pWQAFLERCg7ca4HWNyLLsfxYp/HCfXwK4nSls8sxRgdXDW/TOcAzs+ZkK
         DLPirKl9P1sZIz307IMp6xMAFdPl1cAKUs+CZ2aHMF9wJuGaLK/J1p2J3O6pfKMnNqj5
         IoyBRPrWTlkLhsYxfJYka/PzkqTJrJp8TDrqCM4y1BlIeNITj1ISKm4dfPuzvAODZUNZ
         26Mg==
X-Gm-Message-State: ACrzQf0SZ5qrnVtnyF3xJO50h67OMHgSCPVHQUFAlSzWvOGMVqiRhbX8
	1Rz7A8j6Y9PV/lMWVVyqfR1etw==
X-Google-Smtp-Source: AMsMyM5+juhEb5OjwTdEs+P0qVZDQxw0PADVmXoMvEDJQAeFTGQ7aObsoWWWg7512TTP4B/tU9YgMA==
X-Received: by 2002:a05:6512:3f8b:b0:492:d1ed:5587 with SMTP id x11-20020a0565123f8b00b00492d1ed5587mr5801675lfa.355.1664035384150;
        Sat, 24 Sep 2022 09:03:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([95.161.222.31])
        by smtp.gmail.com with ESMTPSA id 9-20020ac25f09000000b00499f9ba6af0sm1928015lfq.207.2022.09.24.09.03.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Sep 2022 09:03:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
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
Subject: [PATCH v4 0/6] PCI: qcom: Support using the same PHY for both RC and EP
Date: Sat, 24 Sep 2022 19:02:56 +0300
Message-Id: <20220924160302.285875-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220924_090307_115600_C459CE73 
X-CRM114-Status: GOOD (  19.65  )
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

This patchseries depends on the header from the pre-6.1 phy/next. Thus
after the 6.1 the PCIe patches can be applied independently of the PHY
part.

Changes since v3:
- Rebased on top of phy/next to pick in newly defined
  PHY_MODE_PCIE_RC/EP.
- Renamed 'main' to 'common' and 'secondary' to 'extra' to reflect the
  intention of the split (the 'common' tables and the 'extra for the ...
  mode' tables).
- Merged the 'pointer' patch into first and second patches to make them
  more obvious.

Changes since v2:
- Added PHY_SUBMODE_PCIE_RC/EP defines (Vinod),
- Changed `primary' table name to `main', added extra comments
  describing that `secondary' are the additional tables, not required in
  most of the cases (following the suggestion by Johan to rename
  `primary' table),
- Changed secondary tables into the pointers to stop wasting extra
  memory (Vinod),
- Split several functions for programming the PHY using these tables.

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
  phy: qcom-qmp-pcie: split register tables into common and extra parts
  phy: qcom-qmp-pcie: split PHY programming to separate functions
  phy: qcom-qmp-pcie: support separate tables for EP mode
  phy: qcom-qmp-pcie: Support SM8450 PCIe1 PHY in EP mode
  PCI: qcom: Setup PHY to work in RC mode
  PCI: qcom-ep: Setup PHY to work in EP mode

 drivers/pci/controller/dwc/pcie-qcom-ep.c     |   5 +
 drivers/pci/controller/dwc/pcie-qcom.c        |   5 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c      | 298 +++++++++++++-----
 .../qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h    |   1 +
 4 files changed, 229 insertions(+), 80 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
