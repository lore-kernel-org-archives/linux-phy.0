Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35A8BC07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 23:53:01 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BF53A61975
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 23:53:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BF53A61975
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YacKoB8aTqjG8VKlNhY76VBTGcQsSNceuq8C3XoeHJI=; b=cLm3FySQt7bStP
	Xe9SSD7ALkqYEhSDTM1hu5OBOgayV1vaprFGLgjgrdgLNQIOrdSkXDYPi/0E6sz35lhu7UQy2c9zh
	FAPQGUkoNDGv9WLny42SqNDRAQ+fA/OZOXyrIsz401vTFrrNawNV3OS52/KJvCQeloqimF+0lkdO6
	mSUYUgZCemsM41Pg0VDXx+5kRLN+MrLxgu7CFxuBnEhUEgteZNe1CdRtC3zRFW7xrztzmmM6WzOHx
	kd+rd9O2ULXxsMMRm0adsuz97tBtGVV53y80/o4fuAoabXVIGIC+8Y2zfAWeMxuWk1VUpm5+i1vUN
	xQQrX72ny9v/cRfZDL3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0YOa-00A2vK-8D; Mon, 05 Jul 2021 23:53:00 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0YOX-00A2uj-4o
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 23:52:58 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210705235248epoutp0336b379d16e5470d6af41ec80cdbd52a2~PCiqAgja00907609076epoutp03S
 for <linux-phy@lists.infradead.org>; Mon,  5 Jul 2021 23:52:48 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210705235248epoutp0336b379d16e5470d6af41ec80cdbd52a2~PCiqAgja00907609076epoutp03S
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625529168;
 bh=JSxGR07rYEEbxQFvXvnBsDevxGxn2lRPzkaB17XErwU=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=lYdPfz0O+0gp7huGtsXllTf2D5i0DWzVa/tbslsOFW/3F9rwWmkbJT7KR/1eDBCYA
 nUdVNEVlS3g/g9UiM4qd1Y5gUOHYPM0HhZRT6OnQykQiVjwGzFuwqhE9gjs3LEt444
 yV952a5q8Ba/i8mCwRPFo6JI36nsLitYYuf09eDc=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20210705235247epcas2p1922d00d4b131b7a3252379b41a33fd5c~PCipmF9HQ2604626046epcas2p1T;
 Mon,  5 Jul 2021 23:52:47 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.187]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GJjDF5Jjrz4x9Q1; Mon,  5 Jul
 2021 23:52:45 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 4C.C4.09541.D4B93E06; Tue,  6 Jul 2021 08:52:45 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20210705235244epcas2p4c42adca26c2bc02ad014e968086476f3~PCim1O_om2876728767epcas2p43;
 Mon,  5 Jul 2021 23:52:44 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210705235244epsmtrp1ed56f05af80b69ce01a35596b69973ce~PCim0cyQ40163201632epsmtrp1Z;
 Mon,  5 Jul 2021 23:52:44 +0000 (GMT)
