Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE012C32774
	for <linux-phy@archiver.kernel.org>; Mon, 22 Aug 2022 13:28:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1HgM4uuGVlPjTw54FKz14mciEDFVJI92Sye8wpmV+Fo=; b=bnV3gxOcxLGf1d
	jibcHfZsBKCyng4z7G1pCbH+n56nx8FAFkALwdSRlM5Gp2AJDG0AtnL6mKlvblAQxjRxIiik+N4iM
	+yyIFgOmKOtFvA9gcMRKYrD3RgOkIMpar2MSPjHfJksG+m4Fq0+xrHJnnarWwASEc96nVIzLoqU+V
	1MCkLPWZywLZpMxUJpyWkHmNQsHYgLjMy1SvgCaTogDVfh98vdGZv65Rccqf4p/mMC+F4GWSbPj8t
	3ZPIgpAN04fVIBzAGloBwbWUTX+NJ/2NQUtFiCmGuXTShcSCRALaQgupwVtYz3q3prpWZWInD8BkN
	WYgIEg8tDcKd+5ztl9tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ7U1-00A0Pe-W9; Mon, 22 Aug 2022 13:28:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ7TY-009ztH-61; Mon, 22 Aug 2022 13:28:21 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id A17661A2999;
	Mon, 22 Aug 2022 15:28:14 +0200 (CEST)
Received: from aprdc01srsp001v.ap-rdc01.nxp.com (aprdc01srsp001v.ap-rdc01.nxp.com [165.114.16.16])
	by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 676081A23C3;
	Mon, 22 Aug 2022 15:28:14 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net [10.192.224.44])
	by aprdc01srsp001v.ap-rdc01.nxp.com (Postfix) with ESMTP id B0690180031C;
	Mon, 22 Aug 2022 21:28:12 +0800 (+08)
From: Richard Zhu <hongxing.zhu@nxp.com>
To: l.stach@pengutronix.de,
	bhelgaas@google.com,
	lorenzo.pieralisi@arm.com,
	vkoul@kernel.org,
	marcel.ziswiler@toradex.com,
	kishon@ti.com
Cc: hongxing.zhu@nxp.com,
	linux-phy@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@pengutronix.de,
	linux-imx@nxp.com
Subject: [PATCH v1 0/2] Fix the wrong order of phy callbacks 
Date: Mon, 22 Aug 2022 21:10:54 +0800
Message-Id: <1661173856-1192-1-git-send-email-hongxing.zhu@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_062820_420112_BDF6E4D8 
X-CRM114-Status: UNSURE (   4.34  )
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

Refer [1], phy_init() must be called before phy_power_on().
This series used to fix the wrong order of the phy_init() and phy_power_on(),
introduced by commit 1aa97b002258 ("phy: freescale: pcie: Initialize the imx8 pcie standalone phy driver")
Tested on i.MX8MM EVK board when one NVME device is used.

[1]https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/phy/phy-core.c?id=v5.19-rc1#n233

[PATCH v1 1/2] PCI: imx6: Fix the wrong order of phy_init() and
[PATCH v1 2/2] phy: freescale: imx8m-pcie: Fix the wrong order of

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
