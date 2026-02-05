Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D68F3ECD983
	for <linux-phy@archiver.kernel.org>; Thu,  5 Feb 2026 16:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NrazIcvDLeOn6YaWEx1aOvoewQLsR0cWp+Hx5f49Ue8=; b=qV1BRyPnkyVWyb
	n7OK3bNC4njrGERjX2V2rOOBmPy510ujbkwDJmMijRkcOPGsWok04Y/3GDHmtjhlzIuMxFkCSidPd
	fhv6Jy4ly0FOhWgGLh9ZPnfDx1LL/7pXpwrTfHHAthSu1YrZevay3URfwK/mVGMM/mu/+ofSfeisj
	UPS1xDjCheZd5mULyT7TWuy7sLhS03TCNa9mNRmCobKUVkEqBQYN6KQeRlASQFh5T7DkMHTaJzOdj
	OLnxVCNloX4DAS+EGxmiAIcKN43EZ61ClAZ4PabetvNGgdLXPLdQKjT8E2f7D9fL3ZZrXrJXnD6Fa
	eWXf9qnjmZo//v4Uq8dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1op-0000000ACcA-26Zc;
	Thu, 05 Feb 2026 16:02:59 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1om-0000000ACbC-3kKd
	for linux-phy@lists.infradead.org;
	Thu, 05 Feb 2026 16:02:57 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 615FrNnZ872270
	for <linux-phy@lists.infradead.org>; Thu, 5 Feb 2026 16:02:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ybqu1gqc5/l
	jFP6p80WyL1AxbJVtoUP4uuAxu/GgF0c=; b=aHANCioORxJyevwEaqBkxi4QBUi
	0h+rAMlUPSCZf9a5ns0CdX5LvAS09naffUNpJDMBhJq1wG6DfSkeupi4tc7+1eEG
	oMnBhGu6CAY00MSjIXa8wQXx3g8dtX4pM8nXIfuWaip2iqH8GJ711vtxciCi4WGl
	DkNMj6yKzZHT3c7fysnR3NRCLzLT7p1MtdLqWIk+pVuNp1iM668VAiIFBDuJTyRH
	SXGrMNlqER9tbZYaYtRRCna82Ic1gtuv0bHWghOZXRLgtb9rRty4s+utrW2D6mhh
	ktR08h29FxkFYinQBqzUtvfi9zouDx4dZ/5f+kRxzINgR9Bsn2DGk19JkBA==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c4x8bg19k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 16:02:56 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-6630b0a016aso4987369eaf.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Feb 2026 08:02:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770307375; x=1770912175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ybqu1gqc5/ljFP6p80WyL1AxbJVtoUP4uuAxu/GgF0c=;
        b=DCvr1buXDKqF1G16n8INHzpfEM7cxs892HFwJ/YWu71A+yJ4tr3c5Ju8QtKxLyjy2C
         O/iqnCOKfSHJlwC923xmlMBSv54LfQ7Rhp36P9iejlmSaodquARb7qUQqIXtbicFLh57
         Vw4zZJNOYMahuhRB1vQAKVaBX6VyjJncqTO2qvykRRCFqULKfsmyUS1VD+7u74ApaYsg
         WyF4h9GWKht3IERuR5zfqXlq7IxsPuW3I8PMvKQo/Cd2Hx4RWe2kT26955VbK9axIhvN
         h8RPUA+tXE5gx0ITFCBd9g64Cp9w5XTHHUmDaUxR4vSWQznJyM7LEC9pkajcCODuWXtO
         6Weg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770307375; x=1770912175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ybqu1gqc5/ljFP6p80WyL1AxbJVtoUP4uuAxu/GgF0c=;
        b=cJdtLlplqFo6lbwp4EcLrVbYI2k6DUryIDuhvOszCSUvKjMRrdM+Xb7Mz6nK2O3Njj
         gwzb1syUNBLSYIhV+MmvQ9xNj4OIw3IYaMOZPX7U7UheMILVT9YRPpPGQ3zgJYvvG0EU
         agEwfhvGiB76XEx+KKM49/g//IQZFWlxhuvz7TCw9bN0n3EjkO3lpOoxY6f7Icj4WHCm
         enfwQNd4VVuzw96ZDftSoIEdDeyDbo2MiLEGXUr4RR6IQLUOtT4kFG3xkOtcPDYlzFvd
         uPQVgP3yaQWRxuuTybauD6QWdmLHEl6kTmhgaFNiyEEi5OX8Rtj8BBXe86yrOQJpC0/U
         b/vg==
X-Forwarded-Encrypted: i=1; AJvYcCVLEos9VGnxnT+iX8/NwjKHooEUY/NO/CWypdSwtOKImAY1FLvxL7FCL21GKsKVjK7c4iBznzPrm6s=@lists.infradead.org
X-Gm-Message-State: AOJu0YxycH7f4PW3nT9NCjeO4viUlaL+rHtyAvNjyWtKGLMkXkwsvMFq
	Agli17yVeDr7cuM6r9YF68tczjWqFyjuT54yb3csRrt1OEHMwSZFr3DnyhDhF3twBBYBklEtfCB
	guRJzAJp5UnLu8wujA+qGm7Z9CgZrr31Js0CwWTetuA4IoMcuUoCZHaAnAYgeLWDMI6gT
