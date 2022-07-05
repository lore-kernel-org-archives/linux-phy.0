Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20FAECCA480
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 06:57:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:MIME-Version:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9MztxIcC2BHG8vkfHg/YUwi4ok1RhYgkyTEz56uUzRw=; b=ealYVGuLagZ/Gv
	k7IsVjtVdC+ldcUPoRUph25fwCPvMjUFogFPnoqPO2TuEp5k3+d1WnE/BWjSGyZyThc+YtXcX4gXV
	0NM630VnKp77oEPZkVBYxzZEB0jVhz7SKzUcfiPvEiL3ejdqGkrmf3I9kefPBIZkHsPb8a/0Q0R9i
	KTBoPhO4qdjaRPUH2lkFxoqhMPtSXJBPLTDpZQNkqi+rCvs/iMIpsLKccZ66uBjvUYSr0gEy8ygPv
	Z9WC03X5WbkyHkvIsULdaBZ0iMiCVFa14PIXM5WpWT2sAyV1fzVlixmckltlFfqjwfvQ1hXUpvFST
	C+JquqzNigTfeYrJzKXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cV7-00FGUt-Bc; Tue, 05 Jul 2022 06:57:37 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8cV2-00FGJa-Ko
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 06:57:35 +0000
Received: from epcas2p2.samsung.com (unknown [182.195.41.54])
	by mailout1.samsung.com (KnoxPortal) with ESMTP id 20220705065723epoutp014321e37454d6cba06f8bd67f2bb95547~_3JSmL-CR0493704937epoutp01M
	for <linux-phy@lists.infradead.org>; Tue,  5 Jul 2022 06:57:23 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com 20220705065723epoutp014321e37454d6cba06f8bd67f2bb95547~_3JSmL-CR0493704937epoutp01M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1657004243;
	bh=z8d5Qytme2DFLhjWK38ZehBSKA0rVhpPVOhXXIjGfF4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=bNYUGRol3eKe41CktGZS+fHTLtYRc52eX3gO8dq4tT31waN6JoFgZ6ifEFF5BzA8k
	 mGTK9Gv11nZL8GWX3FS3ED6e0JadgcxyrKEy/6pJ/6y3WR1/zqgnhkENj17asE85nx
	 +ILnPc2tUGZqh/Q7nCYTddt9b/ytsWyRLP9cBDhQ=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
	epcas2p1.samsung.com (KnoxPortal) with ESMTP id
	20220705065723epcas2p17772464049dbf2a257ece2605c5d3bad~_3JSB5rqA0425204252epcas2p1Q;
	Tue,  5 Jul 2022 06:57:23 +0000 (GMT)
Received: from epsmges2p3.samsung.com (unknown [182.195.36.91]) by
	epsnrtp4.localdomain (Postfix) with ESMTP id 4LcYQB6kShz4x9QG; Tue,  5 Jul
	2022 06:57:22 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
	epsmges2p3.samsung.com (Symantec Messaging Gateway) with SMTP id
	36.02.09642.2D0E3C26; Tue,  5 Jul 2022 15:57:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619~_3JRQplMY1456014560epcas2p3I;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
	epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
	20220705065722epsmtrp1b37c0121e5081e6e9fe00075dc363e17~_3JRPwb3r0059400594epsmtrp1k;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
X-AuditID: b6c32a47-dff43a80000025aa-b8-62c3e0d2fdda
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
	epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
	F4.99.08802.2D0E3C26; Tue,  5 Jul 2022 15:57:22 +0900 (KST)
Received: from localhost.localdomain (unknown [10.229.9.51]) by
	epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20220705065722epsmtip1ce49b549e00b1ed9474946930b11ab7b~_3JRGYLFt2746727467epsmtip1k;
	Tue,  5 Jul 2022 06:57:22 +0000 (GMT)
From: Chanho Park <chanho61.park@samsung.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, "James E . J .
 Bottomley" <jejb@linux.ibm.com>, "Martin K . Petersen"
	<martin.petersen@oracle.com>, Alim Akhtar <alim.akhtar@samsung.com>, Bart
	Van Assche <bvanassche@acm.org>
Cc: linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
	Chanho Park <chanho61.park@samsung.com>
