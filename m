Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E7D606B53B
	for <linux-phy@archiver.kernel.org>; Sun, 25 Oct 2026 03:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=g8koM6uUMY37/Gf0VesrUeQGlJ6wxjrwduLmpycMKi8=; b=jhqM3gfvUGzPF7waLdLAImC9X1
	KcpCJEqNm8/PkawpzJy4TA7pe0xVtQkgj/ydeSkwBw1qjfkRgcrN3+N6/jcgcAZHEwl97bn12b6CX
	HIMZhPx28eq8MDFcGmAjiBoLngXwg68jw6anAPkJ3hEwHevURWvBamYFNIdl9hi9bMS9RpccW2gmv
	1nuDr8p5nY1MIi6szBvf1MQetHSU2QR2cZYqMuXJ6KzijifIZSvlZWucgDIcXmgePRGzzVnBncJkq
	kPx2wK4dnGccjWwzhHBwmmzOJM1uxxvNr/lu6zW4C37rEcr38Y5evCa7SArqN3tXtrddLNcLytlXd
	0eiJB8/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojv-00000000gr3-0wYN;
	Sun, 25 Oct 2026 03:17:43 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKojq-00000000gmZ-27qi
	for linux-phy@lists.infradead.org;
	Sun, 25 Oct 2026 03:17:39 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69P16PWh3075584
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/2hOVnJgU2YYsTWcNQEbWFWVbrTdtgCaqJitAByw1aA=; b=GY7uEl/XfU7cvSDY
	1mwiQFEsI1sj8T+9cyXLpmVj5F1M4g33l4/ZcyCR/1axDT4F6py8nimooC4IphZg
	7FiS5wWc4hVAgqwzyQ6OozZwoiXekhyMCigWPT2VAva9OFLgoBGXxGh5z3UM3Q9a
	xI+XXM5CNBvhuif/+cmSAi3wvhJndoDUMYVE203cKNntmCU9TZYDMrkrYIb7gH8p
	dG6PlwAXzRKjrykyOyFJBexdtKumIx0lgFEaarqAZ+2Bug/Lo9kiv92f7+6uAKzf
	xDA3w9t7zsQPd900XRM1Xyvz1s7dajoHHcj30+dG4s1Kr7cXDcfxpWRJeYLD3g0x
	PEJDhQ==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hgmruja4a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sun, 25 Oct 2026 03:17:37 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30bcb065bfdso3512093eec.0
        for <linux-phy@lists.infradead.org>; Sat, 24 Oct 2026 20:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792898256; x=1793503056; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/2hOVnJgU2YYsTWcNQEbWFWVbrTdtgCaqJitAByw1aA=;
        b=HdCBiJabd1HVkNF8djeAuSODl+fXwNr9r3SHfj40GcRcl8O6hE4d/Q2TTIhXCcHmk3
         zy0HTobw5Her8L17xTJ7PWFa5jSoFHxOrS9kS4u0M7ZT07N9o3SAl4yTbSPcwtp/YbR/
         CpfB2fHKFHPNgWMLv5gGEMyQbrKUxJJ12JXXXUlvBd63CNIbAqOqTpaSce0fRPd2/Wa7
         e88mzBKGAm3ryvuZGmzV776XYvxKjLWQNwPEFZ6sbxFGRGZOH/7bf+6L6c42e9BLdV3e
         9b+cHyArztaPjzx2s9I4sNHl7qk23GHMgQthJdnWG0aNPFSkyzhXPSfgRBUMlUlZg7O5
         nOLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792898256; x=1793503056;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/2hOVnJgU2YYsTWcNQEbWFWVbrTdtgCaqJitAByw1aA=;
        b=cDgVJrmhS7QMVlxxrfIoQRTzfQZlqb7PaydyYjjR8+IbhYcndc2DxTDoUoI+TN/J0M
         b5ZLrnXRL2ouonNtPvWdkg8J+U8MnS9RoS+AWjgUw5hqcTlX2LyWz2Rn464XjvF1cfV9
         hos3/cD1lHLCY+ktp5m4euhu2SeLxDycm/Pp4x/FsX2zkyhUgX2W5VW5kLUmmR8bYnac
         DsA8O1CpfpIYflBSg6aPK4Yo+tN8GpIkilpECGAVhhE0hdF8BfTqG8Rxwhkze+Ol0Z5c
         5IvgEbAZ4TTj9Ovfuq4Wr43XWu3T/vXFF//7G18rFrc3ZY2K6ivqrYWmybJJt+E03Bf+
         86dA==
X-Gm-Message-State: AFq9FYKuNMfXVnKvotqNJrXH3T3jV6CK2SkK50LmM/+Has9CrLF/XbIo
	lrcG1y/9+ShID0oWxDSPngaNVb5cfD2WRomTXJ2uoItBwoHHP53fn/5VUc376xNbtKeAw8P6vMJ
	CBQRsHaclp0EZLzkJEHlL9XwbAF6L/eRsXyoFEiq9dFtMcRBEhT3CWUFy3ByWH+TnPfe1