X-Gm-Gg: AZuq6aICjsjYZcZeFwtdCYha5akK2K/CrfhI9iPYm+k7UNY4YpO6Wx9QTUNb2wjJvgd
	OKASc+oK0iyDus6pIwmzbbVXBihUrV4+ORjfL5dtweNBSTPmYdIKq63GjpfNAtYqoyjuQTpVesw
	fXjDpxdirT48b5wlM4o+1uR3eJzDNexwW/QTm1DPYvO2NHWLtnjLq0DcgA/K+AF8DeDYAQmEHtn
	oqzRY2KHJoUn1wvi2U9q/eQ6jCsxYQIppF3u3R0MvmTjzAHbWm0LUiP5EjIWF82mrMlanM+QEHs
	Vtb/1ucO0GlBu+BYxVwIM1Tbz72GhEsyt0Il83E51tjLOFK+2WT5UzrtpiBN2dREMTXWTxFEbbe
	FWscfZtLVUpk2EKSU4ESMUzDRwKc/+PZrEkYtlNfP6DV/nairOn4kDn72z6bNamPjv/fE0OYHrW
	hC
X-Received: by 2002:a05:6808:150e:b0:451:4da2:47d1 with SMTP id 5614622812f47-462d5a04d16mr4101100b6e.45.1770307374409;
        Thu, 05 Feb 2026 08:02:54 -0800 (PST)
X-Received: by 2002:a05:6808:150e:b0:451:4da2:47d1 with SMTP id 5614622812f47-462d5a04d16mr4100689b6e.45.1770307370662;
        Thu, 05 Feb 2026 08:02:50 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:103a:9c65:ad2d:82fc])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436180640e5sm13770002f8f.40.2026.02.05.08.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 08:02:48 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: [PATCH v3 1/5] phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
Date: Thu,  5 Feb 2026 17:02:36 +0100
Message-Id: <20260205160240.748371-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
References: <20260205160240.748371-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=GaoaXAXL c=1 sm=1 tr=0 ts=6984bf30 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-ORIG-GUID: M6Xkw0jS0wgQFwWm64FJFN0oy0UarSRt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA1MDEyMCBTYWx0ZWRfX/tdS9R+PI+3w
 SKh/eyTkFHo0H4Z9WvldQpvt8moxqODKBCWCwlIgGZSVBAPzDaVWyoFrcZP4E0iwKuoHrQ9indZ
 0VGjzur+IJ/qqbsFaBqol4c9bUGRU0jNdoEDbm1COsAfHENqO+CR0zqq6UnNdFcrpWXNHGM7Huj
 SqRJKO/uBUAYA/4TqS67hoTGlLKINc4FwWbfxKKCVVvqi1TJFNDuxGhpo7EzVEKWvcevdTMSAQ1
 eJXydE8E86pFEcIEoHT8Fr/hgV6ohW4cNH65+fcl9SJMOfCO2gEGupbzFswzrs7HiATcsUAb2A+
 HkkHPnYuZbUTpGzyXAmOrn+cbs3ZYsEZFMChHngYCGcR4rqsNenXEXBWY2v3LghC4xZ+KRzAfc1
 moeV0eFCHVdMt5Ieq82XMd/NgIXTVdWssm/VwLYif3dnPW9AaNEhgj/yRcUEH4pUGtn+vSa3Jrc
 mXbHcBilUyEfeAafWbg==
X-Proofpoint-GUID: M6Xkw0jS0wgQFwWm64FJFN0oy0UarSRt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-05_03,2026-02-05_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602050120
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_080256_951736_57F4C5F1 
X-CRM114-Status: GOOD (  15.76  )
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

There is a small window where the device can suspend after
pm_runtime_enable() and before pm_runtime_forbid(), causing an
unnecessary suspend/resume cycle while the PHY is not yet registered.

Move pm_runtime_forbid() before pm_runtime_enable() to eliminate
this race.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 93f1aa10d400..c3661872bb7a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4932,15 +4932,15 @@ static int qmp_combo_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_node_put;
 
+	/*
+	 * Enable runtime PM support, but forbid it by default.
+	 * Users can allow it again via the power/control attribute in sysfs.
+	 */
 	pm_runtime_set_active(dev);
+	pm_runtime_forbid(dev);
 	ret = devm_pm_runtime_enable(dev);
 	if (ret)
 		goto err_node_put;
-	/*
-	 * Prevent runtime pm from being ON by default. Users can enable
-	 * it using power/control in sysfs.
-	 */
-	pm_runtime_forbid(dev);
 
 	ret = qmp_combo_register_clocks(qmp, usb_np, dp_np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
