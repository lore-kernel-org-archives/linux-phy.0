Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76C01C43334
	for <linux-phy@archiver.kernel.org>; Wed, 20 Jul 2022 06:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:CC:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEswA9HAB0POW2+ZLIwAdeEAS8iZPY6EQhssKC5Jxls=; b=aTPc/LV51X53H6
	VjZnYf1ewRcpisMoTwjbOZGeVN6iL7v7RiqTtzBRou7EICMaKDNTl5xFJqKYQLpQohf2P9M0rH8d0
	f6J8k3nfFQIPyFBJfymWaKlNxwCbu1M5poiKJLSZXmNDQPIpuNGo2sY8SFxSQkL2P3n19YQv72cTg
	RC7gAJ5HHTL003Eih1+jXM/bWNtDAX1jpdlceMZz3Dk2AL6mfX9xk2eBcg45X/GnokrbTuqBHMMYA
	LNwG6Ftc1DDw4NM3rPP2eWFb+yEcISN5Gr7FvL7S6JIFRezWD5y20SGIQ4AfYS0SrbNPbbYv2A4UR
	BbAxE3Y9VRH9tddPQN5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE32U-0017fW-Tx; Wed, 20 Jul 2022 06:18:30 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE32R-0017Tu-E8
	for linux-phy@lists.infradead.org; Wed, 20 Jul 2022 06:18:29 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220720061821epoutp048cb1f7c5e74632d8133d388a5a5bc15b~DdSe8XuO92524725247epoutp046
	for <linux-phy@lists.infradead.org>; Wed, 20 Jul 2022 06:18:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220720061821epoutp048cb1f7c5e74632d8133d388a5a5bc15b~DdSe8XuO92524725247epoutp046
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1658297901;
	bh=3r2pbWvirGByjB+v0MQEPuj3WAwHhq1rsruPh5OW+3I=;
	h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
	b=tRScmwnc3RsmnI9WiqsCNaML+bzCREY00i9aJP81URn5xQweklWuryzGnv6HYPIiM
	 D8LjouROTQJh2yQX390el9rTIrQgl2pp3WH21LAqpWic6c3/7U3wiutn84iefKtHGx
	 2iOkJEZfdHyAUCHkjDnaoTAJ6y6EVCXigXv0lJlA=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220720061820epcas2p25cfc6bf201ff238eda734135791994be~DdSdvZjyH2579125791epcas2p25;
	Wed, 20 Jul 2022 06:18:20 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.68]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4LnlrC3Qm4z4x9Q9; Wed, 20 Jul
	2022 06:18:19 +0000 (GMT)
X-AuditID: b6c32a47-5f7ff700000025aa-ba-62d79e2b3363
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	63.9E.09642.B2E97D26; Wed, 20 Jul 2022 15:18:19 +0900 (KST)
Mime-Version: 1.0
Subject: [PATCH v4 5/5] MAINTAINERS: Add Axis ARTPEC-8 PCIe PHY maintainers
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
	<yeeun119.kim@samsung.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
