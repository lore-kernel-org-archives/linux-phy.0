Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9FB6C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 07:23:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8jfV52sn1UhlKe7TavxB/+K6GHhuXc7H67vYmgf2Ws=; b=2jlQO6danBX1hK
	QcZfktH4V59P8tZeZOfbo/z4F6uVxEon2ZVULY10U+wUHCl7xJiAOZSS+SrW8T/Z43AWPnbCRujdx
	YoTHg2h/bDbzHUleJ6qj9hCEdQz5JwkK0r3LWaur/6b+wCNQLram/0SsZc/1/8bqmlB6yIjCioehc
	3gsgWGs4alA/Ja75KFnBT4oEKGtPyoDizay4/BEz2tQHOTNNjMK4EKD9UaqldND6rwtoXXnHwcKts
	FbmAdXEZqM90aGFxq4GgU3lWzPVCg0eZk0GgDyVPXXpVr1KdS8td2GIYQ9fqMv9WGxa20QO6IMYn+
	z2Aygau7ePtzNrrRVwKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Ln-00000001cmo-2Q1u;
	Tue, 22 Jul 2025 07:23:47 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ue7Lh-00000001cdJ-2Cy7
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 07:23:43 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56M49p3O005501
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6T5LoZlt4M2Nfb5X+7vfdX4LAsIOmzT/JE+HlobZE30=; b=Nb2lJZoKQUj0tLuH
	eRFnlJbO4HBHeUIrBulW0/dZjwGRnZ6w5pOhm4JWHajPfwLFKMZJIfBodb2Wkm8a
	WrAj0g51s5ii0drQgY0tVfrqg54VZziMNKT+gpWe5D8o10Ik/s1dWGLnuGpJRUD1
	ssVpJH2CIyvOxBgTwMWhthE6MxTnvPXsmLxRi5pb1jWOuJdhMb4tEIDXGr9SQx/0
	vxputu7C0op/3W17gMHHTqtT6R9Z2XC/h+2IE1MLyM9cxiyXAhoHWCIWdHAKyENd
	/HXSlfxyAXuseIYGBMpY9uoj2QeCeKBmPaJrVAAUz9sWBISvkqILHf7laILObGzk
	PeqkjA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047q8haw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 07:23:40 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3142a5d03dbso1322087a91.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Jul 2025 00:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753169019; x=1753773819;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6T5LoZlt4M2Nfb5X+7vfdX4LAsIOmzT/JE+HlobZE30=;
        b=dzi0DG1f+2q8UP+8GuEbGnTKB+vZY4BwfmXHj6t18//4P3KiQCAa6u68iflPIhbZwY
         ojR4OyCXtI2HSDTFC4xaWreTkplK70BybN/Vwx9aGDW4KNxv3tNT0HFqe//4azQMgvgf
         vqpQGjkSpxLQEZVxxluBYLvIdfy7bXyGsp+I3eMaJ+6eWg7O3L1N7vGWwMoaPVKgIt7F
         dnNU1DmK0egtt+AlVI5GCzXOClZkf8XQ1EPaKesbUL+6BsA82G102w309SRfU7H7b4RB
         bGs6l03wiWoWqRx1gVLajUcGZhKWcADcZvg+Hu3pbUMbYVloDZc67ZzWnQVALyZK36kL
         QnRQ==
X-Forwarded-Encrypted: i=1; AJvYcCXk25WqYRyatv+ak3Y35q2+kI7gJqEAIcN0WauPZk3Zng6MmBXc1+50FJj4IK+YgCzx8vqo7yZ4yO4=@lists.infradead.org
X-Gm-Message-State: AOJu0YzsnbjHKY4bPHaaNIbjGEKpV9ShwAg1Xutu1krpE9bykxfKIXNn
	HeoVfoE3LenBEEUYzwFi/l85wbARkKUjXLulpcc1xh+lInZMVDYSi3lrLUSKCCvFdHQDNaHH/gU
	6+/dKSukw8S7pI648/wl3y/p69sj4Nayc68tDdN2NstEsoFN2B7riLmVYHDEhnbt217pV
X-Gm-Gg: ASbGncv84X7lgR49/mlDMobm3q8s2rtlcO8IsoRpX4s+iA1+xYwLA0SEQMKst7u4S5u
	afF5xLNgD+WNmOAZMFZdvlud9q/Wfh0QwRZxDnAXmP7jIItGjHuIV3RueXgTzDP+/f3PpOMWOuO
	qHqJVMmgPMDGOmFOfoaTJNrOUV754Xonnp/HMOGOCC6f879LsPvFCY2Y4YxGr/4wwlAo4N84IBR
	23fsiIEljVLHNrg/jChG/oCIeawMCWDSQYnyvqyNJ+MKYGOZiT7VbNd4C9C9UnqTDhg26wuHgxC
	SIMfdOeNfiB1n65kvm1VndrqhJjRTvUF34RlkHHy0t5K+8PsqDdLGLNtb1DFnnD1kTTPgoKZPJs
	7pnJSJBz54GArLuu90idHw7xHYGJ1iCUQ8QCAO6h1GGCdgoaGRKC3nE09
