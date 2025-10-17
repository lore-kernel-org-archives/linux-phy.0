Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 393A4CCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 19:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ELNCdZcI30N+Nm9gvStCBwTfnZLft5ECvew+bxdRyKM=; b=ZyDDADZNGa9jvG
	VTphoRZvwOJrYqJjxnalUxoW90VxSTVHaovBW546nFAU0IOkaCXAzHQgM3UxTnrrWPF36q9G6BBal
	if9cJCIABuJ5TYSaGJwNijQrEqKdo2G6RlWbqC3IakXmdLfWBMJhQWKK4TFCkjVF3kCsiHDbeureJ
	M/Fq6HN5iCvIS1+rjfhmVp4dJuy9tqMP3NFnAZeYs1LL0UbMMpmV/jyj1l0kHeSgiGzxnSf3CJ0qn
	mPob7H2oWVPvgwJYBLmavzKsLvJHrgCytTorVJ2WaEyS9PpMkVyHmiulwwX5weCtl+PWDqKOeSUMv
	OHHe0PbL/iKFAgx6+WlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9pno-00000008nuM-42Ut;
	Fri, 17 Oct 2025 19:07:48 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9pnm-00000008nry-0Xfo
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 19:07:48 +0000
Received: by mail-il1-x142.google.com with SMTP id e9e14a558f8ab-430abca3354so20079245ab.2
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 12:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760728065; x=1761332865; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6AlkAll+OG6DFncv4Mizto8zaWsmmVbaRHf+nrpHgq8=;
        b=smjGjtURO9EbXvDs36BduA9FxUEJjqCVXt7UgOn7EhNXzsi4i6OkLL/WQdfPJKeqAH
         ZPikXyx6VmYZFq0vYTXA4WnQ0l2nCb5hTgbYSobA+2PFBtvX4lOXUDvzq8VnyWS7BZhU
         ComRtC7qAzKOg88STz2DjMhJn59klDQBsYcRrdruuirzHRYIju/Tue4esekTuLhf8uFz
         tvSjDy7lyD5/Mdcb4Oyx16tbdIw+8ftiUCLU8Se1AP5i78SmJB9HhxbEtSui0GTgynEw
         9IzoC22MWOZxD58VESuzJYoXRzcgIMJkO8YsQBF0XilW/986U387BnFbEdjqCkdB0RvB
         1Ong==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760728065; x=1761332865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6AlkAll+OG6DFncv4Mizto8zaWsmmVbaRHf+nrpHgq8=;
        b=HqTBzqb4MNOvTtObOQOThyef5Rc422RUBjM3npISoHRLnQ/V91Nj3cSlKu1BvZNBWl
         J0rYSm9oepLUhNFwpEi+ZXc5m3U8LHYxNHMn6llcg5HmURFenfPcJAuB+Hap7+RXgkXx
         ghce7ln9J5quar503BaRoJeiJLIcpKRMOaZTI43cUKgNguYReQE64lWMF9ZRbxRS56ML
         wyLzpXxxozFgQ7VjbrNVXM7Y2SLJxBJYYvrUFCsKhfiTrbqfjYW7kXsTSzBTtm4umaAQ
         +DuG+Qe9jMwuBsjolaDKtF+6EP7AEZjdIXS7gDPzB0u6Uz49w/yaqTlPim2v7Y7xQ1OW
         cyAg==
X-Forwarded-Encrypted: i=1; AJvYcCW1QC8DJx/JQU02MdVMiyVonS2H3dNqfkvBAf6b4LsfdRFTVSuDng5O1nPJ2NUQ/AeP56DXAX5M6+g=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6KrEIY+D8FecAoBbvPEQCGKGGrJ0/77YSlIcLrgKL98EIdvI+
	grsaZHi7pS7RheByAT5K+IZlByQRCLLYtryaQcNoDpBYM+HWeGsdWjVFYWJIpEXyug8=
X-Gm-Gg: ASbGncuuY0WaJ2Q+XOgQJQgELZn0nwqOnwdm1KYVRFTvuLSzSE3gTEq1cSZXG1E/0H5
	RPiPhqVdadpruOquKjGxmdXDvT0olO0QeV30qSQz4M8doRaZX7iT73LLZvYTuhkXjxcsPkNtXR/
	RJ/h6v1NZnagSUU1DTz/W1qHheXOgxOdV1/s5t3mHCP4gZ6mD9OvTCnjRv9/kKP6nQX3bHG1JrI
	tVOMSOzup0DxrkxIKsjXZw0YMYweRDuEXdrw0GonzaxPrAnX6sIgLH8AWXf8nGPZlNvf840Wen+
	Nz/BG1re2ZODcczYy8Vd/o2YJp703QD9Aphum7fjysn5WzEtHelKcN5qLuRMxFUHqGfiC4+T8rD
	d+Owszq2iTzaaSyTna3Q1G4VN28SnikvUoNMAC+g15tshycQY7iUsJ49Uqg8K4mYRMXEvHN/OLu
	7+UzQlC+lUBzJI6Gd43wJYj7NmGzJdHWufOq2d7TktkVrkQ7CF7aYuTg==
X-Google-Smtp-Source: AGHT+IFcpf2h7+KbWg4DjQlVTU7Ya1aj204MdKeqW83UKVIYqzbU0vSTSCHA4r5eCSfPwXiiSMaLeQ==
X-Received: by 2002:a05:6e02:4510:b0:430:c77c:cc35 with SMTP id e9e14a558f8ab-430c77ccd47mr56314875ab.29.1760728064783;
        Fri, 17 Oct 2025 12:07:44 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a9768b98sm153462173.46.2025.10.17.12.07.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 12:07:44 -0700 (PDT)
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
Subject: [PATCH v3 0/7] Introduce SpacemiT K1 PCIe phy and host controller
Date: Fri, 17 Oct 2025 14:07:32 -0500
Message-ID: <20251017190740.306780-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_120746_408355_DDBC7AEB 
X-CRM114-Status: GOOD (  16.35  )
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
review of version 2.  Specific highlights are detailed below.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pcie-v3

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

 .../bindings/pci/spacemit,k1-pcie-host.yaml   | 147 ++++
 .../bindings/phy/spacemit,k1-combo-phy.yaml   | 114 +++
 .../bindings/phy/spacemit,k1-pcie-phy.yaml    |  71 ++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      |  38 +
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |  33 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          | 146 ++++
 drivers/pci/controller/dwc/Kconfig            |  10 +
 drivers/pci/controller/dwc/Makefile           |   1 +
 drivers/pci/controller/dwc/pcie-spacemit-k1.c | 311 ++++++++
 drivers/phy/Kconfig                           |  11 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-spacemit-k1-pcie.c            | 670 ++++++++++++++++++
 12 files changed, 1553 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-spacemit-k1.c
 create mode 100644 drivers/phy/phy-spacemit-k1-pcie.c


base-commit: 98ac9cc4b4452ed7e714eddc8c90ac4ae5da1a09
-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
