Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDAD0CA9ED8
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DFtrWDDppu+v1TYybweoCxAVC5QoOwjH4BxFTXLUKw0=; b=gGZH18O+GP9phR
	9RgUOXddwX/7mfXZ5WJj3bUgFw0gYPeZr+Wr0qSiRaCzTH0cGFoxXJ7QzoOZWHYvz+f6LeX+C5EZa
	gQcIk6Z8ulxQJ8GG2Jhfn/1Y/GaSDty1qK/oky+Qjsro/A7bmIwuwTXADYnw6EigzsnC0PSC8HZgm
	338V7JhFVGEk6x4w8u8YkIo7OnGKe9+s9Ipenhn+53n9GkrQUrQMdazRMGriLKye5FVj40e6IvieF
	Kj0qMRL//N0fSiAjy9SBMBWqagXGEDc5vwhwFaThVBJn6mgB+MvKti1G2fdsE7EHRl7gcI7eOjCqs
	yupm4kbJ7I3Lnn+eNpCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mu-00000009laP-2Hvd;
	Mon, 12 Oct 2026 06:45:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9mq-00000009lYe-3OVr
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55gbR750873
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=; b=Nu0nPlPn0gBDMIRO
	ScBTB8pBWKueMLJy3nvdq/gh+bAyEtB5mfCMFGF/AcfWriUTe2ZHdIhSayGyHxpr
	ZycqrfrUkZcfNomvncw5aKHTa7vfsJY39jvfSriHXvk6hqMqU327si0gMDvtdxTa
	q+g0sRlvva0TIR9MhSMavoQFsTfRIhbX+wQOjWkJ/VNxBOZt4HUxwEMT0HreINfq
	4ETC4kVTwlC6UIyvqbNEq9WnYZgKI8BEYBIblPLU+2NsHyb+SV+ReGUz1VB+Z8/3
	ion5Pp1mpryxqp/W4Ma6bTuY0r5ZC7iqjCdofA7F8W4MOnM3GfYc3Oc6WcUcR7NB
	hT6K/Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7e4ed2jb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:28 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-88b9d8c9e55so1216467b3a.1
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787527; x=1792392327; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=eUUPOmU4aEi9JOcYwXcecRu4ddELTQzxBsB5hO/Qxf5LaL4xK7HvyuOTBRGdcCEJpN
         59N3ie7t1bsiXFAfTYJPa8M2hq8DvqzDv5aDijRa7ZswvD7bQvQk5lIxBlmoZabaoBk0
         AyrMbNwRaiWXzvhcJC8bJ5LcGWRASPQEYb1O4OJdu/ihD97Sdr61LqjvFtu/ZYd7k/ZB
         8ZX0c+RqQe/bLWqKmFlRB1LOtUZVQJMuUrJUlbw7AsJiGPQj2AaBoA/MBG59700JxYKR
         tdHw0RQhUm/BN8BZCVw33rlaFc5dLMvM8PyVGknVX/KJS0VLN2yae6vwFHY4FxdYHVKm
         zTyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787527; x=1792392327;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=WC8KaNzexqILvj+nwYYKocvsByBerULznJgP9Q96RzY=;
        b=xr7qZho9t1aOUa1rDxDQhq4JYCZisU1URloTUzlB+VRQG5DxRDiOzTrXdZfajm/fIR
         bYKnUAaKMK/AoV1nqlyRTaOdwVUIyC1FXao2ExHi87VqSC7z84vGsRRuavj+xgLu5UEI
         XHkok9psKR8HwDL0MKS/ZlOw0vAM3pcf8vf6J8ZtkW/9+YS81/BZznK3qCMsGb5MGecV
         7lyI9er+2y3ufkvsctpBC2C9Qcgn69djucwLRfe438labrZPs4lGAG0f/Gt+zAi9olQD
         De1QaNPDCk4B/0R8SPMFF07Xiuj2XQh4+brKfH8C29r4QodMek8KRqJ1dbjqKP1WdCML
         aIvA==
X-Gm-Message-State: AFq9FYIukrd6uau1YDFQWpyJ38AZ54ljtJr9/L9E8EtP1xeEEEi9VHJ3
	35g9GtwlmcKG6Drz5qpPw/Ez12WAZ8iKVT01+H5dQSVsIktUdMv13KEx9hyhrpPNIX2odSPgjJz
	n7pnoXQDZ1HPy6oi7vDjRuYjgh0S631dXbKD9D/jz5PdQneg7bhYxh6s2yeB0/Bzq6553
