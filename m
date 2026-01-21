Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04E4C44536
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 14:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8MSzWaDxULwkqA9+//1zfYAjEnSabSj5+ae8riufOI=; b=o+MJb0506KFW91
	nOuKbzm5pdMOKR8YyA+3T8pI7IOhAni3Vofns29u92O6XwxIxbNSZr3ce4ZP723RsvwhQ8Zfitwnc
	xkNGo9EqXGE/Kbc1KBNyE76Obv8RU5OLoyKKK7XOaFQuW2Zsfltza+Kbs5SaSIJwhTCb6qW76d1a7
	3u6rJHqYjzJrUaMKZ8aK+RuFlqVuCZHQVAW3r/xCfwQ6Qzy2aZEyQaLxJPAivwAE1VfSlnBpKwjew
	z6tk1NIhsHbLOMKvjymnPuBuNzj+obYBTm9M/qRTtwbBkJX3wUhMt0Mz5hdUbdjcR4f8/aMe8G546
	y32RtayI7rYIv2j9EIcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCK-00000005bX2-1gPL;
	Wed, 21 Jan 2026 14:28:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viZCH-00000005bVf-39lX
	for linux-phy@lists.infradead.org;
	Wed, 21 Jan 2026 14:28:39 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60LAmoOR3315727
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=PohhrXGe5PT
	qCgeTdv6SeOzud+fnmfcnSu2+G2CcHFw=; b=H60KKQ6rvL2+7UK5fraNCckFAYV
	MY4v3pNC+CnwyR7EJCSsJruvyGOI+5d2YpV9A86vyxiPu59B7ziQVA4S+a3Vab+F
	CZR85AdD/Pxp4jygGsN9KQtPCrZfb9on9cM3HpRbQSkZ/L3eWbxCif+tduINmZ9j
	tmo7cShkaQM+P0icKmbEd6O/TqeOSlPJUMPtCVDiLzn1J3HreUPuit3oDrlP2Jyd
	PG4BNsp2uFhah6kiQH1dMVPWH7/HSsKF2Evq5KyWlgcQ7rVUQsfW15TamnGgdqaG
	JTg29Aqng/mf75/WxuJrjWk+VWp8re0loABkv51qUp6DlOEPoNSjSIZBFqw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4btwcjgmub-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 14:28:36 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c6a5bc8c43so1491929085a.2
        for <linux-phy@lists.infradead.org>; Wed, 21 Jan 2026 06:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769005716; x=1769610516; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PohhrXGe5PTqCgeTdv6SeOzud+fnmfcnSu2+G2CcHFw=;
        b=HbOta3MzJavhIarbwPTccg0zR4uueSiSZP2OZ3g0vvUoeRWKdg7z7Ac9Seu8mhX+Id
         LptUylMyMrp9VLpKHOOSY2Mypnb9nxxl94ij27Cbo0ge8ZSARy8wM1YRSLM45QM+1j2d
         iM45NXnjA/PxS0C0qUjY1lgg7kWp5a/PYyr1BdS/wHFir7YrdL8f7yyEnuA9Syv/1/3h
         NE/ST3hgK4fqnFG6g3EsmJVMiNFXMRBq2JFCH91XDa7UPtr5w82A3KAbBmzAMfMqJhGO
         5+saIQb7KTw+E6glLwbV6ShXI8nyy8fXpvsy/vnGl9KHtKy65mPzvyJl2jUwrpXhI3CZ
         lDmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769005716; x=1769610516;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PohhrXGe5PTqCgeTdv6SeOzud+fnmfcnSu2+G2CcHFw=;
        b=S+aB+dwt/oCMZSBiKpufjvaOiSVab8fvAfyzbfqV5P9f3eNsmJfV/Hl5JYw6vqr7h+
         kkTWdAa547WPYrpkSysXAe/nu7J9fP7deivVN52mKYL0L4B7wheihZlvCJ9pgmgrLx/d
         jmCIh69PmDi4hCl6XRmYRXeT01lAatNu0x/hoxcvVanxlYll9sIgYchxDZTqDNSjpIqE
         sd81164xFT7yZpxnf8rfwX9yW0/DRlVz5YPzJAAS1QGRF+AoEfPXfPNpD2HpQIyqnJVi
         VQGeuejxRnP47rytNDnh5XAleQWEp906UHcdjqt9ZRLz1g7X54t9dwpOg+9iPxGkKB6Z
         HEVQ==
