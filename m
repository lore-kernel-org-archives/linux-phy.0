Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93877CCA47B
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 10:46:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60vJbd4S26wFUtp+X/CE5S8tFJvMosjakYHbys+t/BQ=; b=FDDNUnJeus6Ih6
	ESghAuiN98LuVTxWSZp3t0aV2R9DTZ35pgkZ2s2CtaRdhTVpNy4Pxln2qQPzGBJX6r94Z9QAfPyKs
	PhCE8ZcU9N6LNY5ucA0sdppkvGcTt47gq21XpiHHRd77AjfmsVhQh9qLo30jk55d02Rqhw4Ti4BDl
	LLOEq+3rgMFLCeSkULXZ41RDXooKxBXyUD3FYm3k9KPhTCvHrtkw9NXofwB/Pio91JaVpSQJ6ugRl
	Th627s/J6xzS0QVR7DrNAf3nxuHvrBOVLoIAGtbsVVspuCMtgRc642Pa8PJKpjW9eSMotlT9wt/PL
	jlX3rRdz+fcitmqje6vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzc9d-007fPM-Gu; Fri, 10 Jun 2022 10:46:13 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzc7b-007eRZ-4Y
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 10:44:08 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout2.samsung.com (KnoxPortal) with ESMTP id 20220610104405epoutp02ecbe36d640bcd25996d70a96963d0e97~3PHFNrHeq1120711207epoutp02q
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 10:44:05 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com 20220610104405epoutp02ecbe36d640bcd25996d70a96963d0e97~3PHFNrHeq1120711207epoutp02q
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654857845;
	bh=mzLAmWqCxZhs1S6BV/xNsG1aAfxb0YUHxD4qs10oM1Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=t5VJZobK/7rITCARZg2OgpOfChue4sfj+wcQ1NqyhKeXFJbevhUXBE9iAjXrDsbeq
	 z+lKA5x8nEBy/2N959y+Skobg4wSa4AInJ/D6tfytRYpODGaz2xAmbRCoxUmVJsPrb
	 6IzExwZRGMskDLnOAMT1xjxi3e3+N+RH/R0aCLvY=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p1.samsung.com (KnoxPortal) with ESMTP id
	20220610104404epcas5p1e522b006fdee5c85f380dd3fc3086a90~3PHEtc-8Z0424004240epcas5p1N;
	Fri, 10 Jun 2022 10:44:04 +0000 (GMT)
Received: from epsmges5p1new.samsung.com (unknown [182.195.38.183]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LKHdD44fgz4x9Pv; Fri, 10 Jun
	2022 10:44:00 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	07.7E.10063.D6023A26; Fri, 10 Jun 2022 19:43:57 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289~3PG9AsCo02785727857epcas5p4C;
	Fri, 10 Jun 2022 10:43:56 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220610104356epsmtrp13d7de3a8e9de5c8d82d775322e5c0224~3PG865RcI1337313373epsmtrp1T;
	Fri, 10 Jun 2022 10:43:56 +0000 (GMT)
X-AuditID: b6c32a49-4b5ff7000000274f-01-62a3206d8874
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	96.4D.08924.C6023A26; Fri, 10 Jun 2022 19:43:56 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220610104354epsmtip1036d2cbc6dcefc32a22d4b7441cbb51f~3PG7CBmks1361013610epsmtip1I;
	Fri, 10 Jun 2022 10:43:54 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v4 5/6] ufs: host: ufs-exynos: add mphy apb clock mask
