Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0FBD6CA0FE9
	for <linux-phy@archiver.kernel.org>; Mon, 25 Aug 2025 12:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GDk+yiUYKziTQv9oUn2/nmao3jvBQdzes45hsb4HhXA=; b=zBhJptWfK8NdaM
	FG84xMbixrTMsoMQxsFcODBG8skhk1P3tWH0mfLCQ6SnsE0SkeC2sqEMtExVtts8aqV+fgkFqmGCr
	E9mpXzISOY4mLI8yxJXtIxvT3Ste3+4cJ8FsDNAIqC0xSxbySdgRAvpZvF6ESyYp9/+CGqU6pw9/D
	ur7ek2J077KoJerINExC7UDO6uNyyqJqdu68HXt3Rs1q5ZscZZWNDKBKcInT7xgsmwDJ/8zNdOIUo
	ZP1NL9uBaTOhB/XVZIl7yTJky5f0oHDzVBzOnb8gaZmvpUrjb3nIiQzVZVT7ZBddbByHq9aj9Ftau
	1Kxbn3FImNIJ5grXsWlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqWis-00000007zWB-3M5G;
	Mon, 25 Aug 2025 12:54:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqVkK-00000007qDO-0doD
	for linux-phy@lists.infradead.org;
	Mon, 25 Aug 2025 11:52:21 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57P8bbVl004446
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SXrtefYV/rer8ZU996F+Maf3mwsdsfGt4Sxy4lj7V/0=; b=Y75BQMgkquYZ+pgg
	F2ynAc8+RMPiKmquViVF2QxHh70CDJXLrJzJ86Y3bfXYQUtOGypUjMLrc7/zVgFv
	qlQpEj48Y6FKRm7QF1h+vgQniFpMRjJASqPsE5ex9MXfjTjO0mhgTG3C92uNrxvu
	714JBAhq/dgicuPZhNbVSHqob3gRxydW7Atcnk89vRF/hZxNb0pgJntqKew876Wr
	bKtELG4f3A/fCQaD8mxHzaQ+GNhmyQwAcM4VRIvmgPjxDhjMI8t4SGeFf/NkFGCj
	0K/Pt+iHn7i7G92LccGN/F92mK+0gaIh1gZxTzSrZqA6h9POdKiLWhn/7J3zeW+M
	wUj7Lg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5wdvv0r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 11:52:19 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244582bc5e4so53897445ad.2
        for <linux-phy@lists.infradead.org>; Mon, 25 Aug 2025 04:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756122738; x=1756727538;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXrtefYV/rer8ZU996F+Maf3mwsdsfGt4Sxy4lj7V/0=;
        b=h4P7qoQc1iuVy45QAdTOIvrDeglOjUPLd0tH76nAZUMq3mu8UZThCW1OkSr6PpJOv3
         lkmVl2sNFhbKtiartp514n3PjsQ5wjYOxQSs9N+8mfv0QxuR9fGaZBTOoXmRuvWhlaiD
         pqA8HMg/ggrLPcgf6d0ppXCEMqsims2KTHITdXdOmcCzaPvOxMYTc8+diYRsYQCjVQMD
         NuCkV9mq04kTGQCNMvtegi1HpI1Snay8rTyvZ28t82WNbpXsbC/ij1tIvDlsajsxbdfl
         6/9Cmk0SjvTh+poy598dzuxWR6dcO4d5wpIn8KkZj6EPTtv/7EbSA/5gNDy9qLugMkWR
         d+mQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGzsB3lRxfdt/G5b24jxCB5n9OLMbtDDZpeHUvty6i/CH7D1wsBZE6t+jBBQO5hmRzyE/7uLIFtHg=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzb1q/mxPTqOJ+V3iReOJJ6Msmi/hDcslUN4ze9PUDlfFri+WxA
	rPLyjdp6axHX3AZ28fBiPrhjX1sxmt1kHBlpTkmO7BfUURA8eFTpZMh+EvRCnvEAN2z7lh6jqMI
	pevlQmlUnV6HxF6ob7eVe7oeAqPJU0QNcdJdcI37bfdVti25yDKRdWDqc98K5Nx3RboTStuWLkE
	53
X-Gm-Gg: ASbGncvorbCOJRL/we3l9kFNRrTmArAFgqiS3x/ptM9w1AAQJVArOfCjMNAnB5ND5Ym
	Do0UEJERalDRtxbbNK518GqfFPdmVW8ZAF+hojneAgaxen4UmFlaUCzILivNUpISBxG8yg+mHp8
	sWsb52pS/GarLxPdzHDv3ftFNDPJWTeW4oMh1xPQMV+mq8DdNJ3eiJzDinG7yG5s1TywzGvJuIs
	qymzDLGN5bqgATGTbm+HKdq7BGhLKPOhp0oQJPYxc/KnLOsoQ9He4/2lShzJIMw9kX3aQxjpXId
	fjG/agnv/O5kDBxs9L0Kc4ZfzQ2tNLKv+BAapyLi+F36nBB6owVK8nzcrJ9rIAdg1Z0jRfo8YKw
	GsjjKPJHr1aMTwMzAIvpW7dZ2xzEnWfuxprioHfvxkeY7NjsP4enEa88Bvde+BhtAXQY+CnB6Pt
	Y=
