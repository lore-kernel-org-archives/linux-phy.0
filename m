Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B165C43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 01:37:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SoeWlGRV1cKH8reId9Wd4q22G7AO/GtbnLct8LKNv+E=; b=nIhv+SXKpZ7jxO
	+KQZpw6oviWtvhJQCB+Rbp6Z0E2s1Z4mEatfV7I5M7PfDmT+bfzIwoFiNv1pgboCdU12gZU9faZ7T
	5al/5kTGBl7/i43W67EXWMN75nZiCHDMOgVtaWt3PFJxlseoj7kKS3SaKA1mXeNghcg3blDAqcXy/
	CuSq1gRCKGgrE11CY448/mR9okEMMfzIiahQDFhPmgbnPHGwt6SKW9Aw2fXwHRZexKWJa2doD6jE+
	Fqvss6kUrNAovo44Ms2W2alJjV9obt8ULW0S1lkzm5LDciU1Oa+UmSsZyAcm1w1eCKEXhNxkU7VM7
	U5nueQQL5dnRDg3IX7IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vUM-006b2B-Rb; Tue, 14 Jun 2022 01:37:02 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vUK-006b1L-Da
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 01:37:02 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220614013657epoutp02ce4a6042de7b537781e8bc4ab8a93b54~4WOgoORY-0913409134epoutp023
	for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 01:36:57 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220614013657epoutp02ce4a6042de7b537781e8bc4ab8a93b54~4WOgoORY-0913409134epoutp023
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655170617;
	bh=jA5LhY2FU1o8vJngFMJ1TU1lJY0CuOKBbhd2Dp2tDos=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=Vjjx2N65kgRDYZY7Sp7dLCTBcfIHE+HxMbLG2WRiOhywO9ILdIKEZVJ0sCeLQbDDB
	 Wd1wUmbFe+pNaK54Ti0byFI59+6NOUnufrJRfY0O8SAn8l29ZZve6+r8Qmcy/hhrHi
	 YUS0FdzkqYhZbwh9t+b74aToy58/NIRvd6cpLnsk=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220614013656epcas2p2256307430c211ec0bd8ea70dcb1445dd~4WOgFFOWx0196001960epcas2p2m;
	Tue, 14 Jun 2022 01:36:56 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LMWJ72XPhz4x9Q1; Tue, 14 Jun
	2022 01:36:55 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-07-62a7e637a250
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	9D.B7.09764.736E7A26; Tue, 14 Jun 2022 10:36:55 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v3 5/5] MAINTAINERS: Add Axis ARTPEC-8 PCIe PHY maintainers
From: Wangseok Lee <wangseok.lee@samsung.com>
To: Wangseok Lee <wangseok.lee@samsung.com>, "robh+dt@kernel.org"
	<robh+dt@kernel.org>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"jesper.nilsson@axis.com" <jesper.nilsson@axis.com>, "lars.persson@axis.com"
	<lars.persson@axis.com>, "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220614013654epcms2p6b8f11dd03c42b1dfcd908ed3e59c13d8@epcms2p6>
