Return-Path: <SRS0=p6g3=L5=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08BABC07E99
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 23:58:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB76B601FD
	for <linux-phy@archiver.kernel.org>; Mon,  5 Jul 2021 23:58:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB76B601FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S68D24oCahQHS2jdD71PDGJykrg0Rppop3eoMSfdUbM=; b=gfnT/PXDS8x1Py
	kOigySd25/AyPXIUO3Mrb8BCPJGGyDSrx/QdcsvkE/Fp6iqpXXejUa+xbUuyDH7u7fFiKwS17eIYE
	CgAUmVM/4eMmGuLX+8s/N5UtT6a1br78Cysd8pfCDwGXzRtAdXEf5X5pU9NChpHUePO6mXcOhaC8U
	P6JN2DCZ7vLnY6puEIhWkrSQhSgXxdiACnytsZVwwKFcucBalcDjHpSlUIxeMpRrG+VAPy3wX4RwP
	fYxTwaoUoN4cusP6XydobUH4nr/N914WltBTNYVdGdz+ueneqyJgQFC4tagPJ8OLOTzu/Klb+K0/j
	zrmUV2dNAnNaHFxs6AUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0YTU-00A349-5b; Mon, 05 Jul 2021 23:58:04 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0YTQ-00A33i-Qq
 for linux-phy@lists.infradead.org; Mon, 05 Jul 2021 23:58:02 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20210705235754epoutp0322ee1c7acca754faf966baa7e1ffd1d1~PCnHIH4y71311313113epoutp03Q
 for <linux-phy@lists.infradead.org>; Mon,  5 Jul 2021 23:57:54 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20210705235754epoutp0322ee1c7acca754faf966baa7e1ffd1d1~PCnHIH4y71311313113epoutp03Q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1625529474;
 bh=mrXhDN8UH2j90WH6hD9up4DG1HCwB8EUeYfRgVYMm+Q=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=uRRYMtCrPCfP06Ws2yBeS08eSjjsVKbuiDfkMmoJPctoLWyZkAIrAIdlis0x/NIsV
 H2ww+d33gu1Kb8mKcKkaOjJn8B0Ea6fOqwR1xBhjFD/cFpT9mqn7bXy/eWP5t6DiVB
 qh4AkHikaoW3lGL3RqNtoD+J7UV12VbImaoC0Xs0=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20210705235754epcas2p18f14e14ba8a4fe46bb93e2404ac4f4ba~PCnG5cuOM1841918419epcas2p1W;
 Mon,  5 Jul 2021 23:57:54 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.40.190]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 4GJjL8208Tz4x9Pv; Mon,  5 Jul
 2021 23:57:52 +0000 (GMT)
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
 08.8B.09541.F7C93E06; Tue,  6 Jul 2021 08:57:51 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20210705235750epcas2p15485be9516ebf9fb8d3eefc43de6bcba~PCnDxen2i1841918419epcas2p1M;
 Mon,  5 Jul 2021 23:57:50 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20210705235750epsmtrp17f1416faafa962e764364dd3e8e2ed54~PCnDwzndy0297902979epsmtrp1W;
 Mon,  5 Jul 2021 23:57:50 +0000 (GMT)
X-AuditID: b6c32a47-5f3ff70000002545-41-60e39c7f4a0a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 DD.C5.08394.E7C93E06; Tue,  6 Jul 2021 08:57:50 +0900 (KST)
Received: from KORCO039056 (unknown [10.229.8.156]) by epsmtip2.samsung.com
 (KnoxPortal) with ESMTPA id
 20210705235750epsmtip2c095ac4013f7ffec87d905d2de697a02~PCnDmOUFZ2884128841epsmtip2M;
 Mon,  5 Jul 2021 23:57:50 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@canonical.com>, "'Kishon
 Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>
Cc: "'Marek Szyprowski'" <m.szyprowski@samsung.com>, "'Jaehoon Chung'"
 <jh80.chung@samsung.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
 <linux-phy@lists.infradead.org>
