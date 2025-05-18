Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE850C3DA6D
	for <linux-phy@archiver.kernel.org>; Mon, 19 May 2025 09:46:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pUCCc3cXgm4yb6/uiIzw0hL+Cvj26BFbbQ7lcJmS0aI=; b=cAVGex7mPmsAYC
	AmYNpxo+QflKwmxUQh/iBhM6G+99msCBUZ+yH8eB+3S6CEwSMXz0QV5Z3m80oyA/o8p2iELGweWIb
	hr1YO1joZQYwVmjcijpojukqAIUee93fDN6vPvg4bxreebgp6tHp2rXZKFOCpY9KIxFlgZJvT8o/1
	m0kMyjep11tvTNgnrlggANrFWnnIzqcLv+NVHpZ+ghTVjCt5np11vofh8rhLHx6zztx87aCDUEx8d
	pnCyNkcTK1Hhqc/Y5lPa441GiQ23IktfPtLZudohb6Djs/ACO1aCg/HYqr9mGzUlv4ROOJF8on/CD
	MNuKAo626rpPIoru6Ozg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGx4L-00000008ds1-2CaL;
	Mon, 19 May 2025 09:46:01 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwoI-00000008ZGX-1XGr
	for linux-phy@lists.infradead.org;
	Mon, 19 May 2025 09:29:28 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20250519092917epoutp03bbb812cd7d53e0dbcb1eaa7c40472c72~A46X5Y8Em2923229232epoutp03V
	for <linux-phy@lists.infradead.org>; Mon, 19 May 2025 09:29:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20250519092917epoutp03bbb812cd7d53e0dbcb1eaa7c40472c72~A46X5Y8Em2923229232epoutp03V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1747646957;
	bh=hyCYV5tKTc12SwshmyJzcHUJ5CSInB31JwFZiJ35RyE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=L/RVJ+WmnF96JHVNFe0+ng4FE/5lFVX1zpPcfpmzNf6Z/GkFcrcyAVS3WhTpWt2Fe
	 hSHqQHohli5Crd13u3La/XW1wX8F3DH4STiUQKJXdbg9hyzBrLHSPTj0gWcwiC024t
	 lX/7K9u7WpNMdswguMCxZazFOiO92oJspsqb0hto=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPS id
	20250519092916epcas5p1f944d982a0b8d7b7f94b8e9145e1268b~A46XDOp1s1962019620epcas5p15;
	Mon, 19 May 2025 09:29:16 +0000 (GMT)
