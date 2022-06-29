Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9442CCA480
	for <linux-phy@archiver.kernel.org>; Wed, 29 Jun 2022 02:58:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AeIDDZG22WW7NPSv+Vzt57wdk6R/ZCcCvhhxhErWyZY=; b=3k/GcAW6ImJiFq
	KiXoVKgzUq8MH1s/9Iq7b3jXUhofLyUGHS+GvESeqgV/QKVmV7RU5SS1JfWb6x5JYz09KcE3reqBL
	HIkyHTYlDf9p+gnJAl/in2RpvrRzjOAD4NCtr6R95SI3ENNl65eRmGL2YpYD46iAfypw5LF6kgns3
	ZF/s/+xHdIf0BE3vDdr++ccqe4BqwAQJReptq0Aj+ZDAn9tfySOYliBn8+e2qeY4QiIyINEejcN7e
	xKaZGgQz74zZv3wUK6fCxnPSC0NP1aYWodTFNaB5NMQzaCJbnwl12B6dsOs+4QRu5wqxmpTQWa6gp
	cGCoRqGD1ty5uxn/MZuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Nub-0099zW-3H; Wed, 29 Jun 2022 02:58:41 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Nti-0099PI-Uq
	for linux-phy@lists.infradead.org; Wed, 29 Jun 2022 02:57:51 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220629025743epoutp0484d5357d1c5d188989567353b52b019c~8_AUKC_SP2898428984epoutp04A
	for <linux-phy@lists.infradead.org>; Wed, 29 Jun 2022 02:57:43 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220629025743epoutp0484d5357d1c5d188989567353b52b019c~8_AUKC_SP2898428984epoutp04A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1656471463;
	bh=z933UAMijRe4uU2rKifzbBV12jGHiSdsQNDvfbD2Th0=;
	h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
	b=UuguWVymy0oOQFOqU7iY2LO7FVLhtCWOE1wG7f+no2xPiZM3O++8WabA+R7cBktm+
	 AbQPFezPmX20XiNk/WXzo4CXUBothfrnSOUj9LkMWKi3Ebnfipw1daGnj9l74Cc3Ts
	 Bv7jxOMhUh0l6E2LpyQCjGcFStLzVNdmdtgzg+Ds=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTP id
	20220629025742epcas2p246f4e655c1b9204467df2addd27d413a~8_ATRksLl1263212632epcas2p2G;
	Wed, 29 Jun 2022 02:57:42 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.98]) by
	epsnrtp1.localdomain (Postfix) with ESMTP id 4LXmNQ0Gwbz4x9Py; Wed, 29 Jun
	2022 02:57:42 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	C4.17.09642.5AFBBB26; Wed, 29 Jun 2022 11:57:41 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
	20220629025741epcas2p22b4208e8eb8191755a63d080e830be7e~8_ASIlLU92808528085epcas2p2R;
	Wed, 29 Jun 2022 02:57:41 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220629025741epsmtrp2d558d7a632653d757052ca6ace02573d~8_ASHvZKB3021930219epsmtrp2J;
	Wed, 29 Jun 2022 02:57:41 +0000 (GMT)
X-AuditID: b6c32a47-5f7ff700000025aa-88-62bbbfa59e11
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	58.50.08905.5AFBBB26; Wed, 29 Jun 2022 11:57:41 +0900 (KST)
Received: from KORCO082417 (unknown [10.229.8.121]) by epsmtip2.samsung.com
	(KnoxPortal) with ESMTPA id
	20220629025741epsmtip281a3ea2d279b0e6ab0f25c35feceac1c~8_AR4cjYv3231032310epsmtip2k;
	Wed, 29 Jun 2022 02:57:41 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Marek Szyprowski'" <m.szyprowski@samsung.com>,
	<linux-pci@vger.kernel.org>, <linux-samsung-soc@vger.kernel.org>,
	<linux-phy@lists.infradead.org>
