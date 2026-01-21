Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEB81D262B5
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcgkXQ27QhHb2sZugZNF2h3tVbpxe/YOhmO0iqMHxLI=; b=2enSc93h7lgTVy
	DdUJ7wg/OjEA5ZDoJmfYz3oBqcLrfJNbJ8AhPW8ZNBaCxau4gqa5C5eagr4D17makaAbeQs9tNiMC
	hgeCY7TR5Z6G30C1wKjeZDJe1gxqQNIJp9PSjQgfNnvZ8/dSIbM2Qj6QnTSBBt8RUrUkK5gBBYGHL
	w9r7clLKZYe2qbf1/+72aN4Eyi55fjidzpQtT09w4dDebEdGBV7coDqVxzPGJbJMkVlUl6hQCSfy6
	VRjj//xMzCcFEVezNOWHwHmMI8ilWA1y+n56lHxfuZ9YZFWKw9i2GG6dyXgQ7Eg+OD+qA/3owMKog
	Evouo4C1LmKJ2chuSVyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCP-00000005bZO-2ilS;
	Wed, 21 Jan 2026 14:28:45 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCM-00000005bXu-1Rr7
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:44 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAmpZl3315742
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Ln9pfv+G9rZ
	K/+CNAJvHxyEnhRF0Mq08QEYcCVR70Mk=; b=n1KV9Yc3cfg1b6g2CfZQUNt2caF
	LlZ+ufyW4K4+ezzB+badqeYzkQD2jiXb/Hmt/JO+rWLXjhcm20UAhe+4XtKoePFR
	+y9GXnHTyv+zwLivTi10dfJqFgE/Hj4pP1RBty2EqPG1jMDiQ4G+I3mgYH9koLVe
	tQVLtL7bcjxSotn8UDAFkZ7C1/itdoGcHd4JIr/2HUUB/qUpq1n6CXprRSbMSB8o
	41ZwtfphD+q+P8WD+SbbdteGM/Fmio2JHcBN71m6kwYs+GnzzfqpFvJvkhjB1wvV
	MVgZNEU19mpmFSAyu9DQ+a71URSR806pgO74h2IoJUz8RapbmhyTXMjI+OA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btwcjgmut-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6a7fb4421so1202268485a.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005720; x=1769610520; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ln9pfv+G9rZK/+CNAJvHxyEnhRF0Mq08QEYcCVR70Mk=;
        b=VHve+JoSx4z2FdX7QtOXtjTqP9Y3RiUI6StNpE+F+VGv4KejjEmwolgVADxXUFG5LA
         HpmPdI9/asjNYjxKRp/I4UfNZaR+t0/rb3CEeLQJ8AzsvzeOlU37WYVwVGUu1FPBZMku
         WSd4a05FXlGBdpaDxBZWY/2A3E4UQ62ZkBm1/wIDneRLoOBiOORuwzwIbWgWLCB7d2gV
         dkKeTt0tWnI6P6XgPuKwQnYIFagPucXVoA1uD2ixrOaMKUDbK6yng7pjAWbrqgmNx07u
         RPABidc9fWqNYmdM8b0l+iZOfbr4zsNWk5a0/vo7p2LguVTlFDW3CB5Rk4OyR6ig3B6h
         qNdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005720; x=1769610520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ln9pfv+G9rZK/+CNAJvHxyEnhRF0Mq08QEYcCVR70Mk=;
        b=Ro81T7FNcpK/aINu4DzqOhTM8rdvKmzn27XSKTdKHS9mugxHQLMAUQPKihQg9mpaDH
         UkWVaNYUii+Gq/fYbFGDsxtxrq9ethtWTqdrcwizRJGVKj/io5xpESHjcsJZF3siGTPM
         sEPcgnfkl0Ui2g6Heqb8nd1d8JZo3nlv4na7gUEA+wPn7U4tC7FFa1W2EnimsmhRwKLn
         /2v1UGMOjKfuXAzcOC/SK1MlFVCEfTWim9NYtWVK1gJhn0w/ReHyeUAcYuyBqnsuTSRm
         zzBiZwvYIfBd3eiVig4Amu8ziXrq8aRJq2iaEsmj2CkZBo2y6At1aHodyzgdL2eZnmqy
         HZRw==
