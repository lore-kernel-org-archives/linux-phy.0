Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51AF8107BCF7
	for <linux-phy@archiver.kernel.org>; Sat, 14 Mar 2026 05:14:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hkckai9ILtGavoJzYtK5XzfmgVOfsJ04yJPFKSL7iVc=; b=QtAvxPlHkHa20G
	OtXxPlsdoJAxXyUKqz+wJSzmemaPLqgf7yHrsmOfo/2KxpzCkbpEXeQxMk9DdSuPOdFHNb5iFBHp/
	DZeGki5XL2iuivEJ4ZpUx+PM49WCuoFMrgPH264Y6kCNFZtXJJWkbzSL2YMo77JuFyR8DY/l3tit/
	0zW9h2CwiIqOOOEl2vJmktkyhyuWj1YqXwirVew7LckieI8B+zVyXsH3c1r8ooWcgNgor5hzHAauo
	J4lL7RLIFjjH7+jHmkupbenRk+WNdZw6q24UaPgehD7T4t41BRaXAIQa61xJrx2U30+D5MrD6Loim
	8ir/HJ3IAa/6i3vLC7iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKn-00000001W6q-3dap;
	Sat, 14 Mar 2026 05:14:46 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w1HKc-00000001VzR-1s1z
	for linux-phy@lists.infradead.org;
	Sat, 14 Mar 2026 05:14:44 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62E4dRK24128169
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=W+O9wnUc0BV
	uNOqySW59HE3hd1+OnCD6FN9BarAEYVk=; b=oUKq/TBhLPLk85a4QdvGAwgNHwa
	EbJ/yzPRBPplSuT2brKkWzD1DEzhvGVDT7Su9G0iJdjQOtYK/aRQInSmiOa9vuBj
	dJTfE+LdOLoYAm2+J2Je7OhFDh0vrdit5//mAIx40BpT9XHELLQTTJOPBzS3Kpeo
	FijodJFHsGZPmGCGv0j8M7k400xqlqLJ1nl/L6S/wrKTZ4tNOV63vG3Q+7wSR/X8
	CEjZNt6Bx36D8NuQRpTJ4h9sBjtJ93eZxXORFR4ol1+ofTZEoB7CH3NY4JNsu0mm
	vlpcG0TftkEgUXBhXSfqBmlVVOcQ5bRBenGtvsqz6AvpLTEMm63+KRiKrLQ==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw0udg1t4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 14 Mar 2026 05:14:33 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2beace83f92so754568eec.0
        for <linux-phy@lists.infradead.org>; Fri, 13 Mar 2026 22:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773465273; x=1774070073; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W+O9wnUc0BVuNOqySW59HE3hd1+OnCD6FN9BarAEYVk=;
        b=NTA+65av6akX1QkANDtgWgcVC+ziWTzr+oQ8cgE+kiWCjhiVBNggMAeDjnhauVYPWB
         fir8yR5B4AaFtMWPdFfR+nvWOVSCiqRepGkKUezBeIFKRhaaeHJuOZmc0MEP99+knAp7
         10L5GYmNmLPDKDGCoDOVx3OdhdxGK5LhhHiTQWaVQwNX/4AnFutlinGhNLfWeQeWNndC
         5Ha8OljlGxLYZ7KjydtyfmwGsvVNit9S2H866du1iKifO7TlCUAwyE4/orK2PMz3KKhI
         6zC0/b2qA3tjOgk5tQmEr3kjT2UG1SPB/jpl54LcYzLH937Wqq40X38o1kfrChC3qlkp
         7/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773465273; x=1774070073;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=W+O9wnUc0BVuNOqySW59HE3hd1+OnCD6FN9BarAEYVk=;
        b=NZMgYL/tcod0AKriOBEBD9MlF+2bZpqn6GI+nqG/Ue9Xz6Np3u+Xv8UiB0DazV7SmF
         eAaUuzUvvuW5GDVByDLudHjEVhUEcf2BEmyLp3QHP63s9JHUHinATHVPOwUkHEEhVlb1
         4DJQcV/qpVGnhZi7LaS3VVE7WGZUbMtrcWPByl/6tXggTul9q4m4TQQxO2PiGi9gQXCQ
         bFDLkgI6oxdyFWuIYj7g8SSzKY8vBTaCWhks9IKBNVqLtH4Lhh6yh7teWUAegAq/Gby3
         uEmOwi9bV5RJJiDBVudqj1oyvjgZasGFsZPRnnpry+d/UJAIr1e/sjHNgAgLo5fwF1jl
         lSmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWyzQCupixMUVFQoyB2H65PlyBcVjN7AZFgT9DNFPpcAOxbX4inWIZ+P0A+d6WQPmLHBNPbLxgj+Vg=@lists.infradead.org
