Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3F5CCAC5B0
	for <linux-phy@archiver.kernel.org>; Mon, 29 Sep 2025 06:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LGEeyl+QisrME1wLF4J69r7ae+C+0qoLMsg5lS3H37A=; b=hTPkqN03Bqrr5M
	17qzdiu23bHdsTMR7e2r30yslS267zTSNw081v7rco+PHkivETjAYe5qi5+F2AlfCSLHqxXgkDB21
	s5KYwlziamoZ5TFA8Lqx5HjN9145R87Hid3LkwtxphOOjy6MAiSCLnU3mvFHN/ehNXG3mUR7Npb1w
	RPl/Vsdm0L8Z+bfSbRNrBo+CXgQ+S4v1GuJC4vn6XoooF4GzTr+k4q7qvIau0TtjAt5deDiPs2u9M
	HmoEh1mzUY2PUo07KS8hw3eib5+krdRGdmFWyw6RarPHi3Xlj5/jRWyh5YPRSr8x2Ah4AjcBMhR1L
	47kkcoMDpkHA5xBOEdQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37hE-00000001Wjk-23k2;
	Mon, 29 Sep 2025 06:49:16 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v37hB-00000001WiB-2zfy
	for linux-phy@lists.infradead.org;
	Mon, 29 Sep 2025 06:49:15 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20250929064911epoutp015f52451adfb54cf405fce7cca9e93c94~prhj2EyKu2030020300epoutp01Q
	for <linux-phy@lists.infradead.org>; Mon, 29 Sep 2025 06:49:11 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20250929064911epoutp015f52451adfb54cf405fce7cca9e93c94~prhj2EyKu2030020300epoutp01Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759128551;
	bh=uW/biS9+F79MB+CEqJ9ljHsHmR77xOXVQzzomERvLW4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=MPrC84OFDqt7d3aP+YosXCmgVdD6JBYu/kycQG+DiK1eqtnCzRGBhb0qLcuEApmNa
	 EoVd4+mtKlHxzUKwzPwpL3BJlF8B/4JTgkklMM66EfxBR7Vp5amEIyfFwnqvu1M+cm
	 ED825+mozegBa9zCeVUiY90AMWxn3Y4itj48RFjc=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPS id
	20250929064911epcas5p3258155eb119b44766be8084abd31a1ac~prhjMtLud1689416894epcas5p3Z;
	Mon, 29 Sep 2025 06:49:11 +0000 (GMT)
Received: from epcas5p2.samsung.com (unknown [182.195.38.90]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4cZsH95hMFz6B9mD; Mon, 29 Sep
	2025 06:49:09 +0000 (GMT)
Received: from epsmtip1.samsung.com (unknown [182.195.34.30]) by
	epcas5p3.samsung.com (KnoxPortal) with ESMTPA id
	20250929064909epcas5p3d66043c4ebddff823a0ff065dc94f005~prhhf_UNC1007110071epcas5p3_;
	Mon, 29 Sep 2025 06:49:09 +0000 (GMT)
Received: from INBRO002756 (unknown [107.122.3.168]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20250929064906epsmtip18de76634ab37e3abc408d75247b35fdf~prheozuOU1376013760epsmtip1G;
	Mon, 29 Sep 2025 06:49:05 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Pritam Manohar Sutar'" <pritam.sutar@samsung.com>, <vkoul@kernel.org>,
	<kishon@kernel.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <andre.draszik@linaro.org>,
	<peter.griffin@linaro.org>, <kauschluss@disroot.org>,
	<ivo.ivanov.ivanov1@gmail.com>, <igor.belwon@mentallysanemainliners.org>,
	<m.szyprowski@samsung.com>, <s.nawrocki@samsung.com>
Cc: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-samsung-soc@vger.kernel.org>, <rosa.pila@samsung.com>,
	<dev.tailor@samsung.com>, <faraz.ata@samsung.com>,
	<muhammed.ali@samsung.com>, <selvarasu.g@samsung.com>
In-Reply-To: <20250903073827.3015662-6-pritam.sutar@samsung.com>
Subject: RE: [PATCH v8 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
 ExynosAutov920 combo ssphy
Date: Mon, 29 Sep 2025 12:19:04 +0530
Message-ID: <001701dc310d$27fead10$77fc0730$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQIRMOVGdWg5oRjNsRBgEjzIeIB8IgLXAGWnAetyVdK0GaSqAA==
Content-Language: en-us
X-CMS-MailID: 20250929064909epcas5p3d66043c4ebddff823a0ff065dc94f005
X-Msg-Generator: CA
CMS-TYPE: 105P
cpgsPolicy: CPGSC10-542,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35
References: <20250903073827.3015662-1-pritam.sutar@samsung.com>
	<CGME20250903072949epcas5p11a1e474fad83ff3036be2c443ed5bc35@epcas5p1.samsung.com>
	<20250903073827.3015662-6-pritam.sutar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250928_234914_084884_F3AFB66D 
X-CRM114-Status: GOOD (  11.88  )
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

Hi pritam

> -----Original Message-----
> From: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> Sent: Wednesday, September 3, 2025 1:08 PM
> To: vkoul@kernel.org; kishon@kernel.org; robh@kernel.org;
> krzk+dt@kernel.org; conor+dt@kernel.org; alim.akhtar@samsung.com;
> andre.draszik@linaro.org; peter.griffin@linaro.org; kauschluss@disroot.org;
> ivo.ivanov.ivanov1@gmail.com; igor.belwon@mentallysanemainliners.org;
> m.szyprowski@samsung.com; s.nawrocki@samsung.com;
> pritam.sutar@samsung.com
> Cc: linux-phy@lists.infradead.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> samsung-soc@vger.kernel.org; rosa.pila@samsung.com;
> dev.tailor@samsung.com; faraz.ata@samsung.com;
> muhammed.ali@samsung.com; selvarasu.g@samsung.com
> Subject: [PATCH v8 5/6] dt-bindings: phy: samsung,usb3-drd-phy: add
> ExynosAutov920 combo ssphy
> 
> The USBDRD31 5nm controller consists of Synopsys USB20 femptoPhy and
> USB31 SSP+ combophy. Document support for the USB31 SSP+ phy found on
> combophy of the ExynosAutov920 SoC.
> 
> Signed-off-by: Pritam Manohar Sutar <pritam.sutar@samsung.com>
> ---
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
