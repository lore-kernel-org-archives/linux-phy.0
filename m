Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C983C433EF
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jun 2022 01:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N8rDC0ohn9X4xbFy16gOicU84bTSebU/K+HsO5OUtPM=; b=HNAMcgpWTrDnnp
	N1cF+5WH1CbOoUCGKV3alZHIjQS1JBLSex75wO23y3KvepN7spj0XicakPEMOEwodWKtHHdascbm1
	Y0IBNW6Vu0+09VrdvP9Bcw+JWgMclAuiUUR+dc90gtD2Q2dzd7fERxCnmqLuomT+Hi2E2bJYlfnMm
	eJbAmR1WLiEvExESnGqmRCoNAbVt/42+dBRxc8FBiQxqvUlwT6yXU5NbC/LJ/Lbbr/n24sbIizv4G
	QgHR2vMIW+nqp3vYqim+fVWqpVedZs5/mq3uKH16cTJ4SvVDqs3DSJQFufWnDNXZp808Wa+w50D5h
	1NtwEGuSttTv5hbhr1nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww99-005JLE-DY; Fri, 03 Jun 2022 01:30:39 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nww95-005JKB-Gu
	for linux-phy@lists.infradead.org; Fri, 03 Jun 2022 01:30:38 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout3.samsung.com (KnoxPortal) with ESMTP id 20220603013033epoutp035e01e011b34eba2d9556fc4bea709578~0_CyFta452193221932epoutp03z
	for <linux-phy@lists.infradead.org>; Fri,  3 Jun 2022 01:30:33 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com 20220603013033epoutp035e01e011b34eba2d9556fc4bea709578~0_CyFta452193221932epoutp03z
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654219833;
	bh=KAlW9Mg2SV+Y+9GmK+nv61aX3d7K7ijxAt8lKiuDNI8=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=PjaZQmpeJiW6kz6hdWNNvZf/UOVgx6URvrdJg60DPUc0i2y94fx1I0MMHOULtOdzQ
	 tj+zrad+NZj0+FaPYeNh6ss4mYMeGmSA6hDUJfZuqSvdNuPBMIDYRXlk3T1RPvi2JM
	 dsBgMl5pPCL8S6LU6wC77YJkvZe3RPQuLBNNMuaw=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220603013032epcas5p4bf5e345546aa22810e3318d3c5c88671~0_Cw_OuLt2383523835epcas5p4j;
	Fri,  3 Jun 2022 01:30:32 +0000 (GMT)
