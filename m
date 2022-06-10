Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 796D6CCA47E
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 09:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w79gk6cP/7cLM2/6X3C49KSaWoW6A9f97FEvwnkWnDQ=; b=mMSS52xjvvxKxK
	O9W7EN0laa5VPeFyOVhrBZnOPSjP2F3iGO/ZuA1VFKsqQxIh7ZE2YGHudU62C3qQv7JK7Di9joS9E
	yH4AkNR9ldr1C/mGry6P32LkQOtT42OxqDTFql29oa/DO6ioM8T4Q/BdqlXLKXo6POo2Xhyk/6CzS
	TyCnk/E+CcFLzuZyVE98Z339vPSdGwFngF3vsEmsL30mrn0EbOwPo6hhcEPemsP9dH8b4orK4lptG
	PmnCPq2uuk70fjB5UaauOMJ6B1FxPMx8PchJ+8jbU1rvvbKzKys6IWaLtx3cvkkM2sZ/NLfDLMxK1
	iuP6t2XHA3RHGbZgtshw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzalG-0074Ws-OK; Fri, 10 Jun 2022 09:16:58 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzalC-0074Tq-TK
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 09:16:56 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220610091650epoutp031dc1a5d19678ba4b4bf612923a0c7f00~3N65siMX93131031310epoutp03X
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 09:16:50 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220610091650epoutp031dc1a5d19678ba4b4bf612923a0c7f00~3N65siMX93131031310epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654852610;
	bh=k5tMkeelZLPyfaRW8bgapAtgua4v9voINWLUnLSj8pI=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=Far8LaYRTECRv7YEJkvcCtWENrgGFVQifBCjW2WDu+ZDHTZNnO6MR36zrYKc2zkDf
	 qNqgSkHrgbgnKkFswBIy5WZlBJ23SmkFmlveO18riI8falVTX++/btC56Ws5VOrqeV
	 IjDaRhTBJJo/6mbI5zDCF8wIGH5YBTpOSpBJZwLw=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20220610091650epcas5p1a0dfbf63a82d9ca8f1e982e27cd3a4bd~3N65W5mO31464714647epcas5p1c;
	Fri, 10 Jun 2022 09:16:50 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LKFhb1yrsz4x9Q2; Fri, 10 Jun
	2022 09:16:47 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	28.35.09762.EFB03A26; Fri, 10 Jun 2022 18:16:46 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTPA id
	20220610091646epcas5p13276bf00cd849952e20eb5d3c71fe6c5~3N62KBSod1464714647epcas5p1W;
	Fri, 10 Jun 2022 09:16:46 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220610091646epsmtrp1ded6d360314519bf08d317e83f5dd260~3N62JXitp2671126711epsmtrp15;
	Fri, 10 Jun 2022 09:16:46 +0000 (GMT)
X-AuditID: b6c32a4b-1fdff70000002622-3e-62a30bfe725b
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	DB.77.08924.EFB03A26; Fri, 10 Jun 2022 18:16:46 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220610091645epsmtip2835d0058ec8a4924e61adf02e8466122~3N61OUrZH2685626856epsmtip2Z;
	Fri, 10 Jun 2022 09:16:45 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>,
	<linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<pankaj.dubey@samsung.com>
