Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3687EC369B2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 12:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YmXlflcS7iaH+EYQeRcaZzBzsGqFdzHu12nuuUinh4U=; b=p2eLWlbRzlw5Nu
	qjc4265/KdJB6J6p2W+F12bsUp2+6TB+pbwlil9QtWlt7DMzvFINP4l1eES6/CkarxphxTdwMt/En
	DG7Fc9ZTTazVuKjZdd4IElHRuxdTZIVWJi50q3yXOPF7zAgFhLoGDg4Tw+7rsAFiGm1b1zeu76Kds
	/SmldQAk8OTv7QDa6TOj5kj3V8t7RHtBLfZixEN9p3pcCkZIiOwaprvYjoQHlq0jn/czK2zjVAWRX
	Ki7/UqFrGDCq72A/uq9fXANZw+oIOp8wvF2HtnXF5tt3wOcM8U+XZV7l6Q2dFcB5DONbXejTWXnTv
	lwUqepPJNKFyvQK8sZ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IWX-00000001rv1-3wnP;
	Mon, 14 Apr 2025 12:02:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4IMz-00000001qVJ-2wNQ
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 11:52:59 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99olc031351
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:52:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=s8nngil2zyr5bKlo3biA6U
	hMXvQ4bHWgj1yHs15aB8w=; b=G3s06/37W7W3HvHlliNENMudE6nK+uOpP/x4xt
	AWL6OHYzhKBvpK1KBQkFgMz09CsWq7TI7cfXKO6OFw2t371sFbMwKG0hYKnkMF+b
	WK8ExTobmeJGbNCFpk+Fg+Qeip/u7UNH6o945D7w1LvKd9f0HVSWsqhL4V8w+hcB
	zrag0xZDIju8wJ+CA1DZOC5O3Rgt2qpEVHyOWs7aWS4KFdsbC+jf0wPKPOIX6qMD
	uz/mVSRU2lHEkORYA1ZurRu1p+25Pa7Xy8MW0tWEXxpFbFdF0CtXZjQcsR5Q1DCV
	0FFLSIV2jCq7JJ1LKrw+2SYIOY+cKW0QxAaNWf3C9LNR+eow==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjvb08-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 11:52:55 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b00cd79a5e6so4260673a12.3
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 04:52:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744631574; x=1745236374;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s8nngil2zyr5bKlo3biA6UhMXvQ4bHWgj1yHs15aB8w=;
        b=pB7zJEhTDXiXldsSNnhTm9OUogeomhhMuQHOTHpi/c9ZqMHX61TMqhPpNy/T2rV7Jm
         ljxTX8enSRQnCIMLZ5mKyY4+10E77LVR0UIGxgRozln3A97mZR01rQhteah515w4ZG8P
         DbIa4y3vOFDpqFFHNRgK3P//jHuXJ/bBN/q2qm1A8ct0i7T1hUO7lrRhsN/7QRcQBq9e
         q7s0aopieSE+Km7xuAsPHCGB6rad+jpf4AfC7gMFbcUob20g+MnXA1JqnQk1I6syq2gs
         8aj3fSky2wpKIv2cD4qcBrKQfKzNoNNzRJL4wwoUlqlsh7zAWow3d4Oe2juqgicWCWvO
         42Ag==
X-Forwarded-Encrypted: i=1; AJvYcCWRNu5HcoalGny6lDsBC0/+4JbHoHX9FL/+U0FzMHOdoSiyHBxDyLU6L6ZnlXG6Ufpg01H+Ed4xgRI=@lists.infradead.org
X-Gm-Message-State: AOJu0YwE8JZViYgiLFhYLbI530aJT4Bl7Ye2H0kJxZSrS6p/GU/xYUG5
	rfy1ypO92YCC09EQ+I3u/wKvPlXHPE1/k4rAvhOQjolry0hSiJ9WLbMtSRKL4K1Tvz3yLDMTbED
	EZg6Y+3l9XsBCiHARBj5SVaNiMpwNN61DZKSsLkNGg55NkoaTZOX1vTLS7fOs+D8n