X-CPGS-Detection: blocking_info_exchange
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20220720061818epcms2p55e9dc4d71232cc37bef0fd1ff525ded5@epcms2p5>
Date: Wed, 20 Jul 2022 15:18:18 +0900
X-CMS-MailID: 20220720061818epcms2p55e9dc4d71232cc37bef0fd1ff525ded5
X-Sendblock-Type: AUTO_CONFIDENTIAL
X-CPGSPASS: Y
X-CPGSPASS: Y
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAJsWRmVeSWpSXmKPExsWy7bCmma72vOtJBp3nxS2WNGVYvDykaTH/
	yDlWi90zljNZzJx6htni+aFZzBafWlQtLjztYbN4Oesem0VDz29WiyNvPjJb7D++ksni8q45
	bBZn5x1ns5iw6huLxZvfL9gtzi3OtGjde4TdYuedE8wWv7b+YXIQ8Vgzbw2jx/V1AR4LNpV6
	bFrVyebx5Mp0Jo/NS+o9+rasYvQ4fmM7k8fnTXIBnFHZNhmpiSmpRQqpecn5KZl56bZK3sHx
	zvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlATykplCXmlAKFAhKLi5X07WyK8ktLUhUy8otL
	bJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjNWzDvBUtDDVfH78S+2BsZ7HF2MHBwS
	AiYSdzaFdjFycggJ7GCU+LbWGyTMKyAo8XeHMEhYWMBb4tPlZnaIEiWJHWvmMUPE9SWur+hm
	BbHZBHQl/i1+yQZiiwh8ZpW4vkewi5GLg1lgAaPE/t/7GEESEgK8EjPan7JA2NIS25dvZQTZ
	xSngJ/G2zQEirCHxY1kvM4QtKnFz9Vt2GPv9sflQY0QkWu+dhaoRlHjwczdUXEpiwZNDrBB2
	tcT+v7+ZIOwGRon++6kQ3+pL7LhuDBLmFfCVuDLzJNgYFgFViRk3lkCNcZG4vf4d2BhmAXmJ
	7W/nMIO0MgtoSqzfpQ8xRVniyC0WmJ8aNv5mR2czC/BJdBz+CxffMe8J1DFqEvNW7mSewKg8
	CxHMs5DsmoWwawEj8ypGsdSC4tz01GKjAmN4vCbn525iBCdtLfcdjDPeftA7xMjEwXiIUYKD
	WUmE92nh9SQh3pTEyqrUovz4otKc1OJDjKZAX05klhJNzgfmjbySeEMTSwMTMzNDcyNTA3Ml
	cV6vlA2JQgLpiSWp2ampBalFMH1MHJxSDUy+fuvKt95YuPDQ98kW27e/kxR4mGUZ3yod9+xw
	PffR6JiQiEXK+9OjWq5bi3ec1xV5N22BekrW2ieO7b3PHm3aU+TMIvWa6fe6vDfl1Uc2qoR5
	H3mivj9YYGpiUVCYxy8jQ4ZjC1JqbaMLp0r39y93753wlT9J5ne5gGrEy82XLu7jXW3714WL
	I99Lea9F+vOD+/baGhmePPi/+OHP4gkre/vs71dl9b0SKrM8uC1xmcjPZEeVoiePsueaXYt+
	ZqNryy5Z83/OzL9sM44tzJn0NGSPj9YWjx7PvGjRnonu65vvqCQyCF9cznXDYdOtIqYv7tY7
	kjy6lF9nFxRNDTWNspl55d6VzG6p2zptIUosxRmJhlrMRcWJADNwa7JjBAAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800
References: <20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
	<CGME20220720055108epcms2p563c65b3de6333ccbc68386aa2471a800@epcms2p5>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220719_231827_994455_BB2E0937 
X-CRM114-Status: GOOD (  15.46  )
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

Add maintainer for Axis ARTPEC-8 PCIe PHY. Add Jesper Nilsson
<jesper.nilsson@axis.com> and Lars Persson <lars.persson@axis.com>
as maintainer for these files. ARTPEC-8 is the SoC platform of Axis
Communications and PCIe PHY is designed based on Samsung PHY.

Signed-off-by: Wangseok Lee <wangseok.lee@samsung.com>
---
v3->v4 :
-Add axis,artpec8-pcie.yaml and axis,artpec8-pcie-ep.yaml
-Change file path to axis from artpec
---
 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 264e7a7..e4a0635 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1897,12 +1897,16 @@ M:	Jesper Nilsson <jesper.nilsson@axis.com>
 M:	Lars Persson <lars.persson@axis.com>
 L:	linux-arm-kernel@axis.com
 S:	Maintained
+F:	Documentation/devicetree/bindings/pci/axis,artpec8-pcie-ep.yaml
+F:	Documentation/devicetree/bindings/pci/axis,artpec8-pcie.yaml
+F:	Documentation/devicetree/bindings/phy/axis,artpec8-pcie-phy.yaml
 F:	Documentation/devicetree/bindings/pinctrl/axis,artpec6-pinctrl.txt
 F:	arch/arm/boot/dts/artpec6*
 F:	arch/arm/mach-artpec
 F:	drivers/clk/axis
 F:	drivers/crypto/axis
 F:	drivers/mmc/host/usdhi6rol0.c
+F:	drivers/phy/axis/phy-artpec*
 F:	drivers/pinctrl/pinctrl-artpec*
 
 ARM/ASPEED I2C DRIVER
-- 
2.9.5

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
