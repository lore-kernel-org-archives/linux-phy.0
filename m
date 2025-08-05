Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8B19C87FD1
	for <linux-phy@archiver.kernel.org>; Tue,  5 Aug 2025 17:51:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-Id:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=riCWeALlTHsV6uxWe4634dSGQtxRXdJUmzxaJOHjRmQ=; b=hqvPmt+JDaPrsv
	t45x9ix1uxz1s/JSzE9s1cqbWpF8dyiuDE4gacNGEY08EIvUh9/NHOoN53dg/5oHkX2CclR0oRajp
	SMKdPTeprdT7IYhsCOn0JIajYXm0Q6fFrbIHamqAaebuowIcz1GmhCoHiu/pMP5JpZsbf0V8U1LuM
	S8QE91W+j4Fdef5u1n7ch1ymWrB14Jx45rjOYwHta9t7G5WciN35vYgPQ7akfXTDQt6Q7m31eY/rk
	HPbqddYtCbRluEjb0DlfsgDI5Fi/MLhWtYbh+IXOhBm5ILLLCSDjQllP22u1p1GIISEOr74IV7FII
	UW86e5bpobhUNDsoNqiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLoq-0000000DTTl-1oAN;
	Tue, 05 Aug 2025 17:51:24 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujLMh-0000000DPx7-3vKO
	for linux-phy@lists.infradead.org;
	Tue, 05 Aug 2025 17:22:24 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250805172210epoutp018705b1121dfbcd8d26204a4644691c82~Y7rh4-xxA2141321413epoutp01d
	for <linux-phy@lists.infradead.org>; Tue,  5 Aug 2025 17:22:10 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250805172210epoutp018705b1121dfbcd8d26204a4644691c82~Y7rh4-xxA2141321413epoutp01d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1754414530;
	bh=3NWT4mKOZNdlidQlsy7YVyOqci6Cq0pxcFhWUe0hI/k=;
	h=From:To:Cc:Subject:Date:References:From;
	b=rzvWPgsYdCn/yglMYaj61OKWoBvOC5wyBzk04Sli425qfYXypt33O18DHrwCuG/G8
	 6XBSUkavpK+KIlqqfzO+4cgn2fuKAhb2WN2Iku3/hqYJQQieRVBSaQLmByEGGJbHmf
	 oL+xELTHpvZ80DJd/uJ9AgTRAf1jkAXr21qCHrog=