X-Gm-Message-State: AOJu0YzVYu/RqVBUnoocdqbLpJuJ/VGHT53fFZc+wactJ4Ve3df78O2z
	ulDSJrjw0Xvq0IVHGHM2H9y91oCmNtbsGjVA7j2KwbnFCXLeD3Zsc5/OfoiwqYXIeN3gCxw663D
	JHsU5Q3q3LqczXAU8/K/BxKbitwHS65SUfuJbhJVzMn2NMTs1U6lHyU3Ltz0DNe3uw0HT
X-Gm-Gg: ATEYQzz20UAT1ECR9cXruFE6zXoF0071ld+RWaxcaoTEMSWhUuy9XWSxDOGnRkM9p9g
	+v0duY/v9rRLM1ve+ebCTBWjVfFD25eK5dKa6CJdOcvXH7iNVpvnK+LHrECKvscycB3Ux7SZDKu
	W4qzBENfnovPymCERyxF1o9w77K4A7bWtbwC4kQRSQbP00hFQ6uUv/Hy+IC+s7boopjastbeenq
	14tdN/VwAsnyIyWoTS5+18YsVvgPfjQ/FEvOJvHk8hQAaej2tpJFbqpuiNdmBpuRykrmVCNQRy+
	GXUKFEmg0cgYiODMAIR2PdRpBPq9AgZALTJJ6LamyE4YTRDK/B/3uGqgvwGaym422WqWioCq8ek
	VWoN7oozWVfePooLUpTn4BF1jMmgTIb/XWwx8WiSj7Uk6fUjVjqjbOTfFUBuWeIAU5uYw6/VSCY
	hf5m8Hyw==
X-Received: by 2002:a05:7300:bc19:b0:2b7:fdb6:ccc2 with SMTP id 5a478bee46e88-2bea545498fmr2542589eec.16.1773465273342;
        Fri, 13 Mar 2026 22:14:33 -0700 (PDT)
X-Received: by 2002:a05:7300:bc19:b0:2b7:fdb6:ccc2 with SMTP id 5a478bee46e88-2bea545498fmr2542581eec.16.1773465272819;
        Fri, 13 Mar 2026 22:14:32 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c098cbd4dasm1784045eec.0.2026.03.13.22.14.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 22:14:32 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 4/6] phy: qcom-qmp-usbc: Rename QCS615 DP PHY variables and functions
Date: Sat, 14 Mar 2026 13:13:23 +0800
Message-ID: <20260314051325.198137-5-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
References: <20260314051325.198137-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Authority-Analysis: v=2.4 cv=BJ2+bVQG c=1 sm=1 tr=0 ts=69b4eeb9 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=BQofoxfB7IYdQntn66wA:9 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-GUID: KRQhs9EJlO8GJZo4ZdKue7DJtEPxHrgf
X-Proofpoint-ORIG-GUID: KRQhs9EJlO8GJZo4ZdKue7DJtEPxHrgf
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE0MDAzOCBTYWx0ZWRfX8Nyk5gJttA/A
 /k81+9z9sPKAK3azhmoeIKtnvuoiDWohCTlxeLqwY0Wi8VwLFJyGcSSXg5YIwCK2xF2lOrl7g+q
 J3fJPD6q9bJ1aDuwgJp1Pwp/Gr+pnvWEWV50G8yl/gaF/3CajuAaXw0nTQm/yc3amsGFQG/VVcf
 v7GrZJPTC0mcy5koK1JxBaNRL0nPyRQp/MdRbVOntCser5ZSdzMXK+xpVCpprFH2oU3mi+1ynkj
 OhEIniBZA14mBTWMoRaAaxTXXOG0hCzWBJOm9PGehZ9ALW4N9ev5yrIKwqJqu75uIJmkbQBjiWi
 QDqFaGpa3ritSCKr4pvYfFT2xUFV9ynyjN+heE8TmrEiV/tQOlbKH/xd1Z7rpCjDdUdIytafsaK
 /veNPCUkStb4LctcruDc9unbySAptTMBCe8jv8WmK6yDlVMIQnLlUdNSF+XvOfR8IeVFbQ10ZPW
 NQ2WJZpI2bD2H1BzuqA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-14_01,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 priorityscore=1501 phishscore=0
 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603140038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_221443_041759_E387FA02 
