Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D330ECD98E3
	for <linux-phy@archiver.kernel.org>; Thu, 13 Nov 2025 21:45:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x3XYxWhzdLx/gkbPtbscbeULqATN5N2re0Cg/aFGoEc=; b=z5cA1bVoOZO7Ej
	5oq++ys/PKm4sM1mXHI4hKSqq+YqJRHTMcBBxNEfhiBroQxYhc2tBLMZ3BCqA+W2MrAXV6DmcWd1S
	akVNX7/3iqhrCYThMkxnjKbX5H2W60zRyNL7jCNVNNqo6f+KLOdr3ixol6BezEprX4GJGHzTzspTd
	eLBSfGbJa1/DIrdb9/au8HXDaferI3abIpp2qFubz/gD+fbp8wffrN781/j1sb0Ot12ZvJZRSE7XY
	6uhLqexqxBQgNg1PpTGI0pVr0UayomwFULSGrnho7K0vwj6PKAfvOxvWulXFJJxdiVH8sc4AJnfUD
	DKB8+4Yw7aon4uGUHj+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJf8Y-0000000B9BG-1OGX;
	Thu, 13 Nov 2025 21:45:50 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJf8V-0000000B98U-0L4d
	for linux-phy@lists.infradead.org;
	Thu, 13 Nov 2025 21:45:48 +0000
Received: by mail-il1-x141.google.com with SMTP id e9e14a558f8ab-433217b58d9so5902635ab.1
        for <linux-phy@lists.infradead.org>; Thu, 13 Nov 2025 13:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1763070346; x=1763675146; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=B379bUTcQAQWYz6DwkV1TzQYdhegW4cKAiyXnES8aOg=;
        b=rHofgbOvODCBQzcbtZeB1ClSf0N6xsHbrmxmWbjjJPTSINBLLxVqYb0GjDUUoiR1aj
         3ghhPvErfkjJgHl6nsFsrCX0uegazbUx6mbFa8bm4Qg/GX+KVJztUarfH0rW7rzvzpuR
         pmARF9VWeAY1zAZqcykRS2yCbniMf6xiM4EbW/hwGbXW5bPcIkWkJ0h4IlsqyIzwk4nc
         JsW7Ov/3YX8tQd7MnqbVClK+2v4ZepVRwLykhwaC8sjLVC2nnw1RBBidMXGKb8LDmdfF
         zd+yH2xnAkF7UwCsRIrxfd9H/jX8kcRJpq1F+37EPsIOl0oEVEHcbp2fdKQwez4KN5L5
         PgDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763070346; x=1763675146;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B379bUTcQAQWYz6DwkV1TzQYdhegW4cKAiyXnES8aOg=;
        b=vD0aJ0GgaMNtE4YVLmJAIBxVSRD9g9UUUpyEk2Ja8IqgcdIOnEqt26TImo35PnQtSE
         9chhSojDusTg37l1hzn/PesBSLAp5aHyVIiII/k+NL2kRxbCzzUBGbM8SFbX2JHjcgAw
         poNIz/uzCozUCnieAs0McEiefCn2ftJ5FXPk6wmskHvmjMTPS28JHqXmdR4YkzK29bpv
         ZbTF7Pw2vrK1MwwHwRqDp+FVT2v4PJDjTI2jjUL5boK3ryllPD83MMPSuzmHw5dA1mSF
         fv5SJS5mOr1aAj3ZR/JP0eqBdvGNBXQA2pvHC0zVQKiDU8cI3HqU41075TfsaIsnqcuz
         vvIg==
X-Forwarded-Encrypted: i=1; AJvYcCXrupFuBY9wTQD/SRXXm4A3mr4u1yYB1Kbku9/bnqHZZAr4TZoDzGBw06n8xY+Pj8c3qndqAt5BgKY=@lists.infradead.org
X-Gm-Message-State: AOJu0YycUBZX3gV15SvkKF/asyoht6fMv1Ikt8y8LNomWQhzTXKZ8A2m
	dq+aDTsYb2wNbN1vayHpcQVv6yW3OCjKl2tIaCV4lNQTDub9QAkRHo1okkSsaNttNI0=
