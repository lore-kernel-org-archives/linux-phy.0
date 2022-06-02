Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31DE5C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 02:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZSlimhcNVCrKrshG6TAePnSvOiozwGa/exKYLtueKI=; b=YnXjHhrH+JLJTZ
	OhTwD1SikVrm29cQ0+E272r+nmxu0mQ5Yf7zGqHerul0hIRNH6fR8HOfIifFtMTbU5ZxUxOPdvR2U
	t0cbv1FILCh8W+F1nsLxaAsCaOLf/sA36fMoySWMqYyeTTEssr93UubHgCodWu63kg3vyuaAXtiA0
	CUW5yKDXeOcMdD6J3HZkOrrctU8XBcs35ubBCY3AzF2xAprarcXtgINZbL2hxAO9T6nSp6kpTJhxP
	AAR0Ll4JTLsMMH51Fpek/48RSpTOHXO0Qqc/oLB/VdipXN+wylxcEFwJN/KAuXTLiVuS67o4x6EFY
	6/62WG6SsLi5LCcZbsTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwaR8-0017Ae-Jc; Thu, 02 Jun 2022 02:19:46 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwaQw-001779-7N
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 02:19:35 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220602021931epoutp04bd0a32e3a483bd9da25c759e447939ef~0rEQnwlrn1968919689epoutp04i
	for <linux-phy@lists.infradead.org>; Thu,  2 Jun 2022 02:19:31 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220602021931epoutp04bd0a32e3a483bd9da25c759e447939ef~0rEQnwlrn1968919689epoutp04i
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654136371;
	bh=5UbZAZ4/vw4V4fY9/fRNGPqRaCZN1GAs3RApsOMRXZA=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=JIeo9IN6tQgGRF0dszAIoGcMgkC+/ALhCFDMc7SRQfZzXt4TfFH/6eRzazAuU5dyr
	 NZVoW9LbknmrwJvFbwxIjQF3VsvkKa6LurSY6K/Ayxd8D+KOZKjWXISfu6pmyXALYJ
	 1QF87K+R5VaEgIjS9h9dzhtodtqGWF7MTStJo70k=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220602021931epcas2p3844019fbe9cafa10dfb14dddafafbcca~0rEP8PU4J2755627556epcas2p3o;
	Thu,  2 Jun 2022 02:19:31 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.36.97]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LD8pn1SS8z4x9QF; Thu,  2 Jun
	2022 02:19:29 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
	epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	3C.08.09764.F2E18926; Thu,  2 Jun 2022 11:19:27 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
	20220602021927epcas2p4e3cedc5b88489657a6d1b8f0c1ef1799~0rEMIYFmJ0247802478epcas2p45;
	Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220602021926epsmtrp19327f6d536cbfae9d23ec659dd054a24~0rEL-TMq52964629646epsmtrp1M;
	Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
X-AuditID: b6c32a46-f8bff70000002624-e9-62981e2fa473
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	05.8A.11276.E2E18926; Thu,  2 Jun 2022 11:19:26 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220602021926epsmtip2dada802b8d2c98ba78e2762e6e64390b~0rELzXjeu1754317543epsmtip2h;
	Thu,  2 Jun 2022 02:19:26 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>, "'Kishon Vijay
 Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Alim
 Akhtar'" <alim.akhtar@samsung.com>, "'Rob Herring'" <robh+dt@kernel.org>,
	"'Krzysztof	Kozlowski'" <krzysztof.kozlowski+dt@linaro.org>
Cc: <devicetree@vger.kernel.org>, <linux-phy@lists.infradead.org>,
	<linux-arm-kernel@lists.infradead.org>
