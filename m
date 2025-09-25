Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98BB5CAC5AE
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 00:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9BeE3C6XP/fixgQimDCOzTYJUCp2ikvNrfkzXN5+IMo=; b=M1ztJxsYZgIuus
	KmP9+PGPPXUDBDYmvHeLxg6QRLAKUkNiOZ7MPhwSz5rJXH4Qg4J1MMj2NgR2NoKsF6jcaod5K1oxT
	azyyUUq4h9PWnlrfD6KiCJBb0egXQUv3Rn3QzYRGlaHUoxMhsIHyqP9jdjsyQE6Qf6rUZcDCC7TCk
	XsZDFOr1di4frKd4tSs87wdra8ObHCM+rOohMDD7KenCf7Uz6lZhVBwB0Pqhpk98PHiNoM/RAQX7d
	4P1T9p1PO5Ja3zJvBWbOFO7kJgg6QuPrHvqHJFx291AaX6vBF2IKKZEZyPVcg3E3H0CSQWj7bOZ0o
	oYvh6WfrzCnyKdGJhcKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aE8-000000058JZ-1YbN;
	Thu, 25 Sep 2025 00:52:52 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1aE4-000000058Hx-1tGs
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 00:52:49 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODY2jY029979
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oQ1clu+8ZKT
	yXqEd3c9pCyX/LD2tCG76qdlEPx0yVao=; b=fH8h3Y8w9C9p0PcQYFv5koeBng2
	PxN8cGE5WWbq9wSiB1d2S50AR6cwRU/kSXUOOjWGxBrK61pf46cXcM8VZqsFRNew
	5/WCNAY8plUHvBJA8Mhh5Z3FE7TWjqrfwj7O3Nnh2yDuhsVCD7rhrq6W5CitSjYg
	ETOHaamsQKeQY/cHC7kYo2OZQnaD5HGLvC9FVxaGZ1aoHBSS72vBXRdHwAI9Bixy
	GBjAWtsOdNAzmPK18lZNg0cTPGxbqdFJI0PLbBwBxsci5HzgCZ1dtXQDUVz3kn/7
	KhVUIAl14CILLJhjPG83yUGLbztQF3UgQEeTy5ZCluxNaazXx7EsJRwQCiA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp3ks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:52:48 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2699ebc0319so3740095ad.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Sep 2025 17:52:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758761567; x=1759366367;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oQ1clu+8ZKTyXqEd3c9pCyX/LD2tCG76qdlEPx0yVao=;
        b=VZM9BdGT5aoZtbz/8WzZq737u0U+Brf8nhrH+vGwXVHEkNnaacFnrwugUDL89sO1ca
         mnYJCepQo3HtmE8RqsOaYYuDsYCWmz/+0lqnB077XuWFlFArZS+cWYjAJlLLw2Fowrk4
         K3bwqE7mzuh/5ZKCqpG4fYsaGdnM743XjxwwcAIsJtohQgUioi5nAlHyvlMgQiUqV1wE
         hV9Y6mJwZv+5psec8JfX445siwT+BuVlPrNeWYLVF8yW0oKfRGepbodaSZyHu8N4jVr7
         5ICU0AtlbqscvoIpAHRNZVe2R9sIfA6gNwfQQYf9IYpIUa+NFgT/8Der/sGmd49DQI8q
         FF5g==
X-Forwarded-Encrypted: i=1; AJvYcCU1ftgiblVpjG76kgmVRmm+Ubxv8o7Lzt7dA0lczQgUvExoqlo9+wlswS/PVNzCu3tNdpSZxbflQXY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxlRCviO4JcwXHxG8SUVRqpAgcJUwlXBw7UKhOVACaeI7zARXEY
	pBa/9I7kKTTfyjQxsk2pVDU0tL4mWH4KZwpyBhJcKFiXhnAacfTshHuXkHV84oC5gQJYz+cFJJ/
	9sg/vIRrryVH/NIUV/3AVOImMSU23hD7W33ZNrqnaVXGChTAUyE35dIjpjfIdtRl6/TcX
X-Gm-Gg: ASbGnctICfRlnrh8I58J2YqlvynHOGo9ZWslG/6U2NFaCndB+WmRoiu0riA6cBuVWb7
	QHssK846RDBGtEmnVwpXSrb+kjCP6cMhB8L49Dg0HS+3cpK8w7+65zNk8OpFmrm0MfG3ByXMS4o
	jOwMRl9kY4HzlzXPuGGaEjpP3O8TOKXFFdDrZ/fcTb9j1PKTkWk7gO3DcOGA6ftX7wrptOyHBi/
	rBLe6VkeIhCTcw+RC93koX2EHBCasBkHtPSvcN0NAM3oBjKhtnaR2YCt3vONYo2EN/JD5k7AvYM
	pbXw2iay5P9ZLGweQVosFjhuzGGJ10r+Kk1S8u+RxKQwu5nAzuuB8RQK2AEpUdv2rHxvpDLasEH
	0fkoLsIhoHQwhyz3r
