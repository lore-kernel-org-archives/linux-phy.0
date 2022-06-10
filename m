Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB9FC433EF
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 10:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rt++R01ShbXlN3SSz/kAVYNAblw12jHwFZIq7r1ohMI=; b=q6dyH2NOlwHgBm
	FxjM0GDGpAyUp+tRol7TSH9f6Cs2DNoCSehQeo/Flk8zD6xUkmX+tZOFQH6QcLpnVMRHJrRgGM3l/
	f/xlNKmc1gGjX7nGi0RVsp73OFV6Yhpm76zgro1P1n9D/0KQL/QZunqTMtJ6zROoLE2cJjx+lQq8G
	EFYE6eY6HTTTgUQMu6Ov718O8aMPIIg3hESEDkotjwKDWhbkgQQBGEq374V9LU07UOKp2dfigeNDT
	out+qPbUvSRczQgMH3V6ZQNvniWsqySiIKUyPUWZAL5dUKXg2SLkTrOz+TudqDpA4ErHyoB7Y/qka
	8HalbeCpqIeBzNFUs/Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzcBm-007gPw-W0; Fri, 10 Jun 2022 10:48:26 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzc9f-007fQT-IC
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 10:46:18 +0000
Received: from epcas5p4.samsung.com (unknown [182.195.41.42])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220610104613epoutp015d3b438484799811c2da4784f50fc7a7~3PI8zI7_51568715687epoutp01Y
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 10:46:13 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220610104613epoutp015d3b438484799811c2da4784f50fc7a7~3PI8zI7_51568715687epoutp01Y
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654857973;
	bh=JjjDoYLGWbu8TaEoBgHU4AXeYiA6gWqvTYFFiQAcED4=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=VToqJY2FO8N06r7stmijYZKdNOpsRwHPslvk0dAH3uVBFRuX8WSJoFXdzsntvQXLR
	 Fbsbb4EtZWPKkGQqW18m5Nt4Q0NUB7S7dz5y1vV4Mk81Lx5haQ541t1PjOk8RX2mgK
	 oslK3/CuJ0rC0X/jot6bn6CrdrfXC9uUYA8zpanI=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220610104613epcas5p40c0d10370a9c6548be4f0e8ee695e5ab~3PI8RmMub2603826038epcas5p4S;
	Fri, 10 Jun 2022 10:46:13 +0000 (GMT)
Received: from epsmges5p2new.samsung.com (unknown [182.195.38.174]) by
	epsnrtp3.localdomain (Postfix) with ESMTP id 4LKHgk10l4z4x9Pt; Fri, 10 Jun
	2022 10:46:10 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
	epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	8B.29.09827.1F023A26; Fri, 10 Jun 2022 19:46:09 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTPA id
	20220610104609epcas5p2f39e6bf8473ead4122fd129eccc421fb~3PI4lfeiV1646416464epcas5p2w;
	Fri, 10 Jun 2022 10:46:09 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220610104609epsmtrp1185c380fc0f764e07dcffeae4cd74bc3~3PI4kezwE1449814498epsmtrp1c;
	Fri, 10 Jun 2022 10:46:09 +0000 (GMT)
X-AuditID: b6c32a4a-b3bff70000002663-43-62a320f186b1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	67.D0.11276.1F023A26; Fri, 10 Jun 2022 19:46:09 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220610104607epsmtip2fec9f076d771feaa91a2dd8cce9a6a4c~3PI2r0LIM1544115441epsmtip2J;
	Fri, 10 Jun 2022 10:46:07 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Chanho Park'" <chanho61.park@samsung.com>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <devicetree@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <martin.petersen@oracle.com>,
	<pankaj.dubey@samsung.com>, "'Bharat	Uppal'" <bharat.uppal@samsung.com>
In-Reply-To: <004301d87ca5$296850e0$7c38f2a0$@samsung.com>
Subject: RE: [PATCH v3 6/6] ufs: host: ufs-exynos: add support for fsd ufs
 hci
