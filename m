Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4833CC83F17
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 19:39:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GyGIRj94nAVdSzKi/vay7GjWA/7zzyrLRGluUkhM/xY=; b=HJhUBOuCn8KE5y
	EpaIOyXYGz48EUf/WmsViwdvyiHsVsQqMGq5XhlOjCOXNrNRb4gPx4Uz88Kot8T4dZ7CSqvOijmAI
	Lu+gAUqxDqpFT8jv6RjYEoea1BsdqjcNzMmZiVoKqtH4TySXBeBmlol7mqk8sjYlUaFh1Ze0FQMBH
	zmS0sXDTMg1t+/Zbm0GsrJQ54/iZCgTzPq7zfs/QcY9KeYyDh52ouytpXq/H2KQ63GHJXf1IugE32
	LHmf+JZP5mcg7JdfjqpQlPqNg6Qa2JzJs7hyNu1ra+YXTbbGZMUdbLRQGCe5I8ntrYkv0ANpJKhj2
	Zzq2K86OVuvoJHnEzR3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZx7U-0000000Cpjb-0Cia;
	Thu, 10 Jul 2025 19:39:48 +0000
Received: from mx0a-00069f02.pphosted.com ([205.220.165.32])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZv0L-0000000CZmm-0xvm
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 17:24:18 +0000
Received: from pps.filterd (m0246629.ppops.net [127.0.0.1])
	by mx0b-00069f02.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56AHCGp6029661;
	Thu, 10 Jul 2025 17:24:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com; h=cc
	:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=corp-2025-04-25; bh=QeDtzMAPhaz+5khh+8shhtcKmhhhB
	6VlXl3AbLWSByY=; b=Gg5I6Q6geRr+H7uaBN8+7JVSN7bK6hnx8SBT0382PS5SD
	DbnI/vsy7AhOiZoAFvddcwUyT7FLVa2Cu/bbxs6Dr2o5qK+ydGu+UQ9IcjYNWfeG
	BGYMMxyqtZm0vx4RaLyF22XVc/PB65H+x9E6sqTj6OavCOeru9xN3S7Zaknn9k4J
	Aqcrkfpz57aESWM36QjT4io+TYxJtlPk87D4k7SlRR5QxF8hbj07tkIhK1WtmHLQ
	oH5ZSEtJixq/0WAOehbV7ornlEpOzt222SHdqip8pXNDL8Kv/4pxjREp+Nz0JvKi
	YOpNwsYFg3kmyuOj4HFa45jIHNdhm+y5uzDYrKCKA==
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.appoci.oracle.com [130.35.100.223])
	by mx0b-00069f02.pphosted.com (PPS) with ESMTPS id 47thq3g0mw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Jul 2025 17:24:08 +0000 (GMT)
Received: from pps.filterd (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (8.18.1.2/8.18.1.2) with ESMTP id 56AG980G027323;
	Thu, 10 Jul 2025 17:24:07 GMT
Received: from pps.reinject (localhost [127.0.0.1])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTPS id 47ptgcjf6b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Thu, 10 Jul 2025 17:24:06 +0000
Received: from iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com [127.0.0.1])
	by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 56AHO6Nk033535;
	Thu, 10 Jul 2025 17:24:06 GMT
Received: from ca-dev112.us.oracle.com (ca-dev112.us.oracle.com [10.129.136.47])
	by iadpaimrmta01.imrmtpd1.prodappiadaev1.oraclevcn.com (PPS) with ESMTP id 47ptgcjf5m-1;
	Thu, 10 Jul 2025 17:24:06 +0000
From: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Abel Vesa <abel.vesa@linaro.org>, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc: dan.carpenter@linaro.org, kernel-janitors@vger.kernel.org,
        error27@gmail.com, harshit.m.mogalapalli@oracle.com
Subject: [PATCH] phy: qcom: fix error code in snps_eusb2_hsphy_probe()
Date: Thu, 10 Jul 2025 10:24:02 -0700
Message-ID: <20250710172403.2593193-1-harshit.m.mogalapalli@oracle.com>
X-Mailer: git-send-email 2.47.1
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_04,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxscore=0 malwarescore=0 adultscore=0
 suspectscore=0 phishscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2505160000
 definitions=main-2507100148
X-Proofpoint-GUID: XIChbFydYMJSwpcmHNNxdFHVAwqTGiqF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDE0OCBTYWx0ZWRfX6e8IzWggny3q Qj5FCrYHaDmZbj56585ZAQuEnInqZ1SutAThIvw4iEI/nOXxzq12YL7fy7TWcsulKeKxobnr1PQ ntef2tHX5ta0UeQVsZ51OSEOshTO6I+VQ5xplxt1V+bRZ+5b3KIdJ0YCJZA+XNQxlIPBHrV3BUa
 V5611TnEXNg21kRe2Gp7Svy422wGUBKWh1XnlkOsksGtbYnMesIsC8qPeIz8iTBqku0IboYLTjt walKMlMIhEN5VUClruznNR3T5caOFIdrfQfHlhLHvP2up3umttxsfQ4PPPtA5AFqrxuLGC0n9bI Do2Rb8GBsqe5m5a3yl5ZNGO/c07r3RqrFCwwdl6HGzPuWgA83lchh9VnZRCvG8ZLL+2boUuhrK/
 yNE1laZxl3NfriBmNaitdwfg7hlfC74LHH2zbNqIiqK21Ix1F5Ng7d+a3iBraADZo7DGNWHl
X-Authority-Analysis: v=2.4 cv=RoLFLDmK c=1 sm=1 tr=0 ts=686ff738 b=1 cx=c_pps a=zPCbziy225d3KhSqZt3L1A==:117 a=zPCbziy225d3KhSqZt3L1A==:17 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=yPCof4ZbAAAA:8 a=A5vd3UQz4cM7NqX-iokA:9
 a=cvBusfyB2V15izCimMoJ:22 cc=ntf awl=host:12061
X-Proofpoint-ORIG-GUID: XIChbFydYMJSwpcmHNNxdFHVAwqTGiqF
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_102417_272756_4255B68C 
X-CRM114-Status: GOOD (  13.22  )
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

When phy->ref_clk is NULL PTR_ERR(NULL) will be a success. Fix this by
using -ENOENT when phy->ref_clk is NULL instead.

Fixes: 80090810f5d3 ("phy: qcom: Add QCOM SNPS eUSB2 driver")
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/all/aDCbeuCTy9zyWJAM@stanley.mountain/
Signed-off-by: Harshit Mogalapalli <harshit.m.mogalapalli@oracle.com>
---
This is based on static-analysis, only compile tested.
---
 drivers/phy/phy-snps-eusb2.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-snps-eusb2.c b/drivers/phy/phy-snps-eusb2.c
index 87f323e758d6..5e19532bef3a 100644
--- a/drivers/phy/phy-snps-eusb2.c
+++ b/drivers/phy/phy-snps-eusb2.c
@@ -568,9 +568,11 @@ static int snps_eusb2_hsphy_probe(struct platform_device *pdev)
 		}
 	}
 
-	if (IS_ERR_OR_NULL(phy->ref_clk))
-		return dev_err_probe(dev, PTR_ERR(phy->ref_clk),
+	if (IS_ERR_OR_NULL(phy->ref_clk)) {
+		ret = phy->ref_clk ? PTR_ERR(phy->ref_clk) : -ENOENT;
+		return dev_err_probe(dev, ret,
 				     "failed to get ref clk\n");
+	}
 
 	num = ARRAY_SIZE(phy->vregs);
 	for (i = 0; i < num; i++)
-- 
2.39.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