X-Gm-Gg: ASbGnctAwz5oJu2XDnH8YtN7A+N2RhoJ6Syw+qxSk10QWSpyx+iNPJAbROXjRqGlG5/
	6BlJ7bELoJuvtkGq8lgCbGIgAKMjbS4RT0mUTUh3seo+MogGVOvGI7EYvDavaxfH99tNbtTZqtz
	zxDngEK6j/I9Hd8L0aad1TbErcHUjC4FvI3e2P2mwP5OmGVfhkq5hPHaTTgoZUjvllMIEQfReGp
	aWxv/tSasG+AiWO2tn8+8weWRkBpeXMexX8rKy4SsR4Jz+dAQL53iNtGnhntO0FSWlpsnOWxAh2
	aeEMowoj9zCLBS5pXJXCnzzJZPHBtMoeqmnRF5H7eCUoxfUWgdn8/RzBOT1StbHH3VZo91WJKXu
	RdbudT+nOhSGu/8vMcU3uRZ3kJKvAJSNHoVmKbJ7OoiMjeqA=
X-Received: by 2002:a17:902:d58b:b0:223:501c:7581 with SMTP id d9443c01a7336-22bea4ab90amr169760735ad.16.1744631574006;
        Mon, 14 Apr 2025 04:52:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEgqzwIYoVFf1FpG2p39nVO093y9ug3V5NlwPoSdWoLWQWnXODX6iVg/8xyBTblPnMlaKR3ng==
X-Received: by 2002:a17:902:d58b:b0:223:501c:7581 with SMTP id d9443c01a7336-22bea4ab90amr169760495ad.16.1744631573646;
        Mon, 14 Apr 2025 04:52:53 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b8b73asm96425735ad.86.2025.04.14.04.52.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 04:52:53 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Subject: [PATCH v2 0/2] Reuse the IPQ6018 QUSB2 PHY settings for IPQ5424
Date: Mon, 14 Apr 2025 17:22:48 +0530
Message-Id: <20250414-revert_hs_phy_settings-v2-0-25086e20a3a3@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABD3/GcC/3WMwQqDMBAFf0X23EgSo2JP/kcpIY2rCVRjs6m0i
 P/e0FMvvTwYeDM7EEaPBOdih4ibJx+WDPJUgHVmmZD5ITNILmuuhGL5hDFpR3p1b02Ykl8mYqp
 tVDVI29Y3A1leI47+9Q1frpnHGGaWXETzk+Ptv9wmmGBoO4WVaNCIrg9E5eNp7jbMc5kHjuMDQ
 zg5cr0AAAA=
X-Change-ID: 20250414-revert_hs_phy_settings-47643d2c75ba
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744631571; l=1101;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=fQ4qPB+Mli3z1n5LezSzg2TJ0AglAvt1CrhfoGQTVsY=;
 b=kgepGMZcGaqZhH5hzO36PqOvZutcLa7n3nhrg1HBepTjF2w51aDhkXXu/oOVtMQVc3NAFWJpK
 f54hdIhYHMwDlFVC4TI3Qp+B9Jlxl0MwPWmXH+qVIwrKO5KE8IPasHL
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fcf717 cx=c_pps a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=__A2vHsfkmyGJhSVeV8A:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: xndbIwmPqQ7HV1Y0Im43KT9Ua5YW9X3w
X-Proofpoint-ORIG-GUID: xndbIwmPqQ7HV1Y0Im43KT9Ua5YW9X3w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=712 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_045257_748381_5B9BB0E0 
X-CRM114-Status: GOOD (  10.78  )
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

With the current settings, complaince tests are failing, especially eye
diagram (Host High-speed Signal Quality) tests. As recommended by the
design team, reuse the IPQ6018 settings.

Merge Strategy:
--------------
Both the patch in the series should be merged together to avoid breaking
the USB feature.

--
Changes in V2
	- Splitted the patch into 2 patches, first revert the commit and
	  then reuse the IPQ6018 data (Vinod K)
	- Dropped the R-b tag from Dmitry
	- Link to v1 -
	  https://lore.kernel.org/linux-arm-msm/20250407-revert_hs_phy_settings-v1-1-ec94e316ea19@oss.qualcomm.com/

---
Kathiravan Thirumoorthy (2):
      Revert "phy: qcom-qusb2: add QUSB2 support for IPQ5424"
      phy: qcom-qusb2: reuse the IPQ6018 settings for IPQ5424

 drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +--------------------------
 1 file changed, 1 insertion(+), 26 deletions(-)
---
base-commit: b425262c07a6a643ebeed91046e161e20b944164
change-id: 20250414-revert_hs_phy_settings-47643d2c75ba

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
