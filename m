Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBF4ACCF9E9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Oct 2025 00:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k0uPrWbKm52PZQdupfJScj1AvSbBmene/ThteL9kiJQ=; b=QAb3Qg2ydaGjWm
	IGV9X4sbGktiiEmtUTvL3cVDspF6LauRiI/czKCayasGjbOrlkzMRbQaScsWuIsijB529V0McS6PA
	GYx4UizyTuUESt8scIO5eRfpRkDKYI6VpM0rBUxcoDLxfwaAiwb8KQoR7R53ljNhM6arcSnTHMtxL
	M/91QKpzmkYiTAz++i1MPPT9FDyE/K7ba8r0/AwiHtENHOUUAAvdfu6TIuthSJCS5LG20RvFRl1tl
	jAZZfhZf+l5ZJXm2pDwJIDLQ8PREa8wh4d0zsvPHJ+OK81v6M8sucYz0fdT/w8pyr1BqhiacY8mRf
	M6iiAMBpZm4yTYyverxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSS3-0000000AlGX-2Zdn;
	Sat, 25 Oct 2025 00:48:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCSRz-0000000AlE9-4AOT
	for linux-phy@lists.infradead.org;
	Sat, 25 Oct 2025 00:48:10 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59P0lu5O015327
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:48:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=; b=B5WuUVCRQaKApCAo
	zDWt3A/cupH0bjFVVzRzjm9G+ZHHqS/8AJZm3RDJApASLF8ZEKQOdg5uawDHHiLE
	7+WpjFCSzw0LzJMGlYxlnDfDDtBzSD7gfypO391cRQ8OKl5Hfxqcgxrj01YvJ1GT
	P2/p3ne9HT+Zh1xZbKL7iHepg+KDPYn7cz3PGQg+cN8K/OStP80Z5RDvfbwzlggD
	B3zX6/1+8QEP1k5mIKyXvyupeHG8BgJtKW8YvXXF6j4Qd35GkxjhLlfjkrc2UV34
	nWrvlv4A6oPK4P5U86aud/TzMm0PVuq5OlXvalPaFII5Op9fh+x8OIHtKKoQwhHu
	uWgA+A==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8dj9r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Oct 2025 00:48:07 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-33bba464b08so2461068a91.0
        for <linux-phy@lists.infradead.org>; Fri, 24 Oct 2025 17:48:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761353286; x=1761958086;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Cvg3f2vcTWyvFoYptsB1kBkaF7U0YSfvjmuB16HFzM=;
        b=Q4G9+epw7ZHy33mdRutXdS6doGaIij57f1hSPxdtP8jAYKI+YXvttcK3Zd24ub5M9e
         Bkdq+cYj7FNNz3eoi7HHd2r5Y4p6adABwixazTYHrdbAD4CmgTn7cFBaclTesEnuwNoF
         OIVCdybHSv6PvZw3MHxxi5NodFp3ZS8bOfszlGQJrXq0fs+V67Ev9TiQp+k5L8+TP4WG
         x5GvDyu9vxl3y5hHQTOb2O2o71TrAz5YU1+e3OK7yVqslkBsSkdAkFIGyHqYhcU9TsxY
         tI4Bc5dv+aGa5gEPzcTyn5lda5/wIWynYczU0cHlpG4o0jFvLs6x1x04gNFXaaNoW3MD
         DM3w==
X-Forwarded-Encrypted: i=1; AJvYcCVWQ+MSimG8UjwlHH7xv8sk3NJ8QgeWzlKXf7Thmmu/ik8pNVaMt4aqUjcmfW4VgbMRX2Ha5XNuOH4=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4Z9IAYlTsv10FLXNJnR4BFsjrmLx0JOAHFs57NkhWZBlLgpQl
	Zmg7eXssCbiHGGi1TWjN2ZQ3FQLwUee5e6MBOV+ZvNwbvPlGOpJfc1s47nvx8XrSepPdKIq7ZBj
	gBfWbSxo3SK7t50YB+nz0VPv1P8Ngq6fGKhs7dr8/LpwLmzJxWLZp51tByCbPN+uMoFxZ
