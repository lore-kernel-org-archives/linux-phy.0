Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C739C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Mar 2022 02:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:CC
	:To:From:Subject:Mime-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=Ge4ES3JkaH9+KA6WM+98vyBtIJCD26mRLrUlKtax7KE=; b=zu+pzyWHd0E3MH
	4S+6hKlRM1HC5smPndby2zhVF4qEvOe81Wu+MH8szjI4NuxBZjyEjVa+vrFF/0jR7/QPr29TRSrLW
	g1H8ht7xK3kvPgUIxZvtj2MzI64oMe0OVBhaQ7/ww5fqF7so0shdCx7Wir/YXtTXFlI+Nd6LCOU5h
	kBqHnWGONV6YBwP/ssNyzMDEcuE+wAjult0iDwbjaYGGIXYJjRwgnC0nAXw6XmGspMvL0b9NOAX0Q
	tFArNPfVRwpf24+fEH/O8vQd56Gm3g0xlrtpXlWELKQDkD7AtEYJKKUlho2X34aDiONvOUX5vmhWW
	0ceso15FEpxhIpsPb4gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYf2t-0076jz-Fp; Mon, 28 Mar 2022 02:23:51 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYf2q-0076i7-DR
 for linux-phy@lists.infradead.org; Mon, 28 Mar 2022 02:23:50 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20220328022339epoutp02b5c9205406bba7ccfd527b5006f0bea3~gajBwyoVY1921619216epoutp02H
 for <linux-phy@lists.infradead.org>; Mon, 28 Mar 2022 02:23:39 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20220328022339epoutp02b5c9205406bba7ccfd527b5006f0bea3~gajBwyoVY1921619216epoutp02H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1648434219;
 bh=hOTZTR5dORk5Mj3Tg+UwKsuDonZ1LUxnfvDJ0ZpWcKc=;
 h=Subject:Reply-To:From:To:CC:Date:References:From;
 b=MK3+c4ySRbT/CRDqyL2/7JOqm8HQ9RpZUMQ3n4FANsNVMA2+uk95cuLGY/dDiKDFW
 6YGMXVu8KoSOZIk7x5WpmhZjGRR5T0+16mYizGjM1sbrZE7fFtM4jmyC7ABpXdIKit
 F3LKdqY2wm0r/4kz6xMYGWByhpQJX6IFAGIZmpHE=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20220328022339epcas2p1a224eda122aee0ab6a308ccd2200741f~gajBcvUBd1014510145epcas2p15;
 Mon, 28 Mar 2022 02:23:39 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.68]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4KRc205Knjz4x9QK; Mon, 28 Mar
 2022 02:23:36 +0000 (GMT)
X-AuditID: b6c32a47-81bff700000063c4-eb-62411c285293
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 7C.7E.25540.82C11426; Mon, 28 Mar 2022 11:23:36 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH 5/5] MAINTAINERS: Add maintainer for Axis ARTPEC-8 PCIe PHY
 driver
From: =?UTF-8?B?7J207JmV7ISd?= <wangseok.lee@samsung.com>
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
 "kernel@axis.com" <kernel@axis.com>, =?UTF-8?B?7KCE66y46riw?=
 <moonki.jun@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220328022336epcms2p558e5c1c4db4649272da25d6842450561@epcms2p5>
Date: Mon, 28 Mar 2022 11:23:36 +0900
X-CMS-MailID: 20220328022336epcms2p558e5c1c4db4649272da25d6842450561
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrMJsWRmVeSWpSXmKPExsWy7bCmqa6GjGOSwbpTGhZLmjIsXh7StJh/
 5ByrxfNDs5gtPrWoWlx42sNm8XLWPTaLhp7frBZH3nxktth/fCWTxeVdc9gszs47zmYxYdU3
 Fos3v1+wW5xbnGnRuvcIu8XOOyeYHQQ91sxbw+hxfV2Ax4JNpR6bVnWyeTy5Mp3JY/OSeo++
 LasYPY7f2M7k8XmTXABnVLZNRmpiSmqRQmpecn5KZl66rZJ3cLxzvKmZgaGuoaWFuZJCXmJu
 qq2Si0+ArltmDtAXSgpliTmlQKGAxOJiJX07m6L80pJUhYz84hJbpdSClJwC8wK94sTc4tK8
 dL281BIrQwMDI1OgwoTsjAmbVzIWzOSomPd+KXsD4z+2LkZODgkBE4nOf2uBbC4OIYEdjBJ7
 pt9h7mLk4OAVEJT4u0MYpEZYIESi6+tSVhBbSEBJYseaecwQcWuJT1Mus4DYbAKWEhdbHzKC
 zBEROMskcfPudlYQh1ngNrPE/OfvWSC28UrMaH8KZUtLbF++lRHC1pD4sayXGcIWlbi5+i07
 jP3+2HyoGhGJ1ntnoWoEJR783A0Vl5JY8OQQK4RdLbH/728mCLuBUaL/firIMxIC+hI7rhuD
 hHkFfCWevVgMNp5FQFXi9MwjTBAlLhK/dqaBhJkF5CW2v50DDgZmAU2J9bv0ISqUJY7cgvuj
 YeNvdnQ2swCfRMfhv3DxHfOeQN2iJjFv5U5miDEyEltf+k9gVJqFCOZZSNbOQli7gJF5FaNY
 akFxbnpqsVGBMTxmk/NzNzGCU7OW+w7GGW8/6B1iZOJgPMQowcGsJMIre9Y+SYg3JbGyKrUo
 P76oNCe1+BCjKdC/E5mlRJPzgdkhryTe0MTSwMTMzNDcyNTAXEmc1ytlQ6KQQHpiSWp2ampB
 ahFMHxMHp1QDk7P7rd2mllZCtkdlnqVKHvu1LoFd5fEXz5yO8CMym7JMblnVP9pdej/W9MIt
 /zjGuumh13p3ael+v6Am1fRgi23e/daw7m9LtDQCNt70ddUv79o6/WyUzGv+KxtPMEy9G6wQ
 5cEsrvl4Xu1xj7pJPzN8nVO1P1jfdn9QYfwkOyNwFsvujPptF/5EPVDguKjZqbr17HnbSxfX
 XQlVXrxHLnchU7LIjxAblbC6uQ3L+h/xnPzwh0XiRsmszsqtVdxXgv+qHZsVWWPaH3tqT5d/
 8J6gOXHJ8e6Loy6+b7d+M9sxLMz5xoWs17nLtiZzn+lfrc6Wftj7YW/cL79DwhlG2xSnCpVo
 vuu4+lI7xumtEktxRqKhFnNRcSIAAsMKHVYEAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220328022336epcms2p558e5c1c4db4649272da25d6842450561
References: <CGME20220328022336epcms2p558e5c1c4db4649272da25d6842450561@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220327_192348_852303_83DF6C7D 
X-CRM114-Status: GOOD (  15.23  )
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
Lars Persson <lars.persson@axis.com> as Maintainer for these files.

ARTPEC-8 is the SoC platform of Axis Communications
and PCIe phy is designed based on Samsung PHY.

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4cc47b2..6bbe336 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1862,12 +1862,14 @@ M:	Jesper Nilsson <jesper.nilsson@axis.com>
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
