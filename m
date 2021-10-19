Return-Path: <SRS0=JtrO=PH=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41B85C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 23:59:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 15F986103B
	for <linux-phy@archiver.kernel.org>; Tue, 19 Oct 2021 23:59:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 15F986103B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Q33PoluONbMbXjImBHIiCQQAmYxwTbemeaD1Fhfk0Cg=; b=S+432Zygd72KMG
	DiZlmbAcVq57iTdteeiU6iKhCBBWMYH548/UWwD9dsuq+xNDqPvqc2MhAvrYY1RN39Gacyed/rofV
	ZiZhKHKIlN3L0VYLq4YAe2AUyumVT0XVC0oqD/F00RSMjBMQoH+7Mkh1gjBbIDCiQkDEOP39yM/z7
	273ZPIvDeNf26YVPOM7aXw5wSJlIX3NmLnKprGgg6VBfZjPphPXrkMXXS0xiRLhQSuYiVKq9NN1Xs
	94bd1ZUiHv6uIO+H0kLVPo23IBZXBhfkjuLVAtgj48/TwjnZPXg8hEQ8DesJmsdoDbpBv9QGNs44b
	1YF8fFwtRYjEGZISKUzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mcz0V-002zzW-Hp; Tue, 19 Oct 2021 23:58:59 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcz06-002zoS-Ns; Tue, 19 Oct 2021 23:58:36 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 20 Oct 2021 08:58:31 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 321E8206E701;
 Wed, 20 Oct 2021 08:58:31 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Wed, 20 Oct 2021 08:58:31 +0900
Received: from plum.e01.socionext.com (unknown [10.212.243.119])
 by kinkan2.css.socionext.com (Postfix) with ESMTP id E6B3BB62AC;
 Wed, 20 Oct 2021 08:58:30 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Masami Hiramatsu <mhiramat@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH v2 0/8] phy: socionext: Introduce some features for UniPhier
 SoCs
Date: Wed, 20 Oct 2021 08:58:00 +0900
Message-Id: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211019_165834_946331_C421F2A7 
X-CRM114-Status: GOOD (  13.73  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This series includes the patches to add the following features:
- Add basic support for new UniPhier NX1 SoC to USB3 and PCIe PHY.
  NX1 SoC also has the same kinds of controls as the other UniPhier SoCs.
- Add a PHY parameters to PCIe PHY
- Add dual-phy support for the SoCs that has two phys to PCIe PHY
- Add basic support for Pro4 SoC to ACHI PHY

---
Changes since v1:
- Fix indentation of clocks and resets in AHCI PHY binding documentation
- Fix insufficient argument issue when adding dual-phy to PCIe PHY

Kunihiko Hayashi (8):
  dt-bindings: phy: uniphier-usb3: Add bindings for NX1 SoC
  phy: uniphier-usb3: Add compatible string for NX1 SoC
  dt-bindings: phy: uniphier-pcie: Add bindings for NX1 SoC
  phy: uniphier-pcie: Add compatible string and SoC-dependent data for
    NX1 SoC
  phy: uniphier-pcie: Set VCOPLL clamp mode in PHY register
  phy: uniphier-pcie: Add dual-phy support for NX1 SoC
  dt-bindings: phy: uniphier-ahci: Add bindings for Pro4 SoC
  phy: uniphier-ahci: Add support for Pro4 SoC

 .../bindings/phy/socionext,uniphier-ahci-phy.yaml  |  20 +-
 .../bindings/phy/socionext,uniphier-pcie-phy.yaml  |   1 +
 .../phy/socionext,uniphier-usb3hs-phy.yaml         |   1 +
 .../phy/socionext,uniphier-usb3ss-phy.yaml         |   1 +
 drivers/phy/socionext/Kconfig                      |   2 +-
 drivers/phy/socionext/phy-uniphier-ahci.c          | 201 ++++++++++++++++++++-
 drivers/phy/socionext/phy-uniphier-pcie.c          |  70 +++++--
 drivers/phy/socionext/phy-uniphier-usb3hs.c        |   4 +
 drivers/phy/socionext/phy-uniphier-usb3ss.c        |   4 +
 9 files changed, 282 insertions(+), 22 deletions(-)

-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
