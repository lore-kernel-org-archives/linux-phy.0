Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD334C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 01:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPqxAsK+Die0K+kKYUDdr2RnRlQpXWkiUY4raJTSz4U=; b=GjifWedhznQcF9
	jmdDRmua5JaeEVz+C/AdK3w4p4WIpkT2eeW7wMsPvQWUJ97Dz0JoIPfU7XjvDAFEYvGp4/L3lxLOy
	DmWxVo/hnxzxAXYaP+jyUywpsGp7E5Q/QCifDuo09n7dawepRDxfCTBm9S7OUEVZEBFjaY8I27eEC
	uMTZ7auPfmY7IYVaK2cs4uT+4WcSLL3MUpu1lUq7nEpbPMP52mGkukE14FmSvqMAeeeN6iAd5H8aY
	ivy47kfKeXok0Rv7jg5E1pgjGZBmb2p949gRqq/ybAN9MKgDbKVgb+7e/cbNJQvcPbiwzsrcc3Ufh
	be1JtESo9x6+BN3TAGdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww0k-005HY1-4G; Fri, 03 Jun 2022 01:21:58 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww0Y-005HRe-BT
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 01:21:48 +0000
Received: from epcas5p1.samsung.com (unknown [182.195.41.39])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220603012137epoutp04704721af1e29e8e32f9e3379c8cd8877~096-eR33R1402414024epoutp04H
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 01:21:37 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220603012137epoutp04704721af1e29e8e32f9e3379c8cd8877~096-eR33R1402414024epoutp04H
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654219297;
	bh=cAJUvtp9fsUwOe9dByAEQ7CN40+vY4FA10IItqIXf2w=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=MQMVUQY6RZXIuQRHMiH2FGfR/yKere4XUDQzGiE98eDtEHLAUDeQqSqWlfoKd001o
	 JsKp432VzxMhrE/4M5XPG2A9YQfpsmVSXlbp4NB9eygGARUXVJsvpdYAe7DgeUPMFk
	 ByqnRRLqIMMBo393SLW6HBswjqYtbAbx1WXzhaGs=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p2.samsung.com (KnoxPortal) with ESMTP id
	20220603012137epcas5p2012ccc4e63172be6c4e02b042d0188a5~096_y5nd10248402484epcas5p2j;
	Fri,  3 Jun 2022 01:21:37 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LDlTV5LXQz4x9Q9; Fri,  3 Jun
	2022 01:21:34 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	9C.28.09762.E1269926; Fri,  3 Jun 2022 10:21:34 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20220603012133epcas5p4361ce239d339c6d9790e96a3c7d6f0c6~0967O4Bmu2578825788epcas5p4C;
	Fri,  3 Jun 2022 01:21:33 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220603012133epsmtrp1a3fe7c0a21d2c488612ee7673d89bc95~0967NGIrp2031820318epsmtrp1s;
	Fri,  3 Jun 2022 01:21:33 +0000 (GMT)
X-AuditID: b6c32a4b-213ff70000002622-01-6299621ef640
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	D9.0F.11276.D1269926; Fri,  3 Jun 2022 10:21:33 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220603012130epsmtip1533d158f544644e0fa2967c0f67df991~0965C9gRA0396703967epsmtip19;
	Fri,  3 Jun 2022 01:21:30 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Bart Van Assche'" <bvanassche@acm.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <devicetree@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<avri.altman@wdc.com>, <martin.petersen@oracle.com>,
	<chanho61.park@samsung.com>, <pankaj.dubey@samsung.com>,
	<linux-fsd@tesla.com>, "'Bharat Uppal'" <bharat.uppal@samsung.com>
In-Reply-To: <f4e1d900-5755-c57f-029a-eade78a17476@acm.org>
Subject: RE: [PATCH 3/6] phy: samsung-ufs: add support for FSD ufs phy
 driver
