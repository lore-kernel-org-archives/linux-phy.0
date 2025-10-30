Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21DE6CCF9E3
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 22:03:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FiWMykMyEsG71Y9/bY8cbUhrBF4m7KW61MB7pf/I/58=; b=F4zwODCK2jVek0
	bO366wD83b4sVpwNx8KOsj7P0f+BAcD5AKfd1DrhzUYQ0KyGTXORzvXsNb/ELk1XkDpN48TvkIMGq
	9Q1c8j84Vodbo/uXOyJwY+WyntJGuWflXbM3sCCE0/vgqgE3depxTiNV9Tqjy21wbDnm87Tng12ov
	wUrFnxlUz4webg2rC4ax+VPu2lL0r4TVMN+C0KKGcfTwMUbEmlzWANbgxr/+iKHZSyDJX0z6JkaHz
	e90ee5m5SsLNilDgB+KgsfvhvY3sciihIz4gjfZXvgH0Y7jBQpqxxhzw44XZFdpKdHYaBxwXYlYYJ
	aicmtSbxi1mysmN+MKgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEajx-000000051L8-3fpf;
	Thu, 30 Oct 2025 22:03:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEajk-000000051FE-2bFQ
	for linux-phy@bombadil.infradead.org;
	Thu, 30 Oct 2025 22:03:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Phq3DSvAibN+39Xx+hszp3gQ0pcRpusIMooyNw/JXGg=; b=C1HypaQI51d7hf9Dh/M8Gl7i50
	XtuUlufH/14wmcAG6VhcDAk8cMIFzIdVY1pZEv7Mzb3uaYlmR7EibAoVsNk1ml8amWJb935TQuIO0
	z7+JD3limXdtDaCd6tu1x5GGbO5UbTb6g/kCpLXCCQz9+J7KIsOW9b1cHp+2rBz5e0dtNQ3+5xLjz
	CRd2iTdmrTFN20HeVobyUgRhd2UKi7oOpZnzgSolQpABun4LYHKcbijoZwKl5ei93VNneFI7NlCC2
	KrxTKzlyGLfPg7yELVgjBYF1oDUjGgoPT9CHbhLXXQkn9tf17MkAAx4HVxyBCGD5s80Jn7P5vT4aa
	MPcn5vJA==;
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEZru-0000000A5fU-3asv
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 21:07:42 +0000
Received: by mail-io1-xd41.google.com with SMTP id ca18e2360f4ac-940d25b807bso65013539f.1
        for <linux-phy@lists.infradead.org>; Thu, 30 Oct 2025 15:03:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761861785; x=1762466585; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Phq3DSvAibN+39Xx+hszp3gQ0pcRpusIMooyNw/JXGg=;
        b=UssoPW73+SSl3fGPG6toRArNF0htEQXEpX4QGTXr3hIciXOnTf2OeRGfmwH7aFgs1v
         Nhqk9RnsvTqdl9YvGG1PVCF+Pk9m4pQ2TwZaXmKqJX50OTeNR1XsxFwVB3kR84pJWT9F
         d8q5QFnfMu2/hY7ufMGsYjn2FFE37YK0Bl9GYXhA89JHvLlk32xEetSMrmXyAyEO6Jba
         yZvibCUgvDNbp80Pqdq6gK9Q2WJH7JKDW8scTuZ1MPUnE1AeMIKtClavGq/bGoDPt/OB
         We+dzZyhI2vEJonJ9FGVbxBV2t3s89Od6soaegtG8fSPEPgFqqIFmo+i109XVUUE7iNF
         TuUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761861785; x=1762466585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Phq3DSvAibN+39Xx+hszp3gQ0pcRpusIMooyNw/JXGg=;
        b=jc4C+QvpMX91UIMIWKaEK/ZnzFjk4khhzaEN+G1KGJcgEwc+GElbMhcd4r3Im3XBra
         jaa90VRzSt4mtN4vUaWz0xPZc1WqVmcXzaBo+bMFfLA58W5sc5vngvMcFOzVQTReEau+
         hXibVyENxusXf0KCJ1q3Ji4HdsKzzEhR3EXr7mwjRjatvTdcTLOJrOK5cMm0yos7qpfH
         uAPzxO1Kj0BoND7aXdASbakTXDh90vfNZqsNcW/ltAJ9xaID7DSJ334aJNEI5YlwobaE
         XG3nCVc0U+lvxdS4THW7QkoFIVL+kP3BKdd/aI2QmgQqcJquRXxOAP4lNlx1Rxlh+eIc
         TyNA==
X-Forwarded-Encrypted: i=1; AJvYcCUzSi53/4jfHrrIa5cVNElhZCixD/awCDhVs2u1W6UU59FXkR2thaABKuEBk5UDoQ7R51mglSTfnFQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YyGi94mHkfZXB5+cokc9h32jokm1rLyNjojS+lp3IYJvRS8aMIr
	mv72I0Jl7Ec9licQFz2KKM5mNro78sG5+udOgePr7gPB/kzi5b6mMSZ0pkZfgHz/YKk=
