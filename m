Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13DB606A8A8
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 10:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=vIwDKrKg;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WnZoMRWJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=PKUhxUnX
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R1a2YOI/yKiVpxHfBKYEF/XzgEhWKNln+9RcUl9wJ+g=; b=vIwDKrKgtzglTVB0+zRY2oGwly
	FMpVAXvyiiqPD/icMqsUEwgPCS0IZOcoF6YgjMK7aRpPkfailj0Ku2B8EDh/Uy6hxq2f6TpgZUvPr
	2aAgPxzvVFphS/Dryf8/4BVvtL/pmXEhD4omBTejHbPElU5Ier8WjxsAdZjb0I44dwAYh1PiRhzhE
	kY880rr2iFLKbtOelfkbZqy60GezJVIoabx0ncmIAtEG6fKloLrz33j/fkUuF597FpLL6WNn0S2Pe
	58WAl0DYMxdpdGp36TvDDb/SwKqai9hlLSEx++Ej/157It4eGS5Uxn4M/b0XCi71duVOBAdyEogKn
	Giqk4gQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoZ5-0000000CNOh-1p6K;
	Fri, 13 Nov 2026 10:31:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRoZ1-0000000CNMZ-0nXP
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 10:31:25 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AD8VAsR074808
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KpRu8BpOa+m
	CCXYxNaCrJjVGuENtvlTwOw/KUHxbDY0=; b=WnZoMRWJSgdz38tzuU6WjXsNSWu
	9QCVw8Z5vsMGsFSWaAhSXdtUFAYO7vqDqHiegZk7MEFir2KlCFF+tULr85YhBHp+
	5YsU7z6fd4HccuiXJ7/4bdHC99e7sT+XIxryZqikmDpoaNcVDyBGELl3Yh/acTNf
	V79Zc6goJ5BzUvHJzlMXHPNGZ9uYW4Hv5oCOYkKdPmwhPtgpMT5FWc2xn5poGa0B
	BoDBsQzhbx/n8RbwYLmtcMS/IUU7BSzVlRdXQIDua0yroalHupytoMyjxaG1qVXp
	JKgiky/XI4F9l9S5KA7FeSAikyBwEM2JN9TMPwVruMftUYA/jegYW8l6A+A==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hwqufhw6m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 10:31:22 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2eaae8d29e0so10353205ad.2
        for <linux-phy@lists.infradead.org>; Fri, 13 Nov 2026 02:31:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794565882; x=1795170682; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KpRu8BpOa+mCCXYxNaCrJjVGuENtvlTwOw/KUHxbDY0=;
        b=PKUhxUnXRl2qMbSPypLdzptKxyofb6AvblpicbnbkeBjC/J+ARNLwOravHGrU7Fb7U
         6Q+YwxSu8RW1fN/9MWOROSvJxYzVMQA3aOp9ywI+BECFZ06FhwanX1GJd0K4eM4Nt6Lm
         BpS+7lUPpM3mEp/Ow8vzYahrvzuG9FscaAztfQlBiCBkHPnCRnAxqV5Mtzggsl09F1rV
         tRs1iB3rhokPDKesvLCyic9ZgQdxc2L508ZrPb4qF4wUakj135FNMqz+stJADwwV30r8
         wDdrSoVVAEn/DimkBk0tp/7Yst7AB74eDrb2NoYytgvEXbuC+PYln9FkjOzJ5JwSLeGn
         P3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794565882; x=1795170682;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KpRu8BpOa+mCCXYxNaCrJjVGuENtvlTwOw/KUHxbDY0=;
        b=UCGRDn34/tR6XqDC3s76WpdavbWOzf7iIc1yHvf7B5FniEZjmmNBv7qwVP/q38RiyK
         uqLwofCG+n3p2wv9ctXv1i2r0I4q5qmZDx8fXDQLSQTV4DEm4PYeGdk82K+jn3+5mB4a
         Qt+23qqsMVOcnQr3jkDWHJnRW3bDi9RvYyVz+1eC1gVjblUIQfZOER/pr7nrJc4hC3Jx
         D2mBUIf7YueAruFdjrbLIGjMQ8JhaaslFA0jFZvjwQugGQMqn3TbbklW9HJ8RiFg4oRc
         2z8s7cYhkGZMJj6hFrhwPHwosBKjoWN4GYpmeBS9zBO0ujsmUUQvHl/8jbaSKqn3OqWe
         pqtg==
X-Forwarded-Encrypted: i=1; AL+hErFUMkOBMl+Yf6dfOVhjpLGQu69dv7O5KCgM86Xc9XSO9AdEXrGUu2cTXZrvJN4J71QpUyrwvX0NIlY=@lists.infradead.org
X-Gm-Message-State: APuU4Z+vLDJ23wokmHrCPqvTCeHq8P+jm37yCKHb4KGHgdVh0qlJDDE7
	LMc/JBmbNDeNHRS2022AcshHHgxVAwxMhHPiUuD4vCRUNW9QZ4YCBof7ZxLq1le59A8UzgILkNQ
	3ooJ1lk2a7WflKikom+nTjnLzw1Naayl90+lrSbvuQHxFy549v6Sv21LZXOBW8fytG8U2384WBR
	BU