X-Gm-Gg: AYBFou12WGLbsS6ZWA3/3pd9UmblKtBKTBVWGhX1QeuvEnzQfeZiVZaDWBV2UJze2SQ
	ODQIxKKEI4aTSwapjK4eSe68ujBAvnSc/K3Zt1DSAV7zh39+cG2xMOFOiCfdXPYvRtA6HJfmzcU
	LA4L4z6hSx5oUXPXokS2CXZjmNihiuuXrPr99MhBzxu6jWEtnxvOnPGVl7grGyhrSUU2byvsv+H
	hzHRVx113ftQCrIXEZPjePI2cBl7XFqHCKl+d85ZqgjCdzWzyWm55dG9UqkmO+Ox/b9WpI6wccV
	3sbFqkJ8FvrmL9NJCmlzcV3aKnPmNJr2bfSq7eKUB1chXRXJJUA6G94GmGDnXh15XSRPdusnidD
	bQoSQVnL/yrFoz8rj1bV5G07IJSCO2H9JaaXpPE/Msnhq52hitCWntnmETkJTlvUuI8gC818go4
	rJKtU7WdwN+g==
X-Received: by 2002:a05:693c:2807:b0:369:eec1:1d7e with SMTP id 5a478bee46e88-369eec12196mr3405509eec.11.1792898255950;
        Sat, 24 Oct 2026 20:17:35 -0700 (PDT)
X-Received: by 2002:a05:693c:2807:b0:369:eec1:1d7e with SMTP id 5a478bee46e88-369eec12196mr3405489eec.11.1792898255447;
        Sat, 24 Oct 2026 20:17:35 -0700 (PDT)
Received: from hu-hangxian-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8ec50bcsm24133054eec.23.2026.10.24.20.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Oct 2026 20:17:35 -0700 (PDT)
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Date: Sat, 24 Oct 2026 20:17:29 -0700
Subject: [PATCH v22 10/14] media: qcom: camss: tpg: Add support for v2.4.0
 TPG
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261024-kaanapali-camss-v22-10-7da3ea49c8a1@oss.qualcomm.com>
References: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
In-Reply-To: <20261024-kaanapali-camss-v22-0-7da3ea49c8a1@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfX/Ar5nq6o63YI
 SmBjnlOoByL9WO42Ptvpr7e7xdeP8LC3Bi0FwTnEisy30Ggw02ux5ON+/iLz9UJQ1h4PjzNMsQN
 Fg9G2m1h8EAZrCMXGOgVUacaHmYy6Wy7YY2bKynHeHqlTob3AHwSLs0KrDsW+Es95B1WOx6APVR
 4uDxYmHBxjyIJ7/VXiEDuFKB3iDfXCB2dhIFurqJgokJvb9vJIuWSOzuZjpK8XrExDq1JpJ23em
 znoDhtRDEeKynO5YCRPmuEYMi6T7BrYwLNjYhgB7+PoX3OSaLJI9rCjDPTt3RS+gJxH1bB4zM8Z
 PYdV0Mx8W5RFvdW8cfnTIZRyx8g4Uep28riAunGktmuOlbHo9tBFP9SPqp0lfx0Dk0VlAQvkVQ4
 Nz+9Vu3/Rm9cLd2kuHdQWv3odQyTZZnkv9Y+/1FuwilKr3enN4E9SLpBURdX7DwJytNMXJvZotE
 v0o0jAyi4wj4C5JQLtQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI1MDAxMiBTYWx0ZWRfXzOnVAeW/UcLb
 hG9HP9/VWsgdlYDHjKgqrL8yihFlZKxeFWDR/LtIijkDDR08Qjglt+/5Yrwa8gtyk/EQxC28ni4
 VAVNbruhSWq62uV287t/uek8xzwL/aw=
X-Proofpoint-ORIG-GUID: YEdTGd_lvhkCCPwvboRF3opxLC8cx9C2
X-Authority-Analysis: v=2.4 cv=e+aT2qp/ c=1 sm=1 tr=0 ts=6add74d1 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=1CCqUJFLb0VynuEnu9gA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: YEdTGd_lvhkCCPwvboRF3opxLC8cx9C2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-25_01,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610250012
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261024_201738_675580_759C08EF 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

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
index 9830fa0f8d24..0b87ad0c1bd7 100644
--- a/drivers/media/platform/qcom/camss/camss-csid-1080.c
+++ b/drivers/media/platform/qcom/camss/camss-csid-1080.c
@@ -64,6 +64,8 @@
 #define		CSI2_RX_CFG0_NUM_ACTIVE_LANES		0
 #define		CSI2_RX_CFG0_DL0_INPUT_SEL		4
 #define		CSI2_RX_CFG0_PHY_NUM_SEL		20
+#define		CSI2_RX_CFG0_TPG_MUX_EN			BIT(27)
+#define		CSI2_RX_CFG0_TPG_MUX_SEL		GENMASK(29, 28)
 #define		CSI2_RX_CFG0_PHY_SEL_BASE_IDX		1
 #define CSID_CSI2_RX_CFG1			0x884
 #define		CSI2_RX_CFG1_ECC_CORRECTION_EN		BIT(0)
@@ -148,6 +150,7 @@ static void __csid_reg_update_clear(struct csid_device *csid, int port_id)
 static void __csid_configure_rx(struct csid_device *csid,
 				struct csid_phy_config *phy)
 {
+	struct camss *camss = csid->camss;
 	u8 lane_cnt = phy->lane_cnt;
 	int val;
 
@@ -156,8 +159,16 @@ static void __csid_configure_rx(struct csid_device *csid,
 
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
index beca4b827b32..e09d778feafc 100644
--- a/drivers/media/platform/qcom/camss/camss.c
+++ b/drivers/media/platform/qcom/camss/camss.c
@@ -5871,11 +5871,13 @@ static const struct camss_resources kaanapali_resources = {
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
