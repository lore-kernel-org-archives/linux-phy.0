Return-Path: <SRS0=EZuF=MA=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 863F6C11F67
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 15:51:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4295C61624
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jul 2021 15:51:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4295C61624
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vwhHnG4Am8OGzZdmMmdz7lwVafd60NV3jzlrN5TfBds=; b=006otDKXPjOE4u
	mbvgfbhlTuuSybpt2DTWzb6UYx8vCo7zzYSa+ml+9iBjb8RaJGhP4m+ep11KTljzmYF+nkcLz7q27
	S3tjc+yhgGdLE4GUhEeAZtmZT4GHDVlYlqlf84nvuMRTpUUWQXjNwaIZfJPL4a2DtxPY5IE6cyU23
	jvct7jDBwshVHORLwaN5yjWjD2wPZ0ZyWsxNQOQ7iN7aoPgiQWXnecobu27EVu/sVliGs57qsaplQ
	FHX/hoNj87a7XaHNUQHpVqP0Y5li4Dxw7c+MSwZp1OekTknPC4TZiLDJwYJJSUuOrgm69bel3crs2
	D3em6SZ/jI3SbPbG5XMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1WIm-00HJu0-O8; Thu, 08 Jul 2021 15:51:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1WID-00HJiR-Hk; Thu, 08 Jul 2021 15:50:30 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 956D2616ED;
 Thu,  8 Jul 2021 15:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1625759423;
 bh=oa74Tybu5HedvZVZTqYR2f9HSos8k6RTN9dJvzTphn4=;
 h=From:To:Cc:Subject:Date:From;
 b=Q+O6ZDdGEBnkFEr6zQrynCPAe2CjViex2if/DDrh7a8iGMB4gdkfvP6M3dVr6JW5R
 8s5YsA4HU1SJdXiBy2tMuflJey6gHdoldMCk8C3bApOjZB5rStVCKcTNlsHOy17bpP
 cp+dTsNdPnAg0OiONG3gCYPPeW+17PCHGW91Rci53M4lml7E5uU0mhTjpfOXfx9Hpy
 A2k/iaQgivlMcqDUnqttw893u4QmH4yNHNxn4J5EGDXyxck3XG47wEpLWm/9eG7NNd
 1gQTrJI8xy0VEs8p2Eg+Xve2jljhJWPhE6u8L8+/MzGLUZL/LU2y+n7u8hRzb3qoW1
 NWV28/c0V41tw==
Received: by mail.kernel.org with local (Exim 4.94.2)
 (envelope-from <mchehab@kernel.org>)
 id 1m1WI4-008VV0-Bs; Thu, 08 Jul 2021 17:50:16 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: linuxarm@huawei.com, mauro.chehab@huawei.com,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 =?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
 Binghui Wang <wangbinghui@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
 Xiaowei Song <songxiaowei@hisilicon.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-phy@lists.infradead.org
Subject: [PATCH RFC 0/7] Add support for Hikey 970 PCIe
Date: Thu,  8 Jul 2021 17:50:07 +0200
Message-Id: <cover.1625758732.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_085025_773961_66AB21FE 
X-CRM114-Status: GOOD (  16.90  )
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

That's the third attempt of adding PCIe support for Hikey 970 from my side.
The past attempt was this one:

	https://lore.kernel.org/lkml/cover.1612335031.git.mchehab+huawei@kernel.org/

As requested by Rob Herring, this series use a different approach than
the past attempt: it first splits the PHY part into a separate driver. Then, it
adds support for Kirin 970.

Due to such change, the DT bindings had to change, as several properties moved
from the PCIe driver to the PHY. IMO, it makes a lot more sense now.

This is is currently a work in progress. There are still a few things to be solved,
but let me send what I have so far for a quick review if this approach is
acceptable.

Manivannan,

Please notice that this patch:

  PCI: kirin: split PHY interface from the driver

Contains the code written by you, on your attempt to upstream this.
If you're OK, please send your SoB. I should likely add a Co-authored-by:
tag at the final version.

The same somewhat applies to this patch:

  arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller hardware

but at the reverse direction, as I had to shift some properties from the 
PCIe binding to the PCIe PHY one.

Also, if this approach is OK, I'm considering to move all clock lines to the
PHY driver, as it makes more sense there, and the device is *very* sensitive
to the clock order. Any change at the sequence may cause the SoC to generate
a  NMI interrupt (SError), which, in turn, causes a kernel panic.

Manivannan Sadhasivam (1):
  arm64: dts: hisilicon: Add support for HiKey 970 PCIe controller
    hardware

Mauro Carvalho Chehab (6):
  PCI: kirin: split PHY interface from the driver
  PCI: kirin: use regmap for APB registers
  bindings: kirin-pcie.txt: fix compatible string
  bindings: kirin-pcie.txt: drop PHY properties
  bindings: phy: add bindings for Hikey 960 PCIe PHY
  phy: add driver for Kirin 970 PCIe PHY

 .../devicetree/bindings/pci/kirin-pcie.txt    |  24 +-
 .../phy/hisilicon,phy-hi3660-pcie.yaml        |  70 ++
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi     |  29 +-
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi     |  72 ++
 .../boot/dts/hisilicon/hikey970-pmic.dtsi     |   1 -
 drivers/pci/controller/dwc/pcie-kirin.c       | 254 ++----
 drivers/phy/hisilicon/Kconfig                 |  20 +
 drivers/phy/hisilicon/Makefile                |   2 +
 drivers/phy/hisilicon/phy-hi3660-pcie.c       | 273 ++++++
 drivers/phy/hisilicon/phy-hi3670-pcie.c       | 844 ++++++++++++++++++
 10 files changed, 1370 insertions(+), 219 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/phy/hisilicon,phy-hi3660-pcie.yaml
 create mode 100644 drivers/phy/hisilicon/phy-hi3660-pcie.c
 create mode 100644 drivers/phy/hisilicon/phy-hi3670-pcie.c

-- 
2.31.1



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