In-Reply-To: <5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
Subject: RE: [PATCH 3/4] arm64: dts: exynosautov9: add secondary ufs devices
Date: Thu, 2 Jun 2022 11:19:26 +0900
Message-ID: <000201d87627$2ebeadc0$8c3c0940$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFkEPmYnHf0xjkGXTTWfn5L9kzmHgHnKlaoAXr+f0UB+sAuR635RKTA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrOJsWRmVeSWpSXmKPExsWy7bCmha6+3Iwkg/UfpSwezNvGZjH/yDlW
	iwtPe9gs+l48ZLbY+3oru8Wmx9dYLSas+sZi0br3CLvFzjsnmB04PTat6mTzuHNtD5vH5iX1
	Hn1bVjF6HL+xncnj8ya5ALaobJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8
	xNxUWyUXnwBdt8wcoKOUFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQXmBXrFibnF
	pXnpenmpJVaGBgZGpkCFCdkZN+/MYio4ylXxq2k1SwNjB0cXIyeHhICJRN+hTWxdjFwcQgI7
	GCVeNH5hhHA+MUocnP2KBcL5xihx8uVjVpiW9y/b2SESexklTu+bxwzhvGCUuN62nBmkik1A
	X+JlxzZWkISIwHwmiaedV5lAEswC2RKvWhexg9icAnYS55sPsoHYwgI+Ek1Pp4OtYBFQkbiz
	ug3M5hWwlPi0YgEThC0ocXLmExaIOdoSyxa+ZoY4SUHi59NlYPUiAm4SJ//vZIeoEZGY3dkG
	dp2EwEIOiXVrp7BBNLhILD38hQXCFpZ4dXwLO4QtJfGyvw3KLpZYOusTE0RzA6PE5W2/oJqN
	JWY9awcGEwfQBk2J9bv0QUwJAWWJI7egbuOT6Dj8lx0izCvR0SYE0agucWD7dKitshLdcz6z
	TmBUmoXks1lIPpuF5INZCLsWMLKsYhRLLSjOTU8tNiowgkd3cn7uJkZwitVy28E45e0HvUOM
	TByMhxglOJiVRHhLdk1NEuJNSaysSi3Kjy8qzUktPsRoCgzricxSosn5wCSfVxJvaGJpYGJm
	ZmhuZGpgriTO65WyIVFIID2xJDU7NbUgtQimj4mDU6qBySnx6S+DOestZnZ1hdckqoo37yrW
	+DPnc/b9TW3pc8zMza91frlbvbCCsY+jP0a81oMv+uKsmTcPy9zee+BNm4ZK9/9b1v8PZElI
	PXzyh+9xUszLUCOfb/6zmY2tRIULA949zfF58TiCJfzMj7qPa4z9RE/cNoxRs8wrdLi3YQt3
	w2eHrihpdZ7pk3uuqrz/nZ385dziuezKv6bffHCoav362zN99jLn6M7nnb1oQsSrJcFPNpxU
	tex+kad63+GceP6BbYYb9zTta3mdonVB5+H0dwu7fK+8NLgryt75ZJdRMve+S1cSnT1rLv3h
	suFcN6vsgnjOgzd3Ur64Tnqu8NFiF1/OFb+/bYu/3f9n8U6JpTgj0VCLuag4EQCIqo3FOgQA
	AA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprMIsWRmVeSWpSXmKPExsWy7bCSvK6e3Iwkg6mTDS0ezNvGZjH/yDlW
	iwtPe9gs+l48ZLbY+3oru8Wmx9dYLSas+sZi0br3CLvFzjsnmB04PTat6mTzuHNtD5vH5iX1
	Hn1bVjF6HL+xncnj8ya5ALYoLpuU1JzMstQifbsEroyJS/+wFHRwVVz+Np+5gfEkexcjJ4eE
	gInE+5ftQDYXh5DAbkaJ3l1LWSESshLP3u2AKhKWuN9yhBWi6BmjxKxvV1hAEmwC+hIvO7aB
	JUQEFjNJ9J84ywaSYBbIlfjx9gvU2K+MEm9ntjKBJDgF7CTONx8EKxIW8JFoejodbB2LgIrE
	ndVtYDavgKXEpxULmCBsQYmTM5+wQAzVlnh68ymcvWzha2aI8xQkfj5dBtYrIuAmcfL/TnaI
	GhGJ2Z1tzBMYhWchGTULyahZSEbNQtKygJFlFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+
	7iZGcLxpae5g3L7qg94hRiYOxkOMEhzMSiK8JbumJgnxpiRWVqUW5ccXleakFh9ilOZgURLn
	vdB1Ml5IID2xJDU7NbUgtQgmy8TBKdXAtNtJ9r5/79vw+wvz511YEZT0yErtp9miCzzT9neo
	Gj2ep8aS6yqVnXCO7fKHfBOFVfunF34x5bvbYPRbSVXseYGnYY6jSHHNnZb9B5xMvy2RcLh2
	QEbIL9Pzm1n/EY2H53rFRWs5TaIu7f5jxRfeKnqV5wvHhnfMrTt25CV90dgof9EiiYMpfple
	RaJ0w62U+FnrZlbzrw6tKgyVcb4rfIRhX0ff9y9ia4zbONZPtQi40Oez9d+BW+6nYtfffiQg
	3RPx9N8sn1yphozw4vWiIdqyfUtsfig0S50W1NR75S/y8tfqSI4JzEJFWoozFCemSzzwcLsp
	c+LETrs707kdtha0zi5QXT2fce2VTfeUWIozEg21mIuKEwGAb1EzJgMAAA==
X-CMS-MailID: 20220602021927epcas2p4e3cedc5b88489657a6d1b8f0c1ef1799
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c
References: <20220531121913.48722-1-chanho61.park@samsung.com>
	<CGME20220531121922epcas2p428c51f13e61e06477d96ab4aa6d1377c@epcas2p4.samsung.com>
	<20220531121913.48722-4-chanho61.park@samsung.com>
	<5fc17d02-d28c-2ad2-8a8f-dfeaf6712d6f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_191934_709909_627DB420 
X-CRM114-Status: UNSURE (   9.88  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

> > +		ufs_1_phy: ufs0-phy@17f04000 {
> 
> Node name: "phy" (or ufs-phy). The previous node also could be corrected.

phy@17f04000 looks better. I'll change this and make an additional patch to correct previous ufs0 nodes.

> 
> > +			compatible = "samsung,exynosautov9-ufs-phy";
> > +			reg = <0x17f04000 0xc00>;
> > +			reg-names = "phy-pma";
> > +			samsung,pmu-syscon = <&pmu_system_controller 0x72c>;
> > +			#phy-cells = <0>;
> > +			clocks = <&xtcxo>;
> > +			clock-names = "ref_clk";
> > +			status = "disabled";
> > +		};
> > +
> >  		ufs_0: ufs0@17e00000 {
> >  			compatible ="samsung,exynosautov9-ufs";
> >
> > @@ -400,6 +411,27 @@ ufs_0: ufs0@17e00000 {
> >  			samsung,sysreg = <&syscon_fsys2 0x710>;
> >  			status = "disabled";
> >  		};
> > +
> > +		ufs_1: ufs0@17f00000 {
> > +			compatible ="samsung,exynosautov9-ufs";
> > +
> > +			reg = <0x17f00000 0x100>,  /* 0: HCI standard */
> > +				<0x17f01100 0x410>,  /* 1: Vendor-specific */
> > +				<0x17f80000 0x8000>,  /* 2: UNIPRO */
> > +				<0x17de0000 0x2200>;  /* 3: UFS protector */
> 
> Align these please with first <> entry.

I'll apply this on the next patchset and fix the same on ufs0 node as well.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
