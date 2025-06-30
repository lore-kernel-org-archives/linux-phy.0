Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5C98C7EE39
	for <linux-phy@archiver.kernel.org>; Mon, 30 Jun 2025 08:18:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4lw/7L4YFeX+cJFn+zTJUhj2oQtN2sGV3yRuA6dVN7I=; b=Pm9tIoqIeSPErv
	AvGclSrfJ7VhZPpbgqC5xzCgTThGFUnWpJe+VzMhZhK+T498iO23IT1BRWZYi4kPQ4XoJ9eA5m7Wi
	ctrzPXY5tGDhl0XlZXMEfeHhpIvV8judZNUDbM4o1c+2su9l8jMo6/OOLco/Q+qREtNgWGgG8vpkF
	8aQ4Ps4MphjNMDofkHWOCedqSWdCHbfXP23ssxeF4Zv/Fen1k5OlREYnSuCRCmJrSVsrrcB4KCdqE
	smERQfueWF3ukWnz5xwDG+n5jN2nl+9UkAtDLLuyW5pFjF3xLmnucCcYtDReN3Y8e9HdBLuG13kcD
	ZGRkuyJVtbIucsSjnBmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9ie-00000001ayh-1tF7;
	Mon, 30 Jun 2025 08:18:28 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9iY-00000001axn-2Rcv
	for linux-phy@lists.infradead.org;
	Mon, 30 Jun 2025 08:18:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55U8D5k3008152
	for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 08:18:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=Rc66bHYTPI/p7IZ0Pus6D2
	dADrP9RT9yy52QCOPI1Lk=; b=iVHTRL8Yg/XzdptvTjjKD8BNe78BcmJsX7iWOF
	BSjCA0IuCCX26CEIYf0wgHqjUq1k9ij2iumzb8sOS4Q8joFTkEQ43y7tfQUDsmld
	wWrYDlluETJ6EbU2RL8PpDw4OfO/J8bWMTOgAlIkSTcH1RA8vBNJq8ovypcek9jn
	o6AzaNBsVUgBW4HsaR10Wvs8+afN1h+Hi0J9CSb6yfUELJsiIc6lzkT2mdin99lj
	Gw//K40etSo4sa8vO/g88du4qSMKN0//Ns57DmImoUbFGXEoHpMVbEAvOKGPPVQn
	ef1nHFRVKKs3nANhQvH6jCGefCx7qwY2iWpXDYjvzVR5t6Zg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kkfmrj7b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 08:18:20 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2349fe994a9so13914995ad.1
        for <linux-phy@lists.infradead.org>; Mon, 30 Jun 2025 01:18:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751271499; x=1751876299;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rc66bHYTPI/p7IZ0Pus6D2dADrP9RT9yy52QCOPI1Lk=;
        b=E8S/cjZx8MpoXXXMQS7K8FPS6nmPEtTfeL10FqDBQHw5fGe4GzQa/GLUos69GH4rL8
         ayns0jCMIU//ky1AcgNNMZX8vAdbU3hxROl+NUhoQw5zib77U/D9hHx+QXayCPAOL3GQ
         +3ffZ/fElyyStmnZE1K17IhsCphLhPwkToyOXslh2ZnjuNC9DpqtmpjGgzNrSaowQQTO
         9PugYiJaJlMOGK172wFiXkyET5EPGvZoayqV5wgfqV6T92iE/ApajdlZ7xYMyeiAX6ts
         wge8Ia66YrleBTNsWnsn+NJn1m53tymTsrMU/dM+TwHrj0E/7GrD1veuwO4XTE4PliRs
         V8Lg==
X-Forwarded-Encrypted: i=1; AJvYcCUIRPsckVaOMRfMzKTkkHo8dxCLEEW6ygHcOCykqeRJHjsehAmEEfm8ikvwdMi8t3qVLDmQkPqQbHM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzWEsOJkg22Dg7x8jsu0aeeOq23U99vZ6wiyoNm/S7J6k9dCyEf
	0fQHqgsqYmzndMz4e/ch9kUc07UhVyoqtTntIPwtxIEMtAGfR+875Mvz3EXHuSkM0h70Zd0T8hN
	c06p4RJXebjD2WaKIyQCsw63jG6gq5WjiXsObQKDv+4NCVfcKPARifYbEdzz7ohyx9cXl