X-Gm-Gg: AYBFou32TmGrDxvjR/er+S+Ak8p3045NE6L7bGSO8FUAQvh+qux/Nuiuf8wu0p0q4ox
	Ch1ROSVCyQj6YcfHb75p0yC7asRIjixqbBEQ5xJu3lmnZpd1BN9wyU5KvsiMzXpqtvTiPfUeiqW
	gz5eY705EC9Q2M/vKLmLw743+NPg7vVKYeHEbyP4SN+oxI5J8mzaclxitcq5nHC7qmO+H+8iCPw
	LTJ30pPho+clqHjVlXuvPBxKDDL14oIPceDFJhUTXcne7lKv1Cx0IwPLO0k8sG0VU8MnO7p/LQj
	HVrLjisSNjCCeUTEXB0icCeBiH3xVBqD337I93+Z+etMT7mMrbKE2bmOcibBnY8Is9dPyIGVYzh
	iq+ietYctPFqbxn11YDet2aO5W4DutbPfk0zLa3gwC+nntXOENVxL+CrI0nkHbZbgFBJ9QmZ4R2
	grgA==
X-Received: by 2002:a17:903:30d2:b0:2ed:146c:cbb7 with SMTP id d9443c01a7336-2ee0da7fdb6mr12931035ad.16.1794565882114;
        Fri, 13 Nov 2026 02:31:22 -0800 (PST)
X-Received: by 2002:a17:903:30d2:b0:2ed:146c:cbb7 with SMTP id d9443c01a7336-2ee0da7fdb6mr12930915ad.16.1794565881678;
        Fri, 13 Nov 2026 02:31:21 -0800 (PST)
Received: from hu-prashk-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ee0f8d4612sm8072585ad.57.2026.11.13.02.31.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Nov 2026 02:31:21 -0800 (PST)
From: Prashanth K <prashanth.k@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>
Subject: [PATCH v2 1/2] phy: qcom: qmp-usb: Add PM suspend/resume callbacks
Date: Fri, 13 Nov 2026 16:01:10 +0530
Message-Id: <20261113103111.156476-2-prashanth.k@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
References: <20261113103111.156476-1-prashanth.k@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: s_Q5jJeZr5mBdkIaJuhtGAvzB6NfjmhH
X-Proofpoint-ORIG-GUID: s_Q5jJeZr5mBdkIaJuhtGAvzB6NfjmhH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX4fI2QtTb3+37
 2ACzge/tA13mq6COaokQdgE1LJHCQOcmCRvLjYRO1J56r4INV/zSp1F/+XZ9YLuJNQ9EM6BvbQ9
 tA803el4+WTYj86751GqKI0OUtYH9+Evfk4EIkQttxqLTMapIQDauqB5Mzmu+FRKPf0OdMUnUUp
 ++eCLLl9XviorpCUX007XIIbuApBW5Ew7MXgG3erbYxCuJiBW0U5m0bsF8FgyF0ad6Sh7B8cY+u
 TV61eAYMf0W4h509kjmRyseYRZYO0IVpVXDPBzVqI1dYDjJSbs+Hni29wF0wUFuVm7c8gkeNyok
 7fgBtKrfdAW/mSkkIHT1RZRIKYtpQaeo8mhfl/vbw9SfU8XZA3iMY6VIcl74deT+CHETbaw8qMv
 h6FFb5KH+S+GMAZiZNvu5+qGeniaP5lMskTgX9aRfDUXfujqc/O7Yazos2IwLQOc4tR/rsq/N+I
 N3tbtmTsxjNXac3vkDA==
X-Authority-Analysis: v=2.4 cv=XZocX455 c=1 sm=1 tr=0 ts=6af6e6fa cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=tKit87rPrO_SzoOCm70A:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTEzMDA0MSBTYWx0ZWRfX73rxTsCnTUV9
 a/x+FqEhipKFJxn5YCn+hnd83apwa+zElxOGhCIYZbX2mNc44HWVp0hYFUJtGoSq8lsz+5C9Djq
 eHjYSCJYn/Msb8VifTcSxjbahhCeBHo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-13_03,2026-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 spamscore=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611130041
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_023124_462411_AEE5E56B 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Currently when we perform system suspend, the phy clocks aren't
turned off, this leads to power leakage. Prevent this by adding
PM suspend/resume callbacks for the qmp-usb phy which toggles
clocks on/off correspondingly.

Signed-off-by: Prashanth K <prashanth.k@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
index 6a9faa0ce3bb..dc8be977e0a8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
@@ -2129,6 +2129,7 @@ static int __maybe_unused qmp_usb_runtime_resume(struct device *dev)
 static const struct dev_pm_ops qmp_usb_pm_ops = {
 	SET_RUNTIME_PM_OPS(qmp_usb_runtime_suspend,
 			   qmp_usb_runtime_resume, NULL)
+	SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend, pm_runtime_force_resume)
 };
 
 static int qmp_usb_reset_init(struct qmp_usb *qmp,
@@ -2510,7 +2511,7 @@ static struct platform_driver qmp_usb_driver = {
 	.probe		= qmp_usb_probe,
 	.driver = {
 		.name	= "qcom-qmp-usb-phy",
-		.pm	= &qmp_usb_pm_ops,
+		.pm	= pm_ptr(&qmp_usb_pm_ops),
 		.of_match_table = qmp_usb_of_match_table,
 	},
 };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
