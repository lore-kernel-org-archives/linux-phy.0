Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C4ADC79F9E
	for <linux-phy@archiver.kernel.org>; Tue,  8 Sep 2026 14:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/jxmVD1N7B0KxJ2ASSzRPQpZarTnnTO/VVdz/xu/vxs=; b=CJAn7xnUWbCMAR
	AVsEMOZEzqGpJKAcNF/YraI+y8W4sXnMERUYSZrdSbBTmy6fI0bSlBaBUF2UgSqnwfuuUzIxlzzrx
	1ByNUEKPLAchU8B5+0eOAq3ACvCOIAeaawh61/AtK3L1Azlss1I5fKxyhTsT5B2SWtzq7QIDrXyRA
	g6hzMto8NaVIqA2WrDbD5XUDrAbyMbmrNw2Td6MQadwsXtyhF1ZU6JGxy4r18KK1p141FQls8cWWz
	Ow+VDpq2ZzRNPaVTTwK7OVYP3sD3ozTFdarEsEsJmjrSyXTwtiXMqEB+21RnEWMnK9Tk8TvU4eNAo
	kVisUJ055BFCjc3tEMTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wOC-00000009DWw-1767;
	Tue, 08 Sep 2026 14:01:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3wO4-00000009DV2-3lP5
	for linux-phy@lists.infradead.org;
	Tue, 08 Sep 2026 14:01:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 688Cknak3573819
	for <linux-phy@lists.infradead.org>; Tue, 8 Sep 2026 14:01:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G0PZhPYBSdYv03XNJ7TA4w+vPBHYNvgmKmM+Ke7q93c=; b=OQYYxlA+QswhWC64
	jEiCozI8CVArltvd7LGyUB5SQxshoPMVeLsU16LUEHYbc3kic9gyea35d9fw497G
	IrSs8UeRYTfDOApUykxqc7sqJViIKusGw7zlxLd83JMNcPbGWXVSOJ75xy/kYgOp
	O1h0Fn9NyxserVgdSX8YGJ9Msmr0p4UFjv5G0PHYVJo0pNuQT//16Jg9kWI6QjKa
	/veO62kmwZ1jmGDsea+cBzv4RBVXfrarCHtpsjJ8KOmlyeGl8ii7SDg/K1YE5jS3
	NF4T3EiogZQWt58e0ufi2p22PdnasNp8gTWa/NDfbZSuB/j+HToMLPmf8tAJbR+o
	ii4wgw==
