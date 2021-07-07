Return-Path: <SRS0=i3rj=L7=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC82AC07E96
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:50:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6248F61C9C
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jul 2021 00:50:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6248F61C9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rmUZ7p488Q+kJluRRBjg1eFkNuRKRF+fMr0/FcTQOX4=; b=Y1gmhiusp2hTzY
	WEZhzjBTGmFCASL0MC6JAumivsfCNiCBEQViMnpoqeSfAxbAEVq4CHoVOEC2ZxoY9q0Qd2t+w8fvg
	kMNFdqjGebgXHiMQ2+sj87w+FhsFjfH9g9cvwldZCSPsp6dIKEBf2Hzo4dlQFNE8f/rSYHOJIBThL
	xwv08tH+IWpBNguRouvX8RW4TKfM+OLOEBq/WoF+rFK0STxbedyjv5R3S+5b9NCIiOU9LEon1Uz12
	Z62WtA/w0Ug7GD/IBn6JIdyeqYPyGpDM4wMxkhtvLB3uN6Qc8hmSuZFzjRAqbAcLU7lZOn0WDb744
	1zceK9PSEnScJYVyrtrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0vlt-00D7PI-T0; Wed, 07 Jul 2021 00:50:37 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0vlr-00D7Oy-29
 for linux-phy@lists.infradead.org; Wed, 07 Jul 2021 00:50:36 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210707005025epoutp0306484df62c2700328a552b89f3c21c6f~PW_Qaozkg0572205722epoutp03K
 for <linux-phy@lists.infradead.org>; Wed,  7 Jul 2021 00:50:25 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210707005025epoutp0306484df62c2700328a552b89f3c21c6f~PW_Qaozkg0572205722epoutp03K
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625619025;
 bh=oJi2GN9/qD6QeV+gCM42hi2DGfcqVwSAUpRiAvFquwE=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=atMTUvz5lD1+DIzTDyQOQagKS6wcK+RtX6Sm+ixlZXX7HoMkTeI3f/1U5J05QvyKT
 MaZYNOPOv1TdNx6xurdw3CdIxP0Rg1DirdfDC+11TWDASq22lLFZ/Axd0C1vT3BQMv
 44Sqs8BQCGSOscPeSYPT06Tpi/XYNKP+DJ+VBUwI=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20210707005025epcas2p2501f57fd8b79ef6a3ede1029377e6515~PW_QCPKb12545225452epcas2p21;
 Wed,  7 Jul 2021 00:50:25 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.183]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 4GKLSH23W9z4x9QK; Wed,  7 Jul
 2021 00:50:23 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 3F.7D.09571.E4AF4E06; Wed,  7 Jul 2021 09:50:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
 20210707005022epcas2p36124d3cc2a220bd584bd8b410a396943~PW_M84T-J2476324763epcas2p3b;
 Wed,  7 Jul 2021 00:50:22 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210707005022epsmtrp1113cbbac51511221b41d19d611264f65~PW_M8E8A62065920659epsmtrp12;
 Wed,  7 Jul 2021 00:50:22 +0000 (GMT)