X-AuditID: b6c32a46-0abff70000002545-bf-60e39b4d3c21
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 0F.06.08289.C4B93E06; Tue,  6 Jul 2021 08:52:44 +0900 (KST)
Received: from KORCO039056 (unknown [10.229.8.156]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20210705235244epsmtip1fb39b0909766fe0a176a705caec78e48~PCimr55dk1343013430epsmtip1Z;
 Mon,  5 Jul 2021 23:52:44 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@canonical.com>, "'Kishon
 Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>
Cc: "'Marek Szyprowski'" <m.szyprowski@samsung.com>, "'Jaehoon Chung'"
 <jh80.chung@samsung.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
 <linux-phy@lists.infradead.org>
In-Reply-To: <27d1c119-c502-8459-1d8e-ef224312ddde@canonical.com>
Subject: RE: [PATCH 1/2] phy: samsung-ufs: custom PHY_TRSV_CH_OFFSET support
Date: Tue, 6 Jul 2021 08:52:44 +0900
Message-ID: <000001d771f8$d98d6770$8ca83650$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJxhG/0ySA52fji6ez6nJEIP6DltQDXhKZgAZOEYykBejQbbanhvrBQ
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprJJsWRmVeSWpSXmKPExsWy7bCmha7v7McJBl23pS0ezNvGZnHjVxur
 xYWnPWwWG9/+YLKYsOobi8XaI3fZLXbeOcHswO4xq6GXzWPTqk42j81L6j36tqxi9Dh+YztT
 AGtUjk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4CuW2YO0BlK
 CmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJDwwK94sTc4tK8dL3k/FwrQwMDI1Og
 yoScjA9LrrEW3GWs2HvwN2sD43LGLkZODgkBE4m3+36zdTFycQgJ7GCUOL1iApTziVFiWtdT
 JgjnM6PE1t4LQA4HWMuyJ4kQ8V2MEr++7IfqeMEoseX7bGaQuWwC+hIvO7axgiREBCYwSvzr
 7mEEcZgF1jNKfN+7gAmkilPAUWL5lQVglwgL+Ejc2tXGDrKCRUBFYspkNZAwr4ClxMNVECW8
 AoISJ2c+YQGxmQXkJba/ncMM8YSCxM+ny1hBbBEBN4lnJ2czQdSISMzubGMG2SshMJdD4uCV
 9VBfu0j8ffmAFcIWlnh1fAs7hC0l8bIf5AaQhm5GidZH/6ESqxklOht9IGx7iV/Tt7CCHMos
 oCmxfpc+JFiUJY7cgrqNT6Lj8F92iDCvREebEESjusSB7dNZIGxZie45n1knMCrNQvLZLCSf
 zULywSyEXQsYWVYxiqUWFOempxYbFRghx/YmRnAa1XLbwTjl7Qe9Q4xMHIyHGCU4mJVEeEWm
 PEoQ4k1JrKxKLcqPLyrNSS0+xGgKDOqJzFKiyfnARJ5XEm9oamRmZmBpamFqZmShJM7LwX4o
 QUggPbEkNTs1tSC1CKaPiYNTqoGpZNqO1rcC/d22JaIljRoGX659Vma8vKhB7KiMk0zIAWZ+
 vhVR/B7S0suWmfE/yneR/GLOLl+/yOqs5grnUN/lW5vvPssT2vmovvOfcFi6w/J5+88u23Hv
 0YNjjtvW311wbFl94d6GF9eNV0u8OCfx2r7q2Vn7XZVxc3Idu+5V1baynH2wuv3m1Y83HadN
 2PZpnlKLh8H0lZO6d261Oym8jvmBc/yi6OdbIgTmXr83M19Zo/L+7jP+RXUvVvwLZBI06dZn
 4sm5Xdw+p/5htMX9oL2WxSc1I7IO/uVi/eD33LzOXJ9Xdeb2RP/deZrG/N7HithL9r1aptCT
 IPitScrvcUqk4/TIdXqmtzKNZ+cosRRnJBpqMRcVJwIA2GCYxiwEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphkeLIzCtJLcpLzFFi42LZdlhJTtdn9uMEgyk9WhYP5m1js7jxq43V
 4sLTHjaLjW9/MFlMWPWNxWLtkbvsFjvvnGB2YPeY1dDL5rFpVSebx+Yl9R59W1Yxehy/sZ0p
 gDWKyyYlNSezLLVI3y6BK+PDkmusBXcZK/Ye/M3awLicsYuRg0NCwERi2ZPELkYuDiGBHYwS
 589cYu9i5ASKy0o8e7cDyhaWuN9yhBWi6BmjxNMr19hAEmwC+hIvO7aBJUQEJjFKvLi8gR3E
 YRbYyChxp/cwG0TLL0aJPetWM4K0cAo4Siy/sgDMFhbwkbi1q40d5A4WARWJKZPVQMK8ApYS
 D1dBlPAKCEqcnPmEBcRmFtCWeHrzKZQtL7H97RxmiPMUJH4+XcYKYosIuEk8OzmbCaJGRGJ2
 ZxvzBEbhWUhGzUIyahaSUbOQtCxgZFnFKJlaUJybnltsWGCUl1quV5yYW1yal66XnJ+7iREc
 UVpaOxj3rPqgd4iRiYPxEKMEB7OSCK/IlEcJQrwpiZVVqUX58UWlOanFhxilOViUxHkvdJ2M
 FxJITyxJzU5NLUgtgskycXBKNTAV75jBsWJ/XrWwkGlEck+M5LeCgtuFL55dufIr913IsjC3
 j818Lv8D/03WesP1zHGPq82hMq7HrSGZq7ySDC849jeyeF1ydWL0siq//X132e6LV/nCr61I
 jj99sMOCv2KFi0HEmZBbPxPtWVqC9070Pus5wf283JESpuPd/bpME7P8PLgWz/Y8dJWrj+Hf
 7eUNRjvKU40/nUy7eb7rTuDDjQIHtyUvaDrNdVUu4cauD/s/27oontkaadTeHnjs0M4zJWI2
 3Uu6L2+fwdUrlrH1TpZ5/IIJrft19hpY6OyQTPG+vOrTWY6tZUUVfuf/Hkvs9r71JyOe/e+T
 WSVTvH4oSj3MY1Xe6XLaVEvXU1GJpTgj0VCLuag4EQASeMZNFwMAAA==
X-CMS-MailID: 20210705235244epcas2p4c42adca26c2bc02ad014e968086476f3
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210705102410epcas2p38a6f148b23f8716725bbc8b879471603
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102410epcas2p38a6f148b23f8716725bbc8b879471603@epcas2p3.samsung.com>
 <20210705102318.102999-2-chanho61.park@samsung.com>
 <27d1c119-c502-8459-1d8e-ef224312ddde@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_165257_664575_5FC1672C 
X-CRM114-Status: GOOD (  10.69  )
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

> Thanks for the patches. I think this should be squashed into your next
> patch - it does not make much sense as standalone commit.
> 

Okay. I'll squash it next patchset.

Thanks.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