Received: from mail-oa1-f71.google.com (mail-oa1-f71.google.com [209.85.160.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gjfp4920r-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 14:01:22 +0000 (GMT)
Received: by mail-oa1-f71.google.com with SMTP id 586e51a60fabf-45952ce9ee0so6806352fac.1
        for <linux-phy@lists.infradead.org>; Tue, 08 Sep 2026 07:01:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788876082; x=1789480882; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G0PZhPYBSdYv03XNJ7TA4w+vPBHYNvgmKmM+Ke7q93c=;
        b=ei3IWCRgGgomBC5uj/IJJMzy0WOp2NmXXv4FeBR8tELtJSFF3CvN36RoAk61IuyLPH
         sofW+peRFUp9/7oQpLMxLs8yY8q50M+OTCyqtK4QYulEK+CMfYP+ZG3eoM3d8iBd8RBL
         joC41CboNhNpRcAZUu0RHy2WqI7mGqbBW+U9HtlPUczbuztrKSWr/Pm6XCjKqVEvUHbn
         +H5+2KyoGMPVSd66ach7y2uvde5+uvTE61O7MkkgueO8AVSmmg1/SUuhSRSxuy8cO2LT
         7vsyZQ0G4KEJZbu0yn7nzVWDLo7dS+BgrXb1eDtvulT1ly/QKYXaxmeO5qIx3hWB4YWK
         bAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788876082; x=1789480882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=G0PZhPYBSdYv03XNJ7TA4w+vPBHYNvgmKmM+Ke7q93c=;
        b=P3qOr4HKerk46RFt9RJbeFs08FQan5Maovxcu2aKTNFJigO7lls99S0DSrMDuQiPTU
         J+hoEjVNMN+Q78p0s9bALznEziVSCRBB8DvNZot2InXF89aOPDBQo589Ao7ex6vcgelO
         PYV46ViiS2wKqd3MZMtMDbPKlmg+lDYnkpY26BcmVDquwrtNgKxRV0FWrTWv8bCkIHWt
         VLO2UY+tHhF979l34E69C1+QS3qkWArhm1wXgBhfqXOwLVHj13VLQevxW78gM3sGDA2G
         +SjOLR5NrDv1T6IVHeg/AAk9ZCdIk+v99LOqGgMgf3t3EtnkLkurRNZoS1B8KCy1Gkny
         jQig==
X-Forwarded-Encrypted: i=1; AKwUvBzujLcBQrJAimYWijW5pq/cSNTVKtIGbOBwqK4cf+qeIfaTK8WwQUaQbnBJEkMkz4fArSdHfeRpcbU=@lists.infradead.org
X-Gm-Message-State: AFuF++l0ikpa5Ua3/4H2zhVvxghhyhh51GTxenIEB+xNd7Vx8uH44NU1
	2srO7k6s/uOzbV7A1LXOcrZ667HCT4wag/TLyzREUD+R0QAStbll6m1MOlVdAu/Yo36GY5jGhzI
	puIJJLbJN9a5Rbyx+TbYEKda1D0RHjceTXOYCWkVvFFrjWmh089dfLPj2DGWGssv36gM1
X-Gm-Gg: AYBFou0yEToK00e2EKx16CcM+OsMAvyiAM1A+yJNB5BIjq6lGKHHOQiiKANZvDxpN+6
	zeVfARgWul0tBwDSuGQbhqeTCwduXsbsMLHQVacMdwvpfn1+gZP6UXMN+5WVBzuZ87LEL/ANJ6X
	hUrOx6mro10yRqkEhD2u6BCQ81qRMUOty1/k6UjYBmGUSfoyBLh1GyFltA+iN7qOw8DMWQd4abX
	mHCo9TcuPdyJBQfRuu1VdtLmVuEVCtbPOl6+qKg8qjYB4rhXPVOvdi9VH3afKvgn4tCe7Heo8UM
	butq1tT8Q5TXaY5QPat8B+/2JpYDae/ttWVpMkSU/ja2q2IeOIy071SqKG+cwSjJOOdoOdDdEXP
	Maz6y/wj0n5RgB42lCGbKC1giqmk=
X-Received: by 2002:a05:6820:c91:b0:6b1:535a:eb8 with SMTP id 006d021491bc7-6b6fa8e02aamr15676878eaf.2.1788876081427;
        Tue, 08 Sep 2026 07:01:21 -0700 (PDT)
X-Received: by 2002:a05:6820:c91:b0:6b1:535a:eb8 with SMTP id 006d021491bc7-6b6fa8e02aamr15676661eaf.2.1788876079847;
        Tue, 08 Sep 2026 07:01:19 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3339af25062sm57506667eec.16.2026.09.08.07.01.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2026 07:01:19 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Tue, 08 Sep 2026 19:30:54 +0530
Subject: [PATCH v4 1/9] phy: qualcomm: qmp-combo: Add DP COM v8 header and
 fix register layout
MIME-Version: 1.0
Message-Id: <20260908-glymur-phy-v3-v4-1-ff22e5150538@oss.qualcomm.com>
References: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
In-Reply-To: <20260908-glymur-phy-v3-v4-0-ff22e5150538@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1788876071; l=1867;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=5KZuYwwIpuENfuIkXJlkVdcGxo+rr2inFXunMZRoIpk=;
 b=rb3Wf0GFEwzaY+juWsk5XTEMYXhYd2BthP70cxh2ZGFjXn62rWClRBT4GJ5hFPphuONUC6Q7K
 4vaXhA5qGQHCFd05D+0fasxMqX7rTrXtM9vMioW0L6xCZ5vIOnTgQYx
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=Qu9uG1yd c=1 sm=1 tr=0 ts=6aa01532 cx=c_pps
 a=CWtnpBpaoqyeOyNyJ5EW7Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=9hqLRW_DAkAp12WW2ZMA:9 a=QEXdDO2ut3YA:10
 a=vh23qwtRXIYOdz9xvnmn:22
X-Proofpoint-ORIG-GUID: CGeTyCsus3TzdM4rO0kQzScRoe7BtdWk
X-Proofpoint-GUID: CGeTyCsus3TzdM4rO0kQzScRoe7BtdWk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfXwgRi7hPz1SWv
 fbO2ixbSsqbl8pdYb48r/ooMgUG4CWBn/MstzTXNScNSO7EghHghp5W1nCuUKex6q61qmNGQWe5
 M9iekDQe/WLlMLs1Nv8wpyFuusfctql/pM5TJnHwYap1L6+g8IhFd4Ul4wQWEXjs1wd4P+6nXQJ
 kKYZSDhU77l0cr2tk975EfNPUmeFRBb2HJRPuR6vHt1+Kj2pl0CjsDBwFSEfzxj9DtB2c7QczxX
 uwBDmSk6BJ+Fkr0tKVfK3XfxpiYkFdx9i5qVwAo5oB7D0z2vO3HVb184Ne5BWBSkxW8hsy4m7D1
 TCiPU3GbPMcoO7Ya8+fWxg/07q4fxj/4XvlYWyuSqbfRsUBEKdNYod6kFEcNumwPc8DhjQod7um
 xlrTCQjZguANTuYCxaDGF2JfTqyfkzP1yz4MubBD/jd1K2yjlMVlLu5EBfcSjmcahlzpf1dh9Za
 ZrmLd/7twmXqmXXWrUQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTA4MDE1MSBTYWx0ZWRfXwDs4RogSZ0Gs
 oGpub7bRxVglguO2QXa1snEqLL9GacXkCexQIkT5ROPdN6F3z3WFh/DivoayiKUZ5WaUEmM7ORa
 LnrDmGp+rFdbVlgiyj59gB45adSFvsI=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-08_02,2026-09-08_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2609080151
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260908_070125_076579_59E23CF3 
X-CRM114-Status: GOOD (  14.32  )
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

From: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>

Add the new DP-specific QSERDES COM v8 header file and update the
register layout to use DP-specific status register offsets for
C_READY_STATUS and CMN_STATUS registers.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Fixes: 5b289913959b ("phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..4d31637f1dce 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -51,6 +51,7 @@
 #include "phy-qcom-qmp-dp-phy-v5.h"
 #include "phy-qcom-qmp-dp-phy-v6.h"
 #include "phy-qcom-qmp-dp-phy-v8.h"
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
 #include "phy-qcom-qmp-dp-phy-v10.h"
 
 #include "phy-qcom-qmp-usb43-pcs-v8.h"
@@ -318,8 +319,8 @@ static const unsigned int qmp_v8_n3_usb43dpphy_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_DP_AON_TOGGLE_ENABLE]		= QPHY_V8_PCS_AON_DP_AON_TOGGLE_ENABLE,
 
 	[QPHY_COM_RESETSM_CNTRL]		= QSERDES_V8_COM_RESETSM_CNTRL,
-	[QPHY_COM_C_READY_STATUS]		= QSERDES_V8_COM_C_READY_STATUS,
-	[QPHY_COM_CMN_STATUS]			= QSERDES_V8_COM_CMN_STATUS,
+	[QPHY_COM_C_READY_STATUS]		= DP_QSERDES_V8_COM_C_READY_STATUS,
+	[QPHY_COM_CMN_STATUS]			= DP_QSERDES_V8_COM_CMN_STATUS,
 	[QPHY_COM_BIAS_EN_CLKBUFLR_EN]	= QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN,
 
 	[QPHY_DP_PHY_STATUS]			= QSERDES_V8_DP_PHY_STATUS,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
