Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76A5CC9832A
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 06:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1MhgHmnj8lWUytrLu3sZ2PrXukg3O8DZRSwvQaOoZs=; b=LjhjTJfxmKaj3m
	STkxVGgLYLy0S5smJIqNCCigJRY0uNQ+kvVm/L7XVsuSSnHeCjl2aX6ahdm0ENGoYh/adejh1pQ89
	wDjT4LeD5loLlI0ovWzvWuQbE8+blmLicCFiSCMAuk88HwCHaNS3PfgeAwL4to7lrgrNGGGGFQYwh
	bUjk329jUWOWD3TpAwsGY5nvc89grnj6WQVLjaku4jP8vMQbfm5HS7kmFQtC4A02bn7WfGPUHKdLy
	wl31Gs8eCMyh661RA7SIg4KaOHiahkvg/+ZfYOusUcZGnP/R0cZrSF4OtDGPCPVZjcZlIFhuT6kaD
	+zJyWHNQm8cbutlLFJrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQth-00000002Ozx-0YOB;
	Tue, 29 Sep 2026 06:01:01 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBQte-00000002Oxw-2E4N
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 06:01:00 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68T47NbE3891436
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	J9XpRhDCIBk7nECEJ0+8fGl6mP/GgAplTBJ4Fr8IU+8=; b=bzMWu4imBpeWms9C
	zFhWH60l/9IwkGY8ZDYh1zdbN1U4zbnVT05pY1Rjbju/i+ngG2JrRYj1HXBSBPPB
	qXB6wAfr8SDNyGxsqE10u6QVNHThjVh/a8Sk2hGEsTWUtLunvGLOFbJT3aPXE4wm
	b+4WlZcQPyMcQijQ+HDSgHzPQ64heHzD/FLdmA+qesO4uKC0yVy4ZdxDtEtv1BXs
	Pmjkl5PoZ1ctr0R8b+C5M2oGANiQbDTcYm7lze61Ixv+ziw/NGfAQtf1EVALlIPE
	vI5HB4G7PBAc1yIbeZpWEl4+DN/EgcZl4YpXBgOqEbJXNIDoFu6oDvEYCRLkfZVk
	AiQnjw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gynfkvdmg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 29 Sep 2026 06:00:56 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-39512608fb1so6133602a91.1
        for <linux-phy@lists.infradead.org>; Mon, 28 Sep 2026 23:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790661656; x=1791266456; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=J9XpRhDCIBk7nECEJ0+8fGl6mP/GgAplTBJ4Fr8IU+8=;
        b=WNnJoE0a25NdQKBjnjPOCOPZO7PHWyBRCKJPejZzpS9OSrKSO/pArWVffIvYyRxxGu
         TmVYGJhQjntRP7KulYA4PaBbVrPuuTG5DezpUJk9jA66g87QRNTPDg+cdHjDDQoyKB47
         WDu1zKMBIX0gi0uZS1QrQkX4/bWAJfxQNMsMrkgpaN383Wmq/qVJrsdOIsf6jMXjxqOn
         NelruYniFN4HUX1tWdgag4tzIJ0cA/AwlQOt9tHrrigJksji28lr2QXQIhEeguo2CjP2
         v0VC9q5YhZpvTWJS6/A5lmY0rnkcAiO2MWZd7mgSMG2DmJiyTD8SsygsQ+KZXJxZxXij
         uXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790661656; x=1791266456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=J9XpRhDCIBk7nECEJ0+8fGl6mP/GgAplTBJ4Fr8IU+8=;
        b=t4s9ZZrhKj593IhaNDfJj+ka3AgSx3gZuocJ5wrxe5DFWHF459UV12wX0aINrlr1ZI
         UMv9XzIXmVcHGSMvRWPvt5Thshtm4yutFifASjYPZiiDQz8rRe5CpQxlwBCRLKAKUOUT
         da0+653mYqMJZZchNKH9IDIpO1a7FbMPdtzjfwB7H49HSBjXgX77BCmQfXXbxhl1OmBi
         Ij2A5pakCSjmGNYVUVGD+VhhzHIGCMTiwIvUSvoie/0ixPg7lkbPFcM+fW2EWmXLExzn
         mJw0YOeNDQc75ELTbyY4NvgCrfYMMh9PUhvr+sinawi9MBEOSiqgXeYb70//rBwSDTh7
         c/BA==
