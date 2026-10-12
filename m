Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE629CA9EDA
	for <linux-phy@archiver.kernel.org>; Mon, 12 Oct 2026 06:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g8M3IpHjPiKwpzryHb5Lxt/3Kp/woPSOSiQhF+IUVxg=; b=UFtK29L6TIPPoN
	awNNZXN6Mu7dZQTCQhSkRD++XwsWJZ6IP/aWfn6r/dcEyjtCVzOdIO8nMe3si7yzGqLcECvdZLxp5
	GWOXP5Do+Z18x/Qn+Lobq3YcQQl6W3HhDnmTZE+CKAY+Yj2uj+Nvwak4kK8kGaBqjMZCi4UEwlkIq
	C4/Vor4wZi+4zLdUIJmcAqFj/3IndimsbJKsIoxl9NaKi+Lo4hFt/DVaAcJjKrN7eXqJ/R44EQyZp
	DbaMVaMHnBovKQWYfJTH8vCa7g9pEiJ0MQO71aArbtOgZL53fyMDy/s4Xb3ZEJDKi/eSzRMiZMkkG
	+h0ViGb5RDhL15dHF6eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n5-00000009lif-2Woo;
	Mon, 12 Oct 2026 06:45:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG9n3-00000009lgH-0Op9
	for linux-phy@lists.infradead.org;
	Mon, 12 Oct 2026 06:45:42 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69C55odq1857082
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K17dDzH3f4fqpVy6zPlp73eAU7GBBYYJ+Lmp5jaQ+k8=; b=hwhjpANesXXoLbRq
	h0w/Xlz6eN5caqwo52jf8GoNqNDETnn+mzzW9VukhqAYeM/KWM3QfGWCw8bj0mmo
	L9nqfn6C7EmpGYnBqEHqboPV8f4S2/jC3CDBuELNs0ph9YcyIy1PAFCtHtgqQnFi
	a+dJXyeNcLcTkzqLCdkNFXKEU3ZCQlWs7jkE4tfVYRqSzOcCx8D4j0GA/4xZfFKM
	z1WlX7BtFjsEfavrp9Q1F20+7KSkbJ+1NlbvmLSiNWI4GN9LXOEhbptaCKuBTAbE
	E2qOzI6Ib77/aKXSPSrgafBjRvWQaHPk5AUoHItwz1hrjGwfS1xMxsRZUeAz46Q6
	C3JnVQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h7cxxnabe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 12 Oct 2026 06:45:40 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cbb92868263so1092881a12.2
        for <linux-phy@lists.infradead.org>; Sun, 11 Oct 2026 23:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791787539; x=1792392339; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=K17dDzH3f4fqpVy6zPlp73eAU7GBBYYJ+Lmp5jaQ+k8=;
        b=RaLn99BE75VNKlfmOzQoaYRKeT4rwQwIBhG8pl2sBdUPUGS3OMy2YQxy6Z83KJUjD8
         34TMQIlOk4jdhufWmgJM6ZCeE3im6O8iYPF05CMhKFKOY0WX9AlrPX7JklYyfqodVvWN
         +gBNUAadUNWkCTsvx2uN5cuFiTD43cpOlt+4rXk9OlCUtd4T0R4xj1Das5QZFNge2qqi
         Q5LuF8FhixL7HQHsJVBSAbhT9o9X4GBMcu3ZzUaMyHT2dc5gfsr7mLOo2HTTzWkSmR87
         WntZk8Y7NSWHMjmp+obyK9ThAG0TXm4Qzy/9OT3D0KNmslUda5x4oXJVny44Tx2ck0lN
         ga0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791787539; x=1792392339;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=K17dDzH3f4fqpVy6zPlp73eAU7GBBYYJ+Lmp5jaQ+k8=;
        b=wP/f9RF6PXx9cXUzWA6Vxp4qHQbte8Q8Y156VAA48OOihYArypL8huePZDJDufrIws
         KgvVV895Ofx8TeNfUcRiRgsDhURvNR8K0c4zgJoLycBs5D0Z4QHU0FSAwhNRUnHSQXyw
         oF2SPgkcxhYYOi4MSxS1qbH5XIIytLDJDem+L26aqW2uIVqJxv/7gnn0lXhZ1HGikszL
         2C2eEtD/Jg0TyXkZZ5pi+94ZmxlVAPyZW+HkPwDNQY3MwO0c0P9Du/FrHgDt0TsQOmf8
         bjxPfwYHXRTuyXCpAkcmuwx4KOMtH4gdfQrEXt48/U2MIeE0IAiktpQjUnuK6NAra2Nt
         pcyw==
