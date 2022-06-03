Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09754C43334
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 01:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=sGPmwvM+bzL1Dob2yyTF7SiNsVwioxrz3LDNj59iLLA=; b=1aqL7MAHHWt8Yk
	HIveGWhe8tk7CTd0EI7r0tyaUYVN4TjRXtB05fsW/QfGhBTpGGbDzI48rqe0SUnuQnjOjg1vN5Tch
	VHKDjuDQkqUPnfsl8mcWBKYIL7QHi6izbRk2x4MZL60ebX2LQ22zgbIKpucv8vs/pK3tUZ3OT3iLe
	NRTWYOMOi1P8uYuZaFGxDuixPe4KF93Jk1XtyKspiJ7TSgdFm/PDkd7CcE3zHf1oJ3wAmun/B5s21
	zUnZ4/8rccTv8oukXFsa5f8M/EuDFHZPgACXLxHVb/u50S3cMgd6ZOmFACZO9sMCQ3eI27SZjAq8e
	nyhjDL+76SzrQIbB1HYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwwWW-005QhD-E6; Fri, 03 Jun 2022 01:54:48 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwwWS-005QgF-7n
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 01:54:46 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220603015435epoutp02c38b620ce83dc96daefcfb6e4657633e~0_XxCtlFD2763727637epoutp02K
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 01:54:35 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220603015435epoutp02c38b620ce83dc96daefcfb6e4657633e~0_XxCtlFD2763727637epoutp02K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654221275;
	bh=iltdJsmgnbu0JcWYL1RKkqqbZCa+Qc8BFE7Yie5EMQA=;
	h=Subject:Reply-To:From:To:CC:Date:References:From;
	b=dL5Za0uDl67LA6TIx2HJ2iyHzjFxGqeSN0ZO1XtqJwJQAEefbRzewssDnOpUTa505
	 IXFzjJxvJimPbu6pYv+9BTSFvZklmItP5Qo11aTbctsm52w1kr8uxE+h26n3O5nBF6
	 qrPyiGiL3YigY1p/E0e9Wj72h4xP5pbg+gko1FYE=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220603015434epcas2p33cfb84fa687df58be91884a5d4ccd113~0_Xv-e9b23019030190epcas2p3Y;
	Fri,  3 Jun 2022 01:54:34 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.70]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LDmCX3pgdz4x9QG; Fri,  3 Jun
	2022 01:54:32 +0000 (GMT)
X-AuditID: b6c32a47-573ff7000000272c-bc-629969d82301
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	6E.F4.10028.8D969926; Fri,  3 Jun 2022 10:54:32 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v2 0/5] Add support for Axis, ARTPEC-8 PCIe driver
From: Wangseok Lee <wangseok.lee@samsung.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "krzk+dt@kernel.org"
	<krzk+dt@kernel.org>, "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org"
	<vkoul@kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, "jesper.nilsson@axis.com"
	<jesper.nilsson@axis.com>, "lars.persson@axis.com" <lars.persson@axis.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>,
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, "kw@linux.com"
	<kw@linux.com>, "linux-arm-kernel@axis.com" <linux-arm-kernel@axis.com>,
	"kernel@axis.com" <kernel@axis.com>, Moon-Ki Jun <moonki.jun@samsung.com>,
	Sang Min Kim <hypmean.kim@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