X-Gm-Message-State: AFq9FYJ3lJMUJYrW2G5QQmgH25KSdl2h4/5/3S4as0vXmgo3XIBl1bIk
	F2BoSNaGol9QvNOCt3gZ2UnR5Fmku8jysstHh3X9QoxmEC3HM/2C3Zo3SNNrkC2Put2vfs6fRnO
	GL9B8rxeGTTHjSASLK0kInbQXcls9TXxzTn112n+I0r5ER0YnvnVsVAV7UTfKfeii+efk
X-Gm-Gg: AYBFou3eW6AvhJbnNhSIXsjMk0mSQ9utznZZiCJMEOu79tQwj1PCB1NdF01C0jLhhYO
	Q1bCfVVDsq04OdOmXqj+jWCqpaKdDGUBjhE75flwenzplzJulF6jRx++uiXnlaAtFS0EwDriBk4
	l48db1L4PNZn7aYQCbJd4rtFx3tzeA252iaATdD8OrQSCYtqJMIr6Z4IgriGlLSkCFAT2tcQK/R
	x5p23nexFAaijCDtqX5GU3GwdS6S/rGj4D5xqJfIRWeaTQVZdeHajtKNE6xZUzt4i0T2zjdL+Es
	+VyBZOn1ZDm9sMbJiKehhEgIpIOb8mICd1OQlTFRmSy5eQ7Pja5YcXCpQ/3W1m333jpaYpxQD97
	wdd2Pua5Y3OqkmSRPIiDdfOFjT5yEQVPYdYULUkszMZuDAjNRofwrcVYOINf4+7I5QSuxUhmp+G
	j4T3jYncGFDw==
X-Received: by 2002:a17:90a:d444:b0:3a4:a383:f9cb with SMTP id 98e67ed59e1d1-3a4a383fddcmr666322a91.22.1790661655818;
        Mon, 28 Sep 2026 23:00:55 -0700 (PDT)
X-Received: by 2002:a17:90a:d444:b0:3a4:a383:f9cb with SMTP id 98e67ed59e1d1-3a4a383fddcmr666295a91.22.1790661655350;
        Mon, 28 Sep 2026 23:00:55 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a4985ff0f2sm3383588a91.8.2026.09.28.23.00.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Sep 2026 23:00:54 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Mon, 28 Sep 2026 23:00:34 -0700
Subject: [PATCH v17 08/11] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
MIME-Version: 1.0
Message-Id: <20260928-kaanapali-camss-v17-8-dcf3fd37f76c@oss.qualcomm.com>
References: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
In-Reply-To: <20260928-kaanapali-camss-v17-0-dcf3fd37f76c@oss.qualcomm.com>
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
X-Mailer: b4 0.14.3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX1M8w91kHRuQM
 CcCuM0jdc5h7BYFSE6qiexm3BgIiwAVF5R02LVseixoULZwaGvVCUxBfNHzQzVFFmmaxhZS/rAB
 no32aACzz9ZOROZqFZ0ziv96tgCEq7aKR75WEF2qHGibnLygceEWRsdCKDNyCTqCH3P04Q5EQi9
 XM4v0gaVGiVmSsMYOakEbO0uYnf49vSVOjgicD4giG/T1QEA9i+yQpOjEgbt+L5yeIf//PQUpdu
 fNSo4M7+k/2DyrC1TYMrzeiTWN8vGRV36cWR2InFb8mb+ZiKQjOjWu9MGjSLSHKMPLCftlcKQk7
 y+2bZTeabOz/1+aHxAZYIC2pycjOkOAP6ylvatX0ZTDVQKl75PEpLpNiVUI5vGZH9LfaWPeGE3f
 FQYldiozeyg6/SXrmDI9YHK7q62l3r0YEPP2AbGHemLk1v191Nn/wGa1ym9mwSB9Uq71OpKWlCB
 /jIN/0C2YATOYDomlOQ==
X-Authority-Analysis: v=2.4 cv=e6aT2qp/ c=1 sm=1 tr=0 ts=6abb5418 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=zvpRHedlNIWp6186mRgA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: QbhWLoafjvQQlbAtgkIrA67QeDu61-Lv
X-Proofpoint-ORIG-GUID: QbhWLoafjvQQlbAtgkIrA67QeDu61-Lv
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTI5MDAyMyBTYWx0ZWRfX/whAkTum9bow
 7ek+kxwpXri3UskltMdjgBtYOHl1UJz/EpGhhKTZY4DMXgNSgJ4pf4pPRj/1GMXqt/dzZbs4fnG
 frxX8UFkzp6Ftlk4K6ktbwVfUszARTE=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-29_02,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609290023
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_230058_692654_1BA5DD9B 
X-CRM114-Status: GOOD (  18.37  )
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

