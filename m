Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875AEC6FD1F
	for <linux-phy@archiver.kernel.org>; Tue,  2 Apr 2024 06:02:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oFwYJ9MttcJCu+VD2LYwOQMQ0mSGoUCMBWoTpby3Z9M=; b=Y+2Hrdjc2bzqXh
	jeGcFMA8xwZzFmE+Sg1Pq2frpGJM23sH8Ck3YlhcdkiDPWPcjxiaPTqkyJYzAz0u8Qn/KK31asp5O
	M5g5xe5gGo44JhsQA5W0+6B9J4CQY4W1fdoWF6B8x10R8pSMpFKcbXgks3R4iqQn3FtaKiW2h8n55
	cawvxmiA9gm8Gm7Q1/vBbytVDUpmO6y1OkEcnW6lFKHkSo+RivVX2xEiyaV0BRSb2OattY3Tkagql
	4udSCC8MSzWEoCBvq+A9rECHA3bb8yeCIFjpiYXEe4Hww+33mjY6bRUMrcFyW/DXbDuPwlbKB3mo0
	EmghKb4qjgRYEKhlAoig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXE3-00000009qXS-0LnI;
	Tue, 02 Apr 2024 06:02:27 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrXDx-00000009qSq-3DqI;
	Tue, 02 Apr 2024 06:02:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 8EC861A04B1;
	Tue,  2 Apr 2024 08:02:15 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 451E11A19C2;
	Tue,  2 Apr 2024 08:02:15 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id 54E401834890;
	Tue,  2 Apr 2024 14:02:13 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	frank.li@nxp.com,
	conor+dt@kernel.org
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: [PATCH v2 0/3] Add i.MX8Q HSIO PHY driver support
Date: Tue,  2 Apr 2024 13:45:01 +0800
Message-Id: <1712036704-21064-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240401_230221_967754_4931A5BD 
X-CRM114-Status: UNSURE (   7.31  )
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

v2 changes:
- Place the dt-bindings header file changes as the first one
in the patch-set, make the annotation more clear, and add
Frank's Reviewed-by tag into this patch.


i.MX8Q HSIO module has PHY and mix control regions.
This patch-set adds i.MX8Q HSIO PHY driver support, and provides
standard PHY phandles that can be used by i.MX8Q PCIe or SATA
driver later.

[PATCH v2 1/3] dt-bindings: phy: phy-imx8-pcie: Add binding for
[PATCH v2 2/3] dt-bindings: phy: Add i.MX8Q HSIO SerDes PHY binding
[PATCH v2 3/3] phy: freescale: imx8q-hsio: Add i.MX8Q HSIO PHY driver

Documentation/devicetree/bindings/phy/fsl,imx8q-hsio.yaml | 143 ++++++++++++++++++++++++
drivers/phy/freescale/Kconfig                             |   8 ++
drivers/phy/freescale/Makefile                            |   1 +
drivers/phy/freescale/phy-fsl-imx8q-hsio.c                | 518 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
include/dt-bindings/phy/phy-imx8-pcie.h                   |  29 +++++
5 files changed, 699 insertions(+)


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