X-Gm-Gg: ASbGncuCAH9Ezx7uqsPRk5gLG0on75PJ+46khfSe1bLmI5SYBW4LH3RWY3SClSsHAOm
	pT4obqc1MdVvMRPZ91eayVVtTkxDhZ3UjpAPkaFjoPRXj7ci2FH1NRjTZAHIkqK7fI3FuUW8Dve
	UMg4MP0co5yja6QQiN+gEeF4ZGYHV79UDST40Rji/C7cq3kjySJt6krvZG+rnKqYMHNC2PzoTL8
	ds7F1KpC88jSYV1VvoBF6mEg4uJptPaF0h6AZR3GbYgijMecMsjfOlEVendERlIaSM2LLHqepnh
	Lkuhy/26NircOvRpXaQ7q9McYBtpuy7SH8y1tij78i2p0M3Awqj44Bdsf6qbQrKpD0i/1uItElH
	jDpEV/pWJPONGGsd5HYk68Nwvv3fCMyElHh4lMrerdr8w0FBWBvASWcPgig==
X-Received: by 2002:a17:903:f8c:b0:235:eb71:a386 with SMTP id d9443c01a7336-23ac4891f49mr149143665ad.50.1751271498841;
        Mon, 30 Jun 2025 01:18:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWoZF96mnX4j/8zWXUha/1qCBVW2RX0RA6Q57/VVYwwQgElx+Du5e3Po+uBinZWgG1E49zAQ==
X-Received: by 2002:a17:903:f8c:b0:235:eb71:a386 with SMTP id d9443c01a7336-23ac4891f49mr149143385ad.50.1751271498439;
        Mon, 30 Jun 2025 01:18:18 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23acc9efffbsm75082505ad.42.2025.06.30.01.18.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jun 2025 01:18:17 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Mon, 30 Jun 2025 13:48:13 +0530
Subject: [PATCH v2] phy: qcom: phy-qcom-m31: Update IPQ5332 M31 USB phy
 initialization sequence
MIME-Version: 1.0
Message-Id: <20250630-ipq5332_hsphy_complaince-v2-1-63621439ebdb@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAERIYmgC/3WMQQrCMBBFryKzNiVNm1FceQ+RksSpGWibNNGil
 N7d4MqNmw8P/nsrZEpMGU67FRItnDlMBdR+B86b6U6Cb4VBSaUlNlJwnHXTqM7n6N+dC2McDE+
 OBLb1gdAalLqHosdEPb++6cu1cJ/CKB4+kfkJKv0/uNSiFhJta4+EaB2eQ87V/DRDOY1VGdi2D
 1Yxr0HBAAAA
X-Change-ID: 20250630-ipq5332_hsphy_complaince-6417e6ba605f
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, stable@kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751271495; l=2578;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=Y8jN/q3D+X5TDTIkf0wSzs/H5lU/a3DvR9W6XeQ3BIc=;
 b=vjrnJRd29ID2jcmDJJulZjmLWsEZoHbBs4MrG9fqpnscCMbFmXSRNZnzeXNk5D7J+1k4gdsH+
 9OVSthGDbZxAHdU0+Tu3T6KB5cZjK42bB9hivQe+/2xnGnE6TjdJonc
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Proofpoint-ORIG-GUID: xQeJxU_4oRPoSAPm09m3z-ID7EMMQxia
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjMwMDA2NyBTYWx0ZWRfX4RmzsI2Wkcve
 IUQ1v1HseQDaLfGX3kuDYG5XpRF5aCB5yxRJUFRhi8l7HshiJEiMctkq8K7vGxCiAVE7c4vloV1
 vGp/0u3wlOwAK9hW6Lepy0t0tL7+eC2H3Tdoh6CQllJnjSZ6Jt2m4MHmPO+YlDwiGv/AfSC+tIp
 CtNpypPK0Pa6lIugVXMw1nn/Ma0wXA1iV/ayFWeb4frlSmnp8MVtzmVkO2fk0Wy+JexGiZeD4J0
 53inA9IlriBHOUIVOxXrnLr7PeF0oxSOj8uXUOgOluMLg71vL9DPbJSdMsbv81md20CLLWtSpyq
 eavgKYz6IQuC4Da5Uj6hvmSzyehS3JoOhXc94sNz77wgCDYM0sAnqG5J3tz57ENut6pSftoSR91
 MBw4Y03SeDDvuJuPy2Q2WIjp/YvAAxqrg3eeAJM7nbDXMDv/PeNMCqG/XOgquhBvmrK2+6Y8
