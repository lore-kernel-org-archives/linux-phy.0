Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5673C44501
	for <linux-phy@archiver.kernel.org>; Sat, 11 Jul 2026 17:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GgBlAVtQ4VpeIDDJnchTAXRaGTIe9KuB+eGguPGiNkI=; b=rom/NtwVSKTIOt
	7waYtW75S8zfhQ4yZyU+7fK5Kr1Sl8UghycTBmOdvWbKf4VOkm3BgEEljO9ZNDr01x/Vco7KMahhP
	9l2PUSYuHR/W9b3GMA2tZV1cnVzQXwLXRjnT6SRr9RqllhlTCjIeyd16FG6KqUF5vmhj3haPEB/FA
	iQV/RM7hEwMxASvi9IiN/qfqr1klh6FJZj59TSUAjJpgTCyLY9lPJJG0lwkDi4otp/yt8bKwuMTw0
	0RUZ7JvSCV6nZwRZM+J8PeI57R0E/4Lfmhf5lmBBeK/aQjmROKMry3XddoKu4ksaNye7+Qj2wcDdF
	FW8ldNwwVs3o3jAMbqow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDU-00000006iTj-1Upr;
	Sat, 11 Jul 2026 17:10:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wibDR-00000006iSv-3x2S
	for linux-phy@lists.infradead.org;
	Sat, 11 Jul 2026 17:10:15 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66BEONHd4051964
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oTuwjf5CXOV5Mp7IMwVje8lzbuGa56lO9NPJ07Ckymg=; b=Q/KSUBx2sV3llwiV
	6cVNAj/Qlq1eTrfyCyn17+gt6zYi9AjBCRxwDSEYm0b7Y1tVtBAWv+4kJmtpAIFh
	dS76Rz+8rs65GYvvKFtyjWFh6X0WuetJqQxwIl1eQ00vFCuKmPgAmHXd6f5CXJ8M
	DjrxYOIcSG+sUxF47EDZyvedi8Tgww1nG9a16q8F5rwnfn4aFB7Sl7Vbm7HCuGov
	jscRx4QDO8x/+ATwoQ5Kcn6F+MQ7cswonflc2O4iAFS2KXvnl/VHVx2b+akGchhY
	ynHSU2+pN8nd/NwUiGSZgLY9Yimg6B6HHZVd8lqeTc47RX2jRWVS3YJ/C1TApesD
	xSXVVQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fbeams97c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 17:10:12 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c88fc985a65so3908997a12.2
        for <linux-phy@lists.infradead.org>; Sat, 11 Jul 2026 10:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783789812; x=1784394612; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oTuwjf5CXOV5Mp7IMwVje8lzbuGa56lO9NPJ07Ckymg=;
        b=dZMET3f+iV4idEjqaSf+60K/+mlioes2cNihUePU+D0tHNxMLSL+gxMzPyoLnrh92B
         Nyf+lllJL8J2mzAuxOmEFsBmCanTHKHIZ7tAkCwhEqQfMRdNNBoTjiytVHUUPWJl0v1m
         3RpQ4afbIvxfn+1s8AT5FBq71I0ZbJmOdylJb9Lli97R5Y7C37NdlKkqN+iw8GADKXxT
         NXQ6NO/2du2PQNfRiBVh0jdK8C8H4bJN7yE+uMh96PnGuM/bv+8AjLQH8TTS/8b7xabs
         TcPt6FVUm/ef33J6z7wKAr8gwM+DRiJ2uZfpA2PyUGSE0hjljfPmKqFpTwsoj07L2j5m
         EeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783789812; x=1784394612;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oTuwjf5CXOV5Mp7IMwVje8lzbuGa56lO9NPJ07Ckymg=;
        b=fYfdPwKAQIdlMJQOVgSUqwd4Wk1dhisWuJfGKGLT8Y+nO4c5rkuwhy2zuuMyaAiT6l
         FirwHBaZMn54eGs/2/K5Ovra3bgC+YBkESmhVNOQDmKuDde3ymNSSty4jCB4ce5syVAd
         DUqWJBPIzyAYWU1ACp+pHMS7hjAkAf3/q2BeNUFm9QvwCUTZWGMvWcqG+yTi1vgse3Qy
         efIX9zCEe0OR+gh/ywZsK/Icn1/amQQCj6aotOYWgCIUu3DO2BuTo1cUH+C5Rsn6Co/G
         AD6U0dI7Z9iSPJFt2Ov3vYefV5aCTtstjz2OWTU9C6hFdU7xi9+eT2LI5+ZT2odsHjwY
         Lc9w==