X-Received: by 2002:a17:903:3843:b0:240:44a6:5027 with SMTP id d9443c01a7336-2462ee86251mr166388015ad.15.1756122737944;
        Mon, 25 Aug 2025 04:52:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZOHnBfa/nKEGaRv/PuhU1McCgGtecSv7aj2G8enwYdVtrs96Wb/j+o1Dlu9hGwpL3t7LJBw==
X-Received: by 2002:a17:903:3843:b0:240:44a6:5027 with SMTP id d9443c01a7336-2462ee86251mr166387635ad.15.1756122737478;
        Mon, 25 Aug 2025 04:52:17 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687b521bsm67081015ad.60.2025.08.25.04.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Aug 2025 04:52:17 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 17:22:03 +0530
Subject: [PATCH 2/3] phy: qcom-qmp-usb-legacy: fix NULL pointer dereference
 in PM callbacks
MIME-Version: 1.0
Message-Id: <20250825-qmp-null-deref-on-pm-v1-2-bbd3ca330849@oss.qualcomm.com>
References: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
In-Reply-To: <20250825-qmp-null-deref-on-pm-v1-0-bbd3ca330849@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Poovendhan Selvaraj <quic_poovendh@quicinc.com>,
        stable@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756122727; l=1673;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=6HKGGM9psY0kba5AoS6bL64REDMzFHyQyl4L0oj0wGs=;
 b=t9gbOuOWuPqyzh7BJf8Tkb8XTnTkURC0r0G+IhLlOAg1S8ZTgM4215mON2iWWPFN0bRGo3D0s
 QNu3E9YWadHBLCgGCGnNoYtvIMzJK02K+1zZ+Way7rxOPfGgKP7DGPj
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-GUID: oiyxtB_E2B9WT8aJZ_fTSYJQKQS_46Op
X-Proofpoint-ORIG-GUID: oiyxtB_E2B9WT8aJZ_fTSYJQKQS_46Op
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX8lXg3gxKSKpY
 0Zy2yJ2VtJ9pLKO6KAtfR98bn4kQqQkV34cIrbEPO6eTNTmkJ/UrrkqwjTT32mkvg71cA1/lzdb
 MyOauZzKNMIDwo4lcJ1QotdDjK5JBsHhYnh3stDjmsSXJhJ1EbISwcVHcJNEyI/YQWHKd59PUiF
 7247OdowSGVAqTBc0TEGC19FDk4ZS/+wdjv+mN2NPsLi5yTc+VjX5Db6UFawyEVECe6XrV1vpTt
 7nlj4pRJWLV6ixGjAAbL04oH6uXB7AEHPjUUaiVptwJLYRela6uyiiWNHAmipjhLIJGMBUVgtNO
 O9cgysvjAfysFOpsX4wUXtbMxZI83YmOnw7acQOdbYQWOOHVV9W9Gf36TJbwfKJE3+a6iUyrLws
 /K/cWi8N
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68ac4e73 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=Jvf624gE4dKDwD2Vql8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-25_05,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1011 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_045220_311629_78ACCB92 
X-CRM114-Status: GOOD (  14.57  )
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

From: Poovendhan Selvaraj <quic_poovendh@quicinc.com>

The pm ops are enabled before qmp phy create which causes
a NULL pointer dereference when accessing qmp->phy->init_count
in the qmp_usb_runtime_suspend.

So if qmp->phy is NULL, bail out early in suspend / resume callbacks
to avoid the NULL pointer dereference in qmp_usb_runtime_suspend and
qmp_usb_runtime_resume.

Cc: stable@vger.kernel.org # v6.6
Fixes: e464a3180a43 ("phy: qcom-qmp-usb: split off the legacy USB+dp_com support")
Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
index 8bf951b0490cfd811635df8940de1b789e21b46c..ef28e59ffd58a12d6d416a553a3a478e9691b8c5 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb-legacy.c
@@ -988,7 +988,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_suspend(struct device *dev)
 
 	dev_vdbg(dev, "Suspending QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}
@@ -1009,7 +1009,7 @@ static int __maybe_unused qmp_usb_legacy_runtime_resume(struct device *dev)
 
 	dev_vdbg(dev, "Resuming QMP phy, mode:%d\n", qmp->mode);
 
-	if (!qmp->phy->init_count) {
+	if (!qmp->phy || !qmp->phy->init_count) {
 		dev_vdbg(dev, "PHY not initialized, bailing out\n");
 		return 0;
 	}

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