X-Received: by 2002:a17:90a:da8d:b0:311:e8cc:4250 with SMTP id 98e67ed59e1d1-31c9e75ef95mr12583163a91.3.1753169019032;
        Tue, 22 Jul 2025 00:23:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUBkompgYp4NsbDBV07hVcCo1eE/2e6MRN+tw1ZOzoeY3VNs+3v9W92tzFmCZwxBRf2BDv7A==
X-Received: by 2002:a17:90a:da8d:b0:311:e8cc:4250 with SMTP id 98e67ed59e1d1-31c9e75ef95mr12583132a91.3.1753169018485;
        Tue, 22 Jul 2025 00:23:38 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm7490753a91.3.2025.07.22.00.23.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 00:23:38 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 15:22:12 +0800
Subject: [PATCH v2 11/13] phy: qcom: qmp-usbc: Add QCS615 DP PHY compatible
MIME-Version: 1.0
Message-Id: <20250722-add-displayport-support-for-qcs615-platform-v2-11-42b4037171f8@oss.qualcomm.com>
References: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
In-Reply-To: <20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        dmitry.baryshkov@oss.qualcomm.com, konrad.dybcio@oss.qualcomm.com,
        fange.zhang@oss.qualcomm.com, quic_lliu6@quicinc.com,
        quic_yongmou@quicinc.com, Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753168938; l=1803;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=IqNy2UOlnRxZPX6+c35gyiwHyCJKZ2vyWBvAK40oYUw=;
 b=chI1sTIkkoEQ34btM+a8bsvY7GDpzMDyBcI0I765ZtJRv43IghZ0xyFcN8ZZvoqA0o1cTqVom
 /JIMtAyXyYsBWSgRb/wbBdHsI+7fA5OjpN64gKTST3z1uBj7gp9RO1t
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA1OSBTYWx0ZWRfXw9ohs39kwEq+
 IcIg8Bi4eybS0FqXCGSWuGPEWOdedo+UBuCdmcJFB2xzrCQ0DKHOxleraw5x5KWEFTA4Cf9rQsb
 CholzAwb7dW95JrCDHZNyphIfUZjVxejYIu6RlvgIbJ2PwTKRVRvyK35cXJWrtNNdWUOwXwoOHi
 wZyTO43hu7qhEOJOT8YLNHzJGuk7fviK9nQOVFxiTpsw47gQxFbGGg3PYv8h6HlEMMSUNQwj+IZ
 JT6ugiM532erD5ASMQ47TGCHyrOGvgbkFJcacS8h3VIBDcPZlg2bIBl1BQMNwyvRY94KAVOxF9i
 XN8L94x0bv0fmnugsIdXduVuGq1BJcQGgoTHtRZdOx7dgShIOVmLyG05Jh0uAr8zjjIyO2oP8DE
 PYCR+kG6uaPbkfW6zF1+SJ7q4veGw95/DFV1iZM1iKnBAL1JkjTImhIuZ2VWFsLP/3s7Ml5z
X-Proofpoint-ORIG-GUID: WzTCFMXXx8F4buqN_sOx3q4CDiqgqnOH
X-Proofpoint-GUID: WzTCFMXXx8F4buqN_sOx3q4CDiqgqnOH
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=687f3c7c cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CWFEUPHrMG6v4K5r7EwA:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_002341_774979_C168D8BF 
X-CRM114-Status: GOOD (  13.97  )
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

Register the QCS615 DP PHY via device tree by adding its compatible
string and associating it with the full DP PHY configuration.

With this change, the DP PHY driver for QCS615 is fully integrated:
- All required ops and flow are implemented
- Platform-specific configuration and init data are in place
- Compatible handling is aligned with USB3.0 PHY via type-based
  dispatch
- Supports coexistence with USB3.0 PHY through mutual exclusion based
  on shared TCSR region

This enables end-to-end support for DP PHY mode on QCS615 platforms.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index e97a206a10554b2d157d1fadd66d66386eec6c40..35fecf78736f7a6b9c3af6a89c71fd3ad9a87496 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -699,6 +699,11 @@ static const struct qmp_phy_cfg sdm660_phy_usb3_cfg = {
 	.cfg = &sdm660_usb3phy_cfg,
 };
 
+static const struct qmp_phy_cfg qcs615_phy_dp_cfg = {
+	.type = QMP_PHY_USBC_DP,
+	.cfg = &qcs615_dpphy_cfg,
+};
+
 #define to_usb_cfg(x) ((struct qmp_phy_usb_cfg *)((x)->cfg))
 #define to_dp_cfg(x) ((struct qmp_phy_dp_cfg *)((x)->cfg))
 #define to_usb_layout(x) ((struct qmp_phy_usb_layout *)((x)->layout))
@@ -2204,6 +2209,9 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_phy_usb3_cfg,
+	}, {
+		.compatible = "qcom,qcs615-qmp-dp-phy",
+		.data =  &qcs615_phy_dp_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
 		.data = &qcm2290_phy_usb3_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
