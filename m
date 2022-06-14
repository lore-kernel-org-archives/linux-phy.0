Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7BF7C43334
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jun 2022 01:16:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=RyDYM3EUR9RRGgOv5OXKjP27VM19vL07DwvEoNuO3jQ=; b=cV9r4D5WtzLElX
	LpVUTlExEE/W7uIPTx/x5N0e8xjEfPvC/z2aC35xH6bfON06rhNaD8lzsOaWdHosPurh5w3G1WK6T
	gxGFipZu1AAIU7Kx45P0MopSdH5Ac9dabA/YDezSVkEPAUxwoIkrDJFEtBjKZSM4KyJmQHI4xlDMz
	H7O0R0ciBedzXJSwVq9sQlepjOjFtlub4E0JaY99ouzpMCft0QZq/Y0Q1RyiIyOYzBm3+Zs7ny8CX
	mP2yoO88Zz6/bSjDjRWCU6LihlKF2JfT4Tks63/WgT7ebAoE9a2LwYtIo3Rz00FJnxoyFi5cvOZeh
	+BG2qn4+Drm4mOYlmszQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vAd-006Z0B-8L; Tue, 14 Jun 2022 01:16:39 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0vAP-006YvO-Eq
	for linux-phy@lists.infradead.org; Tue, 14 Jun 2022 01:16:27 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220614011618epoutp03f0a444bd834e8f172f941967845e0208~4V8fP5EFc1230712307epoutp03U
	for <linux-phy@lists.infradead.org>; Tue, 14 Jun 2022 01:16:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220614011618epoutp03f0a444bd834e8f172f941967845e0208~4V8fP5EFc1230712307epoutp03U
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1655169378;
	bh=fI2J29nRYzvP7/fnA5tJYjNKV6Zfl3ONJubw126AwbY=;
	h=Subject:Reply-To:From:To:CC:Date:References:From;
	b=byM5S9V2vT/G1PmZ9thftDS0QR299Mc55HqAVbO16XwT5odB3IDuSv3QrpxIhNS2q
	 EbI/Fvew3EO0vR1syNbdet5F7j77R1+4RYMpsZXlrHr8Yf/BwyPydvMul11sZ5U/DN
	 kQmaIX2Z4Z/rtm1vBMQg9LUyDqqjNdvzfsvF8ICg=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220614011618epcas2p38f4b9291cffac3ce1b24a646ed233038~4V8ewteed0311603116epcas2p3t;
	Tue, 14 Jun 2022 01:16:18 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.99]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LMVrK3Qm3z4x9QB; Tue, 14 Jun
	2022 01:16:17 +0000 (GMT)
X-AuditID: b6c32a46-79619a8000002624-ac-62a7e161fdf8
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	FB.18.09764.161E7A26; Tue, 14 Jun 2022 10:16:17 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v3 0/5] Add support for Axis, ARTPEC-8 PCIe driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
	<jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>,
	"bhelgaas@google.com" <bhelgaas@google.com>, "linux-phy@lists.infradead.org"
	<linux-phy@lists.infradead.org>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>, "lorenzo.pieralisi@arm.com"
	<lorenzo.pieralisi@arm.com>, "kw@linux.com" <kw@linux.com>,
	"linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>, "kernel@axis.com"
	<kernel@axis.com>
CC: Moon-Ki Jun <moonki.jun@samsung.com>, Sang Min Kim
	<hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>, Yeeun Kim
	<yeeun119.kim@samsung.com>, Wangseok Lee <wangseok.lee@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
Date: Tue, 14 Jun 2022 10:16:16 +0900
X-CMS-MailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrKJsWRmVeSWpSXmKPExsWy7bCmuW7iw+VJBvdvCVssacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9NouGnt+sFkfefGS22H98JZPF5V1z
	2CzOzjvOZjFh1TcWize/X7BbnFucadG69wi7xc47J5gt7hw+y2Lxa+sfJgdRjzXz1jB6XF8X
	4LFgU6nHplWdbB5Prkxn8ti8pN6jb8sqRo/jN7YzeXzeJBfAGZVtk5GamJJapJCal5yfkpmX
	bqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQP0mZJCWWJOKVAoILG4WEnfzqYov7Qk
	VSEjv7jEVim1ICWnwLxArzgxt7g0L10vL7XEytDAwMgUqDAhO+NdwyzWgktyFd0Tz7A1MO6S
	6GLk4JAQMJFY313TxcjFISSwg1Fi7cJzTCBxXgFBib87hLsYOTmEBZwkdq18wApiCwkoSexY
	M48ZIq4vcX1FN1icTUBX4t/il2wgtojAZ1aJ63sEQWYyC5xklFh+eD1YQkKAV2JG+1MWCFta
	YvvyrYwQtobEj2W9zBC2qMTN1W/ZYez3x+ZD1YhItN47C1UjKPHg526ouJTEgieHWCHsaon9
	f38zQdgNjBL991MhftSX2HHdGCTMK+ArcXnjVLBzWARUJQ6sncYGUeIicXdiIEiYWUBeYvvb
	OcwgYWYBTYn1u/QhKpQljtxigfmjYeNvdnQ2swCfRMfhv3DxHfOeQN2iJjFv5U5miDEyEltf
	+k9gVJqFCOVZSNbOQli7gJF5FaNYakFxbnpqsVGBETxek/NzNzGC07eW2w7GKW8/6B1iZOJg
	PMQowcGsJMI7+eKyJCHelMTKqtSi/Pii0pzU4kOMpkD/TmSWEk3OB2aQvJJ4QxNLAxMzM0Nz
	I1MDcyVxXq+UDYlCAumJJanZqakFqUUwfUwcnFINTEneP7bEFx7pc5i1/euP1abLPpY80ebg
	P7VNueOU41NOw3taL+PubXZR23j3gVbo3nPNwjoXjnhEtaq7d7Iu05ZTFLN9deyC84LchSt8
	3qZu4das+v+VPUlfICb0Xn3iNEZnFT2PlrP6psn6vbejL62dVnZ9waopMTVPFoRX2ba4sDIF
	7DC4pXPhUsk8k55Nrd+ttLuCFCaytqbGvFGX0+kxn3ls5rWuDyJ5XnbLwyS/Td2160cvy/G/
	E5dya/oxPPh45dCP90usKhbmyJY+zyoTl749x6Pj4M2n5dnV876EvJobNNGnwUdjckG4sukc
	R6F7jDeVZm17vVr5wqyZ9teEoyvFWB+4ucSU3WK+qsRSnJFoqMVcVJwIACU0HzBoBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7