X-Forwarded-Encrypted: i=1; AJvYcCWmajPR9jFc05ozcXWbqLFvH8fM665GXBosp8nSmMz5mv3/BapdCFDQG4h/yvko6SgGLMvEx1WbzEs=@lists.infradead.org
X-Gm-Message-State: AOJu0YyYsiJO6UwUezng9f4cElKu4xBn8R2YoglVVd1jljAQ3W2GFKQe
	JwSmBhTTqfHhQfRyEOXAADpnuR2rA0niNBR5I9Y0w77yHYBKgnQsvvifzImuXbga8fWQQcJsc5K
	7nVyI0uhjs3HO7z7Kv8pHVQtNhxZMDl+xS8zoczsQADgiLt1HWjHxGZ2/EyBYluLqQRVu
X-Gm-Gg: AZuq6aKLt7WFKHWHwPGBzY2j6bZi1dv50qZFYD1YrGCaKcESTerIxJyN4LgNH4VtfSB
	EHHtBGJO9DueB5gakqcsu2N2ItzoPOf2ahj4sX0+sLUehsh2JYCBh0NfxIsV8W5jDkE6DlOHGBf
	e1w61MONP15Svi0Rv38rI4qpdssDRR01XTtc6sylauXbu0wwHquxYX2VpWXZMm+DW9pdZocag9D
	LDQE8b/Speyub0puyBNpDzszL+QyafQcIj5WNQoYS83kAF16nDTsLf/5kgWja4E+n5QUl9rOpAq
	ZcrO931+cHYnEGSNzGPm3iadPaZfbcSw3HSRMdU+UDDcEZACoXtjkNk961eySbxPvBxe9Wvd4aB
	vviALgjNWKdegU+EQubs+2/DlBSO+1sIn3RPIHTFtyKQRZ7uH+FBNufboif+TU6rgSPE66sOsrR
	mDejdn
X-Received: by 2002:a05:620a:3942:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8c6a66e453amr2432299885a.21.1769005720365;
        Wed, 21 Jan 2026 06:28:40 -0800 (PST)
X-Received: by 2002:a05:620a:3942:b0:8b2:f9ac:a88b with SMTP id af79cd13be357-8c6a66e453amr2432297185a.21.1769005719892;
        Wed, 21 Jan 2026 06:28:39 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:39 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 3/6] phy: qcom: qmp-usbc: Prevent unnecessary PM runtime suspend at boot
Date: Wed, 21 Jan 2026 15:28:24 +0100
Message-Id: <20260121142827.2583-4-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: KcEqGc-XKwsb9LCmOKnWbJt5Nu4_M34X
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfXy0K9zbYvGvE3
 YglxXQWzcmDD+WPYNtGzl0SVD7SItUd+n+rIkGgxh1coUmc7m5eukBqQ9zLGaplzo/MrRQiY5Qt
 HyvFmKw4O3C4Dg+SZd4ZIYvZANqtlC/iW6DSeozIaTYexM/4etmQ9Kr53tOCgSjZbgJB5/uQhxE
 3xgJ8i30qdBThbALU2wsHzv8OeA88Ed6lS2jvcvLtWgAkAnGaP8D48EMQdwyLhkEAgDdhGMpEfl
 gYWQwFTsV8UgqYVwODeLB9xwrBdmKz85IByxML9mMfO78fko8ppvnHI/6UjYL+4Z2c5HjohWoPD
 C/glQANut4QzKVU5bAahIrO26L8TPG6Bf+ntnl5Rgh1k6wyAy5NlBmAN7gyTkEovv8pNUsEl/51
 14/rKIj9Lj3jUJHYQYkrsSsP7mF5pkQYvnECT6WHislmitvcEd51ouZlhEfMbTH4AJgCoxfSBbC
 jGBeXDnAYBeAEQjapXQ==
X-Proofpoint-ORIG-GUID: KcEqGc-XKwsb9LCmOKnWbJt5Nu4_M34X
X-Authority-Analysis: v=2.4 cv=JpD8bc4C c=1 sm=1 tr=0 ts=6970e299 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062842_485629_6A417454 
X-CRM114-Status: GOOD (  16.50  )
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

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index edfaa14db967..05717ca85c5b 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -1083,15 +1083,15 @@ static int qmp_usbc_probe(struct platform_device *pdev)
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
 
 	ret = phy_pipe_clk_register(qmp, np);
 	if (ret)
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