X-Gm-Gg: AYBFou2pBlXDDDnpv5heHvDkGm6bdzZiO0grp3ZJ+S6btX9GCmCxR/WnfEW2TP1Iv9c
	tqrYgjdcqY1yvp5TQGkc+YGuGUJWQ44BMocLqb77KBcU61SRTGlZw3gSXbn9YHxE+df2ouDcCiQ
	dYjAHrCUtOd8xD5PbhYG9L5BZuEVlF4JHP0f6JuDP6N1m9EJxdhqpirADsDLkqJ8wB//L6xri3H
	J/5CNwLHZIIWO72y5ZiRnVvDZo9Gd6K/AKTW6qry2beuAbOTe9jxm1G4s8Ttn//St8J5BmLGI6J
	VfdGeprZhq+tbVC7Vtqu61tRZ8aA3zKlcHjEB/kSYSzF/JQLl529lMqq250A1NhNXo7wF0Mmteq
	E4vLYs5FwNCwjywLJHqqL7Q2vIwrL+N+x4IfhEQ4tIquARqUCfiZFbeIHhTqKhXt1vUstSc1rc6
	f+I1S6cd9pLw==
X-Received: by 2002:a05:6a00:3686:b0:880:e0f8:2da4 with SMTP id d2e1a72fcca58-896898e8277mr5751273b3a.5.1791787527523;
        Sun, 11 Oct 2026 23:45:27 -0700 (PDT)
X-Received: by 2002:a05:6a00:3686:b0:880:e0f8:2da4 with SMTP id d2e1a72fcca58-896898e8277mr5751256b3a.5.1791787527052;
        Sun, 11 Oct 2026 23:45:27 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:26 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:05 -0700
Subject: [PATCH v21 03/14] phy: qcom-mipi-csi2: Add Kaanapali support
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-3-04fd28d815c6@oss.qualcomm.com>
References: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
In-Reply-To: <20261011-kaanapali-camss-v21-0-04fd28d815c6@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
X-Mailer: b4 0.16.1-dev-17221
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX4VByGmvAPk+A
 859EFoRJADSMKiuk8XWKRUuV0KK0vyTekrpZzriQ8JhsX6pIBZuVFLhvSNwmpngjMUuafknJsWa
 CKrSm2Z60A11q8icNPehLCTO1dutviV4d4T/NIVxgl6Llxl6uB+Kj5Ff/w1WMMjAK/fs+guUPWG
 js8MhSd19rdrU3l88FyvYj4vsCQ7DA+n+or96+6mxXXhBb3uTgmIzgvbrYaIAY3icKIlWIqFLuH
 0c9EWlQ5HvDk/4G86mzWJA/M5Ggwi+MKf+jj3MMRe8ngcE2IweHi1slTpggL0PpWGc1hXaZf6f0
 rfH9F7z3RxZdEXCdMDOP29pcU0/xsSkTAufd2JlwozeCHqmUHMu/S/dljKa/CgOQi6lIR172qHz
 N66BzgcHiLWjiilN2hDEJod5RL5ORxZrItVZBNFLU86EzcwOPILjTWnVEaRtDU2v7lRpCm+JsWR
 OwTg8wZArvZLm7Uswlg==
X-Proofpoint-ORIG-GUID: AXLDBP8XQ66QrYoDBEkwfmWgyEnBcn4O
X-Proofpoint-GUID: AXLDBP8XQ66QrYoDBEkwfmWgyEnBcn4O
X-Authority-Analysis: v=2.4 cv=W5utxhWk c=1 sm=1 tr=0 ts=6acc8208 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=1e3Zegj4IIqRqDCgfwkA:9 a=QEXdDO2ut3YA:10
 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX0jZvwuC6USZi
 vPCp9F2MXLUO3PKkRaUNLs1B8wROosaCX2Wub3wTU8CO3yg8jE0prS7VteafxFy4CHtdUYpU9bg
 n0rZpFFwvYqHXzyNezhVEyOdP2AhU64=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 malwarescore=0 impostorscore=0
 bulkscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234529_501977_6BFA9572 
X-CRM114-Status: GOOD (  14.86  )
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

Add the Kaanapali 3nm configuration for the standalone CSI2 DPHY
driver, including the Kaanapali common status offset and power domain.

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 16 ++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  1 +
 3 files changed, 18 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 8cd331cfb4b3..658a39463104 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -389,3 +389,19 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e = {
 	.genpds = x1e_genpds,
 	.num_genpds = ARRAY_SIZE(x1e_genpds),
 };
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_x1e80100,
+		.lane_array_size = ARRAY_SIZE(lane_regs_x1e80100),
+		.common_regs_offset = 0x1000,
+		.common_status_offset = 0x138,
+	},
+	.supply_names = (const char **)x1e_supplies,
+	.num_supplies = ARRAY_SIZE(x1e_supplies),
+	.clk_names = (const char **)x1e_clks,
+	.num_clk = ARRAY_SIZE(x1e_clks),
+	.genpds = x1e_genpds,
+	.num_genpds = ARRAY_SIZE(x1e_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index c0a4fa20eaf0..aff9e66f0352 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -444,6 +444,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
+	{ .compatible	= "qcom,kaanapali-csi2-phy", .data = &mipi_csi2_dphy_3nm_kaanapali },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, phy_qcom_mipi_csi2_of_match_table);
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index d6366f809e51..2355a1db9b94 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -94,5 +94,6 @@ struct mipi_csi2phy_device {
 };
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_3nm_kaanapali;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