X-Authority-Analysis: v=2.4 cv=L9sdQ/T8 c=1 sm=1 tr=0 ts=6862484c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=RRPityp-zi3fFNCXAuIA:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: xQeJxU_4oRPoSAPm09m3z-ID7EMMQxia
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-30_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506300067
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_011822_744278_BD9170DC 
X-CRM114-Status: GOOD (  14.60  )
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

The current configuration used for the IPQ5332 M31 USB PHY fails the
Near End High Speed Signal Quality compliance test. To resolve this,
update the initialization sequence as specified in the Hardware Design
Document.

Fixes: 08e49af50701 ("phy: qcom: Introduce M31 USB PHY driver")
Cc: stable@kernel.org
Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
Changes in V2:
- Used lowercase hex and reoder the definition (Konrad)
- Added a space before the macro HSTX_CURRENT_17_1MA_385MV to
  align with the existing coding style
- Link to v1:
  https://lore.kernel.org/linux-arm-msm/20250625-ipq5332_hsphy_complaince-v1-1-06b4b8e66bc6@oss.qualcomm.com/
---
 drivers/phy/qualcomm/phy-qcom-m31.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31.c b/drivers/phy/qualcomm/phy-qcom-m31.c
index 7caeea1b109e922c0cd12e985bc8868d5bce8b4f..168ea980fda03de502dff8bb39134d6f844f28f7 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31.c
@@ -58,14 +58,16 @@
  #define USB2_0_TX_ENABLE		BIT(2)
 
 #define USB2PHY_USB_PHY_M31_XCFGI_4	0xc8
- #define HSTX_SLEW_RATE_565PS		GENMASK(1, 0)
+ #define HSTX_SLEW_RATE_400PS		GENMASK(2, 0)
  #define PLL_CHARGING_PUMP_CURRENT_35UA	GENMASK(4, 3)
  #define ODT_VALUE_38_02_OHM		GENMASK(7, 6)
 
 #define USB2PHY_USB_PHY_M31_XCFGI_5	0xcc
- #define ODT_VALUE_45_02_OHM		BIT(2)
  #define HSTX_PRE_EMPHASIS_LEVEL_0_55MA	BIT(0)
 
+#define USB2PHY_USB_PHY_M31_XCFGI_9	0xdc
+ #define HSTX_CURRENT_17_1MA_385MV	BIT(1)
+
 #define USB2PHY_USB_PHY_M31_XCFGI_11	0xe4
  #define XCFG_COARSE_TUNE_NUM		BIT(1)
  #define XCFG_FINE_TUNE_NUM		BIT(3)
@@ -164,7 +166,7 @@ static struct m31_phy_regs m31_ipq5332_regs[] = {
 	},
 	{
 		USB2PHY_USB_PHY_M31_XCFGI_4,
-		HSTX_SLEW_RATE_565PS | PLL_CHARGING_PUMP_CURRENT_35UA | ODT_VALUE_38_02_OHM,
+		HSTX_SLEW_RATE_400PS | PLL_CHARGING_PUMP_CURRENT_35UA | ODT_VALUE_38_02_OHM,
 		0
 	},
 	{
@@ -174,9 +176,13 @@ static struct m31_phy_regs m31_ipq5332_regs[] = {
 	},
 	{
 		USB2PHY_USB_PHY_M31_XCFGI_5,
-		ODT_VALUE_45_02_OHM | HSTX_PRE_EMPHASIS_LEVEL_0_55MA,
+		HSTX_PRE_EMPHASIS_LEVEL_0_55MA,
 		4
 	},
+	{
+		USB2PHY_USB_PHY_M31_XCFGI_9,
+		HSTX_CURRENT_17_1MA_385MV,
+	},
 	{
 		USB_PHY_UTMI_CTRL5,
 		0x0,

---
base-commit: 1343433ed38923a21425c602e92120a1f1db5f7a
change-id: 20250630-ipq5332_hsphy_complaince-6417e6ba605f

Best regards,
-- 
Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