Add support for the TPG found on Kaanapali. This TPG uses hardware
version 2.4.0, which drives test-enable and reset through a separate
TPG_CTRL_CMD register instead of TPG_CTRL, and routes its output into
the CSID gen4 RX via the CSI2 TPG mux.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-gen4.c    | 15 ++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 27 +++++++++++++++++-----
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-gen4.c b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
index 4ff2f41f70f7..bc52e4a1135c 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-gen4.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-gen4.c
@@ -63,6 +63,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -140,12 +142,21 @@ static void __csid_reg_update(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	int val;
 
 	val = (phy->lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
 	val |= phy->lane_assign << CSI2_RX_CFG0_DL0_INPUT_SEL;
-	val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
-	       << CSI2_RX_CFG0_PHY_NUM_SEL;
+
+	if (camss->tpg && csid->tpg_linked &&
+	    camss->tpg[phy->csiphy_id].testgen.mode != TPG_PAYLOAD_MODE_DISABLED) {
+		val |= FIELD_PREP(CSI2_RX_CFG0_TPG_MUX_SEL, phy->csiphy_id + 1);
+		val |= CSI2_RX_CFG0_TPG_MUX_EN;
+	} else {
+		val |= (phy->csiphy_id + CSI2_RX_CFG0_PHY_SEL_BASE_IDX)
+			<< CSI2_RX_CFG0_PHY_NUM_SEL;
+	}
+
 	writel(val, csid->base + CSID_CSI2_RX_CFG0);
 
 	val = CSI2_RX_CFG1_ECC_CORRECTION_EN;
diff --git a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
index d29de5f93c18..770a9e5d5ba5 100644
--- a/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
+++ b/drivers/media/platform/qcom/camss/camss-tpg-gen1.c
@@ -22,6 +22,7 @@
 
 #define TPG_HW_VER_2_0_0                TPG_HW_VER(2, 0, 0)
 #define TPG_HW_VER_2_1_0                TPG_HW_VER(2, 1, 0)
+#define TPG_HW_VER_2_4_0                TPG_HW_VER(2, 4, 0)
 
 #define TPG_HW_STATUS		0x4
 
@@ -33,7 +34,9 @@
 # define TPG_CTRL_OVERLAP_SHDR_EN	BIT(10)
 # define TPG_CTRL_NUM_ACTIVE_VC		GENMASK(31, 30)
 
-#define TPG_CLEAR		0x1F4
+#define TPG_CTRL_CMD		0x1F4
+# define TPG_CTRL_CMD_TEST_EN		BIT(4)
+# define TPG_CTRL_CMD_HW_RESET		BIT(0)
 
 /* TPG VC-based registers */
 #define TPG_VC_n_GAIN_CFG(n)		(0x60 + (n) * 0x60)
@@ -164,18 +167,30 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version >= TPG_HW_VER_2_4_0) {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	} else {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	/*
+	 * On TPG older than v2.4.0 test-enable lives in TPG_CTRL, so clear it
+	 * first; v2.4.0+ drives both test-enable and reset through TPG_CTRL_CMD.
+	 */
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 2f835cf2e32e..a14947a7ac89 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5793,11 +5793,13 @@ static const struct camss_resources kaanapali_resources = {
 	.version = CAMSS_KAANAPALI,
 	.pd_name = "top",
 	.csiphy_res = csiphy_res_kaanapali,
+	.tpg_res = tpg_res_x1e80100,
 	.csid_res = csid_res_kaanapali,
 	.vfe_res = vfe_res_kaanapali,
 	.icc_res = icc_res_kaanapali,
 	.icc_path_num = ARRAY_SIZE(icc_res_kaanapali),
 	.csiphy_num = ARRAY_SIZE(csiphy_res_kaanapali),
+	.tpg_num = ARRAY_SIZE(tpg_res_x1e80100),
 	.csid_num = ARRAY_SIZE(csid_res_kaanapali),
 	.vfe_num = ARRAY_SIZE(vfe_res_kaanapali),
 };

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
