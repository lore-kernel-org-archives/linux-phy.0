Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A483C43334
	for <linux-phy@archiver.kernel.org>; Wed,  6 Jul 2022 01:51:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4BjKaGV0MH7agff69Qsr916yrigjciVMK8F9iTrjfYU=; b=hwRLuK9TAthf4s
	dpTqHMCefu4FszrrIcCkid17SOMSNwK4YC+cRn6cpYgqIHByfoVeR5UOWLMbZzIBVAK8e7YB0vrWU
	6mgIAJWMLcLqFI6m2AwNO6XvK+6ccx/Knj5AtWT/X3PVfQbFKjaL3BVCU0/QLxaGwdDw5cIwVXRrs
	0gf5QwjPo9YuOu5ikUGiyJUHIsNftYdm4KL6sSPXxWykEptsmIYqSwe+feRpA8iCrrAQq9Z4oqK9K
	lvKgxAICI8J1b2t2wq2jDkBumEOsilEF7tH8Il3tUVFUXm8+TGFupiXW8x4vOMidjnXnjf/jQiIFd
	1pmjP4ZOmjCzrm9r5KAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8uCo-005Gt7-Di; Wed, 06 Jul 2022 01:51:54 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8uCl-005GsG-V4
	for linux-phy@lists.infradead.org; Wed, 06 Jul 2022 01:51:53 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220706015142epoutp042adacaebb7d927e1b3407f989447f4d2~-GnraWHYq1393513935epoutp04D
	for <linux-phy@lists.infradead.org>; Wed,  6 Jul 2022 01:51:42 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220706015142epoutp042adacaebb7d927e1b3407f989447f4d2~-GnraWHYq1393513935epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657072302;
	bh=69WDHWt1URt36gBZWJ/4kmkQkf9MiyX8ANYmSfBpJck=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=BpTlbV1vss1u3CIgS2Lec5Vix9x4X9Qxfg9Gvim8unpri07pSKruQA/F90ZyY2oLv
	 o0u6WEq5U99D2jQniCBsxp7aQsHjTiEwLWZiwXRK8wZ433x5aRjaJ8ViS3IrBS7jCx
	 146p2tuOfUTpHCutOE2y9vTr92a2zEMp28IpmO2o=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTP id
	20220706015142epcas2p378df24e05353c6bc0e9faaa0bab2fddc~-GnqzrGcL2100721007epcas2p3k;
	Wed,  6 Jul 2022 01:51:42 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.36.101]) by
	epsnrtp2.localdomain (Postfix) with ESMTP id 4Ld2b15ZVPz4x9Q7; Wed,  6 Jul
	2022 01:51:41 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
	1B.90.09662.DAAE4C26; Wed,  6 Jul 2022 10:51:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20220706015140epcas2p217041d42e81cfdadd415271c7fe91d15~-GnpoFnJK2968629686epcas2p2g;
	Wed,  6 Jul 2022 01:51:40 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220706015140epsmtrp2eccf22d5f02b3e850c01f885a847e610~-GnpnOARA2282122821epsmtrp2p;
	Wed,  6 Jul 2022 01:51:40 +0000 (GMT)
X-AuditID: b6c32a48-9f7ff700000025be-a9-62c4eaade153
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	03.FC.08905.CAAE4C26; Wed,  6 Jul 2022 10:51:40 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220706015140epsmtip16aaaef3d62a7b9687dd9ee0cce2f09d8~-GnpaMMGC2676726767epsmtip1d;
	Wed,  6 Jul 2022 01:51:40 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>, "'Kishon Vijay
 Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'James E .
 J . Bottomley'" <jejb@linux.ibm.com>, "'Martin K . Petersen'"
	<martin.petersen@oracle.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	"'Bart Van Assche'" <bvanassche@acm.org>