Date: Fri, 3 Jun 2022 06:51:29 +0530
Message-ID: <000801d876e8$42aaf520$c800df60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEGJiXAXdobboEKZTBkhZkj5AOCHwGM2PWHAqlwyH0BABfpD6630Qnw
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrAJsWRmVeSWpSXmKPExsWy7bCmpq5c0swkg0ebNC1e/rzKZnHt5QV2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmrx8FW4xeVdc9gsJqz6xmLRfX0Hm8Xy4/+YLBZt
	/cJu0br3CLvFzjsnmB34PS5f8fbYtKqTzePOtT1sHpuX1Ht8fHqLxaNvyypGj39Nc9k9Pm+S
	82g/0M0UwBmVbZORmpiSWqSQmpecn5KZl26r5B0c7xxvamZgqGtoaWGupJCXmJtqq+TiE6Dr
	lpkDdL6SQlliTilQKCCxuFhJ386mKL+0JFUhI7+4xFYptSAlp8CkQK84Mbe4NC9dLy+1xMrQ
	wMDIFKgwITvjzbYzrAUHuCrW72hjbmD8z9HFyMEhIWAisfOcfBcjF4eQwG5GiYV3TjFDOJ8Y
	Jd43rWGCcL4xSryddICti5ETrOPk9uvsEIm9jBKv796FannJKDH/+38WkCo2AV2JHYvbwDpE
	BLYzSvTtDwSxmQVWMkmsm2oHYnMKWEt8bO0FqxEW8Jd4OXcbK4jNIqAice3XEUYQm1fAUuL2
	gytMELagxMmZT1gg5mhLLFv4mhniIgWJn0+XsYL8IyLgJvH+lBlEibjEy6NHwA6VEHjCIfHw
	0k9WiHoXiX3rDkPZwhKvjm9hh7ClJF72t7FDwsVDYtEfKYhwhsTb5esZIWx7iQNX5rCAlDAL
	aEqs36UPsYpPovf3EyaITl6JjjYhiGpVieZ3V1kgbGmJid3dUEs9JJq79jFOYFScheSvWUj+
	moXkgVkIyxYwsqxilEwtKM5NTy02LTDOSy2Hx3Zyfu4mRnDS1vLewfjowQe9Q4xMHIyHGCU4
	mJVEeEt2TU0S4k1JrKxKLcqPLyrNSS0+xGgKDOyJzFKiyfnAvJFXEm9oYmlgYmZmZmJpbGao
	JM4r8L8xSUggPbEkNTs1tSC1CKaPiYNTqoHp+E57vanX9mw5Ue9ZOG9nlLXzjx2H+YVVw7a4
	/7Bf7BjnIvlNLIHtadt+Af1Dz/79Ut865Yeo6iEVzmPx/rW3X9cFBD7/ruEw+drCN2sitrHJ
	uOwvPpuQ3CH6smFtq0+5t/zzifkat39ozzktcHuK2cbVb3YJT4mw+3Ev07d3zY3yiv5MVeUe
	Y12jO1sda5+FMGm1x5bOVWg12J3tm6uQLpF+pn73GyVht8CtjYba2/cvEPm7+Q332udSlil2
	10Kv5hn0P86PWqKpqlVex/V7akgw+yKVNfOUQ85UBTrP3SFUEiunLn3qmeBErYYXR7wTZSKW
	M1yS3bTtwSQFYRYzJ6cJ//okdmXukXRU7FRiKc5INNRiLipOBABRkQU3YwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrNIsWRmVeSWpSXmKPExsWy7bCSnK5s0swkg9+LOC1e/rzKZnHt5QV2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmrx8FW4xeVdc9gsJqz6xmLRfX0Hm8Xy4/+YLBZt
	/cJu0br3CLvFzjsnmB34PS5f8fbYtKqTzePOtT1sHpuX1Ht8fHqLxaNvyypGj39Nc9k9Pm+S
	82g/0M0UwBnFZZOSmpNZllqkb5fAlbHhWjt7QQ9XxYblkxkbGE9zdDFyckgImEic3H6dvYuR
	i0NIYDejxPnepWwQCWmJ6xsnsEPYwhIr/z2HKnrOKNF14hRYEZuArsSOxW1sIAkRkO6XZ1+C
	JZgFNjNJ7N2gDGILCbxjlNh/IRXE5hSwlvjY2gtWIyzgK3F+xTEwm0VAReLaryOMIDavgKXE
	7QdXmCBsQYmTM5+wQMzUlnh68ymcvWzha2aI6xQkfj5dxtrFyAF0hJvE+1NmECXiEi+PHmGf
	wCg8C8mkWUgmzUIyaRaSlgWMLKsYJVMLinPTc4sNCwzzUsv1ihNzi0vz0vWS83M3MYLjV0tz
	B+P2VR/0DjEycTAeYpTgYFYS4S3ZNTVJiDclsbIqtSg/vqg0J7X4EKM0B4uSOO+FrpPxQgLp
	iSWp2ampBalFMFkmDk6pBqYjYmWvdx39b3PmZdHanL0+u797TO/wjP55lOG0+JojLNkfrZxf
	8ldssA0+27tIs9E2WWnjzJe2+9KsP1i/PhRi3FgecmfSu0W3Px+4sfh71UmHKolbxUUx1xyV
	ijo3yn4LqWhPOJbUFhXzTGy58PRihotTTJb/n9hTctFmGsvzmT8nTJw3QWLBjlvVgpUfpj6e
	JrJKz6icVXTN7v5jjUl+0xTm/zof9O783IPNq7t+vN+dY97Y0sJ5+7h3//YXF2z+m3gE2z+q
	nzBpQUD80ZbUEDFrF9brIsonnWw/OM6LPyOzt6jFbgurzj++g63yVVcSnm2tj977797a+a+N
	Pj3Mmbqo+ZqhyOYpV07qhuziUWIpzkg01GIuKk4EAMn4G1NOAwAA
