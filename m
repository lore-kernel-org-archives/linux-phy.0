Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 307E7E7718D
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 08:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6xPq9FMc4ONg9NkDmgny4tV0pkmSaFIP+L4VmJvmA8=; b=lg51nIJNDCRJYI
	byPly29h5VsjxK87jTD2fdWDPdNk6Z4WjZnms/1yBx2sJR0R2CX0/cLFvh9oyIPTUGL6qxTsakYyT
	dRoymdLOqnrR0FykIbgWHlfXjH4aqWxJQcuWYFrJkKjG6M4d5WLbg6fScRI939MWBzNrBO/FCM0AX
	jMGe50aDcedFy1LP5Vhi/36/tNsXkd2lDgITwretAncOY0c0dzqzhtNyYJe95tB3E0xCReeBJwdcW
	SH3ZRvWJGh6N4XDciQ4dsCZOk5BoIQY0vCA3230VAeb86XTB6JyRy6ITsPHyHO4bb2R4hrzgv6zNX
	uNGOutqTybZVDCZYRRlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Yz-0000000BWd3-3ymO;
	Tue, 24 Dec 2024 08:46:49 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ0Yw-0000000BWbg-2Xm4
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 08:46:48 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO4XHMv020906
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=KZEGDZug6jf
	1eDfhN0Tvq0lUjRMXfDeRIcHZgSVoNCo=; b=CFdm0hFMZ2600WB/nV+91jkONKi
	SitUYe6jFPzy+KtxXytSNXY+OjKJOeAOZXByrfFz3WdzKPqYBSzSg6faFQ/+mcsV
	gfnPgAgChKtJTZ7xKwWTLUUEBjG+snhlgcLv8bwgloQc9xFDiIjpsbjp06TqjFrB
	400amycEshHr2uw05cmOpaTBAU9alhDkML8FKJ6hrwgxLSwk92JMTZU7dvD4d6WY
	YDK8wldxGfdIqiASRADAmzxjp5ii5pkicvVTt/4pwDMidTHACAi8s04yUqED7HBp
	Wc1fblxWd5qT2SGFcIO3nEo3F9g97m0oUw8/NdeL4Ino3JNiLrqj+SQbGvw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qee0j318-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 08:46:45 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-2f2a9743093so5060332a91.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Dec 2024 00:46:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030005; x=1735634805;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KZEGDZug6jf1eDfhN0Tvq0lUjRMXfDeRIcHZgSVoNCo=;
        b=nbfwxEB3iUKG+e5442g1TUB6c/KCvw2DbrEQNwCdW6a41dmOUZYQPvqOsNJhsUb0mx
         AAa1EeQP0fh1Tm/kjcPQM5L6/hmuZ1b+4XiCWftb9G6v+kt/MS12GXxNfk6qKs95xVxX
         C0Lb6R7kaFdzk+qMY5l99dCTm55TG0FHcYubGGdXqc9rdWNnGCVIM9cE2owIgBSynQpP
         MEaxJtOSr26laoIwlJtbJaBtIkr4fXzc75aphs0pGnpZz5+9llohMt3o1wT/W7TCPphm
         YMnMhSlVwrVF6z59zh6pEBlFgGDyEu7tfuEErOjymi7xaF/cChAADUrbTc6ZI1ipxVRq
         ATnA==
X-Forwarded-Encrypted: i=1; AJvYcCWIDBAKnHtk+QIdtOjnUfW/WBhGVcvcRqkGGrRlt37eboGfciCFUZR7246M7Opr4bOzuvGm4/iJZvo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwyuwKjKJlXPFDA2zNTnrS+2lL0gFZ85Bgwn7DTB0m/umJSl0xr
	4NBj50UpTXsB26sCWXdARU+gnPzNKaEQZBN2TupqxeACGykD193UyW3Aezkl6DGaPbN5LairFAn
	yvgTiAqKln3QVegVTK1mDX7TCoA91/pk5elCwig1Mgiw3wpQgNqjd2nZT8y2ebIH4