Cc: <linux-phy@lists.infradead.org>, <linux-scsi@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-samsung-soc@vger.kernel.org>
In-Reply-To: <d23604f8-f6b3-0f2f-6ab0-418a6fb9549f@linaro.org>
Subject: RE: [PATCH 3/3] ufs: ufs-exynos: change ufs phy control sequence
Date: Wed, 6 Jul 2022 10:51:40 +0900
Message-ID: <002301d890da$efc75d00$cf561700$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKPbDrS+pUW8WXjub+LNM/Jc4lIEQFxfr+JAj/nB9wCgSJAFavRR6Ng
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrPJsWRmVeSWpSXmKPExsWy7bCmue7aV0eSDF5eEbJ4MG8bm8W0Dz+Z
	LRbd2MZkceFpD5vF3tdb2S02Pb7GajFh1TcWixnn9zFZdF/fwWax/Pg/Joudd04wO3B7XL7i
	7bFpVSebx51re9g8Jiw6wOixeUm9x8ent1g8+rasYvQ4fmM7k8fnTXIBnFHZNhmpiSmpRQqp
	ecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAxyoplCXmlAKFAhKLi5X0
	7WyK8ktLUhUy8otLbJVSC1JyCswL9IoTc4tL89L18lJLrAwNDIxMgQoTsjMWftvAXDCDo6L/
	2hOWBsaLbF2MnBwSAiYSDb/eMHcxcnEICexglLg48zAThPOJUeLkt0Yo5xujxMoLu5lgWpZc
	+MsOkdjLKLG6tRuq/wWjxIX2B2CD2QT0JV52bGMFSYgIXGCS+DbtOCOIwywwgVHi5fL7LF2M
	HBycAnYSHxfbgjQIC3hK7L81EayZRUBF4uvTRWA2r4ClxKnji1ggbEGJkzOfgNnMAvIS29/O
	YYY4SUHi59NlrCC2iICbxK3zu5khakQkZne2gV0nIXCDQ2Jz9ymoH1wk1vSfggaBsMSr41vY
	IWwpic/v9kLFiyWWzvrEBNHcwChxedsvqISxxKxn7YwgDzALaEqs36UPYkoIKEscuQV1G59E
	x2FQEIGEeSU62oQgGtUlDmyfzgJhy0p0z/nMOoFRaRaSz2Yh+WwWkg9mIexawMiyilEstaA4
	Nz212KjABB7dyfm5mxjBKVnLYwfj7Lcf9A4xMnEwHmKU4GBWEuFdNelgkhBvSmJlVWpRfnxR
	aU5q8SFGU2BYT2SWEk3OB2aFvJJ4QxNLAxMzM0NzI1MDcyVxXq+UDYlCAumJJanZqakFqUUw
	fUwcnFINTF3MIlu4eTI2Bqxa/mHqkiWeXgksnoUX5E/ERblbc03Qrp2tn6dyr00tWl9SoUzv
	ZmDEp5kxrzY1XhZJz/Xd8nnSt1+M4mKnzbWFuuZfWz03M/Wtgsfpk69mfTLMeuNcpWVwfpeD
	0Kb+HqtcL+t7/yPP/Lrxy51DU6uifvGOap/ws8773zNHXJle0fZ79aT8RH2/fbyrGb4dfPHw
	eYpKTlCRUJHls/IQK2fZLwEhW7w5jN63uf20Mnh4xVqzY7s4A8vh9texWZ6M90xE95z9sDdV
	4f5W+Z1v159d5RX51ufakuw6Z61r1af4Fpwr5+y+XujlIimWtjps5pwK7XDOd7Yiqpw7k6QY
	zywUNvJXYinOSDTUYi4qTgQAksszwFIEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrFIsWRmVeSWpSXmKPExsWy7bCSnO6aV0eSDD7uM7R4MG8bm8W0Dz+Z
	LRbd2MZkceFpD5vF3tdb2S02Pb7GajFh1TcWixnn9zFZdF/fwWax/Pg/Joudd04wO3B7XL7i
	7bFpVSebx51re9g8Jiw6wOixeUm9x8ent1g8+rasYvQ4fmM7k8fnTXIBnFFcNimpOZllqUX6
	dglcGQu/bWAumMFR0X/tCUsD40W2LkZODgkBE4klF/6ydzFycQgJ7GaUOLT+FQtEQlbi2bsd
	7BC2sMT9liOsEEXPGCUatlwAK2IT0Jd42bENLCEicIVJou/lKUYQh1lgCqPEzW3/mUCqhAS+
	M0r03qvpYuTg4BSwk/i42BYkLCzgKbH/1kSwM1gEVCS+Pl0EZvMKWEqcOr6IBcIWlDg58wmY
	zSygLdH7sJURwpaX2P52DjPEdQoSP58uYwWxRQTcJG6d380MUSMiMbuzjXkCo/AsJKNmIRk1
	C8moWUhaFjCyrGKUTC0ozk3PLTYsMMxLLdcrTswtLs1L10vOz93ECI5OLc0djNtXfdA7xMjE
	wXiIUYKDWUmEd9Wkg0lCvCmJlVWpRfnxRaU5qcWHGKU5WJTEeS90nYwXEkhPLEnNTk0tSC2C
	yTJxcEo1ME24oLrnU06s8fmnvUnnHq8TUitce+D2laPHlhjI3q1sUxZp7g75EZ2/TG6lVv5L
	uTWpm+8rfmO+JHE++dYbYUPFYBludQ3pxC4BxRVG7Gtvb/pZv5bHYuqXv3u4hKRz5eTOnJqo
	7mN36NHaecamp+fc/G+x38f73v1S4VWnu1NdbtvZrVs5sf28t1ruRs1oFpvzYbMrsl8su1fx
	5ND91Uuf8NQ9OdEn/ivJ41yQ2MGHKXPkJ2tXpKYsNVF+/d5sateC0M5tL9hT3nD+Zn/MnSvD
	nnpvC9fd/rJWG+Eore9hhy70b5r67uTh+zr9p6b0LL/gKfrrjvr0Cnf2DUe7jk2b9FDl7/+a
	hjm/9975J2ulxFKckWioxVxUnAgAfCLPNz0DAAA=