X-CRM114-Status: GOOD (  12.76  )
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

Commit 81791c45c8e0 ("phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY config
and DP mode support") chose to name  QCS615 DP PHY variables/functions
with qmp_v2 prefix, by assuming that QMP PHY registers are versioned
as a whole.  However, the reality is that the registers are versioned
in sub-modules like QSERDES COM and QSERDES TXRX respectively, e.g.
QCS615 DP PHY has registers of QSERDES COM v2 and QSERDES TXRX v3.
Thus it may cause confusion that qmp_v2_xxx table and functions access
QSERDES TXRX v3 registers.

Rename QCS615 DP PHY variables and functions to be prefixed by qcs615
instead of qmp_v2.  This better aligns with how the driver names USB3 PHY
variables for QCM2290 etc.

Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 66 ++++++++++++------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3f8c4280b933..edfc1ae68f49 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -290,7 +290,7 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
 };
 
-static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl[] = {
+static const struct qmp_phy_init_tbl qcs615_dp_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SVS_MODE_CLK_SEL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_SYSCLK_EN_SEL, 0x37),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CLK_SELECT, 0x00),
@@ -317,7 +317,7 @@ static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_CMN_CONFIG, 0x02),
 };
 
-static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_rbr[] = {
+static const struct qmp_phy_init_tbl qcs615_dp_serdes_tbl_rbr[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x2c),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DEC_START_MODE0, 0x69),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START1_MODE0, 0x00),
@@ -328,7 +328,7 @@ static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_rbr[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP3_MODE0, 0x00),
 };
 
-static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_hbr[] = {
+static const struct qmp_phy_init_tbl qcs615_dp_serdes_tbl_hbr[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x24),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DEC_START_MODE0, 0x69),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START1_MODE0, 0x00),
@@ -339,7 +339,7 @@ static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_hbr[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP3_MODE0, 0x00),
 };
 
-static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_hbr2[] = {
+static const struct qmp_phy_init_tbl qcs615_dp_serdes_tbl_hbr2[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_HSCLK_SEL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DEC_START_MODE0, 0x8c),
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_DIV_FRAC_START1_MODE0, 0x00),
@@ -350,7 +350,7 @@ static const struct qmp_phy_init_tbl qmp_v2_dp_serdes_tbl_hbr2[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V2_COM_LOCK_CMP3_MODE0, 0x00),
 };
 
-static const struct qmp_phy_init_tbl qmp_v2_dp_tx_tbl[] = {
+static const struct qmp_phy_init_tbl qcs615_dp_tx_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_TRANSCEIVER_BIAS_EN, 0x1a),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_VMODE_CTRL1, 0x40),
 	QMP_PHY_INIT_CFG(QSERDES_V3_TX_PRE_STALL_LDO_BOOST_EN, 0x30),
@@ -555,14 +555,14 @@ static const struct qmp_usbc_offsets qmp_usbc_usb3dp_offsets_qcs615 = {
 	.dp_dp_phy	= 0x1000,
 };
 
-static const u8 qmp_v2_dp_pre_emphasis_hbr2_rbr[4][4] = {
+static const u8 qcs615_dp_pre_emphasis_hbr2_rbr[4][4] = {
 	{0x00, 0x0b, 0x12, 0xff},
 	{0x00, 0x0a, 0x12, 0xff},
 	{0x00, 0x0c, 0xff, 0xff},
 	{0xff, 0xff, 0xff, 0xff}
 };
 
-static const u8 qmp_v2_dp_voltage_swing_hbr2_rbr[4][4] = {
+static const u8 qcs615_dp_voltage_swing_hbr2_rbr[4][4] = {
 	{0x07, 0x0f, 0x14, 0xff},
 	{0x11, 0x1d, 0x1f, 0xff},
 	{0x18, 0x1f, 0xff, 0xff},
@@ -641,10 +641,10 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
-static void qmp_v2_dp_aux_init(struct qmp_usbc *qmp);
-static void qmp_v2_configure_dp_tx(struct qmp_usbc *qmp);
-static int qmp_v2_configure_dp_phy(struct qmp_usbc *qmp);
-static int qmp_v2_calibrate_dp_phy(struct qmp_usbc *qmp);
+static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp);
+static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp);
+static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp);
+static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp);
 
 static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 	.offsets		= &qmp_usbc_usb3dp_offsets_qcs615,