X-Gm-Gg: ASbGncsMtijEGmGeDRd7ZDcFYmjJR5l2iZ8QRe1y4GbIXcv31gC7/lhSzXPF3o3h093
	t+MvO0oOv83W6eZGeuPjLRm+8Qo4msniOvSD4jkYmrtewdc+prWBC8JNhh1/X6u6+qrIXwKLrsC
	OFnmWi9W9XvEjh4oe178PprtbeEYHXQ9ziGaBbN/RB/fquItUz7N1ryIR+sQBVkLWfExCvvCcoG
	W226uNIveoEJJBZBrr8TzrW2B+dTI3B25zfsnGDOfZSZdDGCej59tQ/mNS4hNhANARqYneYpYvb
	Klpd3ygks4VYxPsKkVI=
X-Received: by 2002:a17:90a:c2ce:b0:2ee:4513:f1d1 with SMTP id 98e67ed59e1d1-2f452eb24b8mr22112262a91.23.1735030005054;
        Tue, 24 Dec 2024 00:46:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGVdm+o53eYW6sEmFq74ezYq9cdDs/4u6m2VQuxuyCpibgYj3geJP+IE0VFuZZP1NkinRtL6A==
X-Received: by 2002:a17:90a:c2ce:b0:2ee:4513:f1d1 with SMTP id 98e67ed59e1d1-2f452eb24b8mr22112240a91.23.1735030004717;
        Tue, 24 Dec 2024 00:46:44 -0800 (PST)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f692fsm85471195ad.216.2024.12.24.00.46.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:46:44 -0800 (PST)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
        quic_jackp@quicinc.com,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Subject: [PATCH v3 2/3] phy: qcom-qusb2: Add support for QCS615
Date: Tue, 24 Dec 2024 14:16:20 +0530
Message-Id: <20241224084621.4139021-3-krishna.kurapati@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: QU12r9qyWUvYwIIyBA192Abs6C9eLUdc
X-Proofpoint-GUID: QU12r9qyWUvYwIIyBA192Abs6C9eLUdc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 mlxscore=0 malwarescore=0 mlxlogscore=999 lowpriorityscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412240073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_004646_653736_29E00FCD 
X-CRM114-Status: GOOD (  14.44  )
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

Add init sequence and phy configuration for QCS615.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index 2d8fe9bc40f9..1f5f7df14d5a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -166,6 +166,19 @@ static const struct qusb2_phy_init_tbl ipq5424_init_tbl[] = {
 	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
 };
 
+static const struct qusb2_phy_init_tbl qcs615_init_tbl[] = {
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE1, 0xc8),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE2, 0xb3),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE3, 0x83),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TUNE4, 0xc0),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_TUNE, 0x30),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL1, 0x79),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_USER_CTL2, 0x21),
+	QUSB2_PHY_INIT_CFG_L(QUSB2PHY_PORT_TEST2, 0x14),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_AUTOPGM_CTL1, 0x9f),
+	QUSB2_PHY_INIT_CFG(QUSB2PHY_PLL_PWR_CTRL, 0x00),
+};
+
 static const unsigned int ipq6018_regs_layout[] = {
 	[QUSB2PHY_PLL_STATUS]              = 0x38,
 	[QUSB2PHY_PORT_TUNE1]              = 0x80,
@@ -356,6 +369,17 @@ static const struct qusb2_phy_cfg ipq5424_phy_cfg = {
 	.autoresume_en   = BIT(0),
 };
 
+static const struct qusb2_phy_cfg qcs615_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = ipq6018_regs_layout,
+
+	.disable_ctrl   = (CLAMP_N_EN | FREEZIO_N | POWER_DOWN),
+	.mask_core_ready = PLL_LOCKED,
+	/* autoresume not used */
+	.autoresume_en   = BIT(0),
+};
+
 static const struct qusb2_phy_cfg qusb2_v2_phy_cfg = {
 	.tbl		= qusb2_v2_init_tbl,
 	.tbl_num	= ARRAY_SIZE(qusb2_v2_init_tbl),
@@ -950,6 +974,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,msm8998-qusb2-phy",
 		.data		= &msm8998_phy_cfg,
+	}, {
+		.compatible	= "qcom,qcs615-qusb2-phy",
+		.data		= &qcs615_phy_cfg,
 	}, {
 		.compatible	= "qcom,qcm2290-qusb2-phy",
 		.data		= &sm6115_phy_cfg,
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
