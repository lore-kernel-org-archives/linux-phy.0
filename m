Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AE2DCD1288
	for <linux-phy@archiver.kernel.org>; Fri, 29 Mar 2024 08:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JKzdDvAoS1CGCZn0CH6XV810UAwgz5tWK001BC0bjiw=; b=290AARQbbWdaO8
	PV4NqjJ31hXL1w/uol+vRbF22EVzg/ZFBQEzpEfseF8n8L5uzqjCHQCRp0isTBTXxgmnxn9qRYW/W
	g70KSPIba0EqnvFYpHlLTrGMBk7yGPy08u1M8ORn2NS7PMOUxxd2nerp/hFrUuReLZ/jt1156TJF5
	wCYW/p84VVNpP3mRm4oQtrWdshEUGdFXb5/4xHtEM2+1JF9w6VOsqq7mBp8G8SAyqnRVhB/m2p5Dk
	jt61T66ZlQVHXYf4saITia6X7ITX3l4mPtb8ZHh+0tqiixgVpsj4iwd2XX/ZmRr/lpv1T/RDcAntR
	uOTNvLoRAxHoAcpg1OjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq7Zd-0000000HIhz-3Y0l;
	Fri, 29 Mar 2024 08:26:53 +0000
Received: from inva021.nxp.com ([92.121.34.21])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rq7Za-0000000HIgW-09vO;
	Fri, 29 Mar 2024 08:26:51 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D33A201359;
	Fri, 29 Mar 2024 09:26:48 +0100 (CET)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 22ED1201349;
	Fri, 29 Mar 2024 09:26:48 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 29A58183ACAC;
	Fri, 29 Mar 2024 16:26:46 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	frank.li@nxp.com
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [v1 0/3] Add i.MX8Q HSIO PHY driver support
Date: Fri, 29 Mar 2024 16:09:47 +0800
Message-Id: <1711699790-16494-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_012650_416088_2900C147 
X-CRM114-Status: UNSURE (   6.33  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

v1 changes:
- Rebase to the 6.9-rc1, and constify of_phandle_args in xlate.
No other changes.

i.MX8Q HSIO module has PHY and mix control regions.
This patch-set adds i.MX8Q HSIO PHY driver support, and provides
standard PHY phandles that can be used by i.MX8Q PCIe or
SATA driver later.

[PATCH v1 1/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
[PATCH v1 2/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
[PATCH v1 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY driver

Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml | 143 ++++++++++++++++++++++++
drivers/phy/freescale/Kconfig                             |   8 ++
drivers/phy/freescale/Makefile                            |   1 +
drivers/phy/freescale/phy-fsl-imx8q-hsio.c                | 518 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                   |  26 +++++
5 files changed, 696 insertions(+)

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
