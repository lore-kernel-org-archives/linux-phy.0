Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F92ED1D478
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 15:49:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nL1W721Z1iUhefuzNgGMkYJsCwrA6e7r767/GNexatw=; b=HX7Krkxeu1Zcru
	hR+U9xO2MDHAExPpDCP3PNbup9iakr/NR5Mmfj8kEAHTwniPbMVY6rBs2eAczEC1uVa2Q7MOqZGne
	+85KMFmwvZowrtsmcAwHPRq9b+kPXAl2TYzCSL/YhQz8/2l4TyT3qoOHN3pHjo1aJyL0eKfxmV1bw
	8jwHfC4YtRFjzHxTIB0efwI2A+oCrH6r/9jNoUGWwQO47b0aHNL8Kvgk4CVCPRYFIYXnUbCMOOvGX
	EY+LcX0/1QqSeygl1s07Rd4uWv5Q1iPxpZYAVqMXmFTWuX4pIeNhsM2aiomS2TN0YxO126YsUe5zZ
	OUV6QI0zYsCKzVLIk9Fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGq-0000000HaDm-1dxc;
	Thu, 08 Jan 2026 15:49:56 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdsGm-0000000HaCP-33IK
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 15:49:53 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608Ff2GN2491612
	for <linux-phy@lists.infradead.org>; Thu, 8 Jan 2026 15:49:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=mPi7WwVh7AM
	5zAHZZAKTaUekPHDp3ifg72DuYVsGH08=; b=DMrYvJyVe8kGgiLqFrHgod6PANI
	P3vXyoSiARKwuOVYiDNw/+eLIxhH11PxvyiaeAp9hl68s0+Ot+PR0qyOrRv1zyOy
	qyI3Biy9HLVXxAgvYPlGmTpbk6/TCzDeBJbPSed5nFiskvICUEZdTthB2NoJXLx+
	33boMivxw7q5ezJC91iu0N9YpGsLZktQwV0t7aJvzsUx1D3E2HQU+XkIJ5QFfHP7
	U5AdtsXTfjSqZpd3uEGIIIPsa5cAzGF19wS5vGLJZebQ9LwI73fh0aEcblOnVHJB
	+JjU+p9QNB5dAyh7Axn1Uy+UwRxkVVXW7XBpKCMHTjf7V7EeMmDm2pnFI7g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjfejr0r0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 15:49:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8bb9f029f31so858496285a.2
        for <linux-phy@lists.infradead.org>; Thu, 08 Jan 2026 07:49:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767887391; x=1768492191; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mPi7WwVh7AM5zAHZZAKTaUekPHDp3ifg72DuYVsGH08=;
        b=EStxgOe/OO0bMgxrOjidDU1DvpvToYfbbl/dGXLHQDX2TSppKM4Dmy/qdO7vvtDMcI
         f+TltFk23Q7/ZQ5TIM/yUhqzaS8vyKsqvHot2HhhD5Tu60uSsVmaBgwqtQuPILy2sEVV
         6mu3lxjMrxYYp6KvyN54GyuhFZcAOFuwfNSarTYFunzLVquemf+KQbY9QzKspCPcERoU
         BZX6AIXnF5xtGBx/FnS3XE1lywXJ3Eo69grc3OLcUyJRrpwxL/WbXWUOEJkonQVQ/RCT
         BWUaAfIexI600sfJhsaleb8BP9vA6CG6GjT1gU96r15DVqTQjqmAslHwJ4BLx728x7im
         s7JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767887391; x=1768492191;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mPi7WwVh7AM5zAHZZAKTaUekPHDp3ifg72DuYVsGH08=;
        b=kaJEUNerR7v6Kcv3RemKy8I/Np6M8wWRDIfuwweMrs9X1DsmVi1b1g4J7PJ/hkf/VI
         VmQdCi6k88xaOePT40M+30rI5jn16CLtDvXzdUGsBwgoQbk1JMNNR8H2lexo7Y0Ke4+P
         fGKZcCDt9m53sYy00/Kt+Ier13BRgNCfra+pvqdLbcdtbJnQXPFVd/b/cX/xX4mZrM5n
         MvdGvfnuIa72fQQX4+Tsj/njdE8nYrQDDKXXNNl98vxAAMJgim4fC/GGYM+T4R3D5LuO
         ezqb59n9iGv0sAePxp0k7Svw3N/bGxYaOx+iT4dd8q49R9WlGNWMxZRI6/0zqZd81Imh
         ZkwQ==