X-Gm-Message-State: AFq9FYJpd54MzrKrjzIhK/v6xCTO/d5CshNaJFk9E3V2q5vJtLsoUTpI
	kzWgXGh9l+e82qtt7dLJHv7Xebfgjh5N1TT4fmlLzXKuCZEdM+zycm1Ty7li5w4dbC7TDvidH7O
	qS5WUPHg4zJCg8GQz93lligJQZ/ANDmbwu094JOVfyL01ORlxSh31jnwmLONGijPuRKT5
X-Gm-Gg: AYBFou2FxHV+1IfyPNe+TtXrPZT48e9wiI9gaujGrtbBabekg5LKli3w6P89WPzMy3Z
	oi7+oSNyJ5q4lA0mSa2sCfciYRLEnh5dds5JWiNeU6/xne41yBqdW5SxqbaUuLIrPBpE+98rbu6
	xxhcnvFaI49FSHHqiWg4jn8GlRMTr22stmNci6NoYA+VFbyAXXcuojJi5hK+7KxNEutVNdCyeq2
	rGMqZcp2IzIaIHa7YPqx7q4NR8SPuNhYUjr8tR7/4ppI6VJC3FJPgDSoPeTE6WflKC48ElXmMOR
	KLClW3+VK+Y/FbcJKVGb/6xSgMGqw1JVtUXwJ4qlnjYhl0Sj0jqoZL1bEEwk0ANHZWOPX3E4k4J
	3OjRSg1QuNI2RflfbYsCd1KFzXY90BK158WoQd30LV5a+fNHotEhaSaTXQYNU4jWzgaO1Cs/cI7
	ZucgwrjzQ+AA==
X-Received: by 2002:a05:6a00:4195:b0:874:705d:f643 with SMTP id d2e1a72fcca58-897c77da504mr6260410b3a.37.1791787539057;
        Sun, 11 Oct 2026 23:45:39 -0700 (PDT)
X-Received: by 2002:a05:6a00:4195:b0:874:705d:f643 with SMTP id d2e1a72fcca58-897c77da504mr6260389b3a.37.1791787538533;
        Sun, 11 Oct 2026 23:45:38 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3dc6c93sm3534420b3a.33.2026.10.11.23.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Oct 2026 23:45:38 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sun, 11 Oct 2026 23:45:12 -0700
Subject: [PATCH v21 10/14] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
MIME-Version: 1.0
Message-Id: <20261011-kaanapali-camss-v21-10-04fd28d815c6@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: ZqH_Ao0ylT47faNlitidilNBJqufptQR
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX/8c14L0Z1ul5
 WDV+4p1yEHNd9MoPIyb63P2ITRzJ9jJtTyMza/TPBHqGiT9EnyhscHcV3siaR7/476IenZJ7FMV
 2No+Q56sEfrWX47mY0ID0qMONG8H2Cs=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDEyMDAyNiBTYWx0ZWRfX7nPV4NPVbasu
 HIFtbPZ4cCVB0OdlFZvO+tOiulBnt9Mmxtu42YjM7QadjpIPjdB6ScVH5M/7ePG5kcg6rsoIs6M
 t0uJYZpG0iPQ1oxWySrFKfL8di8nSZ78JcEq3w0K4DqgpjXkM3U0XyahduzoLEu5PUSwwQ3NrIB
 +5q7DESGffxReWzFyqr15XyHp1n9duz1qpzZGhyUfYZ8UlIsw/CG4rH+E3NK/d9iXYqybQYNYV8
 tzzxOKw/+hnDoeFKb+voS2xf+pVeAFTgsj2SORz3+HNHiyjcLZI/ie8gaUMaF4BP5Iz55OWsukp
 4ElCxlioPspkmyDd2yroYrvNK/igizC6aACdClu6aEbYIPrtw84rK4JZX3xXWpQ0yaVOuf9liP9
 1KD6GAR1ogayzBBLJcCB9nFiAyITWGu/13GkvCWVU3wlZziT9WTi9Xy570tS8IN7L6V1CLxuQIX
 pUFDXDB767iIT/vYwCQ==