@@ -660,25 +660,25 @@ static const struct qmp_phy_cfg qcs615_usb3dp_phy_cfg = {
 
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 
-	.dp_serdes_tbl		= qmp_v2_dp_serdes_tbl,
-	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v2_dp_serdes_tbl),
-	.dp_tx_tbl		= qmp_v2_dp_tx_tbl,
-	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v2_dp_tx_tbl),
+	.dp_serdes_tbl		= qcs615_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl),
+	.dp_tx_tbl		= qcs615_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qcs615_dp_tx_tbl),
 
-	.serdes_tbl_rbr		= qmp_v2_dp_serdes_tbl_rbr,
-	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v2_dp_serdes_tbl_rbr),
-	.serdes_tbl_hbr		= qmp_v2_dp_serdes_tbl_hbr,
-	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v2_dp_serdes_tbl_hbr),
-	.serdes_tbl_hbr2	= qmp_v2_dp_serdes_tbl_hbr2,
-	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v2_dp_serdes_tbl_hbr2),
+	.serdes_tbl_rbr		= qcs615_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qcs615_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qcs615_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qcs615_dp_serdes_tbl_hbr2),
 
-	.swing_tbl		= &qmp_v2_dp_voltage_swing_hbr2_rbr,
-	.pre_emphasis_tbl	= &qmp_v2_dp_pre_emphasis_hbr2_rbr,
+	.swing_tbl		= &qcs615_dp_voltage_swing_hbr2_rbr,
+	.pre_emphasis_tbl	= &qcs615_dp_pre_emphasis_hbr2_rbr,
 
-	.dp_aux_init		= qmp_v2_dp_aux_init,
-	.configure_dp_tx	= qmp_v2_configure_dp_tx,
-	.configure_dp_phy	= qmp_v2_configure_dp_phy,
-	.calibrate_dp_phy	= qmp_v2_calibrate_dp_phy,
+	.dp_aux_init		= qcs615_qmp_dp_aux_init,
+	.configure_dp_tx	= qcs615_qmp_configure_dp_tx,
+	.configure_dp_phy	= qcs615_qmp_configure_dp_phy,
+	.calibrate_dp_phy	= qcs615_qmp_calibrate_dp_phy,
 
 	.reset_list		= usb3dpphy_reset_l,
 	.num_resets		= ARRAY_SIZE(usb3dpphy_reset_l),
@@ -744,7 +744,7 @@ static int qmp_usbc_com_exit(struct phy *phy)
 	return 0;
 }
 
-static void qmp_v2_dp_aux_init(struct qmp_usbc *qmp)
+static void qcs615_qmp_dp_aux_init(struct qmp_usbc *qmp)
 {
 	writel(DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
@@ -774,7 +774,7 @@ static void qmp_v2_dp_aux_init(struct qmp_usbc *qmp)
 	       qmp->dp_dp_phy + QSERDES_V2_DP_PHY_AUX_INTERRUPT_MASK);
 }
 
-static int qmp_v2_configure_dp_swing(struct qmp_usbc *qmp)
+static int qcs615_qmp_configure_dp_swing(struct qmp_usbc *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
@@ -864,7 +864,7 @@ static int qmp_usbc_configure_dp_clocks(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static void qmp_v2_configure_dp_tx(struct qmp_usbc *qmp)
+static void qcs615_qmp_configure_dp_tx(struct qmp_usbc *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	void __iomem *tx = qmp->dp_tx;
@@ -884,10 +884,10 @@ static void qmp_v2_configure_dp_tx(struct qmp_usbc *qmp)
 		writel(0xc6, tx2 + QSERDES_V3_TX_LANE_MODE_1);
 	}
 
-	qmp_v2_configure_dp_swing(qmp);
+	qcs615_qmp_configure_dp_swing(qmp);
 }
 
-static int qmp_v2_configure_dp_phy(struct qmp_usbc *qmp)
+static int qcs615_qmp_configure_dp_phy(struct qmp_usbc *qmp)
 {
 	u32 status;
 	int ret;
@@ -977,7 +977,7 @@ static int qmp_v2_configure_dp_phy(struct qmp_usbc *qmp)
 	return 0;
 }
 
-static int qmp_v2_calibrate_dp_phy(struct qmp_usbc *qmp)
+static int qcs615_qmp_calibrate_dp_phy(struct qmp_usbc *qmp)
 {
 	static const u8 cfg1_settings[] = {0x13, 0x23, 0x1d};
 	u8 val;
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