X-Gm-Gg: ASbGnctekQ0NStw4s4rz1/YaHM+NzGsLzWgSTnkfm9iU15SNUWCCDcDkD8H8PR4KJeg
	tBS1+gXHDJm/ImZ3yBD0oQg4YE8YL8qEeIYhRYbbmvgGofOSVhmqbNcm1a7S53nPcvDLsH3ix00
	w50dW9/Ena3MMSNcEhcb7h068rvfLy7o/pNUU1yJiw66ESm+jDnAObJRSwVe7jeTz1163N3yX2V
	1Jnlotc2gRqOYbHIFf89z7xyvGsSPGUt8xrpW/1njZu+zjPCotWzCEkB1FC8MR6hLuydVZlcAxt
	ae0B/wMvyH+w+7cGswMP2bkmmO4bSmLcR46Sq3Yi5tzlsT7yA+rzh3OfE8Jsvm97G4CX0ZeLFzs
	aUpVby3RG1rspquTzKmMIWRoBHH5nwXUQUdDEnAyvcgWXgDOYawEE1ziIcD3xDJrT69E9Wnni6I
	lV0Ptwk9flwskdfVYV6WC3SF+QyOCyxilp+3hV8xS9fxMm1IlicP+sew==
X-Google-Smtp-Source: AGHT+IGJ0MUov99smegICrZ4kiST3drjyP8OcDyErpcAaWnTogYM2QvmzGI/vYXhzw3nIp4B4JWV4A==
X-Received: by 2002:a05:6e02:3813:b0:433:3316:17db with SMTP id e9e14a558f8ab-4348c863a78mr17011835ab.4.1763070345478;
        Thu, 13 Nov 2025 13:45:45 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-434839a4ac7sm10877115ab.25.2025.11.13.13.45.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 13:45:44 -0800 (PST)
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
Subject: [PATCH v6 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Thu, 13 Nov 2025 15:45:32 -0600
Message-ID: <20251113214540.2623070-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_134547_359373_C632DD15 
X-CRM114-Status: GOOD (  20.30  )
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
that PHY to be used for USB, the needed calibration step is performed
by the PHY driver automatically at probe time.  Once this step is done,
the PHY can be used for either PCIe or USB.

The driver supports 256 MSIs, and initially does not support PCI INTx
interrupts.  The hardware does not support MSI-X.

Version 6 of this series addresses a few comments from Christophe
Jaillet, and improves a workaround that disables ASPM L1.  The two
people who had reported errors on earlier versions of this code have
confirmed their NVMe devices now work when configured with the default
RISC-V kernel configuration.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v6

Between version 5 and version 6:
  - Aurelien Jarno and Johannes Erdfelt tested this code and found
    they no longer saw the errors they observed previously
  - Disabling ASPM L1 is now done earlier, at the end of the
    dw_pcie_host_ops->init callback rather than ->post_init
  - The function that disables ASPM L1 has been moved and renamed
  - The return value from devm_platform_ioremap_resource_byname()
    is now checked with IS_ERR()
  - The number of MSI vectors implemented is back to 256, after
    confirming with SpacemiT that they are all in fact supported
  - The sentinel entry in the OF match table no longer includes
    a trailing comma
  - MODULE_LICENSE() and MODULE_DESCRIPTION() macros are now
    included

Here is version 5 of this series:
  https://lore.kernel.org/lkml/20251107191557.1827677-1-elder@riscstar.com/

Between version 4 and version 5:
- Clarify that INTx interrupts are not currently supported
- Add Rob Herring's Reviewed-by on patch 3
- The name of the PCIe root port will always begin with "pcie"
- Lines in the bindings are now wrapped at 80 columns
- Subject lines are all captialized (after subsystem tags)
- Place the PCIe Kconfig option in the proper location based on
  vendor name (not Kconfig symbol); expand its description
- Drop two PCIe controller Kconfig dependencies
- Use dw_pcie_readl_dbi() and dw_pcie_writel_dbi() when turning
  off ASPM L1
- The dw_pcie_host_ops->init callback has been rearranged a bit:
    - The vendor and device IDs are now set early
    - PERST# is asserted separate from putting the controller in RC mode
      and indicating power is detected
    - phy_init() is now called later, just before deasserting PERST#
- Because of timing issues involved in having the root port enable power,
  getting and enabling the regulator is back to being done in the PCIe
  controller probe function
- The regulator definition is moved back to the PCIe controller DT node,
  out of the root port sub-node (in "k1-bananapi-f3.dts")

Here is version 4 of this series:
  https://lore.kernel.org/lkml/20251030220259.1063792-1-elder@riscstar.com/

Additional history is available at that link.


Alex Elder (7):
  dt-bindings: phy: spacemit: Add SpacemiT PCIe/combo PHY
  dt-bindings: phy: spacemit: Introduce PCIe PHY
  dt-bindings: pci: spacemit: Introduce PCIe host controller
  phy: spacemit: Introduce PCIe/combo PHY
  PCI: spacemit: Add SpacemiT PCIe host driver
  riscv: dts: spacemit: Add a PCIe regulator
  riscv: dts: spacemit: PCIe and PHY-related updates

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 157 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  44 ++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 176 +++++
 drivers/pci/controller/dwc/Kconfig            |  13 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 358 ++++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1649 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 6d7e7251d03f98f26f2ee0dfd21bb0a0480a2178
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