X-CMS-MailID: 20220603012133epcas5p4361ce239d339c6d9790e96a3c7d6f0c6
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531012347epcas5p48262cae18c75bb6ed029f7cd920800b4
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
	<CGME20220531012347epcas5p48262cae18c75bb6ed029f7cd920800b4@epcas5p4.samsung.com>
	<20220531012220.80563-4-alim.akhtar@samsung.com>
	<f4e1d900-5755-c57f-029a-eade78a17476@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_182146_789851_D9ACBED5 
X-CRM114-Status: GOOD (  10.62  )
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
>From: Bart Van Assche [mailto:bvanassche@acm.org]
>Sent: Tuesday, May 31, 2022 9:18 AM
>To: Alim Akhtar <alim.akhtar@samsung.com>; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
>scsi@vger.kernel.org; linux-phy@lists.infradead.org
>Cc: devicetree@vger.kernel.org; robh+dt@kernel.org;
>krzysztof.kozlowski+dt@linaro.org; vkoul@kernel.org; avri.altman@wdc.com;
>martin.petersen@oracle.com; chanho61.park@samsung.com;
>pankaj.dubey@samsung.com; linux-fsd@tesla.com; Bharat Uppal
><bharat.uppal@samsung.com>
>Subject: Re: [PATCH 3/6] phy: samsung-ufs: add support for FSD ufs phy driver
>
>On 5/30/22 18:22, Alim Akhtar wrote:
>> diff --git a/drivers/phy/samsung/phy-fsd-ufs.c b/drivers/phy/samsung/phy-
>fsd-ufs.c
>> new file mode 100644
>> index 000000000000..a03656006093
>> --- /dev/null
>> +++ b/drivers/phy/samsung/phy-fsd-ufs.c
>> @@ -0,0 +1,63 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * UFS PHY driver data for FSD SoC
>> + *
>> + * Copyright (C) 2022 Samsung Electronics Co., Ltd.
>> + *
>> + */
>> +#ifndef _PHY_FSD_UFS_H_
>> +#define _PHY_FSD_UFS_H_
>
>Please do not use header file guards in a .c file.
Noted.
Thanks for point it out.

>
>Thanks,
>
>Bart.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
