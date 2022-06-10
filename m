Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A62A9C43334
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jun 2022 07:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=60vJbd4S26wFUtp+X/CE5S8tFJvMosjakYHbys+t/BQ=; b=dIK3jBHdvHEaqv
	6m76YmHSLtO1rYYgozA2tMETEqDRu7snbRvSWDi9nW5e40XIglhOsX9yL2/vSf0/naD5ZWW41bxJ8
	3R9fHmbR70xOO0oWE1HnhW5qISkbAF4gRx10fsHkUIyQO3NpPYZDn7+dUYDpzowViC3wqS6+wWVzj
	AgOUDFfVeN1K3nCYVw5mgCBROcpVNjH8zuLpXngMQG5QpiasWbfH/UQhH5Nq3zd6mGo1JBk6Zd4Eo
	TwRNKsMWWHenOL9upRRW7jOtC8PNIbGOGq+G3KXZGuwBuSTvo2GQNnlH4lAH6G22mcJgUojei+Ok+
	bIi2ACuTUJO8DptCZZpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ9g-006SKu-UE; Fri, 10 Jun 2022 07:34:04 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzZ83-006RXM-GJ
	for linux-phy@lists.infradead.org; Fri, 10 Jun 2022 07:32:25 +0000
Received: from epcas5p3.samsung.com (unknown [182.195.41.41])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20220610073221epoutp045df5a6c3659e75c7b14b7b91d0b4b404~3MfrnsqUi2654026540epoutp04j
	for <linux-phy@lists.infradead.org>; Fri, 10 Jun 2022 07:32:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20220610073221epoutp045df5a6c3659e75c7b14b7b91d0b4b404~3MfrnsqUi2654026540epoutp04j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1654846341;
	bh=mzLAmWqCxZhs1S6BV/xNsG1aAfxb0YUHxD4qs10oM1Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CaC4twhdlF54iBfiiFnaqZZVP6FXCgSYxh1Sxha8firFzIAvPBKpvotL+xvCgZH6q
	 7dkG1SVsQ/LGXjxDaHmvj5FBV8AxUjRHQAPBtpaLBvpERGmZV6MSAM39KOgOhtUbRs
	 H6PWfb9BvcqDeXgzw/8YDk4nCUTTKnffI2uE1eYU=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTP id
	20220610073221epcas5p47854719945b18d7d31f6f4ef26132173~3MfrEbpx60317103171epcas5p4r;
	Fri, 10 Jun 2022 07:32:21 +0000 (GMT)