Subject: [PATCH 3/3] ufs: ufs-exynos: change ufs phy control sequence
Date: Tue,  5 Jul 2022 15:54:40 +0900
Message-Id: <20220705065440.117864-4-chanho61.park@samsung.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220705065440.117864-1-chanho61.park@samsung.com>
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBJsWRmVeSWpSXmKPExsWy7bCmme6lB4eTDLrajC0ezNvGZjHtw09m
	i8v7tS0W3djGZHHhaQ+bxd7XW9ktNj2+xmoxYdU3FosZ5/cxWXRf38Fmsfz4PyaLnXdOMDvw
	eFy+4u2xaVUnm8eda3vYPCYsOsDosXlJvcfHp7dYPPq2rGL0OH5jO5PH501yAZxR2TYZqYkp
	qUUKqXnJ+SmZeem2St7B8c7xpmYGhrqGlhbmSgp5ibmptkouPgG6bpk5QAcrKZQl5pQChQIS
	i4uV9O1sivJLS1IVMvKLS2yVUgtScgrMC/SKE3OLS/PS9fJSS6wMDQyMTIEKE7Iztv9awF6w
	ibfi76FWtgbGJu4uRk4OCQETiTV3FrB2MXJxCAnsYJRY8/89lPOJUWLlyt0sEM5nRom/H6Yw
	w7S0LP/FCJHYxSix4+hMqKqPjBJX/z1hBKliE9CV2PL8FViViMAOJolbLRPBqpgFNjNKtF/d
	yQZSJSzgKvH5wDKwuSwCqhLnt58FinNw8ArYS1x4mA2xTl5iw8HtLCA2p4CDxMmP08FsXgFB
	iZMzn4DZzEA1zVtnM4PMlxBYyyGxfPVOFohmF4l56z4zQtjCEq+Ob2GHsKUkXva3QdnFEktn
	fWKCaG5glLi87RcbRMJYYtazdkaQg5gFNCXW79IHMSUElCWO3ILayyfRcfgvO0SYV6KjTQii
	UV3iwPbpUBfISnTP+cwKYXtIXJv4DRq+kxkljra8ZZrAqDALyTuzkLwzC2HxAkbmVYxiqQXF
	uempxUYFxvA4Ts7P3cQITsJa7jsYZ7z9oHeIkYmD8RCjBAezkgjvqkkHk4R4UxIrq1KL8uOL
	SnNSiw8xmgLDeiKzlGhyPjAP5JXEG5pYGpiYmRmaG5kamCuJ83qlbEgUEkhPLEnNTk0tSC2C
	6WPi4JRqYIpZwDbzBDP7Bhfm72XzBT/FHDHJsRA9uCNWyqtBvu349lOr66TCvfieZ7dXfnU3
	7L2S9jnjXwxfmssrhgyVknpOlW+nez89D3IK8+5U656X9+zf/vPMYkalr/73Tj14YeKdDQ8C
	DZmVz10tODzLmSchyLEyMfFnh8yDlJfP5QOCu9cfWJfbFrmrq31CiJLw6RxNG5/HVsdcsw+H
	3Aq6UXIw107N8M73y9Yp7+Js2DYuKr7iy5H5UTvR7tk/zZyuPWpWlwrTbzQEVQQkGE6Yv6+0
	+ohE9DV1/frvCaUKyg3qR7y9RSa8aay+dLpcvPzdPq8rwfdCVpjIHOfn+3P7tZ9CY7nBpfCP
	FZoxQJtZijMSDbWYi4oTAe8UHdVLBAAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrELMWRmVeSWpSXmKPExsWy7bCSnO6lB4eTDB7ukbJ4MG8bm8W0Dz+Z
	LS7v17ZYdGMbk8WFpz1sFntfb2W32PT4GqvFhFXfWCxmnN/HZNF9fQebxfLj/5gsdt45wezA
	43H5irfHplWdbB53ru1h85iw6ACjx+Yl9R4fn95i8ejbsorR4/iN7UwenzfJBXBGcdmkpOZk
	lqUW6dslcGVs/7WAvWATb8XfQ61sDYxN3F2MnBwSAiYSLct/MXYxcnEICexglLjR8Z8FIiEr
	8ezdDnYIW1jifssRVoii94wS2zd+ZQZJsAnoSmx5/gqsW0RgD5PEl3kbWEAcZoHtjBJT3l4H
	GyUs4Crx+cAysA4WAVWJ89vPsnUxcnDwCthLXHiYDbFBXmLDwe1g5ZwCDhInP04Hs4WASv49
	vgZ2Ba+AoMTJmU/A4sxA9c1bZzNPYBSYhSQ1C0lqASPTKkbJ1ILi3PTcYsMCo7zUcr3ixNzi
	0rx0veT83E2M4GjR0trBuGfVB71DjEwcjIcYJTiYlUR4V006mCTEm5JYWZValB9fVJqTWnyI
	UZqDRUmc90LXyXghgfTEktTs1NSC1CKYLBMHp1QDE/fl7md8tRovD3h9Oya79UZUw5GIgNM9
	zlk2X1x2LaqXbLZs/PKz2vNvbNfF2YwBqswPFvMvunpqn0hrxIFbPY2Kq3dL+HDWTXeZnLak
	wjl59hmraac2HFMKDp38cMkHFku2+Zz1eq/E/s+M/jOJy/afe8usKVviJxxdbZj88I9A6dl7
	vml5gXM+LY1xOvE2aOOBo8eYUr34FrK+5eWKXDa7bdW+FoUGrSXspdNbmA9bau2qeHh34Uev
	1Bsfuit+LTko+S2kJsPLxH1R7zFtfnezB0/nNq5ftC41Ie/5D7+Hb+J4NuldZ3ARST/qu/hw
	kOHjhX5Hp4myyL94/i7mlqLrputHfKbcvsK16tyZojolluKMREMt5qLiRACQm/tZBQMAAA==