Date: Fri, 10 Jun 2022 16:16:06 +0530
Message-ID: <002c01d87cb7$4b443410$e1cc9c30$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKFtFf96RVHhaZQrIgSilU6FuDAtQI8yMISAWhEIA4CClCQEavAirhA
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrBJsWRmVeSWpSXmKPExsWy7bCmhu5HhcVJBp09NhYvf15ls7j28gK7
	xbQPP5ktLu/Xtph/5ByrRd+Lh8wWmx5fY7W4vGsOm8WEVd9YLLqv72CzWH78H5PFoq1f2C1a
	9x5ht9h55wSzA5/H5SveHptWdbJ53Lm2h81j85J6j49Pb7F49G1ZxejxeZOcR/uBbqYAjqhs
	m4zUxJTUIoXUvOT8lMy8dFsl7+B453hTMwNDXUNLC3MlhbzE3FRbJRefAF23zBygq5UUyhJz
	SoFCAYnFxUr6djZF+aUlqQoZ+cUltkqpBSk5BSYFesWJucWleel6eaklVoYGBkamQIUJ2Rlf
	5/AV/OKr+Pp8LWMD4y+eLkZODgkBE4lDrxYydTFycQgJ7GaU2Lz2CxuE84lR4teVx1DON0aJ
	xUdnMcO03Dh8nB0isZdR4sjxfkYI5yWjxPlNMxhBqtgEdCV2LG4DaxcR2MUoMfttGzOIwyzQ
	ySTRfeQCE0gVp4CVxN8nIFWcHMICARLnv25j7WLk4GARUJVYezIFJMwrYCnxdN55dghbUOLk
	zCcsIDazgLbEsoWvoU5SkPj5dBkriC0i4CbxceJyqBpxiZdHj4CdKiHwhEPi2s4bUA0uEs+2
	/WGEsIUlXh3fwg5hS0m87G9jB7lBQsBDYtEfKYhwhsTb5euhyu0lDlyZwwJSwiygKbF+lz7E
	Kj6J3t9PmCA6eSU62oQgqlUlmt9dZYGwpSUmdnezwgw/cS5uAqPiLCR/zULy1ywk989C2LWA
	kWUVo2RqQXFuemqxaYFRXmo5PLqT83M3MYKTtJbXDsaHDz7oHWJk4mA8xCjBwawkwhtwe1GS
	EG9KYmVValF+fFFpTmrxIUZTYFhPZJYSTc4H5om8knhDE0sDEzMzMxNLYzNDJXFegf+NSUIC
	6YklqdmpqQWpRTB9TBycUg1MQlVPr637+Hu1aktQSJjmg+3fogqDo97JvtmacU/NoMmMYen+
	tdc74ie/ap46oXNWw9k78Vv9fV95PN3ymvvKjEkLWwsFuw7d3VsR2G9e4Gexzc5D8KtzgVFO
	SssKjh7v3T8UevU95t2YqXLx2YIHGg6q/M5nM/riPZaZ7jXs/5eTL75Q4vilT1osgY9WFspO
	6FjyMck/qyXRfN3ekCP6dyc+zr+19KqU5uu/xYct3c/W+ai+OjDr9b4lHJPun07duOjn75nm
	QsmLV4rd9Xy4Papf8s1U9Qee260XPg7t7Ljgt3dyJ3MBu+9ts5sHchs+Be9bfuXO4VltoeLS
	Gy9p2Hjs+/fxq4lOXmFhgHiOrRJLcUaioRZzUXEiAM25lHFbBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMIsWRmVeSWpSXmKPExsWy7bCSvO5HhcVJBuebeSxe/rzKZnHt5QV2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFFc
	NimpOZllqUX6dglcGd33bzIVbOGruND/lb2BcQtPFyMnh4SAicSNw8fZuxi5OIQEdjNKfDrw
	iwUiIS1xfeMEdghbWGLlv+dgtpDAc0aJbZP8QGw2AV2JHYvb2ECaRQT2MUqcfnGNBcRhFpjM
	JDGp4SsLxNi3jBL33l4EG8spYCXx9wlICyeHsICfxKn5LYxdjBwcLAKqEmtPpoCEeQUsJZ7O
	O88OYQtKnJz5BKyVWUBbovdhKyOMvWzha2aI6xQkfj5dxgpiiwi4SXycuByqXlzi5dEj7BMY
	hWchGTULyahZSEbNQtKygJFlFaNkakFxbnpusWGBYV5quV5xYm5xaV66XnJ+7iZGcLxqae5g
	3L7qg94hRiYOxkOMEhzMSiK8AbcXJQnxpiRWVqUW5ccXleakFh9ilOZgURLnvdB1Ml5IID2x
	JDU7NbUgtQgmy8TBKdXAFP+FJ0jf56z9WdmzR3Vf7O7bM18yaKZc3f7P/CUS7TMnBq34w250
	jOvOb+1lZunxs0O5aviUn8+YbPHTZanzkac/mI7xWlxKLZaYmR/9esbWcwfkDyvsWWhQLS67
	QZ31q6r/x5OnvpfqHn59eON2k6dvpwofOZYg+8K6W9zb83l3o7Uk39ZnmYm3uX7JNK99Y+T1
	7OHGFVtTfz9d9mbZWUPPqfcW6RfXOmoHRlwT/fh9l2XqxLmHXa1/RjwVduqeFrXpMBfXAw/r
	ixdvF7OYTOievO+Km1eXs+PaqRd0HVK/KT/2eDhTcr/oyklM1za/VwjZsOSMfPJhn69uBt++
	KOosZeMzV7QQFOPJudTSOlmJpTgj0VCLuag4EQDZq8w9RgMAAA==