X-AuditID: b6c32a48-1f5ff70000002563-fd-60e4fa4ef9c8
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 90.2C.08394.D4AF4E06; Wed,  7 Jul 2021 09:50:21 +0900 (KST)
Received: from KORCO039056 (unknown [10.229.8.156]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20210707005021epsmtip154c86c3d6c28f1ffbb9012559b78da82~PW_MzhoYe1410814108epsmtip1B;
 Wed,  7 Jul 2021 00:50:21 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@canonical.com>, "'Kishon
 Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>
Cc: "'Marek Szyprowski'" <m.szyprowski@samsung.com>, "'Jaehoon Chung'"
 <jh80.chung@samsung.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
 <linux-phy@lists.infradead.org>
In-Reply-To: <c8327d67-6a73-d06d-271e-62556f9f2fa1@canonical.com>
Subject: RE: [PATCH v3 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Wed, 7 Jul 2021 09:50:21 +0900
Message-ID: <000001d772ca$10aa8590$31ff90b0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQFpw8l8S+cvKXVs07nnQ84mAOFUIwF7rZOaAfnyMPgB/LRpu6vmeZFg
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprFJsWRmVeSWpSXmKPExsWy7bCmqa7frycJBod7LCwezNvGZnHjVxur
 xYWnPWwWG9/+YLKYsOobi8XaI3fZLXbeOcHswO4xq6GXzWPTqk42j81L6j36tqxi9Dh+YztT
 AGtUjk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJeYm6qrZKLT4CuW2YO0BlK
 CmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJDwwK94sTc4tK8dL3k/FwrQwMDI1Og
 yoScjPmf/jEW3GCq6Lh8g7GBcQpTFyMnh4SAicTmricsXYxcHEICOxglLl6czQThfGKU+P9h
 KpTzjVFiTu9XFpiWrqutzBCJvYwSz9ZugKp6wSjx/do8sMFsAvoSLzu2sYIkRAQmMEr86+5h
 BHGYBdYDVe1dAFTFwcEp4Chx8qclSIOwQKBEy74jjCA2i4CKxNn9l5hBbF4BS4nLD9ewQdiC
 EidnPgE7g1lAW2LZwtfMECcpSPx8uowVxBYRcJN4snsbVI2IxOzONrBTJQSmckjsXTyRFaLB
 RWLR6W/sELawxKvjW6BsKYmX/W3sEA3djBKtj/5DJVYzSnQ2+kDY9hK/pm9hBXmAWUBTYv0u
 fRBTQkBZ4sgtqL18Eh2H/7JDhHklOtqEIBrVJQ5snw4NRVmJ7jmfWScwKs1C8tksJJ/NQvLB
 LIRdCxhZVjGKpRYU56anFhsVmCBH9yZGcCLV8tjBOPvtB71DjEwcjIcYJTiYlUR463yeJAjx
 piRWVqUW5ccXleakFh9iNAWG9URmKdHkfGAqzyuJNzQ1MjMzsDS1MDUzslAS5+VgP5QgJJCe
 WJKanZpakFoE08fEwSnVwLTDQv6TqtCGgq+tfEk2n8Inyx1plPax/v563rqtvfPqsksrq22e
 CWo+U++VTTT+xnpInddnnsi8H4s6NsW7Pug2ZrKPnv1h+mmpbTc4D/p2X2gv+lUme3uqqV3B
 0Y16S7/HfUvnW8BUF7Uk/dHEY0Y/tN+emsinKLXlxyPHn+oFa5drKEZ/XvZFyLvkvGTk9Pe7
 Yk6Ffp4y8/lKnf7d8SZuH7vXcjUUXO/c8mcRz7xskY/Jf8+k/ZOavPPlMaYJHi0rd9/idHnt
 NU0u5ph33rzri+Ukp1df27W9643Z3pdLivRvbtt2bL2sZMesxzoLmXYu0pqqknxPiy026KFO
 QIXxuTv1HYdZjd7Wr662XDFdiaU4I9FQi7moOBEAdoYoAC0EAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphkeLIzCtJLcpLzFFi42LZdlhJTtf315MEgwv/rS0ezNvGZnHjVxur
 xYWnPWwWG9/+YLKYsOobi8XaI3fZLXbeOcHswO4xq6GXzWPTqk42j81L6j36tqxi9Dh+YztT
 AGsUl01Kak5mWWqRvl0CV0b73plsBdeZKpb0bWRvYJzI1MXIySEhYCLRdbWVGcQWEtjNKHH/
 VjxEXFbi2bsd7BC2sMT9liOsXYxcQDXPGCVWfv/GCpJgE9CXeNmxDSwhIjCJUeLF5Q3sIA6z
 wEZGiTu9h9kgWn4wShz9uJeli5GDg1PAUeLkT0uQbmEBf4nuf//AVrAIqEic3X8J7AxeAUuJ
 yw/XsEHYghInZz5hAbGZBbQlnt58CmcvW/iaGeI8BYmfT5eBXSQi4CbxZPc2qBoRidmdbcwT
 GIVnIRk1C8moWUhGzULSsoCRZRWjZGpBcW56brFhgWFearlecWJucWleul5yfu4mRnBEaWnu
 YNy+6oPeIUYmDsZDjBIczEoivHU+TxKEeFMSK6tSi/Lji0pzUosPMUpzsCiJ817oOhkvJJCe
 WJKanZpakFoEk2Xi4JRqYKqqOuh5IvHwDOW1nq/rps2olpS5HNt7ZPL2Fblz7sxmT+J4eZir
 UdwssLdNL2veX6X5W15PXhAgarsgVmfZlJUaOS/PbhUxnStyp2iDEof7N5FJlk+E/vW5MKlw
 TfLQcK9ODLnSutm060qjj2i9bG7npK5TXFG3rz0r51k4n9HLVFI5+94ZLYtzs5t2z7Rrfe5z
 /owJMFlW9r9tCBZcKJev/DGm0C+tU2zl6mPTDKvPavYVHlymsmgFy4aeVcJrp7toTe2ZKdCS
 v2Sh6MXXKiFT/vI86X+VKbbVP9qm8F7s2aJEnVLFezYFqaW/HK9cYz6vmnn9nPr8bIUZn9NW
 mr9U/po19a+6QYm6jBenEktxRqKhFnNRcSIA0jrUTxcDAAA=
X-CMS-MailID: 20210707005022epcas2p36124d3cc2a220bd584bd8b410a396943
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174
References: <20210706021804.12890-1-chanho61.park@samsung.com>
 <CGME20210706021805epcas2p41840eeb633ef30a5f0812862cb4df174@epcas2p4.samsung.com>
 <20210706021804.12890-3-chanho61.park@samsung.com>
 <c8327d67-6a73-d06d-271e-62556f9f2fa1@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210706_175035_542088_34B26757 
X-CRM114-Status: UNSURE (   9.95  )
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

> > +#include <linux/io.h>
> > +#include <linux/phy/phy.h>
> 
> I commented before that io.h is not needed but also phy.h looks unused
> here. If there are used in phy-samsung-ufs.h, they should be put there.

<linux/io.h> will not be necessary and I'll move phy.h inclusion to phy-samsung-ufs.h

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