X-CMS-MailID: 20220706015140epcas2p217041d42e81cfdadd415271c7fe91d15
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619
References: <20220705065440.117864-1-chanho61.park@samsung.com>
	<CGME20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619@epcas2p3.samsung.com>
	<20220705065440.117864-4-chanho61.park@samsung.com>
	<d23604f8-f6b3-0f2f-6ab0-418a6fb9549f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_185152_399428_1E44F4A4 
X-CRM114-Status: GOOD (  17.60  )
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

> > Since commit 1599069a62c6 ("phy: core: Warn when phy_power_on is
> > called before phy_init"), below warning has been reported.
> >
> > phy_power_on was called before phy_init
> >
> > To address this, we need to remove phy_power_on from
> > exynos_ufs_phy_init and move it after phy_init. phy_power_off and
> > phy_exit are also necessary in exynos_ufs_remove.
> >
> > Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> > ---
> >  drivers/ufs/host/ufs-exynos.c | 13 +++++++------
> >  1 file changed, 7 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/ufs/host/ufs-exynos.c
> > b/drivers/ufs/host/ufs-exynos.c index f971569bafc7..5718296e2521
> > 100644
> > --- a/drivers/ufs/host/ufs-exynos.c
> > +++ b/drivers/ufs/host/ufs-exynos.c
> > @@ -908,6 +908,8 @@ static int exynos_ufs_phy_init(struct exynos_ufs
> *ufs)
> >  		goto out_exit_phy;
> >  	}
> >
> > +	phy_power_on(generic_phy);
> 
> 
> What about phy_power_on() return code?

I'll back the check next patch.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
