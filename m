Return-Path: <SRS0=+yjZ=L6=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FC70C07E99
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:15:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C97B36196A
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jul 2021 02:15:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C97B36196A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4yRcPyJqX1ygXcZKqL9MnM39yT9DemQP6hpRc9oyQSI=; b=xNxdpTkexJ+o15
	yPyQfDEgsqEDP39NznQ4fq714hg973yvaxCnViq3E8SytR4bxKWMTi5K+t9Nf7FFZ2UNvqihK5JIt
	sRDvUZXxC2E2hotMvT1IL/+1tnjIIz+0IAm7rfciowoUHhLTWLViYylnOim0pSfqk8HJcJuSWep+n
	tkCrrMlmrzw0v9C2gF9roQRWYz3sosBHM6AVfxqYyjuHpANdKiMtBPofQczoQw/CA1wHUPPW8KSPO
	g5igo8B3fSben1e16OcncradHOJwp6VgUFzuOI4hhPIE2OTv5290k9C1Tc8YifWv+lKcVWRNhTzhD
	mmtD3ooKE3rsQaUSdtKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0ac6-00A9Mr-BK; Tue, 06 Jul 2021 02:15:06 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0ac1-00A9Li-NA
 for linux-phy@lists.infradead.org; Tue, 06 Jul 2021 02:15:04 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210706021452epoutp03fae80f51b51e243f74fb98fec716e2a5~PEetUCjOy2751727517epoutp03X
 for <linux-phy@lists.infradead.org>; Tue,  6 Jul 2021 02:14:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210706021452epoutp03fae80f51b51e243f74fb98fec716e2a5~PEetUCjOy2751727517epoutp03X
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625537692;
 bh=t1ndSxJvNSUr5D2M60qISKVrWmoiEL5Ervug9T6d9N8=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=JGLcjH2zVEXrpsBuk4BfcMK7TPywsetDa4Kl1kYOn2u9CP8YR1Zl7pkypqHcS+S9e
 y6GBXz3Meng+v/vmITETF9SXQkbAQVf174bgxGALoBjPY8d2yJ6gP16trngvxRCOI4
 TAaTQt/ifJHej0Qv7u+uiX5znfZaC2262M1qVLBA=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20210706021452epcas2p409d595f93db7d902a4a321a414dfc26a~PEes2RZrH0299202992epcas2p4y;
 Tue,  6 Jul 2021 02:14:52 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.186]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4GJmNC1k54z4x9Pt; Tue,  6 Jul
 2021 02:14:51 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 E2.76.09571.A9CB3E06; Tue,  6 Jul 2021 11:14:50 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20210706021449epcas2p15446beb4b9394807e6bc2106d69cc4af~PEeqjlBtz2031720317epcas2p1S;
 Tue,  6 Jul 2021 02:14:49 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210706021449epsmtrp1b29bc0f59df1472cfa8be1ef06c3a97e~PEeqi13bH0382803828epsmtrp1o;
 Tue,  6 Jul 2021 02:14:49 +0000 (GMT)