X-CMS-MailID: 20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619
References: <20220705065440.117864-1-chanho61.park@samsung.com>
	<CGME20220705065722epcas2p3f9970697f6d1f1fed43e10fe17019619@epcas2p3.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220704_235733_215493_8BEFD3B5 
X-CRM114-Status: GOOD (  18.46  )
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

Since commit 1599069a62c6 ("phy: core: Warn when phy_power_on is called
before phy_init"), below warning has been reported.

phy_power_on was called before phy_init

To address this, we need to remove phy_power_on from
exynos_ufs_phy_init and move it after phy_init. phy_power_off and
phy_exit are also necessary in exynos_ufs_remove.

Signed-off-by: Chanho Park <chanho61.park@samsung.com>
---
 drivers/ufs/host/ufs-exynos.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/ufs/host/ufs-exynos.c b/drivers/ufs/host/ufs-exynos.c
index f971569bafc7..5718296e2521 100644
--- a/drivers/ufs/host/ufs-exynos.c
+++ b/drivers/ufs/host/ufs-exynos.c
@@ -908,6 +908,8 @@ static int exynos_ufs_phy_init(struct exynos_ufs *ufs)
 		goto out_exit_phy;
 	}
 
+	phy_power_on(generic_phy);
+
 	return 0;
 
 out_exit_phy:
@@ -1169,10 +1171,6 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 		goto out;
 	}
 
-	ret = phy_power_on(ufs->phy);
-	if (ret)
-		goto phy_off;
-
 	exynos_ufs_priv_init(hba, ufs);
 
 	if (ufs->drv_data->drv_init) {
@@ -1190,8 +1188,6 @@ static int exynos_ufs_init(struct ufs_hba *hba)
 	exynos_ufs_config_smu(ufs);
 	return 0;
 
-phy_off:
-	phy_power_off(ufs->phy);
 out:
 	hba->priv = NULL;
 	return ret;
@@ -1602,9 +1598,14 @@ static int exynos_ufs_probe(struct platform_device *pdev)
 static int exynos_ufs_remove(struct platform_device *pdev)
 {
 	struct ufs_hba *hba =  platform_get_drvdata(pdev);
+	struct exynos_ufs *ufs = ufshcd_get_variant(hba);
 
 	pm_runtime_get_sync(&(pdev)->dev);
 	ufshcd_remove(hba);
+
+	phy_power_off(ufs->phy);
+	phy_exit(ufs->phy);
+
 	return 0;
 }
 
-- 
2.37.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