Date: Tue, 14 Jun 2022 10:36:54 +0900
X-CMS-MailID: 20220614013654epcms2p6b8f11dd03c42b1dfcd908ed3e59c13d8
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA12Tf1CTZQDHe/ZuLy9205cJ9RzeAb2kgAT7IbBnCV0BZwu0W8dV1h/RC3sF
	ZGxz71ZWGitEiaaQkiBwYyWB8qsCgSEJ3piuuxphWfw4IPQw4GBSiYkiFWNDu/77PN/7Pt/n
	+T4/CEwwiAcSOWo9o1PTKgpfx+3oi5BGSX+rzxD9cIxEtR9moxlbBKqx9/NQd0U9B5369HsM
	TdkqMfTnoc1o4IYJRzOV4zgympZ4yD73B4Z6HWc56Kfz1Thymh04Km34i4vmlqZ9UP/pHFR4
	we6Duka/xdBon5OL7rXf5zwbIG8yNwH5YItCbmk1yFsbPsLlk1fLOfK22nz5sXMNQO4Y6uTI
	b7UGKXxfz43PZmglowth1JkaZY46K4FKTUtPSo+NE4mjxDIkpULUdB6TQCXvVETtyFGtNKNC
	3qJVhhVJQbMsJXwmXqcx6JmQbA2rT6AYrVKllWqjWTqPNaizotWM/mmxSCSJXTG+mZs901cO
	tFXE/oqxMmAE/+DFgCAgGQMb+6XFYB0hIK0AftM9Bdw6n/SDy9aNxcCX2EimwsISM+5mAUlB
	a5MZ8+hCOHjmY56bcTIK/n16Bnfn+JPVODw+PcVzDzDSAmDvUg9wuyDJhxVHbnA9vAl21rev
	6r7ki/CzS8c5Hj0cLtYdxTwcAIcbXT5rPH+5xpvjDwvHnV6PH5y42+3VA6Fl0sbz8Huwd3nJ
	m2kEsORXxlNYCK2D2zwdd8HFxp1uB5fcDE+M2r0pybC21rmagpHBsNNVjbntGBkBvzwv9ISE
	QvsId62T8esln/8zRq6HRX3LD3SredK7ly3QfLYLKwWhlQ/PufI/a1U+XMsCsAbwGKNl87IY
	VqKVPLjZTE1eK1h94Vt3WEGZ6/doG+AQwAYggVH+/BNX6jIEfCX9zruMTpOuM6gY1gZiV1p+
	ggUGZGpWvohany6OkYli4uLEUkmsSEo9zk9RfkULyCxaz+QyjJbRrc3jEL6BRk7ekGx24Lv5
	t9eLtldbHLNP3LK30YfuHih/rqYv+M4G18EFouWl+eGRR95gk2ypBa5IWXg4NWfUXpg49wKP
	u1yOhDVXU3rCUu6pILpk+qDUEmmexMb2XR9OIhNfuZb4xfNpE84Cv1O/MLe35A/oS5Kvtz06
	rRq54jhD7xbkKNISQy+2zRJHXjbN7+kK24uP1b7qnG9vv+wqDLsjG9sk3H4gruPgyfH6ize3
	3WTj9hRNcVomgyRBEz2NzVWRsR2v1eWnHw1+H/AX4nWHwX4Fb99ijcFUJTOWgcMJ4gKryA9k
	DN8vesrB1CU0N//YruSES/SfXyvcbbr989DeyO4F+skNFJfNpsVbMR1L/wuB9p+sagQAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
	<CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_183700_873933_8896F2BE 
X-CRM114-Status: GOOD (  15.80  )
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
Reply-To: wangseok.lee@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add maintainer for Axis ARTPEC-8 PCIe PHY.

Add Jesper Nilsson <jesper.nilsson@axis.com> and
Lars Persson <lars.persson@axis.com> as maintainer for these files.

ARTPEC-8 is the SoC platform of Axis Communications and PCIe PHY is designe
d based on Samsung PHY.

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 475e2836..5ad377f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1876,12 +1876,14 @@ M:	Jesper Nilsson <jesper.nilsson@axis.com>
 M:	Lars Persson <lars.persson@axis.com>
 L:	linux-arm-kernel@axis.com
 S:	Maintained
+F:	Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
 F:	Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
 F:	arch/arm/boot/dts/artpec6*
 F:	arch/arm/mach-artpec
 F:	drivers/clk/axis
 F:	drivers/crypto/axis
 F:	drivers/mmc/host/usdhi6rol0.c
+F:	drivers/phy/artpec/phy-artpec*
 F:	drivers/pinctrl/pinctrl-artpec*
 
 ARM/ASPEED I2C DRIVER
-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
