Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6715CA0EE4
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 17:58:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/l9bpoy9Vi+ZLg93JsKQOQVDR2xvoiuEGQSHImWrb8=; b=eCqz3STLBT0tHg
	7/8BCytrlFQL5Dz1VSCff0EJqjWnI1ED6Cx/6e6VBfFF9HyU6se6TAWY9J5DLNy6SV71qruyrtJyr
	r4rU1Go2Lz8ydDTjbxEMUPH2pJv1LFYrrqvRFuQhVFaVhcC31Xc1w6E+2xoXzqzmSTGUJNGVBGpp4
	s5OUHZ4cnaSx3doX8D/sm+pGVKN6UW+dj7ddWxWExQF4FFTCqmRYX+tvWgd6QyRpPJeeUZW1wtaV6
	XZ0Sx+HMStfa8vCWtK3KFh+O1x+3vzlfLxv1aIk+qd0CRGqiKVktNu+SOR/KhdOrPkp6+rzT2kzNU
	QAeGMcvfYcx0O+4QVPuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo47d-00000008GX8-1osY;
	Mon, 18 Aug 2025 17:58:17 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3VN-0000000876r-2Wue
	for linux-phy@lists.infradead.org;
	Mon, 18 Aug 2025 17:18:47 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250818171843epoutp04734370b9d0212a3fe04cf907cb68dc9c~c7BOnGdYp1187511875epoutp04E
	for <linux-phy@lists.infradead.org>; Mon, 18 Aug 2025 17:18:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250818171843epoutp04734370b9d0212a3fe04cf907cb68dc9c~c7BOnGdYp1187511875epoutp04E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1755537523;
	bh=DXam3b+H7XikahUHcOfNq3UHS4W6/E59lS1R/vF9/E8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=rG85scs/c0zeFc4WXF+++MTw7Jfxe2Xt8C+L7JQYTAYdJhjA4NQD3HaBCpS7AVHpD
	 kdNLyDMfS/Trvi2n+UkkTKZJI6PvpIZCz0HIa4J4YxyJuwIQaDFOmx2RUtw1Th8ZTy
	 420nxNjZ3tpIRAbz0h7hVPB4j9es6rEFzD9VQx24=
Received: from epsnrtp04.localdomain (unknown [182.195.42.156]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPS id
	20250818171842epcas5p4009ecff833c293e3066ff39d03bc290a~c7BNgSI6N0869708697epcas5p4R;
	Mon, 18 Aug 2025 17:18:42 +0000 (GMT)
Received: from epcas5p4.samsung.com (unknown [182.195.38.87]) by
	epsnrtp04.localdomain (Postfix) with ESMTP id 4c5KDx5WGSz6B9m5; Mon, 18 Aug
	2025 17:18:41 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20250818085434epcas5p23546464f6d2642c74d42db7b134d8aec~c0JCsYmhE2142121421epcas5p2S;
	Mon, 18 Aug 2025 08:54:34 +0000 (GMT)
Received: from FDSFTE462 (unknown [107.122.81.248]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20250818085431epsmtip2b7a1352fc6b7055557af8d1d093782bf~c0I--9NYD2484224842epsmtip2X;
	Mon, 18 Aug 2025 08:54:31 +0000 (GMT)
From: "Shradha Todi" <shradha.t@samsung.com>
To: "'Krzysztof Kozlowski'" <krzk@kernel.org>, <linux-pci@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
Cc: <mani@kernel.org>, <lpieralisi@kernel.org>, <kwilczynski@kernel.org>,
	<robh@kernel.org>, <bhelgaas@google.com>, <jingoohan1@gmail.com>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <alim.akhtar@samsung.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <arnd@arndb.de>,
	<m.szyprowski@samsung.com>, <jh80.chung@samsung.com>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <b22f9381-1835-463a-8daa-97835b159f78@kernel.org>
Subject: RE: [PATCH v3 12/12] arm64: dts: fsd: Add PCIe support for Tesla
 FSD SoC
Date: Mon, 18 Aug 2025 14:24:30 +0530
Message-ID: <000b01dc101d$b834db40$289e91c0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHWPHKmIG2WTsjb/5pkHKJ2GfeRPwIotln8AZEe0jECYiuDgLRC4i+g
Content-Language: en-in
X-CMS-MailID: 20250818085434epcas5p23546464f6d2642c74d42db7b134d8aec
X-Msg-Generator: CA
X-Sendblock-Type: REQ_APPROVE
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-541,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250811154746epcas5p261ba0c811f9dd8748f8f241b76be6525
References: <20250811154638.95732-1-shradha.t@samsung.com>
	<CGME20250811154746epcas5p261ba0c811f9dd8748f8f241b76be6525@epcas5p2.samsung.com>
	<20250811154638.95732-13-shradha.t@samsung.com>
	<b22f9381-1835-463a-8daa-97835b159f78@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_101845_973926_E0D1ECCA 
X-CRM114-Status: GOOD (  10.18  )
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

> > +&pcieep2 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie1_clkreq>, <&pcie1_wake>, <&pcie1_preset>,
> > +			<&pcie0_slot1>;
> > +};
> > +
> > +&pcierc0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> > +			 <&pcie0_slot0>;
> > +};
> > +
> > +&pcieep0 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake0>, <&pcie0_preset0>,
> > +			 <&pcie0_slot0>;
> > +};
> > +
> > +&pcierc1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> > +};
> > +
> > +&pcieep1 {
> > +	pinctrl-names = "default";
> > +	pinctrl-0 = <&pcie0_clkreq>, <&pcie0_wake1>, <&pcie0_preset0>;
> 
> 
> All these are pointless, because the node is disabled. The board level
> should be complete, so also supplies and enabling the device.
> 

I will enable required nodes. Had enabled while testing but missed to
add in patch. Though all nodes will not be enabled as it is a dual-mode
controller and cannot run as both RC and EP at the same time.

> Best regards,
> Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