X-Forwarded-Encrypted: i=1; AHgh+Rr+1hrG7jEDybSYmoGDUL1lEV/IdQxyBtbfQNGOkB+kPOxFYGou6bI3KwdZAsbQVHMumn1QJYeVAHI=@lists.infradead.org
X-Gm-Message-State: AOJu0YykNRLGLcmzAYtYXWvSh0+LhDRTXUcgfZdYSoBiKN26EPVSL9LW
	Lvge3WuBVg/UYFgJkP+rvteFfeXWAiZ8wxWSMy+wVJ5Z5FZ9N9DbU1XIoHCUhZounqgUu0qX7/p
	p9D3U0vrNW5VsC79TE8pgWjzsMPuas2xkCjJYnZJOgpWH3yOEDo0oE+vr12HCxTOZTIjk
X-Gm-Gg: AfdE7ckFSuQMRnTmf7n7y11X9G5CHFIBUSSUk6Y+eaIw5yswHpLnjCj7h5Of1LuHsBK
	frOQG1XlukKPu3qMnKgWKKE5GgkO5iqR4EA1QOspD/bQZoUlUgnIeJsrXBIkvBEXtEdI5MJtt97
	iJT1Nrfc/f8FKN3kmB5go7dZpgk/O2s7BC21wIUjUxw8gVpyRC02KtjEl7DEHFIdYXxG6iN/eGA
	IXwvriO6WvvGZtqhHDGxSotG/4BUXxIaqPK9LVN9DQn4wEc0wkwu55/Q31edRCe5smoI8cGEPK6
	gsgMuNoznTlRvJEzXlWMTFjpRJyTHBiWxyVYShPCNFPZDORX2WmqpJ+o0IEI7kQvq2F4DlFLc3c
	SMdFPFDMQoFs0s9MuOMxUWtVu/d6ip2dO6/ryaWiJrG2gOipNs3voUGYHY1/qnkoKeMEOYzfOw7
	trqNEE
X-Received: by 2002:a17:90b:3812:b0:387:e0db:3d88 with SMTP id 98e67ed59e1d1-38dc77a68e0mr3408687a91.35.1783789811992;
        Sat, 11 Jul 2026 10:10:11 -0700 (PDT)
X-Received: by 2002:a17:90b:3812:b0:387:e0db:3d88 with SMTP id 98e67ed59e1d1-38dc77a68e0mr3408658a91.35.1783789811517;
        Sat, 11 Jul 2026 10:10:11 -0700 (PDT)
Received: from hu-kriskura-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-313b9ca880fsm12943635eec.23.2026.07.11.10.10.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jul 2026 10:10:11 -0700 (PDT)
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Date: Sat, 11 Jul 2026 22:39:52 +0530
Subject: [PATCH v5 3/4] phy: qcom-qusb2: Add support for Shikra
MIME-Version: 1.0
Message-Id: <20260711-shikra-usbphy-v5-v5-3-229ba3602737@oss.qualcomm.com>
References: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
In-Reply-To: <20260711-shikra-usbphy-v5-v5-0-229ba3602737@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1783789793; l=1476;
 i=krishna.kurapati@oss.qualcomm.com; s=20260707; h=from:subject:message-id;
 bh=0JjcHpd3tBWmzeCMsgQ5q643CdTH4KrATd9X0tP8+O0=;
 b=AF5Do0U1rcLOiS4zCyjeri7q6YiZ1C/0pXPovuLK2Y54e3nMIXSVJfpltrcXR3o9byO4DOrww
 UYKyG623xWDDwVeROLnG0qvRdSDIEu9w4Cungaf06aLox0nvY8e/U9k
