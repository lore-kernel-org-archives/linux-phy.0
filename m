Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0469ACCF9F8
	for <linux-phy@archiver.kernel.org>; Fri,  7 Nov 2025 19:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Tkr7elKKQLyZ3AGNANmh0HkV97CM+dEu4ANIG6tfj8s=; b=x3sjb0sEg/cfOy
	Dh8SIs5huJhGDoGfYvpnOptREpP1DiqozJk02NuDoJMeRbZR2ZTdwd5ryTHZsr091ELWzajUW8T+C
	pJXfvoRAbLJVNWQ3hPtXS/yDyGt2h6nnlBBlfh8fz0cKNT8F86VDvm2Yv+YoC8U6RYhwKSusR5xXZ
	MfKKI1UHt24X1/K1hoD8Em1dXXpiEaeyb07uFncURZNf+WOiX44pMTKCPiOwVhSQKIRGnMwY95F8B
	PcaDm5SIdLRi8xPWyu6IklEo+Do9S2m+KQiZWfr5tVyGr/sXO6VdKZdw1WFug7SaKSkrjPFGltYeN
	5bGa1hmbnX7MG/M/9YfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwR-00000000fdE-1YST;
	Fri, 07 Nov 2025 19:16:11 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHRwK-00000000fY6-2DLG
	for linux-phy@lists.infradead.org;
	Fri, 07 Nov 2025 19:16:10 +0000
Received: by mail-io1-xd43.google.com with SMTP id ca18e2360f4ac-88703c873d5so33019239f.3
        for <linux-phy@lists.infradead.org>; Fri, 07 Nov 2025 11:16:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1762542963; x=1763147763; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6n9WzDNQaPD3sJObWy9/wpMh9WA3E6Erilh18wQKqfc=;
        b=x8oJLMq7yd0MSng4Ll1uleilc20Z9hipM7SY1PkryWlKFfJjIUiG6EupagzsAwQ01b
         BTly3+q3WNByB9ycxAWWNcjJaAdLfU6OcjNXfcbgUZzbtOmj74zSs9IVSaSeomTo1YcI
         m7Fd/mG49X0SZ+hgX8BjZRaQ/e9uYBkPcA5GdhDMbaSfLf6+YG+xXThqgewpENQHEY9f
         taeHA3txFdWTc9TpVKJSl3ayyF4Ng/ARBD4tIiSIkNZgctaRaLtFckCkgQvyDrjF63MJ
         mWQXXV+VoixaVrHhYw93AbSTnGZIeTVImL/WaAKvb2X5yq5vlZUWc+cpZus3p44kdCfq
         VdHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762542963; x=1763147763;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6n9WzDNQaPD3sJObWy9/wpMh9WA3E6Erilh18wQKqfc=;
        b=ELTnZJZDhpj8QJuzH8xv4pxplEgEeQFCK1d4vEAimttfaqBt2TrUCY7UsdAGdNY7yf
         bYZIy7nyjrjMzGoFTMjSeExaMg0wE1KBXD0lQOD+QyK6cEkXdUL/TLu8/EKxGos81dTr
         WksFYq0OMPW6zBm5+Fvar2aG03fw2aVFQ1NChExVBHRLKwzXOecFCLK+Ua6nFHr84rxx
         Bh6xp9wEHuCPNdAJQfyZZ5AhFQE8n4Tp5ryzGxUJateMVfBnCxR4n4UORhuwUiPZAw9+
         +wM4L8XM8rtPPmRXU73K4InbVo4tuskfl1Bbt/xBQoj/EzQqfIr4kUNEhnmL1LHba1CV
         lS+w==
X-Forwarded-Encrypted: i=1; AJvYcCUakNwpE0GZd+IkUKQaWld0/HQiMh/G6MCLwMkMhW7ld7d0+wkMCTGZIctPy8MR2uoS0SRYJP1jivs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxvdg9ncydK19QHUr6DSE4+dSQ8AvvYGfpSVSkMccGJqh18TD1s
	j4Panrhn6uf2pUEOgrl44cQS4714X/UiBTGG7DrDC/DMwsX9ocrKvt7BlDgna1PSVc4=
X-Gm-Gg: ASbGncvJodY5ccF1Sh2nusXv69jID0qkHFuOeb2F3QOVwGEGRXJpoC8K7G5WawoTE/M
	CjkBMyP27dwppYnwAZcLjYd/Zqv+AxQ2DeHCMAOvScRGp8zwGs5Z4J1e/kJglXQwPKIQ7W6Qi+j
	y811HF1vGahQlxK3kV6H69epY3PlrSTI0nmDOy67agYIeZVRcUKdi+qSq4vobyqcSeRLCt75qeL
	Hkjnge3pH6XFfF24UMjWoyEfW9rEJMfDMauCqSysnJCby4rrSxHXhY+ux4FI1z+onbL5Ss+zb+n
	wddlZPOig9RW3z2UMDvBfJ6kWDzmOY6FvPBdgMD1EUFT7bEW3MNNg3gjEvWpK0ZR+Qb4BEL5TmG
	ROmwoYSSwKlFwhJXhrLQR6jGNzMWrqhb1h4oKoDacTDUwXx9OGXeCdbOy6QlMRWknUPLt/EOeq6
	ViM4CnYBh0wRQGXWeuANHFqm1PhIQOsuw1EbokzmSp8iMYDhwnQU1S1w==
X-Google-Smtp-Source: AGHT+IHzW2i2JPY8Wetr24eEJmqYYe9Yl8l6cwzTHxWm6YorX15rRz+Oc0kP8V7OeF++pSW10dZrTw==
X-Received: by 2002:a05:6602:3e81:b0:945:ac8e:fcb9 with SMTP id ca18e2360f4ac-9489602f282mr55483139f.17.1762542963188;
        Fri, 07 Nov 2025 11:16:03 -0800 (PST)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-94888c34c6asm118772939f.10.2025.11.07.11.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 11:16:02 -0800 (PST)
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
Subject: [PATCH v5 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Fri,  7 Nov 2025 13:15:49 -0600
Message-ID: <20251107191557.1827677-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_111604_838219_BA7C9DF9 
X-CRM114-Status: GOOD (  25.15  )
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

This initial version of the driver supports 32 MSIs, and does not
support PCI INTx interrupts.  The hardware does not support MSI-X.

Version 5 of this series incorporates suggestions made during the
review of version 4.  Specific highlights are detailed below.

Note:
Aurelien Jarno and Johannes Erdfelt have reported seeing ASPM errors
accessing NVMe drives when using earlier versions of this series.
The Kconfig files they used were very different from the RISC-V
default configuration.

Aurelien has since reported the errors do not occur when using
defconfig.  Johannes has not reported back about this.

I do not claim these issues are resolved, however this version
of the series does address all other feedback received to date.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v5

Between version 3 and version 4:
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
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 353 +++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1644 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 9c0826a5d9aa4d52206dd89976858457a2a8a7ed
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