X-CMS-MailID: 20220610104609epcas5p2f39e6bf8473ead4122fd129eccc421fb
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610073221epcas5p2307590d637c53e2a94b65b45a6fcb950
References: <20220610072924.12362-1-alim.akhtar@samsung.com>
	<CGME20220610073221epcas5p2307590d637c53e2a94b65b45a6fcb950@epcas5p2.samsung.com>
	<20220610072924.12362-7-alim.akhtar@samsung.com>
	<004301d87ca5$296850e0$7c38f2a0$@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_034615_992725_18B10439 
X-CRM114-Status: GOOD (  12.89  )
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
>Sent: Friday, June 10, 2022 2:06 PM
>To: 'Alim Akhtar' <alim.akhtar@samsung.com>; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
>scsi@vger.kernel.org; linux-phy@lists.infradead.org
>Cc: devicetree@vger.kernel.org; robh+dt@kernel.org;
>krzysztof.kozlowski+dt@linaro.org; vkoul@kernel.org; avri.altman@wdc.com;
>bvanassche@acm.org; martin.petersen@oracle.com;
>pankaj.dubey@samsung.com; 'Bharat Uppal' <bharat.uppal@samsung.com>
>Subject: RE: [PATCH v3 6/6] ufs: host: ufs-exynos: add support for fsd ufs hci
>
>> Subject: [PATCH v3 6/6] ufs: host: ufs-exynos: add support for fsd ufs
>> hci
>>
>> Adds support of UFS HCI which is found in Tesla Full Self-Driving
>> (FSD) SoC.
>>
>> Signed-off-by: Bharat Uppal <bharat.uppal@samsung.com>
>> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
>> ---
>>  drivers/ufs/host/ufs-exynos.c | 140
>++++++++++++++++++++++++++++++++++
>>  drivers/ufs/host/ufs-exynos.h |   1 +
>>  2 files changed, 141 insertions(+)
>>
>> diff --git a/drivers/ufs/host/ufs-exynos.c
>> b/drivers/ufs/host/ufs-exynos.c index cc128aff8871..19068605d9fe
>> 100644
>> --- a/drivers/ufs/host/ufs-exynos.c
>> +++ b/drivers/ufs/host/ufs-exynos.c
>> @@ -146,6 +146,10 @@ enum {
>>  #define UNIPRO_DME_PWR_REQ_REMOTEL2TIMER1	0x0A8
>>  #define UNIPRO_DME_PWR_REQ_REMOTEL2TIMER2	0x0AC
>>
>> +#define DME_POWERMODE_REQ_REMOTEL2TIMER0	0x78B8
>> +#define DME_POWERMODE_REQ_REMOTEL2TIMER1	0x78BC
>> +#define DME_POWERMODE_REQ_REMOTEL2TIMER2	0x78C0
>
>They look mismatch naming with previous definitions.
>UNIPRO_DME_POWERMODE_*
>
Ok noted.
Also previous definitions are not used, so I will send a separate patch to clean them up.

>Best Regards,
>Chanho Park



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