X-Authority-Analysis: v=2.4 cv=AsJ7T+9P c=1 sm=1 tr=0 ts=6acc8214 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=1CCqUJFLb0VynuEnu9gA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: ZqH_Ao0ylT47faNlitidilNBJqufptQR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-12_02,2026-10-09_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 lowpriorityscore=0 impostorscore=0 spamscore=0
 adultscore=0 priorityscore=1501 clxscore=1015 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610080000 definitions=main-2610120026
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_234541_261186_7DE4F73D 
X-CRM114-Status: GOOD (  17.92  )
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
version 2.4.0, which drives test-enable and reset through the
TPG_CTRL_CMD register at offset 0x1f4 instead of the TEST_EN bit in
TPG_CTRL and the TPG_CLEAR register. Its output is routed into the
CSID 1080 RX through the CSI2 TPG mux, so the CSID selects the TPG as
the data source when a test pattern is selected.

Add the TPG resources to the Kaanapali camss resources so that the TPG
subdevices are created on this SoC.

Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
---
 .../media/platform/qcom/camss/camss-csid-1080.c    | 15 ++++++++++++--
 drivers/media/platform/qcom/camss/camss-tpg-gen1.c | 23 ++++++++++++++++------
 drivers/media/platform/qcom/camss/camss.c          |  2 ++
 3 files changed, 32 insertions(+), 8 deletions(-)

diff --git a/drivers/media/platform/qcom/camss/camss-csid-1080.c b/drivers/media/platform/qcom/camss/camss-csid-1080.c
index 46e443e05195..851b3cd712f5 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -63,6 +63,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -140,6 +142,7 @@ static void __csid_reg_update(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -148,8 +151,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
 	val = (lane_cnt - 1) << CSI2_RX_CFG0_NUM_ACTIVE_LANES;
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
index d29de5f93c18..cabbb2638cf3 100644
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
@@ -164,18 +167,26 @@ static int tpg_stream_on(struct tpg_device *tpg)
 	}
 
 	/* Global TPG control */
-	val = FIELD_PREP(TPG_CTRL_TEST_EN, 1) |
-	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
+	val = FIELD_PREP(TPG_CTRL_NUM_ACTIVE_LANES, lane_cnt - 1) |
 	      FIELD_PREP(TPG_CTRL_NUM_ACTIVE_VC, last_vc);
-	writel(val, tpg->base + TPG_CTRL);
+
+	if (tpg->hw_version < TPG_HW_VER_2_4_0) {
+		val |= FIELD_PREP(TPG_CTRL_TEST_EN, 1);
+		writel(val, tpg->base + TPG_CTRL);
+	} else {
+		writel(val, tpg->base + TPG_CTRL);
+		writel(TPG_CTRL_CMD_TEST_EN, tpg->base + TPG_CTRL_CMD);
+	}
 
 	return 0;
 }
 
 static int tpg_reset(struct tpg_device *tpg)
 {
-	writel(0, tpg->base + TPG_CTRL);
-	writel(1, tpg->base + TPG_CLEAR);
+	if (tpg->hw_version < TPG_HW_VER_2_4_0)
+		writel(0, tpg->base + TPG_CTRL);
+
+	writel(TPG_CTRL_CMD_HW_RESET, tpg->base + TPG_CTRL_CMD);
 
 	return 0;
 }
diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
index 63030a0659d4..5db7e12a6f86 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5858,11 +5858,13 @@ static const struct camss_resources kaanapali_resources = {
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