References: <CGME20220614011616epcms2p7dcaa67c53b7df5802dd7a697e2d472d7@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_181626_041181_C4CA1ADF 
X-CRM114-Status: GOOD (  19.98  )
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

This v3 patchset is improvement several review comments received from patchset v2.

Main changes since v2 [2]:
dt-bindings: pci: Add ARTPEC-8 PCIe controller
-modify version history to fit the linux commit rule
-remove 'Device Tree Bindings' on title
-remove the interrupt-names, phy-names entries
-remove '_clk' suffix
-add the compatible entries on required
-change node name to soc from artpec8 on examples

dt-bindings: phy: Add ARTPEC-8 PCIe phy
-modify version history to fit the linux commit rule
-remove 'Device Tree Bindings' on title
-remove clock-names entries
-change node name to soc from artpec8 on excamples

 PCI: axis: Add ARTPEC-8 PCIe controller driver
-add 'COMPILE_TEST' and improvement help on kconfig
-reorder obj on makefile
-use clk_bulk_api
-remove unnecessary comment
-redefine the ELBI register to distinguish between offset and
 bit definition
-improvement order local variable of function
-remove unnecessary local return variable

phy: Add ARTPEC-8 PCIe PHY driver
-remove unnecessary indentation
-redefine local struct to statis const
-add static const to struct that requires static const definition
-remove wrappers on writel and readl

Main changes since v1 [1]:
-'make dt_binding_check' result improvement
-Add the missing property list
-improvement review comment of Krzysztof on driver code
-change folder name of phy driver to axis from artpec

[2] https://lore.kernel.org/lkml/20220613015023epcms2p70e6700a99042d4deb560e40ab5397001@epcms2p7/T/
[1] https://lore.kernel.org/lkml/20220328014430epcms2p7063834feb0abdf2f38a62723c96c9ff1@epcms2p7/

--------------------------------------------------------------
This series patches include newly PCIe support for Axis ARTPEC-8 SoC.
ARTPEC-8 is the SoC platform of Axis Communications.
PCIe controller driver and phy driver have been newly added.
There is also a new MAINTAINER in the addition of phy driver.
PCIe controller is designed based on Design-Ware PCIe controller IP
and PCIe phy is desinged based on SAMSUNG PHY IP.
It also includes modifications to the Design-Ware controller driver to 
run the 64bit-based ARTPEC-8 PCIe controller driver.
It consists of 6 patches in total.

This series has been tested on AXIS SW bring-up board 
with ARTPEC-8 chipset.
--------------------------------------------------------------

Wangseok Lee (5):
  dt-bindings: pci: Add ARTPEC-8 PCIe controller
  dt-bindings: phy: Add ARTPEC-8 PCIe phy
  PCI: axis: Add ARTPEC-8 PCIe controller driver
  phy: Add ARTPEC-8 PCIe PHY driver
  MAINTAINERS: Add Axis ARTPEC-8 PCIe PHY maintainers

 .../bindings/pci/axis,artpec8-pcie-ep.yaml         | 109 +++
 .../devicetree/bindings/pci/axis,artpec8-pcie.yaml | 120 ++++
 .../bindings/phy/axis,artpec8-pcie-phy.yaml        |  73 ++
 MAINTAINERS                                        |   2 +
 drivers/pci/controller/dwc/Kconfig                 |  31 +
 drivers/pci/controller/dwc/Makefile                |   1 +
 drivers/pci/controller/dwc/pcie-artpec8.c          | 797 +++++++++++++++++++++
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/axis/Kconfig                           |   9 +
 drivers/phy/axis/Makefile                          |   2 +
 drivers/phy/axis/phy-artpec8-pcie.c                | 776 ++++++++++++++++++++
 12 files changed, 1922 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
 create mode 100644 Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
 create mode 100644 drivers/pci/controller/dwc/pcie-artpec8.c
 create mode 100644 drivers/phy/axis/Kconfig
 create mode 100644 drivers/phy/axis/Makefile
 create mode 100644 drivers/phy/axis/phy-artpec8-pcie.c

-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