Date: Fri, 10 Jun 2022 16:11:18 +0530
Message-Id: <20220610104119.66401-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220610104119.66401-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrPKsWRmVeSWpSXmKPExsWy7bCmpm6uwuIkg/sP+CwezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFHZ
	NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVysplCXm
	lAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCkwK9IoTc4tL89L18lJLrAwNDIxMgQoTsjMa
	PvYyFVzlqGhdOpu1gXEFexcjJ4eEgInEtWWTGEFsIYHdjBIfT4t3MXIB2Z8YJd61b2aCcD4z
	ShztWcTcxcgB1rH/QyhEfBejRMe01SwQ3S1MEp86ckFsNgFtibvTt4A1iwg0M0oc7NgF5jAL
	9DFJLLl9mxVkkrCAm8SxddYgDSwCqhJzXy5lBbF5BWwkend/YIQ4T15i9YYDzCA2p4CtxLP1
	l1lB5kgITOSQePKnhwWiyEXiybfbrBC2sMSr41ugfpOSeNnfxg5xtYfEoj9SEOEMibfL10PN
	t5c4cGUOC0gJs4CmxPpd+iBhZgE+id7fT5ggOnklOtqEIKpVJZrfXYVaKi0xsbsbaqmHxO9H
	N6HBMIFRYtJKqQmMsrMQhi5gZFzFKJlaUJybnlpsWmCYl1oOj6Xk/NxNjOCUqOW5g/Hugw96
	hxiZOBgPMUpwMCuJ8AbcXpQkxJuSWFmVWpQfX1Sak1p8iNEUGGITmaVEk/OBSTmvJN7QxNLA
	xMzMzMTS2MxQSZxX4H9jkpBAemJJanZqakFqEUwfEwenVAPT+g1Jxzet5OH/0xsQxn45/LXX
	s/NNH+cKdH02sGU3n8e5PnM3h5GV2cWn+X/lL6fUi3FUbgixW93rx+NzqUDu1pWyBV2xE4wi
	GB//1/ozwW8WfwjPV0fPKXsNV9/716V9ruLNlHO8Rts08xY39z4RD9+85/vcKS/E526ecna5
	Z9PpsG/5tx6d0fr3rbPzypLWu48+L2q1aLcwnpJ/Zs7hrWk91eoCaoJRp9exM4osMjO7qRi1
	/t2//Rnm3snZ9+b/evrI9sLnGRIXXfPmJK7eeGJG2YvXLsFl1tv+cxhfOLlhofrLBc8Ns46c
	ri/0btGqYdXznP5V+YeSuor2m9le0QrOKT56WV/9d88TWrKpQYmlOCPRUIu5qDgRADoZdMMS
	BAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrKLMWRmVeSWpSXmKPExsWy7bCSnG6OwuIkg+sfxS0ezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFFc
	NimpOZllqUX6dglcGQ0fe5kKrnJUtC6dzdrAuIK9i5GDQ0LARGL/h9AuRi4OIYEdjBLznp1g
	62LkBIpLS1zfOIEdwhaWWPnvOTtEUROTxIULV5hAEmwC2hJ3p28Bs0UE2hkl7m9nAyliFpjF
	JPF+0hNGkA3CAm4Sx9ZZg9SwCKhKzH25lBXE5hWwkejd/YERYoG8xOoNB5hBbE4BW4ln6y+D
	1QgB1SzuOMc8gZFvASPDKkbJ1ILi3PTcYsMCo7zUcr3ixNzi0rx0veT83E2M4JDW0trBuGfV
	B71DjEwcjIcYJTiYlUR4A24vShLiTUmsrEotyo8vKs1JLT7EKM3BoiTOe6HrZLyQQHpiSWp2
	ampBahFMlomDU6qBKU2kz+G2em/5y8NbdttIfn1mEP9mlkGqcq3+owmrbnet++Tit6/qXfRv
	pdzGmeuuLn928HzYAcFtHEwJOi6in/mypweF2e/++UbwueiMm1WMDzyuP+JeXXdb4+p0hcs3
	M6e9f2EScrlC5qsl/987pZ6LPMuyzokGXmFNeWNS8Dcv1C3rDJOB45WAt/Hr5V9peZyNDX03
	LU7B0mqhA2fcE/3vXuIdj6PdK5Z9/9CZe2p/JzPLilptY6Vo2bO1jC/tbGa+45XqX1s413th
	UHCS9cP9YdtLZj5dX6f06M6ki6tjQ6fotno+n2xx0fO1ZvGDD8etPsz/xsU8+aQ798WYnzdX
	355/VV11qmePfHvaBiWW4oxEQy3mouJEANvUOpvYAgAA
X-CMS-MailID: 20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
	<CGME20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_034407_540530_0D521522 
X-CRM114-Status: GOOD (  11.25  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Bit[3] of HCI_CLKSTOP_CTRL register is for enabling/disabling MPHY APB
clock. Lets add it to CLK_STOP_MASK, so that the same can be controlled
during clock masking/unmasking.

Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
Reviewed-by: Chanho Park <chanho61.park@samsung.com>
Tested-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/ufs/host/ufs-exynos.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index a81d8cbd542f..cc128aff8871 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -52,11 +52,12 @@
 #define HCI_ERR_EN_DME_LAYER	0x88
 #define HCI_CLKSTOP_CTRL	0xB0
 #define REFCLKOUT_STOP		BIT(4)
+#define MPHY_APBCLK_STOP	BIT(3)
 #define REFCLK_STOP		BIT(2)
 #define UNIPRO_MCLK_STOP	BIT(1)
 #define UNIPRO_PCLK_STOP	BIT(0)
 #define CLK_STOP_MASK		(REFCLKOUT_STOP | REFCLK_STOP |\
-				 UNIPRO_MCLK_STOP |\
+				 UNIPRO_MCLK_STOP | MPHY_APBCLK_STOP|\
 				 UNIPRO_PCLK_STOP)
 #define HCI_MISC		0xB4
 #define REFCLK_CTRL_EN		BIT(7)
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