In-Reply-To: <000001d87ca2$3ac0f520$b042df60$@samsung.com>
Subject: RE: [PATCH -next] phy: samsung-ufs: fix NULL pointer dereference
Date: Fri, 10 Jun 2022 14:46:44 +0530
Message-ID: <000601d87caa$cede0150$6c9a03f0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJNUr2mveM3EJGNpu0kIdNV5dOukgIPmyx5AVPcAqqsQ5QiIA==
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupnk+LIzCtJLcpLzFFi42LZdlhTQ/cf9+Ikg3nTjSwu79e26HvxkNni
	8q45bBYTVn1jsVi09Qu7xc47J5gd2Dw2repk87hzbQ+bx+Yl9R59W1YxenzeJBfAGpVtk5Ga
	mJJapJCal5yfkpmXbqvkHRzvHG9qZmCoa2hpYa6kkJeYm2qr5OIToOuWmQO0X0mhLDGnFCgU
	kFhcrKRvZ1OUX1qSqpCRX1xiq5RakJJTYFKgV5yYW1yal66Xl1piZWhgYGQKVJiQnbH85gr2
	gr/cFZv3vGJvYOzj6mLk5JAQMJF4fPgAUxcjF4eQwG5GiRmXrzFDOJ8YJU7Ovg/lfGaUuHb6
	OxtMy8uvX6ASuxgltuxtZwVJCAm8ZJS4fLQGxGYT0JXYsbgNrEFEoEhi2ZaVYDazQKRE4/MN
	LCA2p4CVxPfTzewgtrCAp8SKd/fAbBYBVYmed3/AZvIKWEpManzGBmELSpyc+YQFYo62xLKF
	r5khDlKQ+Pl0GSvELieJ5kM7oGrEJV4ePcIOUdPKITH7PG8XIweQ7SLxv8cFIiws8er4FqgS
	KYmX/W3sECUeEov+SEGEMyTeLl/PCGHbSxy4MocFpIRZQFNi/S59iEV8Er2/nzBBdPJKdLQJ
	QVSrSjS/u8oCYUtLTOzuZoUZfmtu5ARGxVlIvpqF5KtZSK6fhbBrASPLKkbJ1ILi3PTUYtMC
	47zUcnhcJ+fnbmIEp0wt7x2Mjx580DvEyMTBeIhRgoNZSYQ34PaiJCHelMTKqtSi/Pii0pzU
	4kOMpsCgnsgsJZqcD0zaeSXxhiaWBiZmZmYmlsZmhkrivAL/G5OEBNITS1KzU1MLUotg+pg4
	OKUamKQNQn/v+JX8IO7NxO0ZbSt8jAo2cpXeYX/2MOj1mzWWhdzJR/5MYbjg8/LZYbP94def
	nmDjW1cenfJ9rUHo7HfP245HF7VVKWmfYrZSeXh7pvtG8eqJjRq8Rz8I6ldlTV2sFfnTrMbR
	JEP62RKlNY63J3xiD3t9X/P13LYjTpGu3sZz25N5HxmyRR6a5JD4z8mjrVA37HS0WvbTz8on
	LgjzPjgV8fztj3zTniucZi8KVrH3bLET2t14aOvBvri3akuEDP3Yg85eWVD/zeezeh2j0KG+
	/o6DtmvSVZNXp8RUBf31S859bxMr9dXiQF/nxiuC824z/VvcvL2fPafUUuv57ukGh+uevRBu
	fdRXrsRSnJFoqMVcVJwIAL0aGNoiBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrLLMWRmVeSWpSXmKPExsWy7bCSvO4/7sVJBhePyFlc3q9t0ffiIbPF
	5V1z2CwmrPrGYrFo6xd2i513TjA7sHlsWtXJ5nHn2h42j81L6j36tqxi9Pi8SS6ANYrLJiU1
	J7MstUjfLoErY+GcuUwFZ7gr+i8/Ym9gvM/ZxcjJISFgIvHy6xfmLkYuDiGBHYwS71p2MUEk
	pCWub5zADmELS6z895wdoug5o0TLnb+sIAk2AV2JHYvb2EBsEYESif9rf4E1MAtESyz6vYUF
	omEPo0TDid1gCU4BK4nvp5vBbGEBT4kV7+6B2SwCqhI97/6ADeUVsJSY1PiMDcIWlDg58wkL
	xFBtid6HrYww9rKFr5khrlOQ+Pl0GSvEEU4SzYd2QNWLS7w8eoR9AqPwLCSjZiEZNQvJqFlI
	WhYwsqxilEwtKM5Nzy02LDDKSy3XK07MLS7NS9dLzs/dxAiOIS2tHYx7Vn3QO8TIxMF4iFGC
	g1lJhDfg9qIkId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwXuk7GCwmkJ5akZqemFqQWwWSZODil
	Gpg2MKbG/22ZUFjydmbVLJbn0Zctz9443K119MO0F6+8/HqOPv2zKythfcP8J+oCZguW+CSc
	VJNcL/Al4A1Xy/+dr2SPmdYkX7imXHq+XT08+N//HkHxf9P9fQ0/JS7/cT757cxpmy7tnPs1
	Iu624OZXB8w/H2qeVeNuxmO9a9n/J++cKj9q1sdy9fytaVNeVOsQeC5FwvtPUW+M/GS959Pv
	hX+7ui2wdPfDHdOMzp47zOXeEh6v8t9rk+LnENXmAqvn4YUpGjbiidU9bn7XtU+s2jT9vPSS
	7PeX35kc5r0W8Iypaf485VnZ5woOblieXHe44/gnwUn1PCs6Ylr/XZzDsdBMaXf2G/19F5/d
	Wjz7rxJLcUaioRZzUXEiACtGk3IQAwAA
X-CMS-MailID: 20220610091646epcas5p13276bf00cd849952e20eb5d3c71fe6c5
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610070811epcas5p3c62ef9ad9c82092deac59ff9be896677
References: <CGME20220610070811epcas5p3c62ef9ad9c82092deac59ff9be896677@epcas5p3.samsung.com>
	<20220610070547.71193-1-alim.akhtar@samsung.com>
	<000001d87ca2$3ac0f520$b042df60$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_021655_333327_A7D7A5A2 
X-CRM114-Status: UNSURE (   9.41  )
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



>-----Original Message-----
>From: Chanho Park [mailto:chanho61.park@samsung.com]
>Sent: Friday, June 10, 2022 1:45 PM
>To: 'Alim Akhtar' <alim.akhtar@samsung.com>; linux-kernel@vger.kernel.org;
>linux-phy@lists.infradead.org
>Cc: krzysztof.kozlowski+dt@linaro.org; vkoul@kernel.org;
>pankaj.dubey@samsung.com
>Subject: RE: [PATCH -next] phy: samsung-ufs: fix NULL pointer dereference
>
>> Subject: [PATCH -next] phy: samsung-ufs: fix NULL pointer dereference
>>
>> commit f86c1d0a58b1f63a ("phy: samsung: ufs: remove drvdata from
>> struct
>> samsung_ufs_phy")
>>
>> removes _drvdata_ initialization which resulting in NULL pointer
>> dereferencing in samsung_ufs_phy_wait_for_lock_acq(). Fix this by
>> initializing drvdata.
>>
>> The said commit also duplicate "has_symbol_clk" both in drvdata struct
>> and in samsung_ufs_phy struct, let's go back and use only one
>"has_symbol_clk".
>>
>> Fixes: f86c1d0a58b1 phy: samsung: ufs: remove drvdata from struct
>> samsung_ufs_phy
>
>This might be conflicted when you apply your patch.
>https://lore.kernel.org/linux-phy/20220610072924.12362-3-
>alim.akhtar@samsung.com/T/#u
>
>When I created my patch, it was not existing so my previous patch make
>sense.
>If you get back drvdata for your patch, please drop this "fixes tag + patch" and
>put this in your patchset.
>
Thanks Chanho
Because of the merged conflict this got messed up. Will correct it.

>Best Regards,
>Chanho Park



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