Received: from epcas5p3.samsung.com (unknown [182.195.38.183]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4b1C7G1Yrdz6B9mJ; Mon, 19 May
	2025 09:29:14 +0000 (GMT)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250518193230epcas5p3dfb178a6528556c55e9b694ca8f8ad6c~Atfwy15Xp1682016820epcas5p36;
	Sun, 18 May 2025 19:32:30 +0000 (GMT)
Received: from epsmgmcp1.samsung.com (unknown [182.195.42.82]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20250518193230epsmtrp184b5daf49957acd8fd047704d2f70457~AtfwyAvh82445124451epsmtrp1b;
	Sun, 18 May 2025 19:32:30 +0000 (GMT)
X-AuditID: b6c32a52-40bff70000004c16-61-682a35ce3ed9
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgmcp1.samsung.com (Symantec Messaging Gateway) with SMTP id
	FD.39.19478.EC53A286; Mon, 19 May 2025 04:32:30 +0900 (KST)
Received: from cheetah.samsungds.net (unknown [107.109.115.53]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250518193227epsmtip1824ce2e47b768b1b9d1560fcc5809d57~Atft8GoVD0974409744epsmtip1f;
	Sun, 18 May 2025 19:32:27 +0000 (GMT)
From: Shradha Todi <shradha.t@samsung.com>
To: linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.or,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Cc: manivannan.sadhasivam@linaro.org, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	vkoul@kernel.org, kishon@kernel.org, arnd@arndb.de,
	m.szyprowski@samsung.com, jh80.chung@samsung.com, Shradha Todi
	<shradha.t@samsung.com>, Hrishikesh Dileep <hrishikesh.d@samsung.com>
Subject: [PATCH 02/10] PCI: exynos: Remove unused MACROs in exynos PCI file
Date: Mon, 19 May 2025 01:01:44 +0530
Message-ID: <20250518193152.63476-3-shradha.t@samsung.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518193152.63476-1-shradha.t@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrEIsWRmVeSWpSXmKPExsWy7bCSnO45U60Mgxc3WSwezNvGZvF30jF2
	iyVNGRZr9p5jsph/5Byrxc2zu9ktbvxqY7VY8WUmu8XR1v/MFi9n3WOzaOj5zWqx6fE1VovL
	u+awWZydd5zNYsKqbywWZ78vYLJo+dPCYrH2yF12i7stnawW//fsYLfoPVxrsfPOCWYHMY/f
	vyYxeuycdZfdY8GmUo9NqzrZPO5c28Pm8eTKdCaPzUvqPfq2rGL0OPJ1OovH501yAVxRXDYp
	qTmZZalF+nYJXBlXtq9kKpjDXvG/o5WlgXEWWxcjJ4eEgInEtctnmLsYuTiEBLYzSjz/8IQJ
	IiEp8fniOihbWGLlv+fsILaQwCdGiaa5FiA2m4CWROPXLmYQW0TgBKNE3y1LkEHMAvOZJRqa
	v4E1Cwt4S6x495wVxGYRUJWYs70FLM4rYCVx7OlboKEcQAvkJfo7JEDCnALWEtvWT2WC2GUl
	sfDJTkaIckGJkzOfsIDYzEDlzVtnM09gFJiFJDULSWoBI9MqRtHUguLc9NzkAkO94sTc4tK8
	dL3k/NxNjOBo1Arawbhs/V+9Q4xMHIyHGCU4mJVEeFdt1sgQ4k1JrKxKLcqPLyrNSS0+xCjN
	waIkzquc05kiJJCeWJKanZpakFoEk2Xi4JRqYCpYl/vJ5syNgIY7jZns8a0JIatnvN93/lhE
	0LU8Uf1NQdwX7lj+U598WTXZcMWFvD9z1l+KDoo3sHj9w5GVTW3Hvz/6MwSrfTNZ2b/ozfx9
	kn/WhdZaoYY/eyJv8B1Qtpqr8fzMqfoZPcIFns3Wp7RsTHa2heilqJb7L2E6Nzf1n2/sCfmP
	HkZiAeo23o8ybn9v8Xr3dqJ9/s3f0ws43bSrth9KWDYj61iRTIZXSqm4i4BDpOWWlseuO5Nm
	bT8hG3tjWd22iBn28cVff9w4duMbWx1TZ8kLH7G6XVk7u24zSLUt58qYt9L53P43YXdO1ZUk
	6ybNbFTa7DJd12/9zRV1BznUJk22/HTE1uqflxJLcUaioRZzUXEiAOa88Dk1AwAA
X-CMS-MailID: 20250518193230epcas5p3dfb178a6528556c55e9b694ca8f8ad6c
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250518193230epcas5p3dfb178a6528556c55e9b694ca8f8ad6c
References: <20250518193152.63476-1-shradha.t@samsung.com>
	<CGME20250518193230epcas5p3dfb178a6528556c55e9b694ca8f8ad6c@epcas5p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_022926_711549_0C0B37D7 
X-CRM114-Status: GOOD (  12.04  )
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

Some MACROs are defined in the exynos PCI file but are
not used anywhere within the file. Remove such unused
MACROs.

Suggested-by: Hrishikesh Dileep <hrishikesh.d@samsung.com>
Signed-off-by: Shradha Todi <shradha.t@samsung.com>
---
 drivers/pci/controller/dwc/pci-exynos.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/controller/dwc/pci-exynos.c
index 1c70b036376d..990aaa16b132 100644
--- a/drivers/pci/controller/dwc/pci-exynos.c
+++ b/drivers/pci/controller/dwc/pci-exynos.c
@@ -31,8 +31,6 @@
 #define EXYNOS_IRQ_INTB_ASSERT			BIT(2)
 #define EXYNOS_IRQ_INTC_ASSERT			BIT(4)
 #define EXYNOS_IRQ_INTD_ASSERT			BIT(6)
-#define EXYNOS_PCIE_IRQ_LEVEL			0x004
-#define EXYNOS_PCIE_IRQ_SPECIAL		0x008
 #define EXYNOS_PCIE_IRQ_EN_PULSE		0x00c
 #define EXYNOS_PCIE_IRQ_EN_LEVEL		0x010
 #define EXYNOS_PCIE_IRQ_EN_SPECIAL		0x014
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
