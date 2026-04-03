Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0349D6AAFC
	for <linux-phy@archiver.kernel.org>; Fri,  3 Apr 2026 12:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Z28EaBESYxSbNMRPLXaPYJj9ob06xEWKwPcoV/dBtFE=; b=j+mif74gr+7h7b
	EBCMpjO3ct7eqRe+nb16thGOH2fPhDXaOl/8IsUy+rgF+TP4bijjCA4Au2jmrK0Gi8/VW1I7D0j4v
	1ELC1o2rRb8AJ4FB6C2sSm2IZkxXeDsqnM0Njc6xrB+eKxfqrjAGupDbvhrVtN0YsdzCsWymOvjEF
	1kiEtTatNd8LlFh3pxb3AMBd5q4DEsBFL4zMMBtRf2V2zTiT+C7a5uHYVUjVDfAEeJmqeVWReOBGT
	G0AC2z6ti+gGOxeTsoXAHCvcNu8OQRdbbAPFpbb1Tl5dupPMxEvDLmgsQOAq8iSjAaw0ThRmpng53
	H7MJusMx9JxAMvIrcp8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8dfN-000000020La-0Xog;
	Fri, 03 Apr 2026 12:30:25 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8dfK-000000020KM-2yzp
	for linux-phy@lists.infradead.org;
	Fri, 03 Apr 2026 12:30:24 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 633APMsp3804946
	for <linux-phy@lists.infradead.org>; Fri, 3 Apr 2026 12:30:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=GGelWyldEc4J81EM2vLt+9
	2SccC0QrtVDpSEEvt4yUY=; b=JwzMt8pMj6UusaPySS0NdMMpLqnCYv47uL0Wa5
	46Qo802Ee9gOfh4DaSG4IZSZdwVtj5+JdzapK3/gnDMjUOVWSk3jtvmpqDvRzlTo
	By0p4jca/Hf0UAONlcruoKfarLhuVp1QPDxF+I9nUqZ/1biAQjVBDHcAeSI4EgQn
	ApK70TVe8oOmlue/JNRrN3FIwIg2QTeONGUPoH8ygVMiT56elh/3pdDtkyqrp+3u
	mvSLeeVnUWGXsO2J24HXyWJsDQcZMMlt7o3MA6ojlcoKwNgaD74TpMgfNxRaJvJv
	5Kiaa1EdQ5pkgMk5kIQ4UVy9CiCAlz56j6uRxwaEZoElK+lQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d9r0u4b8b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 03 Apr 2026 12:30:19 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aae3e185a3so5612655ad.1
        for <linux-phy@lists.infradead.org>; Fri, 03 Apr 2026 05:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1775219419; x=1775824219; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GGelWyldEc4J81EM2vLt+92SccC0QrtVDpSEEvt4yUY=;
        b=YBn/MEcov4/CtMbhVbwvXmeUi3TalMun1iPgba7VIZVrbK/45+VZNaXVVkWxABT3Kj
         KrVL+cpP59w1kswxLbRRG7TyNdEAOujSeRzH2i6Hn86sk9dWkMX72lYy6583b9A21cZn
         rpRNDfAKk9brhufK5NKNQpEIkM22SJKssdKEZeIxcuVuTZ9fFLNoqW48TetA1L8VMQNO
         J2vzLux3DK80OhODHTcUpAQ4hL3eVjlOrH24FkP4XRdau6xWSUlUXP2UEMfHXALT9vu7
         E+iIRIRmkvA8beiejuhD082wNVksuybu9exk6PYXH+ngVLVoks8zkFOEU3J31useigGt
         xvBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775219419; x=1775824219;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GGelWyldEc4J81EM2vLt+92SccC0QrtVDpSEEvt4yUY=;
        b=aYxkSM+UGxEY+KwL64c/OIxuQ/7zWJD5VFaLwTbpMAjnRxmLGalh7XiRFJTW4Pkb8P
         KqAWdWpiB+ukONO2BpBSpqf8fj7ghUnbPpfRfsmdBMkfWflxInoxzoe+v31lyBXrg7a9
         uWHiBZExvJTY9pClmncCfSmgtp/xjN/0xQqoSxWzWIj0zwK+a/fLHkTpPwgR82yDz3f8
         ow/PfIW4fTWlHpyN+cRUfASSsRA6+gP4/X3eOG8Am2ajUF09uN8aoPgNkFJoXce6xOTD
         zPuOQugxDAjyCnyMSM/qxMQmm5D1lICcf+xh6+ulp9fvslo116tr0ovtJyqDtPE15iku
         CEXA==
X-Forwarded-Encrypted: i=1; AJvYcCXXL/8pLqSSLejWgk25h17c/5ZcVCe0ZKn0CJ1H3g71ctUraojLFb6o3luOAj3ePYBf9x1W251RXB4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxFedcUhyb0juL08SSLdzAtgyHqc8Itu/Ne3ueQaHdZ88rA4kEL
	3MuPeoKqm5CNbooQx5PsYD+BUX1h1fWd8+Nnh+ZTlAG16L9MnPHyuqbGCe69k29TnuE5F10eAsR
	MNGULohxNGpGF4tvP0Cl8kPhMnp1YURo4wE6obVOkrXo1Cjs7nfT8wdt7dQ4bV6I1KJ7Q
