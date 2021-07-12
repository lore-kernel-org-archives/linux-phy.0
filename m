Return-Path: <SRS0=iZVT=ME=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64026C07E96
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 00:37:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D45B56102A
	for <linux-phy@archiver.kernel.org>; Mon, 12 Jul 2021 00:37:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D45B56102A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=samsung.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:Message-ID:Date
	:Subject:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mO5N1u9qEQZbQZKjpk77oqqZkrPB77+yNbrK9bta+jQ=; b=buTfkc/upWUrBS
	SOyrjQrr59/BzJlhOxCzYIqb+gk6Vm+YW9XYNYLJnoQkSEkaiEnOlohKh88dtl0156liPCLNPMdmS
	JxAo4MMSgwGXrCK0kjY6WxHC6JLlnBLAFp9NS4nQ6auFtDsvGlWJAfuUKmAGe/IjHSzNcgJztqq2Q
	5IcSA1I2SEYh1ctmCWPJNTXy7fg8diEcZUfzFo+gWh/Ah2Z/4Lwqlic/GyO5y40lqQBytAR7GZWs5
	udi1QnRcK4nnZGON7oLfmY/ahrVSPm80KMY/YzBK3OBX9Rmjcw8wLaBpaWMqENEJp8akQwENkUv7P
	LxGqgDXQFcLgzeAuC6rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2jwz-005dKu-CS; Mon, 12 Jul 2021 00:37:33 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2jww-005dKV-7I
 for linux-phy@lists.infradead.org; Mon, 12 Jul 2021 00:37:32 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20210712003722epoutp01b36e9a4e4ea5fbcf89f1f05df5f69d7f~Q5BSjjI9D0152201522epoutp01c
 for <linux-phy@lists.infradead.org>; Mon, 12 Jul 2021 00:37:22 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20210712003722epoutp01b36e9a4e4ea5fbcf89f1f05df5f69d7f~Q5BSjjI9D0152201522epoutp01c
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1626050242;
 bh=T1lMUPuzEuZ0xvdGx6Ipbi8L3GNpciZGowV30mk07LY=;
 h=From:To:Cc:In-Reply-To:Subject:Date:References:From;
 b=DBmyrgV+KahD4uIXYonZut7Vt2jdtU9nusR/hAdZ9HRi2DczfhwtNL1Q6ZY2NjJ06
 ie5Gg+Xju8mmpO98GuZAEcy4F1Bw2W5nBQLvfOnEibZrLUIwdmFM9cvEdgkU8fvKso
 A0LqWW0NDdJIiz7yIt8W8W7+Ln8Hacg1d9MNACTQ=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20210712003722epcas2p4a25d2c271cfc45c63e10f418de8caf03~Q5BSTx3Ag0860108601epcas2p4H;
 Mon, 12 Jul 2021 00:37:22 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.189]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4GNPww73T3z4x9Q2; Mon, 12 Jul
 2021 00:37:20 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 A0.45.09571.DBE8BE06; Mon, 12 Jul 2021 09:37:17 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20210712003716epcas2p2861f223b9920f0e5c492bc725696f21c~Q5BMwPEjf2760527605epcas2p2J;
 Mon, 12 Jul 2021 00:37:16 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20210712003716epsmtrp2273e66dc3f68f1c1ddce2df9c954a7f5~Q5BMvdRkR1332213322epsmtrp2Q;
 Mon, 12 Jul 2021 00:37:16 +0000 (GMT)
X-AuditID: b6c32a48-1dfff70000002563-e7-60eb8ebd45f2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 B4.3B.08289.CBE8BE06; Mon, 12 Jul 2021 09:37:16 +0900 (KST)
Received: from KORCO039056 (unknown [10.229.8.156]) by epsmtip1.samsung.com
 (KnoxPortal) with ESMTPA id
 20210712003716epsmtip171876c7bab96039e69094e1676571317~Q5BMgRhq42331523315epsmtip1l;
 Mon, 12 Jul 2021 00:37:16 +0000 (GMT)
From: "Chanho Park" <chanho61.park@samsung.com>
To: "'Krzysztof Kozlowski'" <krzysztof.kozlowski@canonical.com>, "'Kishon
 Vijay Abraham I'" <kishon@ti.com>, "'Vinod Koul'" <vkoul@kernel.org>
Cc: "'Marek Szyprowski'" <m.szyprowski@samsung.com>, "'Jaehoon Chung'"
 <jh80.chung@samsung.com>, "'Alim Akhtar'" <alim.akhtar@samsung.com>,
 <linux-phy@lists.infradead.org>