Cc: "'Jingoo Han'" <jingoohan1@gmail.com>, "'Lorenzo Pieralisi'"
	<lpieralisi@kernel.org>, "'Rob	Herring'" <robh@kernel.org>,
	=?utf-8?Q?'Krzysztof_Wilczy=C5=84ski'?= <kw@linux.com>, "'Bjorn Helgaas'"
	<bhelgaas@google.com>, "'Krzysztof Kozlowski'"
	<krzysztof.kozlowski@linaro.org>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
	"'Kishon Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'"
	<vkoul@kernel.org>
In-Reply-To: <20220628220409.26545-2-m.szyprowski@samsung.com>
Subject: RE: [PATCH 2/2] PCI: dwc: exynos: Correct generic PHY usage
Date: Wed, 29 Jun 2022 11:57:41 +0900
Message-ID: <015b01d88b63$ff715430$fe53fc90$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: ko
Thread-Index: AQGdjdchTSTg+Rpi6lun/yVDH9znIgJsqL0KAYlyZYutu/tkgA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrOJsWRmVeSWpSXmKPExsWy7bCmue7S/buTDOZsN7d4MG8bm8WSpgyL
	FV9msltceNrDZrH39VZ2i4ae36wWZ+cdZ7OYsOobi8WM8/uYLFr+tLBYrD1yl93i/54d7BY7
	75xgduD12DnrLrvHgk2lHptWdbJ53Lm2h83jyZXpTB6bl9R79G1Zxehx/MZ2Jo/Pm+QCOKOy
	bTJSE1NSixRS85LzUzLz0m2VvIPjneNNzQwMdQ0tLcyVFPISc1NtlVx8AnTdMnOArlZSKEvM
	KQUKBSQWFyvp29kU5ZeWpCpk5BeX2CqlFqTkFJgX6BUn5haX5qXr5aWWWBkaGBiZAhUmZGfM
	vdfNXrCUpWLCxfOMDYxHmLsYOTkkBEwkpq/8ydLFyMUhJLCDUWLen8XMEM4nRokHhzazQzjf
	GCXWNlxlgWk5uekSE4gtJLCXUeLtFQ6IoheMEv+efgNLsAnoS7zs2MYKYosIzGKU2LJPBKSI
	WWAOs8TPdWfAlnMK2En03F3ADmILC7hIfDt3CCzOIqAq0fRkESOIzStgKfHrMYwtKHFy5hOw
	K5gF5CW2v50D9YSCxM+ny1gh4iISszvbmCEWO0lsn/+dEWSxhMAdDol3x3YxQTS4SKy/3Qz1
	jrDEq+Nb2CFsKYnP7/ayQdjFEktnfWKCaG5glLi87RdUwlhi1rN2oKkcQNs0Jdbv0gcxJQSU
	JY7cgrqNT6Lj8F92iDCvREebEESjusSB7dOhtspKdM/5zDqBUWkWks9mIflsFpJvZiHsWsDI
	sopRLLWgODc9tdiowBge28n5uZsYwSlay30H44y3H/QOMTJxMB5ilOBgVhLhXXhmZ5IQb0pi
	ZVVqUX58UWlOavEhRlNgWE9klhJNzgdmibySeEMTSwMTMzNDcyNTA3MlcV6vlA2JQgLpiSWp
	2ampBalFMH1MHJxSDUxKMU66fQLXipbvSDhkZXlEQ+HnI4XPJ934g+8FnxK4bHg39IPxe/3P
	ljOrS1h8JV7t1V86O6mU21LLZQ77T5WFcyws7F8db+X6XF1wIbdi1pfT2U8OzmmL+NUhI5d6
	wt/noEfqZ0YN30n7Zn+49XvezvWqxxlfCX2YsuhoiWqkm07mY650+dZTZjEm1yeFiE1rDEmT
	MOFpPyyl+VHqxcydkomPYn1/TVF8vjHQdefup5o5p7w1IxIsireX7A9PSRS8v+IPh79WqlmZ
	wBoH9cmXhE5NtfS5OG2epr/fvKTAc+p5c6sWnHqx9OQ+rlk58vdPl92/5Frs8X/HkXXtKdsk
	c6aJaq/R0FZe/Mtf5rESS3FGoqEWc1FxIgABCdm3WgQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrCIsWRmVeSWpSXmKPExsWy7bCSvO7S/buTDCZe5rJ4MG8bm8WSpgyL
	FV9msltceNrDZrH39VZ2i4ae36wWZ+cdZ7OYsOobi8WM8/uYLFr+tLBYrD1yl93i/54d7BY7
	75xgduD12DnrLrvHgk2lHptWdbJ53Lm2h83jyZXpTB6bl9R79G1Zxehx/MZ2Jo/Pm+QCOKO4
	bFJSczLLUov07RK4Mube62YvWMpSMeHiecYGxiPMXYycHBICJhInN11i6mLk4hAS2M0osef3
	RFaIhKzEs3c72CFsYYn7LUfA4kICzxgltl3lA7HZBPQlXnZsYwVpFhGYwyjx+sRDNhCHWWAB
	s8Sh/9fZIcYeZJR4uGMq2D5OATuJnrsLwMYKC7hIfDt3CCzOIqAq0fRkESOIzStgKfHrMYwt
	KHFy5hMWEJtZQFvi6c2nULa8xPa3c6B+UJD4+XQZK0RcRGJ2ZxtYXETASWL7/O+MExiFZyEZ
	NQvJqFlIRs1C0r6AkWUVo2RqQXFuem6xYYFhXmq5XnFibnFpXrpecn7uJkZwxGpp7mDcvuqD
	3iFGJg7GQ4wSHMxKIrwLz+xMEuJNSaysSi3Kjy8qzUktPsQozcGiJM57oetkvJBAemJJanZq
	akFqEUyWiYNTqoFppZFkr7x6p6Jfwz4rP20fbqMLZUxcwiseus1kYLzRt85V50bpq26+/H7X
	A2devj+w5Hff1HVCP5/Id+5eFdqtZZl8fS3Phh9hUTm24Xdj2KefrYmM3qrpYPdw7ldOno9S
	fJcdzO/ExvfXO19uCKw/ZKF8v/RvTeJa99AV7zv2rZVofjbPrGDxzO+9Vjkb5hefe/Gov2Pj
	5xqxGbc7Oyo/7JvH5xQhfD5sfd2/HWbS5eG+W0Qe5K4OFa6/+39LrMmcZ9fi3mgeNxKv5OLS
	+fYkOfbIv9wsmU69c7Mq3890fH5Y5HViSVbDSh2uwqgZxzoXVRTK3T66xavaad+x+uRri0se
	T8i5fqVw0tFfOs5KLMUZiYZazEXFiQCCgi/URwMAAA==
X-CMS-MailID: 20220629025741epcas2p22b4208e8eb8191755a63d080e830be7e
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220628220441eucas1p2098d46abc47ec1888781fdc5319dec67
References: <20220628220409.26545-1-m.szyprowski@samsung.com>
	<CGME20220628220441eucas1p2098d46abc47ec1888781fdc5319dec67@eucas1p2.samsung.com>
	<20220628220409.26545-2-m.szyprowski@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_195747_377437_A94EFBAB 
X-CRM114-Status: GOOD (  10.28  )
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

> The proper initialization for generic PHYs is to call first phy_init(),
> then phy_power_on().
> 
> While touching this, lets remove the phy_reset() call. It is just a left-
> over from the obsoleted Exynos5440 support and current exynos-pcie PHY
> driver doesn't even support this function. It is also rarely used by other
> drivers.
> 
> Reported-by: Bjorn Helgaas <helgaas@kernel.org>
> Signed-off-by: Marek Szyprowski <m.szyprowski@samsung.com>

Reviewed-by: Chanho Park <chanho61.park@samsung.com>

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