X-Forwarded-Encrypted: i=1; AJvYcCVu1nCCrx1zxB5K768z07Cf8tcAQwTf1lpOo4A7KRvzMyhTGAMBTn0iFdKELhsTczWXcOPvt6T6bto=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1p1NLnaBJaMq4mCSuK+k3/haoXvulkpI7MzstX0RMcEFjLz50
	Bd8tjQcG3u/tazxqw9YDCwByH35aPrUzRJwPjzmK21bByl0gtTTh3K4Z6JC3Pg/9QW82htyVl+D
	lLsX45O+zgYjMqdrpGbzjvOazZ6njvdAGZw1wIzMcumm/TA0pR18xKnPnhp3xs8Yw99HL
X-Gm-Gg: AZuq6aKxzS5Lll9svXB0Sho7JEbVqBESpig4A/FLiMs8Vh/6VAryNFU8fdN75T8HCS9
	3mvMOgcqHrudY8XUlakciAe3j/4UUYQrjyse9WlSVxgA01vEfQ2Rz4tcj4Kb7XuCDWiBhEFzNpN
	0j6hNd3NSOt+j3eUKOF/Zfmc2R7ZX2rTXSRyXkqIHJKmPKmpDg3k20c1bjNqi0FqwKQ9wy92bFX
	OPaUPZzKHr7kPydmfMx9zx5IRyCLd94y2gaTownzvUScCU34+r3uBPgivm7FZn7F+8a0kKjRz4i
	HtFbx3MyU47HtKvYhQCF8TiatjWKRLH33X4/DiSOaxIYm6xkMHzcmH4GFBUZwNXRm+V7Ft0LfWF
	I4oiL3TFK0fzrLcBGl+XVva1wozEObv5mg/m2exIeg0c36zO1C7/LH9/soZj1SNPzFR22CvhjVT
	9KVaJK
X-Received: by 2002:a05:620a:1911:b0:8bb:a346:8c84 with SMTP id af79cd13be357-8c6a66f553bmr2242660585a.30.1769005715989;
        Wed, 21 Jan 2026 06:28:35 -0800 (PST)
X-Received: by 2002:a05:620a:1911:b0:8bb:a346:8c84 with SMTP id af79cd13be357-8c6a66f553bmr2242656285a.30.1769005715505;
        Wed, 21 Jan 2026 06:28:35 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a0d:3344:10b3:c488:b09f:b54c:1120:95f0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435996540cesm6098180f8f.43.2026.01.21.06.28.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jan 2026 06:28:34 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        konrad.dybcio@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v2 1/6] phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
Date: Wed, 21 Jan 2026 15:28:22 +0100
Message-Id: <20260121142827.2583-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
References: <20260121142827.2583-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-GUID: gIhjXKmCjvKhh8TtAvIg1VMhRbcq8AcN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIxMDEyMiBTYWx0ZWRfX8XhgGz35OpA0
 8lK3W8XyAHN5q0ZLO0QXQZ7oCXdS+/XkrIDieX3bqY2xEMtUYgo+1sLNCzufLUa/KNVD+X+3GZl
 GU4aBcehk2csHl8NtqjtgwY0iJIMrP/qXqJxFN60h2YsvYb2r45aaTKb4cI2XcJY9dDM6Q5P/hh
 H6boE2B3NT5cIFhmC5TMtFaQHlAjZMsa/Vg3VWKp54uVfJHy8WtlTCqgsxqas7vycD4cPvuxPs6
 O1tE7QVgcGwKuWwOiLOHZZrjRRKJYKjKWuRUK12DXlsr5Yd0rnuedsB7AyHKUjpcsbRz6yiR0+F
 /u4nQxxWzK1AeIeozNgHQL5b75s+Xqn4u1LQWvrpGs2Rj6o88hbzZ0VH0zv0Mqt/TNdesSXumUK
 Ld98PoUp+IW2zqNBoCBKdq8pYAFu4aWFVBfCiOlzOGRpBQ7CZJPEsLkm8RMoPDbUIfBdoj5TrFM
 FoIEmX+RXLR5Vz7Sdog==
X-Proofpoint-ORIG-GUID: gIhjXKmCjvKhh8TtAvIg1VMhRbcq8AcN
X-Authority-Analysis: v=2.4 cv=JpD8bc4C c=1 sm=1 tr=0 ts=6970e294 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-21_02,2026-01-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 priorityscore=1501 impostorscore=0 adultscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601210122
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_062837_893353_DE521FA0 
X-CRM114-Status: GOOD (  16.47  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d02..cea0e9f7413d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -4175,15 +4175,15 @@ static int qmp_combo_probe(struct platform_device *pdev)
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
