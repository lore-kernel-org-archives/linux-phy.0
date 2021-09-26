Return-Path: <SRS0=8nB1=OQ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E329C433EF
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F34CE60FDC
	for <linux-phy@archiver.kernel.org>; Sun, 26 Sep 2021 08:04:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F34CE60FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=nxp.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2kfrW9jgNidptwM0O1YztsXqxvNHzQqPJ1dHC6f/WrE=; b=IMlV9SRLneTzmO
	tEUSgxNGZovj/VzcNPVUadABJEPsfGrEzwwfNdbRcXMXC4TVO4VUkZ1dndLDCM83cveDneVJAMZed
	D43lHC+0M1V6zvfg03Rcpc1jNbDN58D73STrD/fOoVQS/sTd8QzAWHvaNNam7TRx7qhRwX9jjTo0T
	FlMA8Vl8bOIKo9ebfrrZ8kMRICQiRfklnTgIMbOQyZAKzvgo5RXMX2e4gjIwJOzc4e8AZxzBaUlvG
	Mbe819Ua1idIzhptzpas5hPgxyXBVfdTwj4NIuLiZ10tfJOA+yaRq+GEVG++O046XGEb7DWNdRQZp
	Z2UwySN+17dfZMuFrtqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUP9L-0009oa-Dv; Sun, 26 Sep 2021 08:04:39 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUP8S-0009Za-3P; Sun, 26 Sep 2021 08:03:46 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 468DB1A14B9;
 Sun, 26 Sep 2021 10:03:37 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com
 (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0DE8E1A0FF5;
 Sun, 26 Sep 2021 10:03:37 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 7EBC3183AD05;
 Sun, 26 Sep 2021 16:03:35 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de, kishon@ti.com, vkoul@kernel.org, robh@kernel.org,
 galak@kernel.crashing.org, shawnguo@kernel.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, linux-imx@nxp.com
Subject: [PATCH v2 0/4] add the imx8 pcie phy driver support
Date: Sun, 26 Sep 2021 15:39:39 +0800
Message-Id: <1632641983-1455-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_010344_301181_BCB189C6 
X-CRM114-Status: UNSURE (   9.77  )
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

Refer to the discussion [1] when try to enable i.MX8MM PCIe support,
one standalone PCIe PHY driver should be seperated from i.MX PCIe
driver when enable i.MX8MM PCIe support.

This patch-set adds the standalone PCIe PHY driver suport, and as a
preparatory to add the i.MX8MM PCIe support later.

The PCIe works on i.MX8MM EVK board based the the blkctrl power driver
[2] and this PHY driver patch-set.

[1] https://patchwork.ozlabs.org/project/linux-pci/patch/20210510141509.929120-3-l.stach@pengutronix.de/
[2] https://patchwork.kernel.org/project/linux-arm-kernel/cover/20210910202640.980366-1-l.stach@pengutronix.de/

Changes v1 --> v2:
- Update the license of the dt-binding header file to make the license
  compatible with dts files.
- Fix the dt_binding_check errors.

[PATCH v2 1/4] dt-bindings: phy: phy-imx8-pcie: Add binding for the
[PATCH v2 2/4] dt-bindings: phy: add imx8 pcie phy driver support
[PATCH v2 3/4] arm64: dts: imx8mm: add the pcie phy support
[PATCH v2 4/4] phy: freescale: pcie: initialize the imx8 pcie

Documentation/devicetree/bindings/phy/fsl,imx8-pcie-phy.yaml |  67 ++++++++++++++++++++++++++++++++
arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi                |   4 ++
arch/arm64/boot/dts/freescale/imx8mm.dtsi                    |  12 ++++++
drivers/phy/freescale/Kconfig                                |   9 +++++
drivers/phy/freescale/Makefile                               |   1 +
drivers/phy/freescale/phy-fsl-imx8-pcie.c                    | 167 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                      |  14 +++++++
7 files changed, 274 insertions(+)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