Received: from epsnrtp03.localdomain (unknown [182.195.42.155]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250805172210epcas5p3bc2aeda341a6c1f21643e6d976843297~Y7rhLyOma1679616796epcas5p30;
	Tue,  5 Aug 2025 17:22:10 +0000 (GMT)
Received: from epcas5p1.samsung.com (unknown [182.195.38.94]) by
	epsnrtp03.localdomain (Postfix) with ESMTP id 4bxKwx3Sz9z3hhT3; Tue,  5 Aug
	2025 17:22:09 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20250805114303epcas5p4c88843b7e38d86b722e60e386c637160~Y3DbswWTk1917319173epcas5p4L;
	Tue,  5 Aug 2025 11:43:03 +0000 (GMT)
Received: from bose.samsungds.net (unknown [107.108.83.9]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20250805114300epsmtip154a84efe22ffd7b56289c339abd25a90~Y3DYxqakz1387413874epsmtip1h;
	Tue,  5 Aug 2025 11:43:00 +0000 (GMT)
From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
To: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
	andre.draszik@linaro.org, peter.griffin@linaro.org, kauschluss@disroot.org,
	ivo.ivanov.ivanov1@gmail.com, igor.belwon@mentallysanemainliners.org,
	m.szyprowski@samsung.com, s.nawrocki@samsung.com, pritam.sutar@samsung.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, rosa.pila@samsung.com,
	dev.tailor@samsung.com, faraz.ata@samsung.com, muhammed.ali@samsung.com,
	selvarasu.g@samsung.com
Subject: [PATCH v5 0/6] initial usbdrd phy support for Exynosautov920 soc
Date: Tue,  5 Aug 2025 17:22:10 +0530
Message-Id: <20250805115216.3798121-1-pritam.sutar@samsung.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CMS-MailID: 20250805114303epcas5p4c88843b7e38d86b722e60e386c637160
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250805114303epcas5p4c88843b7e38d86b722e60e386c637160
References: <CGME20250805114303epcas5p4c88843b7e38d86b722e60e386c637160@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_102220_292928_658C00CE 
X-CRM114-Status: GOOD (  16.52  )
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

This SoC has a single USB 3.1 DRD combo phy and three USB2.0 only
DRD phy controllers as mentined below

  * Combo phy supports USB3.1 SSP+(10Gbps) protocol and is backwards
    compatible to the USB3.0 SS(5Gbps). 'Add-on USB2.0' phy is added
    to support USB2.0 HS(480Mbps), FS(12Mbps) and LS(1.5Mbps) data rates.
    These two phys are combined to form a combo phy as mentioned below.


   USB30DRD_0 port

 +------------------------------------------------------------+
 |                                                            |
 |                (combo) USB phy controller                  |
 |      +----------------------------------------------+      |
 |      |                  USB HSPHY                   |      |
 |      |  (samsung,exynosautov920-usbdrd-combo-hsphy) |      |
 |      +----------------------------------------------+      |
 |                                                            |
 |    +--------------------------------------------------+    |
 |    |                   USB SSPHY                      |    |
 |    |   (samsung,exynosautov920-usb31drd-combo-ssphy)  |    |
 |    +--------------------------------------------------+-   |
 |                                                            |
 +------------------------------------------------------------+
 |                     USBDRD30 Link                          |
 |                       Controller                           |
 +------------------------------------------------------------+

  * USB2.0 phy supports only UTMI+ interface. USB2.0DRD phy
    is very similar to the existing Exynos850 support in this driver.

   USB20DRD_0/1/2 ports

      +---------------------------------------------------+
      |                                                   |
      |                USB PHY controller                 |
      |    +-----------------------------------------+    |
      |    |              USB HSPHY                  |    |
      |    |  (samsung,exynosautov920-usbdrd-phy)    |    |
      |    +-----------------------------------------+    |
      |                                                   |
      +---------------------------------------------------+
      |             USBDRD20_* Link                       |
      |                Controller                         |
      +---------------------------------------------------+

The "USB20 phy output isolation" is shared across the USB20 phys.
We have to bypass isolation when any one of the USBs is configured
and enable it when all are turned off. The "USB31 phy isolation"
is seperate for USB31 phy.

There are 3 types of the phys in this SoC as mentioned in above
above block diagram.    
 - one is simmilar with exynos850 as mentioned in patch no.1.
 - second supports only USB2.0 HS as in patch no 3.
 - third supports only USB3.1 SSP+ and denoted in patch no 5.
 
These three phys(usbdrd-phy, combo-hsphy, combo-ssphy) are totally
deferent, "NOT" same, hence added three compatible for three phys.

This patchset only supports device mode and same is verified with
as NCM device.

changelog
----------
Changes in v5:
- removed "Reviewed-by" tag.
- addressed comments from v4 patchset.
  - DTS style is corrected and added required supplies in code 
    and schema.
  - new schema block added for supplies to resolve below failure 
    during 'dtbs_check'.
    Unevaluated properties are not allowed ('dvdd075-usb-supply', 'vdd18-usb20-supply', 'vdd33-usb20-supply' were unexpected.
  - removed usage_counter(will take this later in subsequent patch-sets)
  link for v4: https://lore.kernel.org/linux-phy/20250701120706.2219355-1-pritam.sutar@samsung.com/

Changes in v4:
- addressed comments from v3 patchset
  - removed dts related patches, to be posted in new patchset.
  - added regulator, pmu and power sequences.
  - phy isol is shared across USBs, added usage counter to bypass or
    enable phy isolation.
  - modified schemas with hs and combo phy compatible names
    (used "combo" to denote combo phy) and regulators
- modified code to work with binding and unbinding devices/drivers
- added "Reviewed-by" tag.
  link for v3: https://lore.kernel.org/linux-phy/20250613055613.866909-1-pritam.sutar@samsung.com/

Changes in v3:
- Updated dt-bindings for USB2.0 only.
- Added dt-bindings for combo phy.
- Added implementation for combo phy (SS and HS phy).
- Added added DTS nodes for all the phys
  link for v2: https://lore.kernel.org/linux-phy/20250516102650.2144487-1-pritam.sutar@samsung.com/

Changes in v2:
- Used standard GENMASK() and FIELD_GET() to get the major version
  from controller version register.
  link for v1: https://lore.kernel.org/linux-phy/20250514134813.380807-1-pritam.sutar@samsung.com/

Pritam Manohar Sutar (6):
  dt-bindings: phy: samsung,usb3-drd-phy: add ExynosAutov920 HS phy
    compatible
  phy: exynos5-usbdrd: support HS phy for ExynosAutov920
  dt-bindings: phy: samsung,usb3-drd-phy: add ExynosAutov920 combo hsphy
  phy: exynos5-usbdrd: support HS combo phy for ExynosAutov920
  dt-bindings: phy: samsung,usb3-drd-phy: add ExynosAutov920 combo ssphy
  phy: exynos5-usbdrd: support SS combo phy for ExynosAutov920

 .../bindings/phy/samsung,usb3-drd-phy.yaml    |  41 ++
 drivers/phy/samsung/phy-exynos5-usbdrd.c      | 652 ++++++++++++++++++
 include/linux/soc/samsung/exynos-regs-pmu.h   |   3 +
 3 files changed, 696 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