In-Reply-To: <bb462ea1-7a94-b697-a716-218594439487@canonical.com>
Subject: RE: [PATCH 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Tue, 6 Jul 2021 08:57:50 +0900
Message-ID: <000101d771f9$8fe64ff0$afb2efd0$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJxhG/0ySA52fji6ez6nJEIP6DltQF9hL5lAcxXREcCVRb03qnT8WkA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBJsWRmVeSWpSXmKPExsWy7bCmhW79nMcJBqdfc1g8mLeNzeLGrzZW
 iwtPe9gsNr79wWQxYdU3Fou1R+6yW+y8c4LZgd1jVkMvm8emVZ1sHpuX1Hv0bVnF6HH8xnam
 ANaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUXnwBdt8wcoDOU
 FMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWGhgV6xYm5xaV56XrJ+blWhgYGRqZA
 lQk5GXM6P7AULGavOHD5FEsD4xPWLkZODgkBE4l3928zdTFycQgJ7GCUOLjxORtIQkjgE6PE
 pLdFEPY3RomuTz4wDXf/zIRq2Mso8eloKxuE84JR4vHpZrBuNgF9iZcd21hBEiICExgl/nX3
 MII4zALrGSW+713ABFLFKeAocWfnT2YQW1jAR+LumYVg3SwCKhLr7hwEquHg4BWwlFj/jhEk
 zCsgKHFy5hMWEJtZQF5i+9s5zBAnKUj8fLoM7B8RATeJqcsmQtWISMzubGMG2SshMJND4v2h
 xVANLhLPF/+GsoUlXh3fwg5hS0m87G9jh2joZpRoffQfKrGaUaKzERoA9hK/pm9hBTmOWUBT
 Yv0ufRBTQkBZ4sgtqL18Eh2H/7JDhHklOtqEIBrVJQ5sn84CYctKdM/5zDqBUWkWks9mIfls
 FpIPZiHsWsDIsopRLLWgODc9tdiowBg5sjcxgpOolvsOxhlvP+gdYmTiYDzEKMHBrCTCKzLl
 UYIQb0piZVVqUX58UWlOavEhRlNgUE9klhJNzgem8bySeENTIzMzA0tTC1MzIwslcV4O9kMJ
 QgLpiSWp2ampBalFMH1MHJxSDUxbit7Pa9S/FhW8t/iZQXGt5L8cgy0TNl86zLG2QzDU0HXS
 wvyV8w9ys3yqvDx13brzc3aoH7nRsvooS0lj7xl11n8fzJ5s4rOfmjp1spHbVJU2thA1/2PF
 0zS80k/ttme0s1v3gNNmS92ejHDPDwtW/vNSOCwpN+thaIbaR1Xlth+RHwyiNV6J3kj8vcqY
 2eKoqvvVnSwt5m68wrn9t2zUU7Imb25mfpyvsPuIr8myQwpr5Nk0H21d+mXporPvN8twnf+z
 w2jzkekZ+2cb/dujccRoZXhQyipZ8X23tXqfpOf6aa1a/P7vsvUz977L7/ZufXsif87+uZMt
 Kz/WP8yXZl48ge+KT/2NPWLsV47eUmIpzkg01GIuKk4EAGz/WPkrBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmphkeLIzCtJLcpLzFFi42LZdlhJXrduzuMEg75tahYP5m1js7jxq43V
 4sLTHjaLjW9/MFlMWPWNxWLtkbvsFjvvnGB2YPeY1dDL5rFpVSebx+Yl9R59W1Yxehy/sZ0p
 gDWKyyYlNSezLLVI3y6BK2NO5weWgsXsFQcun2JpYHzC2sXIySEhYCJx989Mpi5GLg4hgd2M
 Emu7/rJDJGQlnr3bAWULS9xvOcIKUfSMUaL74x2wBJuAvsTLjm1gCRGBSYwSLy5vYAdxmAU2
 Mkrc6T3MBlIlJPCLUaKlyxHE5hRwlLiz8ycziC0s4CNx98xCsBoWARWJdXcOAt3BwcErYCmx
 /h0jSJhXQFDi5MwnLCA2s4C2xNObT6FseYntb+cwQ1ynIPHz6TKwd0QE3CSmLpsIVSMiMbuz
 jXkCo/AsJKNmIRk1C8moWUhaFjCyrGKUTC0ozk3PLTYsMMxLLdcrTswtLs1L10vOz93ECI4o
 Lc0djNtXfdA7xMjEwXiIUYKDWUmEV2TKowQh3pTEyqrUovz4otKc1OJDjNIcLErivBe6TsYL
 CaQnlqRmp6YWpBbBZJk4OKUamK6u/dG8Rej8+rli5yQecG+wCJZ7WJGxNai34KsNU8/U+r1H
 zq8VMtPpjoy6eL1qzmnPiZmPWo682qzt5LSZ8TtHfh/3StXYR90KDgtX1PeW+11cvevo2vns
 PWVCUd1aoduWSWj/vmP/QOKKW/+LWZ6ecqsZNC9K6U2fFrfn7PUdtr++aeb0TGaIMeC47/ev
 OKV7+W31II1PMw/P/3Z547ZgyfO3PLT2ObHFdfho63XXfjk/54iuq2tAZtuPH7+D4o12srsV
 Slq8rhNmmZQ8W1b+Q9WWos4lkz4JKDw92txatEFDcKJ055oK1vaLHSqCCwP+bzbWLlI5GahQ
 1vF6ritz7M3+Q46Nb4603tr+UYmlOCPRUIu5qDgRAI8CQ8gXAwAA
X-CMS-MailID: 20210705235750epcas2p15485be9516ebf9fb8d3eefc43de6bcba
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a
References: <20210705102318.102999-1-chanho61.park@samsung.com>
 <CGME20210705102414epcas2p4bfdfa979f08221c6834d64a2faa20b6a@epcas2p4.samsung.com>
 <20210705102318.102999-3-chanho61.park@samsung.com>
 <bb462ea1-7a94-b697-a716-218594439487@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_165801_311877_31BBFE26 
X-CRM114-Status: GOOD (  15.34  )
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

> >        - samsung,exynos7-ufs-phy
> > +      - samsung,exynosauto-ufs-phy
> 
> I would prefer real product ID (taken from registers or vendor kernel),
> not a marketing name "Auto" because it's too generic, unspecified, too
> much as wildcard.
> 
> If vendor kernel does not define name or product ID is also not specific,
> then it should include a version - so "autov9".

"samsung,exynosautov9-ufs-phy" can be a full name which can describe the SoC.

> I know that Exynos7 UFS did it but it was wrong. Headers should not define
> structures. What if a header needs to be included in different
> objects/units?
> 
> This should be probably a separate file (C file). Something like we did
> for Exynos PMU (drivers/soc/samsung/exynos-pmu.h).

It makes sense to me. I'll move the structures from "phy-exynos7-ufs.h"
to "phy-exynos7-ufs.c" and create "phy-exynosautov9-ufs.c".

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