X-Received: by 2002:a17:903:41cb:b0:267:ba53:8bd3 with SMTP id d9443c01a7336-27ed4a7f36fmr18185255ad.28.1758761567023;
        Wed, 24 Sep 2025 17:52:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH+WVAjn6nkapon6wWWzR245K/fiIlGiNBXHDyjGbThoY6v94l2NAtZ+A3xiLpl9py7sDEIGA==
X-Received: by 2002:a17:903:41cb:b0:267:ba53:8bd3 with SMTP id d9443c01a7336-27ed4a7f36fmr18184925ad.28.1758761566547;
        Wed, 24 Sep 2025 17:52:46 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac27d4sm5238105ad.135.2025.09.24.17.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:52:45 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v2 10/10] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2 repeater support
Date: Wed, 24 Sep 2025 17:52:28 -0700
Message-Id: <20250925005228.4035927-11-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: pgIX0aXcuvKZIJUfR9x_zRT59NdcbCvt
X-Proofpoint-GUID: pgIX0aXcuvKZIJUfR9x_zRT59NdcbCvt
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d49260 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=PEmB9FCP7AcuBCYBmm8A:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfXxaHfui55qdC/
 Lg4DX5fdhZSNIg6dSy02g2IjwRjKFFw1LTBHIKzcec2sKKVjZWGKllRxbCk9wyRJJE1oWl4u8Lc
 ZLcc/0sxneIv9BWW3SkUGuFsNk0vv2Ci2lih2/6ce1GsiWiV0gKMVBTIec1FBoHlFcdNAcEHxLH
 gbmAmhEfT8Pjp2dYhi3BAd42plJdRuMvX8EM/JX0qJoJiUarTlfdehP1vARmiVfPPg7xsD2WPY3
 yCPxyw8R/gMETQ/669mxijoRBWsNtdHeURFjJ8jEAtnlwX7FP5adGikg8x3xiRXbU83WmCcqo7c
 iDPaELGuhaG8cy68ciXE8cyMBotnOxccH6Jcaqzup16lKjunT36aWYnL/Mstm8X9IJPYwCLlzqX
 qMp/kYz8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_175248_493161_227672EB 
X-CRM114-Status: GOOD (  13.79  )
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

Introduce support for the SMB2370 based eUSB2 repeater.  Configure the
proper repeater tuning settings, as if this is not done correctly, it
can lead to instability on the USB2 link, which leads to USB2
enumeration failures, or random disconnects.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
index 651a12b59bc8..441996480a67 100644
--- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
+++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
@@ -75,6 +75,13 @@ static const struct eusb2_repeater_init_tbl_reg smb2360_init_tbl[] = {
 	{ EUSB2_TUNE_USB2_PREEM, 0x2 },
 };
 
+static const struct eusb2_repeater_init_tbl_reg smb2370_init_tbl[] = {
+	{ EUSB2_TUNE_IUSB2, 0x4 },
+	{ EUSB2_TUNE_SQUELCH_U, 0x3 },
+	{ EUSB2_TUNE_USB2_SLEW, 0x7 },
+	{ EUSB2_TUNE_USB2_PREEM, 0x0 },
+};
+
 static const struct eusb2_repeater_cfg pm8550b_eusb2_cfg = {
 	.init_tbl	= pm8550b_init_tbl,
 	.init_tbl_num	= ARRAY_SIZE(pm8550b_init_tbl),
@@ -97,6 +104,13 @@ static const struct eusb2_repeater_cfg smb2360_eusb2_cfg = {
 	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
 };
 
+static const struct eusb2_repeater_cfg smb2370_eusb2_cfg = {
+	.init_tbl	= smb2370_init_tbl,
+	.init_tbl_num	= ARRAY_SIZE(smb2370_init_tbl),
+	.vreg_list	= pm8550b_vreg_l,
+	.num_vregs	= ARRAY_SIZE(pm8550b_vreg_l),
+};
+
 static int eusb2_repeater_init_vregs(struct eusb2_repeater *rptr)
 {
 	int num = rptr->cfg->num_vregs;
@@ -278,6 +292,10 @@ static const struct of_device_id eusb2_repeater_of_match_table[] = {
 		.compatible = "qcom,smb2360-eusb2-repeater",
 		.data = &smb2360_eusb2_cfg,
 	},
+	{
+		.compatible = "qcom,smb2370-eusb2-repeater",
+		.data = &smb2370_eusb2_cfg,
+	},
 	{ },
 };
 MODULE_DEVICE_TABLE(of, eusb2_repeater_of_match_table);

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