X-Developer-Key: i=krishna.kurapati@oss.qualcomm.com; a=ed25519;
 pk=6PmiuwGCdov3wRO+bdmRlRxRtmJyDKz3ED57LLPVgds=
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfX/Gm9Zsrk5/By
 ou8p1JhTg6KJtVRXdIPnaCp2XnTEcRD6I7eZlgkL9/tlgEz7/ZO+SEM78Vwrx61tbYuaYdXsugd
 Q/oJLzdLtCeOxGGbZICgukm3z32zz9M=
X-Proofpoint-GUID: -Tpmlg-Q_AxRIxHqEi_NcKHfQRYbSZvv
X-Proofpoint-ORIG-GUID: -Tpmlg-Q_AxRIxHqEi_NcKHfQRYbSZvv
X-Authority-Analysis: v=2.4 cv=dJSWXuZb c=1 sm=1 tr=0 ts=6a5278f4 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=Pub0nXbp0FV3ozl__XAA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzExMDE3MyBTYWx0ZWRfXzFC7DZJpojHP
 s9Jbc98o2DMiciqg8htat+TPXtIVjA/NBTHhCYf1FQtRXCCbcUyhGlisNo5hLSkdm5IjKDxgWWw
 LWsMjB4K7DFCBVRNzDHG087n2aC9YyeE3+nBovGigisPPyH7Ks+nU8XvjzV1lGqpNJYrweHilF8
 ZkFermfj2eH7sZtkyBuiK2u9HPBVKJUs1xAE/Gn0jj5rOnpQcLodmjBi9PRt5WhJalxcHhR2oWH
 v0vrC8ZO6UrGAl94cFeWaW+7HoJJdS2UuzF59A7Y9mBVAajixSM29qjRsI2yRd8tXbkSo/O6ume
 gP1h709lc3hsoMB1VRYUQJ7MqZkXKdUo8sZBaGg8tCf8TYZvln+R9Dz+/ljb6sLmMLaiWm2qKvO
 tuyc0xr8FM9WgRsoGVhF4kQ4ZIlNqitqubp0YVSt5l5LrvgrmO6aj/mA007DmuGm4tOjMA1dZ3f
 iOouq30T8k4txCrbbFQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-11_04,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607110173
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260711_101014_104188_0B0D4C3B 
X-CRM114-Status: GOOD (  12.37  )
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

Add init sequence and phy configuration for Shikra. Since the init
sequence is same as that of QCS615, reuse the existing init table in
Shikra.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qusb2.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qusb2.c b/drivers/phy/qualcomm/phy-qcom-qusb2.c
index b22b3c6adfd3..101c0820023d 100644
--- a/drivers/phy/qualcomm/phy-qcom-qusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-qusb2.c
@@ -377,6 +377,17 @@ static const struct qusb2_phy_cfg sdm660_phy_cfg = {
 	.mask_core_ready = PLL_LOCKED,
 };
 
+static const struct qusb2_phy_cfg shikra_phy_cfg = {
+	.tbl            = qcs615_init_tbl,
+	.tbl_num        = ARRAY_SIZE(qcs615_init_tbl),
+	.regs           = msm8996_regs_layout,
+
+	.has_pll_test	= true,
+	.se_clk_scheme_default = true,
+	.disable_ctrl   = CLAMP_N_EN | FREEZIO_N | POWER_DOWN,
+	.mask_core_ready = PLL_LOCKED,
+};
+
 static const struct qusb2_phy_cfg sm6115_phy_cfg = {
 	.tbl		= sm6115_init_tbl,
 	.tbl_num	= ARRAY_SIZE(sm6115_init_tbl),
@@ -953,6 +964,9 @@ static const struct of_device_id qusb2_phy_of_match_table[] = {
 	}, {
 		.compatible	= "qcom,sdm660-qusb2-phy",
 		.data		= &sdm660_phy_cfg,
+	}, {
+		.compatible	= "qcom,shikra-qusb2-phy",
+		.data		= &shikra_phy_cfg,
 	}, {
 		.compatible	= "qcom,sm4250-qusb2-phy",
 		.data		= &sm6115_phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
