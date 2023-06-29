Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43952EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jun 2023 07:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1sikU5B2ZuCczs6+eIPs4ErRGPQ6Oz1ADWOXjM+T1G8=; b=huSIzUgNC0/zt1
	AUSjdPTtKaNsu4wMyPsSsCogq5uaP5ZElJojjKKiKXwqBNA4WodmCjVfv+H6+wugwC7V9PFz64mNf
	5CljSbaub81XJfl3G/TXMUwfbUBJ1klbUMmwfGqrlHe7jfvysDF5ElMStqG4CC80evnoz3UCx/+iy
	jjC2VRZkBLrIiPcXQZ8ZwxKyJ9w1gjIt3pL3U1D2m0IFHsx2pu3NRJHfS5Zov98gnvTjY+8qTR6Nu
	ut2WPuVqvTjHwy4zwHoUbRRtlRDn9HtJPqcXgmqVdyxVwt5tkGQbOy1tQLTcoz61Zgqix4TO7Xamh
	Fh+HryqWh3ZaCzqmP+HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEmRY-000GKc-2o;
	Thu, 29 Jun 2023 07:51:56 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qEmRU-000G0V-1S;
	Thu, 29 Jun 2023 07:51:55 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id AD5F624E2D2;
	Thu, 29 Jun 2023 15:51:17 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 29 Jun
 2023 15:51:18 +0800
Received: from ubuntu.localdomain (183.27.97.206) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 29 Jun
 2023 15:51:16 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley
	<conor@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
	<kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Roger Quadros <rogerq@kernel.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-riscv@lists.infradead.org>, "Paul
 Walmsley" <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Minda Chen <minda.chen@starfivetech.com>,
	Mason Huo <mason.huo@starfivetech.com>
Subject: [PATCH v8 0/5] Add JH7110 USB PHY driver support
Date: Thu, 29 Jun 2023 15:51:10 +0800
Message-ID: <20230629075115.11934-1-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [183.27.97.206]
X-ClientProxiedBy: EXCAS063.cuchost.com (172.16.6.23) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_005152_812377_159FF741 
X-CRM114-Status: GOOD (  14.41  )
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

This patchset adds USB and PCIe PHY for the StarFive JH7110 SoC.
The patch has been tested on the VisionFive 2 board.

This patchset is base on v6.4-rc6

patch 1 is usb phy dt-binding document.
patch 2 is Pcie PHY dt-binding document.
patch 3 is USB 2.0 PHY driver.
patch 4 is PCIe PHY driver.
patch 5 is PCIe PHY dts

Previous version are merged with USB controller patch.
For USB controller patch is accepted. Now remove the USB controller patch.
And remove the dependency.

previous change can be seen list below.
(start from old patch set v3)
v3: https://patchwork.kernel.org/project/linux-phy/cover/20230315104411.73614-1-minda.chen@starfivetech.com/
v4: https://patchwork.kernel.org/project/linux-phy/cover/20230406015216.27034-1-minda.chen@starfivetech.com/
v5: https://patchwork.kernel.org/project/linux-phy/cover/20230420110052.3182-1-minda.chen@starfivetech.com/
v6: https://patchwork.kernel.org/project/linux-phy/cover/20230518112750.57924-1-minda.chen@starfivetech.com/
v7: https://patchwork.kernel.org/project/linux-phy/cover/20230619094759.21013-1-minda.chen@starfivetech.com/

changes:
v8:
  (patch 3) remame  jh7110_usb2_mode_set to usb2_set_ls_keeplive . make function more accurate.
  (patch 4) remove depend on USB_PHY and fix compile robot error.

v7:
  (patch3 and patch 4) Add /driver/phy/starfive directory, Makefile and Kconfig. Remove the dependency.
  (patch 5) add PCIe PHY dts configuration. (USB 2.0 PHY clock reply on other patch, Dont add this first).
  
v6:
  1. (patch 3) remove the platform remove function.
  2. (patch 4)
     - add switch to pcie mode function.
     - remove the redundant init/exit function.

v5:
  1. (patch 1) set correct model name and commit title.
  2. (patch 2) change to '-item' in syscon property. change commit title.

v4:
  1. (patch 1) split PCIe PHY dt-binding doc to patch 2.
  2. (patch 2) PCIe PHY add stg and sys con configuration to dt-binding doc.
  3. (patch 3)
     - split PCIe PHY driver to patch 4.
     - replace dr_mode to phy mode in jh7110_usb2_phy.
  4. (patch 4) 
     - Makefile and Kconfig sorted by alphabet sequence.
     - Add PCIe PHY stg and syscon PHY connection configuration
       for USB 3.0.

v3:
  1. Add patch 1 - 4. Add USB PHY driver and dt-binding doc. 
     USB PHY codes are moved to patch 3 and patch 4.

Minda Chen (5):
  dt-bindings: phy: Add StarFive JH7110 USB PHY
  dt-bindings: phy: Add StarFive JH7110 PCIe PHY
  phy: starfive: Add JH7110 USB 2.0 PHY driver
  phy: starfive: Add JH7110 PCIE 2.0 PHY driver
  riscv: dts: starfive: Add PCIe PHY dts configuration for JH7110

 .../phy/starfive,jh7110-pcie-phy.yaml         |  58 +++++
 .../bindings/phy/starfive,jh7110-usb-phy.yaml |  50 +++++
 MAINTAINERS                                   |   8 +
 arch/riscv/boot/dts/starfive/jh7110.dtsi      |  12 ++
 drivers/phy/Kconfig                           |   1 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/starfive/Kconfig                  |  24 +++
 drivers/phy/starfive/Makefile                 |   3 +
 drivers/phy/starfive/phy-jh7110-pcie.c        | 204 ++++++++++++++++++
 drivers/phy/starfive/phy-jh7110-usb.c         | 152 +++++++++++++
 10 files changed, 513 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-pcie-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
 create mode 100644 drivers/phy/starfive/Kconfig
 create mode 100644 drivers/phy/starfive/Makefile
 create mode 100644 drivers/phy/starfive/phy-jh7110-pcie.c
 create mode 100644 drivers/phy/starfive/phy-jh7110-usb.c


base-commit: 858fd168a95c5b9669aac8db6c14a9aeab446375
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