Received: from epsmges5p2new.samsung.com (unknown [182.195.38.178]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LDlgm70g9z4x9Q8; Fri,  3 Jun
	2022 01:30:28 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
	A0.ED.09827.33469926; Fri,  3 Jun 2022 10:30:27 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20220603013027epcas5p43b34202e1fe71e2678d2ab7916280860~0_Csmo2Nd2383523835epcas5p4Y;
	Fri,  3 Jun 2022 01:30:27 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220603013027epsmtrp2b5cd7d1b6fb3bc5ceafbdc3985f522de~0_Csk5SR11902819028epsmtrp2D;
	Fri,  3 Jun 2022 01:30:27 +0000 (GMT)
X-AuditID: b6c32a4a-b3bff70000002663-69-629964333fb7
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	7E.81.11276.33469926; Fri,  3 Jun 2022 10:30:27 +0900 (KST)
Received: from alimakhtar03 (unknown [107.122.12.5]) by epsmtip1.samsung.com
	(KnoxPortal) with ESMTPA id
	20220603013024epsmtip170a321cd0900079d1e6be24d280004e6~0_Cp5cZXc0460604606epsmtip18;
	Fri,  3 Jun 2022 01:30:24 +0000 (GMT)
From: "Alim Akhtar" <alim.akhtar@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<linux-scsi@vger.kernel.org>, <linux-phy@lists.infradead.org>
Cc: <devicetree@vger.kernel.org>, <robh+dt@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <vkoul@kernel.org>,
	<avri.altman@wdc.com>, <bvanassche@acm.org>, <martin.petersen@oracle.com>,
	<chanho61.park@samsung.com>, <pankaj.dubey@samsung.com>,
	<linux-fsd@tesla.com>, "'Bharat Uppal'" <bharat.uppal@samsung.com>
In-Reply-To: <cd71f427-8db5-e908-bf25-0154e3006568@linaro.org>
Subject: RE: [PATCH 1/6] dt-bindings: phy: Add FSD UFS PHY bindings
Date: Fri, 3 Jun 2022 07:00:23 +0530
Message-ID: <000a01d876e9$8103ff50$830bfdf0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQEGJiXAXdobboEKZTBkhZkj5AOCHwEV9a8PAbDHaMoCLFgQga657fBQ
Content-Language: en-us
X-Brightmail-Tracker: H4sIAAAAAAAAA01TfUwbZRz27V2vx0znUbrspRNX6zZtXaGFgocCm2Fh57ZEmDFbNBMOegEs
	XJt+TDeTbWURJwxCM0RpWDRjg6w6m3RlY+jJh2WMaSazUBLS6KrAgAHyJQ5wKOWY8t/z/t7n
	eX6/5/3AEUkfJsMLWStjZukiBbYBvfa9UqlO0NfmargQSY4u9GFkYLRHRNZMLSCkv/VF8nPf
	HSFZORJCSO5Bk4j0/B4QkqGxQ6S/pQ4jq1zzKFne34yRjV3LAvJC05yI/JDzicgbwVvIboLy
	9+6nPK6PMSoY+Bajrl48SU0PDaBUpdcFqOWS8yJq1vMM9VFbuSAz4i1DSgFD6xmznGHzjPpC
	Nj9Vsf+N7PTsxCSNVq1NJl9SyFm6mElV7DmQqc4oLFrJoJAfpYtsK6VM2mJRxKWlmI02KyMv
	MFqsqQrGpC8y6UyxFrrYYmPzY1nG+rJWo4lPXCHmGAr6hxNMnOj9z+w/C0+BbqwMROCQ0MEO
	h0NQBjbgEuIbAKeC0xi/mAHwut0HwiwJMQ+gkzM/VgR/PSvkSRyAjsm/EH4xCmDX5Vurvhih
	hs31patWUqILwNbTrcLwBkK0CmDpuKYM4HgEkQbP9XwQLkcR6XAi4BCFMUpsg5zLveojJpLh
	tZs/CXkcCbtrB1HeZiu8PlGH8BPJ4cJQwypHSmRArml4rdVmONrpE4VngMQcDs8HxgAv2AMv
	X/1UxOMoONblXcMyODvJYeHZIEHBC3/L+HIBnGh0r0l3wbbeOjRMQQgldLfE8a02woqlQQGv
	FMMzpRKevR2enuxDebwFOsrLhTymYM9kP1IFnnWuC+ZcF8y5LoDz/2ZfANQFohmTpTifsSSa
	4lnmvf9uO89Y7AGr71u1rxmE7k3FdgABDjoAxBGFVGxt+SRXItbTx44zZmO22VbEWDpA4spp
	OxDZpjzjygdhrdlaXbJGl5SUpEtOSNIqNouJf+y5EiKftjIGhjEx5sc6AR4hOyVIfxAZo6r2
	2drtOaik4c9Duhcicy799sOOqTt67evS+SenzVhje+xzIZPyaeFtnTli34kn3qXxkoqvmo8f
	+XK2Xpv5qFKT1R4cWe5clHa1Z5zpNg6PzYSK0xe3z22s9xbeuCsYmNt0cOvuudrn/e9kRWPH
	qMGGpV/kr1y8n+a0K40PZ6i3E0L3/AfcnYtXtnBtB9PY+PGsS9KBu5PoycOBHTWsy7Tt66ny
	pWCc99xE7c4/alJONLoM3phqJjvS81oKZzjiHlHuvV2hKVGVHLXZH135US3ERw5/V7XLwOzE
	9r45lFIf0j2kzqpv+sQa1f3eseWY5vHoPpJhq1+NUj0lU6CWAlqrQswW+l9b4GXXaAQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrAIsWRmVeSWpSXmKPExsWy7bCSnK5xyswkg0eX+Sxe/rzKZnHt5QV2
	i2kffjJbXN6vbTH/yDlWi74XD5kt9r7eym6x6fE1VouHr8ItLu+aw2YxYdU3Fovu6zvYLJYf
	/8dksWjrF3aL1r1H2C123jnB7CDgcfmKt8emVZ1sHneu7WHz2Lyk3uPj01ssHn1bVjF6/Gua
	y+7xeZOcR/uBbqYAzigum5TUnMyy1CJ9uwSujOvPjAv2slfMaLzE2sB4kq2LkZNDQsBE4s79
	HtYuRi4OIYHdjBLzDj9mh0hIS1zfOAHKFpZY+e85O0TRc0aJ+TOXgSXYBHQldixuYwNJiAic
	ZpTYtOceE4jDLHCaSeLD0VfMIFVCAh8ZJY71hncxcnBwCthJTL5QDRIWFnCWeHttItggFgEV
	ib2r1oOdxCtgKbHt2HlWCFtQ4uTMJywgNrOAtsTTm0+hbHmJ7W/nMENcpyDx8+kysHoRATeJ
	vVufsULUiEu8PHqEfQKj8Cwko2YhGTULyahZSFoWMLKsYpRMLSjOTc8tNiwwzEst1ytOzC0u
	zUvXS87P3cQIjmQtzR2M21d90DvEyMTBeIhRgoNZSYS3ZNfUJCHelMTKqtSi/Pii0pzU4kOM
	0hwsSuK8F7pOxgsJpCeWpGanphakFsFkmTg4pRqYdBfqv90YF6lx/enMxjcTRI9O9S58mPQ1
	TT7x8kzdI27Fh94tKnysE/8tX+naZabJrAbOid4aXQt/JjUvtBMVa6xbvD936YSjL/uubZ91
	tFVizvPAXscJ/NLRRpPz68SMmBJ0Za+rS7VZ/GB1EPV9n5is7rrris9a844D62WeM/w57vb6
	bMHic6dXmipsV3gze8FGT+PwlY45umlHfQwajzNdv33HeIp2xJJHsm+fzuVNNPq/1GnXxiOh
	AukxFT1cFg7J023O5usbBkWaPTjQfdOFS0XnWbjSv8KzeuyRvPqznPRXz4namS93e77sIcuN
	Bk4J1a7yB+VcE8MqDv5RO57IWfIvXX36zY5CpyIlluKMREMt5qLiRADS8kimUwMAAA==
X-CMS-MailID: 20220603013027epcas5p43b34202e1fe71e2678d2ab7916280860
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220531012336epcas5p2fcafe14c90ad3e3a0901fccd62d15437
References: <20220531012220.80563-1-alim.akhtar@samsung.com>
	<CGME20220531012336epcas5p2fcafe14c90ad3e3a0901fccd62d15437@epcas5p2.samsung.com>
	<20220531012220.80563-2-alim.akhtar@samsung.com>
	<cd71f427-8db5-e908-bf25-0154e3006568@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_183036_032064_18CF7FD5 
X-CRM114-Status: UNSURE (   7.91  )
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
>From: Krzysztof Kozlowski [mailto:krzysztof.kozlowski@linaro.org]
>Sent: Tuesday, May 31, 2022 2:47 PM
>To: Alim Akhtar <alim.akhtar@samsung.com>; linux-arm-
>kernel@lists.infradead.org; linux-kernel@vger.kernel.org; linux-
>scsi@vger.kernel.org; linux-phy@lists.infradead.org
>Cc: devicetree@vger.kernel.org; robh+dt@kernel.org;
>krzysztof.kozlowski+dt@linaro.org; vkoul@kernel.org; avri.altman@wdc.com;
>bvanassche@acm.org; martin.petersen@oracle.com;
>chanho61.park@samsung.com; pankaj.dubey@samsung.com; linux-
>fsd@tesla.com; Bharat Uppal <bharat.uppal@samsung.com>
>Subject: Re: [PATCH 1/6] dt-bindings: phy: Add FSD UFS PHY bindings
>
>On 31/05/2022 03:22, Alim Akhtar wrote:
>> Adds tesla,fsd-ufs-phy compatible for Tesla FSD SoC
>
>s/Adds/Add/
>and a full stop at the end, please.
>
Noted

>Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
Thanks

>Best regards,
>Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