Date: Fri, 03 Jun 2022 10:54:31 +0900
X-CMS-MailID: 20220603015431epcms2p6203908cebe6a320854136559a32b54cb
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrDJsWRmVeSWpSXmKPExsWy7bCmme6NzJlJBnsXiVssacqweHlI02L+
	kXOsFrtnLGeymDn1DLPF80OzmC0+tahaXHjaw2bxctY9NouGnt+sFkfefGS22H98JZPF5V1z
	2CzOzjvOZjFh1TcWize/X7BbnFucadG69wi7xc47J5gdhD3WzFvD6HF9XYDHgk2lHptWdbJ5
	PLkynclj85J6j74tqxg9jt/YzuTxeZNcAGdUtk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmB
	oa6hpYW5kkJeYm6qrZKLT4CuW2YO0D9KCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKU
	nALzAr3ixNzi0rx0vbzUEitDAwMjU6DChOyM4w0nmQumi1b0X5/K3MB4WKCLkZNDQsBEomnl
	F0YQW0hgB6PElOfeXYwcHLwCghJ/dwiDhIUFnCQ+LWxnhyhRktixZh4zRFxf4vqKblYQm01A
	V+Lf4pdsXYxcHCICZ5kkbt7dzgriMAvMYZG43vyBFWIZr8SM9qcsELa0xPblWxkhbA2JH8t6
	mSFsUYmbq9+yw9jvj82HqhGRaL13FqpGUOLBz91QcSmJBU8OQc2vltj/9zcThN3AKNF/PxXk
	GQmgS3dcNwYJ8wr4SiyYvhZsPIuAqsSWHW2sECUuEnd2aIOEmQXkJba/ncMMEmYW0JRYv0sf
	okJZ4sgtFpg/Gjb+ZkdnMwvwSXQc/gsX3zHvCdQtahLzVu5khhgjI7H1pf8ERqVZiGCehWTt
	LIS1CxiZVzGKpRYU56anFhsVGMMjNjk/dxMjOFlrue9gnPH2g94hRiYOxkOMEhzMSiK8Jbum
	JgnxpiRWVqUW5ccXleakFh9iNAX6dyKzlGhyPjBf5JXEG5pYGpiYmRmaG5kamCuJ83qlbEgU
	EkhPLEnNTk0tSC2C6WPi4JRqYJJ6LyOnLTJt6euWROkXT37aiqwt0FWyXqVr3XKG9e29oyZP
	z0eUqagsmXtjmuLpYu9dy1YEtzadd1ne4pObGH1l7rOfwTGzz2Vt3RpwZOZdFbOlpZs12YvM
	m57xL22Le7Q0nWFt3KPcAAG7S5vn6X3N+ymx4fHjaSzHllyOWlC3yN1k0T8TT40XGXprpryM
	+l9W8lsm/omtuX/VC8nPvAduT0t9H/dZTdZq5bnlUxNzvf1Op4QEskgzKpw7F+xhU8I21fLu
	e58HP7c6xaVolBsqzbqySdiw7Udgc4qai0sN45enIoGBZ/9sltCM1hN8adPZ+4Db7nCzZFLB
	+ZV/GH/nsu/+fWdOp0Pg+7D2g0osxRmJhlrMRcWJANKw5a5fBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220603015431epcms2p6203908cebe6a320854136559a32b54cb
References: <CGME20220603015431epcms2p6203908cebe6a320854136559a32b54cb@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_185444_669594_05410E52 
X-CRM114-Status: GOOD (  18.99  )
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

This v2 patchset is improvement several review comments received from patchset v1.

Main changes since v1 [1]:
-'make dt_binding_check' result improvement
-Add the missing property list
-improvement review comment of Krzysztof on driver code
-change folder name of phy driver to axis from artpec

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
  MAINTAINERS: Add maintainer for Axis ARTPEC-8 PCIe PHY driver

 .../bindings/pci/axis,artpec8-pcie-ep.yaml         | 108 +++
 .../devicetree/bindings/pci/axis,artpec8-pcie.yaml | 123 +++
 .../bindings/phy/axis,artpec8-pcie-phy.yaml        |  70 ++
 MAINTAINERS                                        |   2 +
 drivers/pci/controller/dwc/Kconfig                 |  31 +
 drivers/pci/controller/dwc/Makefile                |   1 +
 drivers/pci/controller/dwc/pcie-artpec8.c          | 864 +++++++++++++++++++++
 drivers/phy/Kconfig                                |   1 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/axis/Kconfig                           |   9 +
 drivers/phy/axis/Makefile                          |   2 +
 drivers/phy/axis/phy-artpec8-pcie.c                | 806 +++++++++++++++++++
 12 files changed, 2018 insertions(+)
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