In-Reply-To: <180921f4-8ac2-95b4-4799-a0e6a7a805be@canonical.com>
Subject: RE: [PATCH v5 2/2] phy: samsung-ufs: support exynosauto ufs phy driver
Date: Mon, 12 Jul 2021 09:37:16 +0900
Message-ID: <000401d776b6$107e0a20$317a1e60$@samsung.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQGv/F2NbxNMrs+i1xjoVsAtVeoPPAKwL/g1Ao+mr00CWHhmW6tQsCiA
Content-Language: ko
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBJsWRmVeSWpSXmKPExsWy7bCmme7evtcJBsfnsFk8mLeNzeLGrzZW
 iwtPe9gsNr79wWQxYdU3Fou1R+6yW+y8c4LZgd1jVkMvm8emVZ1sHpuX1Hv0bVnF6HH8xnam
 ANaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8xNxUWyUXnwBdt8wcoDOU
 FMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWGhgV6xYm5xaV56XrJ+blWhgYGRqZA
 lQk5GX87HjIVXGSpmNjB3sB4h7mLkZNDQsBE4sWE6yxdjFwcQgI7GCXenZ3CCuF8YpSYe/gz
 O4TzmVHi8KcZrHAt3QvZIBK7GCWu9K1kgnBeMEpcWP6CHaSKTUBf4mXHNrBZIgITGCX+dfcw
 gjjMAusZJb7vXcAEUsUp4Cix/eg8sFOEBQIl/lz/wQJiswioShx60QRUw8HBK2Ap8XS9EkiY
 V0BQ4uTMJ2AlzALaEssWvob6QkHi59NlYOeJCLhJHDv/mBmiRkRidmcbVM1MDokZN2QgbBeJ
 eQ9+skHYwhKvjm9hh7ClJD6/2wv2moRAN6NE66P/UInVjBKdjT4Qtr3Er+lbWEFuYxbQlFi/
 Sx/ElBBQljhyC+o0PomOw3/ZIcK8Eh1tQhCN6hIHtk9ngbBlJbrnfGadwKg0C8ljs5A8NgvJ
 A7MQdi1gZFnFKJZaUJybnlpsVGCCHNmbGMFJVMtjB+Pstx/0DjEycTAeYpTgYFYS4f3W+ypB
 iDclsbIqtSg/vqg0J7X4EKMpMKQnMkuJJucD03heSbyhqZGZmYGlqYWpmZGFkjgvB/uhBCGB
 9MSS1OzU1ILUIpg+Jg5OqQameUeY9LfcKZp+ufwL4/clIn1ST43Zdp1UPB57N3S5075P4dr5
 +u1cGxapn5hcdP3K4/5rp5z3zb3Y9nbv8iPlPDNib1b7/Xr26+Wxuq8ZCcxWISX65zXYvpxS
 3Ohe7Gk4u+SAusLpZKlKgwVtPxIdX35xt08QPJ4foRieeDq1rvteZu/c1/d+ve+re3t6mYjS
 sqw97sczBC0WC0eILV53TnuL7fHJyxsFzk/JmdfuXnntxAvx/qtlJ/70Pd9p8L9YfIKW/8Sz
 F0P6d0e8tdpyJvj4zWOrH3QmN7ft3fpfLkpzpcj886u+zN0014XvuO3etZvtC/QK3Z79er59
 uYjM6+1irF/W/1WxWPuslpOh7acSS3FGoqEWc1FxIgA6HjlRKwQAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmplkeLIzCtJLcpLzFFi42LZdlhJTndP3+sEg1vHpCwezNvGZnHjVxur
 xYWnPWwWG9/+YLKYsOobi8XaI3fZLXbeOcHswO4xq6GXzWPTqk42j81L6j36tqxi9Dh+YztT
 AGsUl01Kak5mWWqRvl0CV8a7W5NYCy6wVDx+3cbSwHiTuYuRk0NCwETiRfdCti5GLg4hgR2M
 EltvnWODSMhKPHu3gx3CFpa433KEFaLoGaPEh/OPGEESbAL6Ei87toElRAQmMUq8uLyBHcRh
 FtjIKHGn9zDU3F+MErs+7GMFaeEUcJTYfnQe2HJhAX+JGa8OgcVZBFQlDr1oYupi5ODgFbCU
 eLpeCSTMKyAocXLmExYQm1lAW6L3YSsjjL1s4WuoHxQkfj5dBjZGRMBN4tj5x8wQNSISszvb
 mCcwCs9CMmoWklGzkIyahaRlASPLKkbJ1ILi3PTcYsMCo7zUcr3ixNzi0rx0veT83E2M4JjS
 0trBuGfVB71DjEwcjIcYJTiYlUR4v/W+ShDiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6HrZLyQ
 QHpiSWp2ampBahFMlomDU6qBSexZSLGdz3b+Q7tfTAuwtGt6km7/ZUv8h8AeO4+AGu0At+IO
 ho4jO68IS1zJNZU2CHto679eY/+MY8birdLZjeqvDHcFu61zX3/4XMIR7cIfc7rqdF/ZM/lw
 aZbmz06tqsxQnZRwe8mMv6VJ4p77fUoYlK9/NJSXU+b+r5iQfof/38uncoarJHdyBDwIvNZ9
 8VReQNxht5t6G06bLZiq27usTHe2i6KwDu+9GoMbnGr3sk7PLiq+qxdxjqnVP6hcYFnSjgW+
 H7k/lcvxnT0qf21yH98pS5bAy4UcyyczLvx9xHk9s8Oy7ubFSXX+j349O3XwoafzteiwV4Ul
 7cKJ+wM3HTuzjke946Mb42ElluKMREMt5qLiRAB1/LNlGAMAAA==
X-CMS-MailID: 20210712003716epcas2p2861f223b9920f0e5c492bc725696f21c
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba
References: <20210709094524.110193-1-chanho61.park@samsung.com>
 <CGME20210709100038epcas2p231dc148962cc46065f7a896e7d30cbba@epcas2p2.samsung.com>
 <20210709094524.110193-3-chanho61.park@samsung.com>
 <180921f4-8ac2-95b4-4799-a0e6a7a805be@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210711_173730_819217_CA58A75F 
X-CRM114-Status: GOOD (  15.04  )
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

> > Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> 
> You received a review tag, so please include it. I understand you did not
> include my review for first patch due to changes but here it was only
> rebase, so the tag is still valid.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

As I mentioned in cover-letter, I resend this series with module build support. So, there is a bit of change in Makefile so I need to get your review again. Anyway, I'll put your tag if I need to publish next patch.

Best Regards,
Chanho Park


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