X-Gm-Gg: ASbGncttyFsA3BG1sIzSk8xlazN/Ngb2oAAwkfwi/zeL+UpwED0c8jYEX7zXa1avS9O
	qsVazAyF5HJvot7RBffDGlYAj36AL6qgtgBDbaOZTZB5PRNWpkTmJYvt1KnHCzM28qrxr2PAJaq
	sKpLh1w0IoOc3QJ0Sa+P9+qrs9DIraT9/y+FYBLg+lJW50NcDawi7U9VtcOtEUNXj3xbj+RwO5Q
	D8KCGxMYw0U7C0JnQgWpb/XR4d8TOAM8Er6ZfhS/X7kva/ll3GRcVfB6wEeQZRPEedsN627zUac
	d5lSa/JIPM6Ac0UzWaN2DuytXMaJUgI5QXsxtnc97ZwPQa4x6WvdEWt2yFFO/VSS8de6l69I3gx
	h/GN3mGGV8nLv9yDF99OEKGUfcZYBWkUi3E1H+VN3SPGfCEp82GAEFXO9m5u30ihL41jNiobD63
	J0SsuxdJmr3UtCymgy3U6lLPj8rYuv2SPxu3QvguOFXbkPLDDPqW+Vjw==
X-Google-Smtp-Source: AGHT+IHIfi5HvcZFQEMsBLWU40iLrdbD6dtXflle6FkJVnDeQEPilinICeuX7JKqnLgG58PEKCRkEQ==
X-Received: by 2002:a05:6602:1606:b0:944:f050:65d6 with SMTP id ca18e2360f4ac-948229ca479mr236508039f.10.1761861784511;
        Thu, 30 Oct 2025 15:03:04 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94359efe149sm604118039f.13.2025.10.30.15.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 15:03:03 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	bhelgaas@google.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org
Cc: ziyao@disroot.org,
	aurelien@aurel32.net,
	johannes@erdfelt.com,
	mayank.rana@oss.qualcomm.com,
	qiang.yu@oss.qualcomm.com,
	shradha.t@samsung.com,
	inochiama@gmail.com,
	pjw@kernel.org,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	christian.bruel@foss.st.com,
	thippeswamy.havalige@amd.com,
	krishna.chundru@oss.qualcomm.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Thu, 30 Oct 2025 17:02:51 -0500
Message-ID: <20251030220259.1063792-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_210739_119039_750135AC 
X-CRM114-Status: GOOD (  20.31  )
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

This series introduces a PHY driver and a PCIe driver to support PCIe
on the SpacemiT K1 SoC.  The PCIe implementation is derived from a
Synopsys DesignWare PCIe IP.  The PHY driver supports one combination
PCIe/USB PHY as well as two PCIe-only PHYs.  The combo PHY port uses
one PCIe lane, and the other two ports each have two lanes.  All PCIe
ports operate at 5 GT/second.

The PCIe PHYs must be configured using a value that can only be
determined using the combo PHY, operating in PCIe mode.  To allow
that PHY to be used for USB, the calibration step is performed by
the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

Version 3 of this series incorporates suggestions made during the
review of version 2, and based on some error reports from Aurelien
Jarno and Johannes Erdfelt, disabled ASPM L1.  Specific highlights
are detailed below.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v4

Between version 3 and version 4:
  - In the DT binding for the PCIe host controlloller, add a new
    sub-node representing the root port
  - Move the phys and supply properties out of the PCIe host controller
    and into the root port node
  - Define the spacemit,apmu property later in the binding and DTS files
  - Define the device_type property first in the binding examples and
    DTS files
  - Add root port sub-nodes in the examples and the DTS files
  - Select the PCI_PWRCTRL_SLOT config option when PCIE_SPACEMIT_K1 is
    enabled
  - Parse the root port node in the driver, and get the PHY
  - Leverage the PCI pwrctrl slot driver to get and enable the regulator
  - Don't set num_vectors to 256; just use the default (32)
  - Cleaned up some comments, white space, and symbol names based on
    feedback from Mani
  - Add some runtime PM calls to ensure it works propertly
  - Add a new post_init callback, which disables ASPM L1 for the link

Here is version 3 of this series:
  https://lore.kernel.org/lkml/20251017190740.306780-1-elder@riscstar.com/

Between version 2 and version 3:
  - Reviewed-by from Rob added to the first two patches
  - The "num-viewport" property has been removed
  - The "phy" reset is listed first in the combo PHY binding
  - The PHY now requires a resets property to specify the "phy" reset
  - The PCIe driver no longer requires a "phy" reset
  - The PHY driver now gets and deasserts the reset for all PHYs
  - Error handling and "put" of clocks in the PHY driver has been
    corrected (for clk_bulk_get() rather than clk_bulk_get_all())

Here is version 2 of this series:
  https://lore.kernel.org/lkml/20251013153526.2276556-1-elder@riscstar.com/

Full details of changes made for version 2 are available there.


Alex Elder (7):
  dt-bindings: phy: spacemit: add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: introduce PCIe PHY
  dt-bindings: pci: spacemit: introduce PCIe host controller
  phy: spacemit: introduce PCIe/combo PHY
  PCI: spacemit: introduce SpacemiT PCIe host driver
  riscv: dts: spacemit: add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
 drivers/pci/controller/dwc/Kconfig            |  11 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 349 +++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1638 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 131f3d9446a6075192cdd91f197989d98302faa6
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