X-Gm-Gg: ASbGncvECpc2LiK94N5b9QT3ZVy31tM4yvkDCaS2u0mVXfHpnGumphc+O4l1hHQdmgH
	xqfm3PT8nN59OXw8jMtnndt76DpJUd6UzHLsu3KXgBeokdGLhj3tmP+u0eLHEt7uHkjumnyE5Dt
	DJlcMEv5wHLjl9/9FIXnkQjZuc3HLGdbhZk9hfn6WX/+BP4Tb3kgbBKczuQDN7EAooNtB+ykmjF
	+hjIzOzbGL1Pqxjroc5V2rQlRgJiVFNtuYqq2Ip/x7oAKcX9/ntqQ0cwVL/b4jZGVnmGesEFYzr
	gUGDI8qvscSKTC1q8+hRV/2GIxUc7dyGF5ImQ35X6UM/hAht+ZnMAO+dhD9TT6aMzWOopIIB3RS
	jUConodGXcs84wEX8bxw5CBPqxUpJTfascwXbAKrx7WjR193y234=
X-Received: by 2002:a17:90b:2411:b0:33e:2d0f:4791 with SMTP id 98e67ed59e1d1-33e2d0f588cmr10040495a91.13.1761353285711;
        Fri, 24 Oct 2025 17:48:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOOLiiW+hINTlO+qwzsPKjtk8LlBIRfcfLCG6jDPzsh1hx2ZaCLo5G36I6nYAwHf9f0snLpg==
X-Received: by 2002:a17:90b:2411:b0:33e:2d0f:4791 with SMTP id 98e67ed59e1d1-33e2d0f588cmr10040474a91.13.1761353285222;
        Fri, 24 Oct 2025 17:48:05 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33fed3eca8dsm167352a91.0.2025.10.24.17.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Oct 2025 17:48:04 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 17:47:46 -0700
Subject: [PATCH v6 8/8] phy: qualcomm: eusb2-repeater: Add SMB2370 eUSB2
 repeater support
MIME-Version: 1.0
Message-Id: <20251024-glymur_usb-v6-8-471fa39ff857@oss.qualcomm.com>
References: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
In-Reply-To: <20251024-glymur_usb-v6-0-471fa39ff857@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX8xAI8pkz7raF
 Bf3es33UoQbWMpLuw9e6Ado1K9cJ7gMZ01IO+356WJcRV6RI2FKtova/Bhiqkcs/u147qbFIMRj
 YY888+11/h3qXQigfRUrkiGjonr+qxbubPnK44khRkz65d/enLLcPMR9ABSEml2PMU24i3PHG87
 vJ1R/xGgeYKdqzqGayvumatn+U5eV7Ker0ZlHgBmnw1gcf2xtKqyrHk0s5D5g6sFItqsKmlpNH/
 Frrnu9utMeAgxFl8Dt2u0PPJPsAK4rtA46cpL/XE8eYxogxZS3Wn2J7ojAClwuiv3bzN+L0OIoH
 KkTDrdPsCdhdXWWFxJcBXzJvQEf9Hw5SMqcBEKoj8c8F3s9+wmhB3v0a+LFGJPOR6bdWenpKu7V
 mgNTxx5+5sZlgLBckkiAbEynGn8Y7w==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68fc1e47 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Zq12RZiOzp0PcbRnEbUA:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: 6fcNKRRzPuwBASbWu_JoNHeyaRG0zP6f
X-Proofpoint-ORIG-GUID: 6fcNKRRzPuwBASbWu_JoNHeyaRG0zP6f
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251024_174808_155965_574C2DC5 
X-CRM114-Status: GOOD (  12.27  )
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

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