X-Gm-Gg: AeBDietfdL5H3e5MIOT/KLfjyNQnrmtQw0LUkS8QqyBLs7igBBghPiQLvpZWYZM/PC0
	kyj/R9+MkcZY1bDFIldwEYbN0Bovw6mFLbUjOQliK17YcDEmh7BUBoqoNAqkGUxL3IdE8wq56Y8
	AQOhNEZpgVcY1+qnwXYIjhr7Cosrv5hWbWffXsWwleuUgwpQlvoaDID6nH76kAEV/8uPTBrbAbs
	VNhylRRra1XZAyjWIEtkRO3bgquzXMjJm+/Kul2PFNiCpiGxLX5/QiydKJeglGB3FThaBCgEqXp
	CmfmEhgPZYHHVPwn7bYFfD4InO19mfnk4p/JgNyI1jNdwMNdTrtEN9s3PW6Fg/OyE89N6cTqXlx
	qO+r5XwVzaQu1d0c5K+InMtGtE9rOxWo0jYBk5ADCghoMbeKocJBysyXs6UzaHYGfW8Rwnzag7F
	UY8sOWBXilJaBDvFtAmE4lB4miqiBA/eSN6LR6RCIhfA==
X-Received: by 2002:a05:6a00:4c0d:b0:821:8145:6948 with SMTP id d2e1a72fcca58-82d0dbbca13mr1677052b3a.7.1775219413763;
        Fri, 03 Apr 2026 05:30:13 -0700 (PDT)
X-Received: by 2002:a05:6a00:4c0d:b0:821:8145:6948 with SMTP id d2e1a72fcca58-82d0dbbca13mr1677027b3a.7.1775219413266;
        Fri, 03 Apr 2026 05:30:13 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82cf9ca4efesm5967653b3a.61.2026.04.03.05.30.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2026 05:30:12 -0700 (PDT)
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Date: Fri, 03 Apr 2026 17:54:56 +0530
Subject: [PATCH] phy: qcom: edp: Initialize swing_pre_emph_cfg for sc7280
MIME-Version: 1.0
Message-Id: <20260403-phy_for_next-v1-1-3d336b555019@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAJixz2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDEwNj3YKMyvi0/KL4vNSKEt3kVOPERIPUJFNTszQloJaCotS0zAqwcdG
 xtbUAZRq4B14AAAA=
X-Change-ID: 20260403-phy_for_next-ce3aa0eb556f
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, prahlad.valluru@oss.qualcomm.com,
        Vishnu Saini <vishnu.saini@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1775219410; l=951;
 i=vishnu.saini@oss.qualcomm.com; s=20251113; h=from:subject:message-id;
 bh=1qFlY5Q/B1pZqgQ2bNo2B7Gn3y/vtW9va/jkWsSbgh8=;
 b=ie6aBSJ9jq3b+K8szlZhmztVQEKwAN2LjpLmWvd6ZFfeCpO4egFltjYecqBgpHVezVxXhhh+g
 z4/CEPXXiP8AyS/HB6m07GPHq+DMpGeg7WkAC6ntb/rKWA/9z3KmM1+
X-Developer-Key: i=vishnu.saini@oss.qualcomm.com; a=ed25519;
 pk=8hlXlF8j/3GeOaDK3w2LYhkv9FanCQru0c7kRH/It7k=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNDAzMDExMSBTYWx0ZWRfX9dRSCQ4usj/G
 H7hcwrFOo8kUBXGGDvwzhnBVvbkIN7539GBSwD77MiXu38PH5kcRPzyq+QNu7yas3u83eNh1CwH
 Y4IniSMCCyxZh9T3s7J7GBVIFvi/+/6DPKafi9T7Z/RTb9UpShzwrbj99VNecUu9ysmPOhLOAV8
 CzGeQ2NU3lBUYJehwKSn72cqLO0omIQ7A3aJtJ0vUeAk9I93jIh7SIgJ6Tq59BGdf2PV9EGLxX9
 ZJn4DTI5J9YyMOH/eeVFRsP/UrJ10cTsdbz9poHu45XIob6C84spwdXwmLJpUZLfNFbTWTB4dJj
 y6nXm50o0ug821fRp4ILBssH/kx7wC9YfWi7Lb6DEIsniaxQI2yYYr9WUu9vAATzUnkT/3EMf3X
 WnGT9p248WFBMfyGDY5x6gP4DKKahywuqJSl8eCT/rwnIczlY0CLu50a4A66nS+L4apT4k2X0+A
 gH/4FGPAgPYwmY5odwg==
X-Authority-Analysis: v=2.4 cv=D5xK6/Rj c=1 sm=1 tr=0 ts=69cfb2db cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=A5OVakUREuEA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=ywSsHIUjEAsI5Cpo3g8A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 2jeB-8RDRUU6kokzrxy1pqcQr2oGRJP4
X-Proofpoint-ORIG-GUID: 2jeB-8RDRUU6kokzrxy1pqcQr2oGRJP4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-04-03_04,2026-04-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 suspectscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2604030111
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260403_053022_876589_6B284F14 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
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

Aux timeout is observed on few monitors like Benq BL2420-T due to
missing swing_pre_emph_cfg.

Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 7372de05a0b8..dd5cfc0eb09d 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -571,6 +571,7 @@ static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
 	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 

---
base-commit: 54f966f63b379d0c62bb044b7903319776443a4a
change-id: 20260403-phy_for_next-ce3aa0eb556f

Best regards,
-- 
Vishnu Saini <vishnu.saini@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