Received: from epsmges5p3new.samsung.com (unknown [182.195.38.176]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LKCN16SJ4z4x9QL; Fri, 10 Jun
	2022 07:32:17 +0000 (GMT)
Received: from epcas5p3.samsung.com ( [182.195.41.41]) by
	epsmges5p3new.samsung.com (Symantec Messaging Gateway) with SMTP id
	CA.E4.09762.183F2A26; Fri, 10 Jun 2022 16:32:17 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
	epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
	20220610073217epcas5p40e86548903fd7d54d968cb169f3ec98f~3Mfnadx700317103171epcas5p4c;
	Fri, 10 Jun 2022 07:32:17 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
	epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
	20220610073217epsmtrp255845aee70a82bc48f514476ce37b029~3MfnZq_sQ1530715307epsmtrp2H;
	Fri, 10 Jun 2022 07:32:17 +0000 (GMT)
X-AuditID: b6c32a4b-213ff70000002622-2a-62a2f381f04e
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
	95.42.11276.183F2A26; Fri, 10 Jun 2022 16:32:17 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
	[107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220610073212epsmtip1999193e989265cdfda1f3c15726be784~3MfjOE_eh3168331683epsmtip1Z;
	Fri, 10 Jun 2022 07:32:12 +0000 (GMT)
From: Alim Akhtar <alim.akhtar@samsung.com>
To: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, avri.altman@wdc.com,
	bvanassche@acm.org, martin.petersen@oracle.com, chanho61.park@samsung.com,
	pankaj.dubey@samsung.com, Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v3 5/6] ufs: host: ufs-exynos: add mphy apb clock mask
Date: Fri, 10 Jun 2022 12:59:23 +0530
Message-Id: <20220610072924.12362-6-alim.akhtar@samsung.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220610072924.12362-1-alim.akhtar@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpik+LIzCtJLcpLzFFi42LZdlhTU7fx86Ikg9XXjC0ezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFHZ
	NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJuam2Si4+AbpumTlAVysplCXm
	lAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCkwK9IoTc4tL89L18lJLrAwNDIxMgQoTsjMa
	PvYyFVzlqGhdOpu1gXEFexcjB4eEgInE3fdxXYxcHEICuxkldvctZYJwPjFKXNqxiLmLkRPI
	+cYosbRHAcQGadj/ZSsLRNFeRon9dw8wQzgtTBILNx5gBaliE9CWuDt9C9goEYFmRomDHbvA
	HGaBPiaJJbdvg1UJC7hJHDt9iR3EZhFQlZi3aTMjiM0rYCNx8dF0Voh98hKrNxwAu4NTwFbi
	7P8NYOskBCZySJz7OpUZoshFYvOGb1ANwhKvjm9hh7ClJD6/28sG8amHxKI/UhDhDIm3y9cz
	Qtj2EgeuzGEBKWEW0JRYv0sfJMwswCfR+/sJE0Qnr0RHmxBEtapE87urLBC2tMTE7m6opR4S
	+2/+ZIMExARGiUdvtjNOYJSdhTB1ASPjKkbJ1ILi3PTUYtMC47zUcnhEJefnbmIEJ0Yt7x2M
	jx580DvEyMTBeIhRgoNZSYQ34PaiJCHelMTKqtSi/Pii0pzU4kOMpsAgm8gsJZqcD0zNeSXx
	hiaWBiZmZmYmlsZmhkrivAL/G5OEBNITS1KzU1MLUotg+pg4OKUamOziKy3ufDFS/sD2fmPS
	PJeXR9uSa38sjLohdUBGWyu5TD3lVOju+msfHl9d8Gbj36U2zTZbbPXv5Omz3rNZ3vtr//Kl
	3ilzXmyt2L6y3Uzwm7piSr3ur8u2seLSMasCf4m+n5i9OuXd//w15lfErC6XCyyd63I9/+iD
	lbqX3nxwbZI27w5bPW2ZPdfZqpqKPymFlxlYzHdxxF0+dvGZdfSK/DIzw09aXAp9h2Sd3sx9
	PG269n6HzfkPHjW3XnH9caOooyR7+xul/ealp5mr2Q1NOJhru242NT7kyxGRC/6nLj+HKXar
	gvjzows5M7+/MWTPjHdbsT3uufYmU5F7AYc9GL67rkg9+veux77HxkosxRmJhlrMRcWJAML4
	6YIVBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrGLMWRmVeSWpSXmKPExsWy7bCSnG7j50VJBne7OCwezNvGZvHy51U2
	i2kffjJbXN6vbTH/yDlWi74XD5ktNj2+xmpxedccNosJq76xWHRf38Fmsfz4PyaLRVu/sFu0
	7j3CbrHzzglmBz6Py1e8PTat6mTzuHNtD5vH5iX1Hh+f3mLx6NuyitHj8yY5j/YD3UwBHFFc
	NimpOZllqUX6dglcGQ0fe5kKrnJUtC6dzdrAuIK9i5GTQ0LARGL/l60sXYxcHEICuxklTm+9
	DJWQlri+cQKULSyx8t9zdoiiJiaJM5fes4Ik2AS0Je5O38IEYosItDNK3N/OBlLELDCLSeL9
	pCeMIAlhATeJY6cvgU1iEVCVmLdpM1icV8BG4uKj6awQG+QlVm84wAxicwrYSpz9vwHI5gDa
	ZiPx+m/eBEa+BYwMqxglUwuKc9Nziw0LDPNSy/WKE3OLS/PS9ZLzczcxgoNaS3MH4/ZVH/QO
	MTJxMB5ilOBgVhLhDbi9KEmINyWxsiq1KD++qDQntfgQozQHi5I474Wuk/FCAumJJanZqakF
	qUUwWSYOTqkGJp77W9ZF3l+w1v97a6Jzy7Ktv16cLXIvuyxoceDrZDHuCddazv+W5Vy7/8jf
	soBp6otqNstP+r1033b11DPFZtXGZxrmt78X2yP1TYLF4GLypoANk9/vyS2pvxq76mCCN9ex
	z482MyvyKcXMCiz9XKLN/Vle+97Rq3svNndlHnygcDu9S2zJuZybv+e6T1jxbqvT19jLty9L
	hjzs3trP/nz5if1Zdy1ELue/V3L4ruMRsdzvr/PMeQL2t/T3h1zzYfY8ua1v78FLljuXOMqU
	uK3cr7zrkK3RWyvTvZ8W+Chcev9s6RQjhce/PAWOBK2T+OrxZvfnA6fifA2rbj0T+nz7R775
	1EvbvkSc7f2sIqxlq8RSnJFoqMVcVJwIAP+qBhXZAgAA
X-CMS-MailID: 20220610073217epcas5p40e86548903fd7d54d968cb169f3ec98f
X-Msg-Generator: CA
CMS-TYPE: 105P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220610073217epcas5p40e86548903fd7d54d968cb169f3ec98f
References: <20220610072924.12362-1-alim.akhtar@samsung.com>
	<CGME20220610073217epcas5p40e86548903fd7d54d968cb169f3ec98f@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_003223_928191_50ADF8E3 
X-CRM114-Status: GOOD (  11.54  )
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