X-Forwarded-Encrypted: i=1; AJvYcCWgBQv/TXvPTr2PV61wEn5XR9dhXRkJCv0vkUVjDSo9ZuoTpSwU15PnM5RRKPTzgVyYT3UxgNrEeOg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzTg579lANyjf5jgb4UcsshdjDSZQ95Xqn6ye4cUk9SHavRrE+T
	ntMsAYSxfSFHxfcSkk1OvrZvn3UyiUPA4d4FRgy85GetS5UFhFKvk/Dm54yshiIp2Hn2uP8FrgN
	U1dstSVNR3pJmYgVKE+6slsvaQeX11pZlLIs2TTAT6af4VERhwG/RN0icNRCrnSDO2fku
X-Gm-Gg: AY/fxX4Rh1a6mP3qFaSWEQ4yTxeMhAUWSoZKXWL5deIq0G5m/tRmfL9OY1HAuCnNLSz
	LmGPDzJ7CaYSmHaIKUAFc6fRJSs0o0QTS2WCmH2aH4ENnQrr3ml7IGdKf6ZUKE8NXPXTAO5TARE
	eqsJhoIXZSx13pkwUvswNcYfQWxut/kxjGZAFzCrb0sYGBNVpViAfeOvdiyhc+VtEhuEwcZmByC
	jg3Z67kEjRe7b9jCMoU67JnRr74j/FRlNJs53QyichjXWg0ORLOGUbH30lCb+ws4cPswG+FtvT1
	nEgzGjgQVI4mSEGPG+2Oz5XYyP+Etss46vgMr2RSXa35pqviDXdkIaScS0oG37PWy3Je2P0+pX9
	wUA4YlA2nxsrb9rJc+SiHz09kRmwvcA28xEWVQ3f9Xf8pjDbYZloXd1cqB8oQ9oPwP+pJtHKq/W
	s5
X-Received: by 2002:a05:620a:2913:b0:8b2:dd0a:8809 with SMTP id af79cd13be357-8c38941c43bmr879264885a.89.1767887391207;
        Thu, 08 Jan 2026 07:49:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAdN3T+Sbb/38vlBbCDWm9CfEHNb4Jcrs2t956eMgt4WlO+9SKo9opCYN8eDXooskXa3h3OA==
X-Received: by 2002:a05:620a:2913:b0:8b2:dd0a:8809 with SMTP id af79cd13be357-8c38941c43bmr879260885a.89.1767887390751;
        Thu, 08 Jan 2026 07:49:50 -0800 (PST)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:211d:6051:c853:ae97])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm8078121a12.17.2026.01.08.07.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 07:49:50 -0800 (PST)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: vkoul@kernel.org, kishon@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 1/4] phy: qcom: qmp-combo: Prevent unnecessary PM runtime suspend at boot
Date: Thu,  8 Jan 2026 16:49:41 +0100
Message-Id: <20260108154944.211886-2-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
References: <20260108154944.211886-1-loic.poulain@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: AwqhlfyHe8xe6WJQClQ9qIzNebVC03_Z
X-Proofpoint-GUID: AwqhlfyHe8xe6WJQClQ9qIzNebVC03_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDExNSBTYWx0ZWRfX/p9YsDZ7aubw
 7f0uYELi0qRUr4+3vNOopLaVZ3FVfKe1QAqqlWVGFTb5GZitgFZ+/swWFnh7lLQJA7DcfmUZ9iZ
 eUsEskiVrBdptfi6r6HOZr11inpfgMGC8aFiiPeh3lPIHm2In2yayLBKlccCAFA0RVe1QAE9Bm0
 3GiStyQVPLtWH/4lnfbkke7lRYc6O9DuLqZlQGZ4FT3vqxM8mhy5k+0quOw7sdYrc2Pmw2ZY29/
 c3n53fneMgCwetV7sjVy8vZu2rTaVomKCGHGlHql9cIgky116uS4UHT7LktSgsBnKUCNWPPwupp
 KafUNY4cvphOpXU9iKo8ohhfIus/KRpjfjKQN4SKTc1mC89vP1DnO4JzvW/MYoYSCqTTkkWcsBK
 opabT+21lBuB7B3qS+PCrCmnJePcwHH7yzCeVwkQI3aUQwNBwANDbAhUnPD+aOYn+dTHbm0vE19
 pEKt9a2jicyUlgCUJNQ==
X-Authority-Analysis: v=2.4 cv=ZfAQ98VA c=1 sm=1 tr=0 ts=695fd21f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=FmOiMsbJW-36OGxlXE4A:9 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_03,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 suspectscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601080115
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_074952_886207_0C446051 
X-CRM114-Status: GOOD (  16.14  )
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