X-AuditID: b6c32a48-1f5ff70000002563-6a-60e3bc9a4a9a
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 AD.76.08289.99CB3E06; Tue,  6 Jul 2021 11:14:49 +0900 (KST)
Received: from KORCO039056 (unknown [10.229.8.156]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20210706021449epsmtip1c6629e2ba01da438a5523553b4ecf54a~PEeqT0Oak1873218732epsmtip1i;
 Tue,  6 Jul 2021 02:14:49 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Jaehoon Chung'" <jh80.chung@samsung.com>, "'Kishon Vijay Abraham I'"
 <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>, "'Krzysztof Kozlowski'"
 <krzk@kernel.org>
Cc: "'Marek Szyprowski'" <m.szyprowski@samsung.com>, "'Alim Akhtar'"
 <alim.akhtar@samsung.com>, <linux-phy@lists.infradead.org>, "'Krzysztof
 Kozlowski'" <krzysztof.kozlowski@canonical.com>
In-Reply-To: <88fa07de-3cc1-d883-5512-773c44ddec05@samsung.com>
Subject: RE: [PATCH v2 1/2] phy: samsung-ufs: move phy-exynos7-ufs header
Date: Tue, 6 Jul 2021 11:14:49 +0900
Message-ID: <00ad01d7720c$b2e90a70$18bb1f50$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQLyWQpi584H0OHr4vKOHfxcGQOcygGQzh3mAwcdJr0DBmxwh6jCdFYA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprDJsWRmVeSWpSXmKPExsWy7bCmhe6sPY8TDH5vE7Z4MG8bm8WNX22s
 Fhee9rBZnD+/gd1i49sfTBYTVn1jsVh75C67xc47J5gdODxmNfSyeWxa1cnmsXlJvUffllWM
 HsdvbGcKYI3KsclITUxJLVJIzUvOT8nMS7dV8g6Od443NTMw1DW0tDBXUshLzE21VXLxCdB1
 y8wBukVJoSwxpxQoFJBYXKykb2dTlF9akqqQkV9cYquUWpCSU2BoWKBXnJhbXJqXrpecn2tl
 aGBgZApUmZCTcWOXfsE8xoq+O8fYGxhruxg5OCQETCQWn6jpYuTiEBLYwSjR/Gk9I4TziVHi
 66k5rBDOZ0aJh8ums3QxcoJ1NCw+zwhiCwnsYpTYeA6q/QWjxNZ1F5hBEmwC+hIvO7aBdYsI
 rGGU6Ok9AzaXWeAAo8S8Q9dZQao4BewlDm45AzZWWMBTonNLDzuIzSKgIrF+2iKwOK+ApcTB
 7Q+YIWxBiZMzn4DFmQXkJba/ncMMcZKCxM+ny8Bmigi4STw+tI0RokZEYnZnGzPIYgmBmRwS
 7TtesEM0uEisnbMYyhaWeHV8C5QtJfGyv40doqGbUaL10X+oxGpGic5GHwjbXuLX9C2soOBj
 FtCUWL9LHxKSyhJHbkHdxifRcfgvO0SYV6KjTQiiUV3iwHZYKMpKdM/5zDqBUWkWks9mIfls
 FpIPZiHsWsDIsopRLLWgODc9tdiowAQ5rjcxgpOplscOxtlvP+gdYmTiYDzEKMHBrCTCKzLl
 UYIQb0piZVVqUX58UWlOavEhRlNgWE9klhJNzgem87ySeENTIzMzA0tTC1MzIwslcV4O9kMJ
 QgLpiSWp2ampBalFMH1MHJxSDUwCe7b3/Q66pliX95ghsqS3v/HvU3+ukpr/IfG1ZXt+reJc
 yhc34dKLmf/84h5trzls+rrgZIXhNm7Dgq1FZ2IT+lYaXmF+tK/pkGPCC7PJfJYan/lrcj8d
 U9pXsm3e+f7gPlO/76ZlffNyDdt0ekvWZ8wqqDU4nv7tud3lqTdCpr8rn/Pvz47rXPz5Kj0s
 n5V5dT8X+zT+c10ewN2hnbja/619MP/kn/u33jrmsHbzbrMbR8x0dJbuTS0pzNmTkLKwVtsu
 cpXTJnnf+ohzHPO9vrCf5NCrdWb4mnzKKrEkIHrVD3vNMqPFu5e/+vGxaY+jXEjl5Sv1h3bn
 673WrWOPqVzq1XpD8nEpj9YeDiWW4oxEQy3mouJEAHj5WiwvBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupgkeLIzCtJLcpLzFFi42LZdlhJTnfmnscJBvt261s8mLeNzeLGrzZW
 iwtPe9gszp/fwG6x8e0PJosJq76xWKw9cpfdYuedE8wOHB6zGnrZPDat6mTz2Lyk3qNvyypG
 j+M3tjMFsEZx2aSk5mSWpRbp2yVwZdzYpV8wj7Gi784x9gbG2i5GTg4JAROJhsXnGUFsIYEd
 jBIrz7tAxGUlnr3bwQ5hC0vcbznC2sXIBVTzjFHi/qpzbCAJNgF9iZcd28ASIgLrGCUmHN0I
 5jALHGKU+DHpHzNEyw9GialzT4K1cArYSxzccoYFxBYW8JTo3NIDtoNFQEVi/bRFYHFeAUuJ
 g9sfMEPYghInZz4BizMLaEs8vfkUypaX2P52DjPEfQoSP58uYwWxRQTcJB4f2sYIUSMiMbuz
 jXkCo/AsJKNmIRk1C8moWUhaFjCyrGKUTC0ozk3PLTYsMMpLLdcrTswtLs1L10vOz93ECI4s
 La0djHtWfdA7xMjEwQj0MQezkgivyJRHCUK8KYmVValF+fFFpTmpxYcYpTlYlMR5L3SdjBcS
 SE8sSc1OTS1ILYLJMnFwSjUwWR6cvvxsvY+WeoU2/0rtzJRziqx3Dz/xqvw11elM0fIiHc13
 mbNanPQef57I/UNYSlWpf/3Wbdt3/264u7LR1jHwfUmWab3Qr97HLc88f0wyKKtbozzx6q7u
 UwGGKeYNiyR/ehlIHRL6rBFg3+3z8VrKktPajB/rbrH3qL6I4lZw22q6rG6Rffm+5wsmdu8N
 PXc6/f+jqcWxHy2kqtimvl+fUfBd9Mvzf3zVP9cvmpIWFz/n+Md007kreY6ZuV2/PmOr6jqn
 ms6qEPsVuVPMWvu/V3Wr3/96uOKm3+/EbUbTd98L8pX5oy9i1VX+9c26ix+sPp3y5rbmfVLG
 c1FI58nFpuk6Uvt6Io59+RUtpcRSnJFoqMVcVJwIABsizJ4bAwAA
X-CMS-MailID: 20210706021449epcas2p15446beb4b9394807e6bc2106d69cc4af
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd
References: <20210706020625.117400-1-chanho61.park@samsung.com>
 <CGME20210706020609epcas2p3af9ad22d849366dd850214b5c2e9f9dd@epcas2p3.samsung.com>
 <20210706020625.117400-2-chanho61.park@samsung.com>
 <88fa07de-3cc1-d883-5512-773c44ddec05@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_191502_204703_E55FAAB4 
X-CRM114-Status: UNSURE (   8.29  )
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

> > Change-Id: Iddd3662445fe5373c254f994045b451b443fb91c
> 
> Remove Change-Id.

Oops. I forgot to remove this.
Thanks.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
