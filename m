Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5BD65FC72D2
	for <linux-phy@archiver.kernel.org>; Mon, 23 Mar 2026 07:15:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJ90SUCcBj7DZXeCH6TwWPDTQZk20NQAkUHqG5R0sGA=; b=O1bYaFQL4BCTYU
	sSngCC2uz6KILjLgtsxSczHKin4/6YDO0SUpbMUlTHObMN/3v8g6Bq4I7U/YS34sfqCHwmNIoCwyz
	Fhp/+Zgl3+P0zQ6CbmLzCRtL/QIg2q+RmW+xLBA4j2eJF+daDK4YkbRFlreWTtEiYzGCUoM4Q4erZ
	NFMTrrGnRR6yfqD09r62sopb8ZdEaTXj3GrQHRndbOC7/b9XMcvBjdGLYtsfY0xIJuvwbCGLdmB2d
	pLDLJ8y5/ue+Sak1tcoMhxPH7aQezT0xEwVPHr2z41De/2dJGTrDUk1iXPY+z8RX6/4SLZ7s2YC7n
	lrVuoegZO9qgWL+WRbTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVo-0000000GAth-0EM7;
	Mon, 23 Mar 2026 07:15:44 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w4ZVk-0000000GAq7-25Uo
	for linux-phy@lists.infradead.org;
	Mon, 23 Mar 2026 07:15:41 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62MLFq0H1862232
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DyA2/GBUswWyqK7lPIZi5AAheFIz9RV+IBewUuyeNsw=; b=Vq/EmhE2LRIB61V2
	F5AXE/rSeLSImj0Ig6gi+rjKWyS5wp6RWsi824KFlUoD6wj9jMd8LlFjNU13OnPA
	qcrJytO4lzhEGuWDv/VEzWsYrlEOtZzea0vQWQqnTTkoFIpFDOuysvmZ9G9yPZao
	i0ZhQKT16sin3GX51GQM+EzitEcbp0nAS3cxOEwRrQyH4xjO+Wz8QzP35MZUz9Sl
	2oNdaKU58OgkIbAcTNSitxK793jIxIR287FqFNWmhdMa9eis+lfvOiTW94WOansG
	46cS1boyd2FlMODwh8eg+LYVmDp/iwAch95RXdP7o3HLUd+hflHu/gO/PG/PRAkr
	IBw/vw==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d1kduc7ee-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 07:15:39 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2c109ba1296so6846138eec.1
        for <linux-phy@lists.infradead.org>; Mon, 23 Mar 2026 00:15:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1774250138; x=1774854938; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DyA2/GBUswWyqK7lPIZi5AAheFIz9RV+IBewUuyeNsw=;
        b=bG8wDCLdesSLO9+VMDmGY5wQDxk6/Wv0paEgJS1xSgheO8PYxNZYkc6yqsgGLxlWOa
         VAJ2i++Lo6soGhvjbgQ3CJ1SgKUqkaTplYiuGwNJ0samsY12RPFM0C/vENk8gP2HxWBm
         jZ3QJBM3dUyS/S5UyvXt3h7XJ1xnWiz54qGqqPZKHRfV34oVm1rCld/PWl0jlhoy55NX
         H4gK1M2gT6c3Xq0L5m0eR2f5UBzEL9bE0JhyOX9uCgZHaEGuhKOaLAMcdiHUmXCKgkJN
         //bxfsiJG/o2OD1uaqG1EIhPLBK5/7cycnWp8rEXPp5NVX/n1ZW8ZMlaD6a7qz1wX3Fl
         3eYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774250138; x=1774854938;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=DyA2/GBUswWyqK7lPIZi5AAheFIz9RV+IBewUuyeNsw=;
        b=jauPQY8yvfDRVoA7zdZy2iOr4Q7/nqjaXvT1HKyug+ztQRVtSJC8W9PYOopFMEOmxw
         EaWKLf87n5s3ED3DH6cCjgiWX/AnOnMQroCY6bZMpPOIcJgaHF8APw35IzKU8zJFgt9T
         feN3npV8/PYLHGfWX+RrxVjjFqtsMrzBTU8zbnW84woj10xCDZn8GcHR6VTI+kai/lKK
         NZFFaGAYp/5MAE/TisXX+h9Ogkr76Xla4OJVZQ5ur2GL7hHkTWA6BiBAFSLRRcqUquwJ
         5znRdPryHJa5yoeGRvTM2Ws3OCQA6/E6N5JTiXDSu2NU7XsgA8tR2f0OkW1uSu/bCuYy
         HxVA==
X-Forwarded-Encrypted: i=1; AJvYcCUA0Hqh9TVLODiurwkRU6NyS5luRMwFrImDuy+VqNn2HBgHEvjyescX/JfJnavmW+7iE7OeF2B9kis=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzH0kAFflLGo8XsKv7q66+JWpCdDbJpB9iCdbTOgDxhkHtuJkZ
	vR9cgRlPFCi5z2RFMLHjPh4jWyZyTlO6SZv2MGW9gaMcvMHY3qtapfpxHbDGEiIPg/rxVKnqeUX
	xm9gnwCmyZtZ43skkQOMIOo59V0zEL2b4EA8NnvIjRqoTZIzne/WbPy0cfXeghkgU+aRy
X-Gm-Gg: ATEYQzwDi56mJOHGcE6luMS/E6vWuVH9zZ6m+Qcc/xwkmCkH0JjoBpDdUtNCosafUKx
	5v1kNv8jJGxnd2hA7cEHDp2NiWZ1BzOJuTTFZIdw1pO+2aydnRMP4SSJCC7JOBc/TQhk/U3pdCP
	ObRY+gcz0GjhvPq/Y62vbPv3Yzu2cdqnbRFmDbODVFmDl6dxPjo0fo241firA8HjqQs8N5peV5T
	xxcRS9o1nsWJi01U7OnQqgMcb85/ophy8FQzz0ReK5iWpYMXbUGDAfAYRUR06mXnnNKKgSG8KUE
	qzNf46SpBdCCn4kc/iZODsq33xodv6i/ujhL6MmgwuosU8C5APtJgqrvY8X97jAOBG+AC1d9Rtk
	u06TY1zP45y53w40UgHluzOT1CcN5ASicneEXf0CprTxJXUGufi33+GOKwcvOWTNNDNjn
X-Received: by 2002:a05:7300:d50f:b0:2c1:23d:c73b with SMTP id 5a478bee46e88-2c1097c1a67mr5306452eec.34.1774250138273;
        Mon, 23 Mar 2026 00:15:38 -0700 (PDT)
X-Received: by 2002:a05:7300:d50f:b0:2c1:23d:c73b with SMTP id 5a478bee46e88-2c1097c1a67mr5306444eec.34.1774250137709;
        Mon, 23 Mar 2026 00:15:37 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2c10b14cadbsm13997886eec.3.2026.03.23.00.15.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Mar 2026 00:15:37 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 23 Mar 2026 00:15:31 -0700
Subject: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add Gen5 8-lanes mode for
 Glymur
MIME-Version: 1.0
Message-Id: <20260323-glymur_gen5x8_phy_0323-v2-4-ce0fc07f0e52@oss.qualcomm.com>
References: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
In-Reply-To: <20260323-glymur_gen5x8_phy_0323-v2-0-ce0fc07f0e52@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1774250130; l=2780;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=ZiGLm9+oSWgzXrpOJ1svwFM4yASEfqBDxFjXKTyaJxM=;
 b=PcRacB6pSJVxw7Koy22WvzFFIvGHWro7XrJ2AhxlvVYDiL1LNVZe0Fb0bYO2I6mXQ8K2jMqXy
 vshQ/rNhhaEDJQn0pLSr6qO9UJeUM2FjYeKORjWxlxiDmaA3U/f29UR
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzIzMDA1NCBTYWx0ZWRfX8WqKj820vfXz
 2a1IglfbNDOEjpG0sHcQOFUAcGuEVh1DW9u2TsGY6S0o4e7GhT0ZL9FQAeclZMsg/G2kx5Vjtlp
 9E9g03WKBjsZsv/HrjgmANQiVHb8qh1CuSIOvtC05DjkRRO7Y64OSiCyVOYJme7iEQee3yJafuC
 wyIV/xLX8BNDnfFEvIzuAFMP0DtPcszxcHcCA+INOwgYgm3Z1y4dMIBtVcWLTfbr2Q7e+cxmop0
 q6m3yrPbxw7okZS1+11CHqQOATQLVmvp94c9Thqps+EIspwtTAZJo0SoQ1KZi4FmM/t9v5ERv9v
 tukCBB4K3kv7BRcaDP5LpRLyCPtU4bO+Cl47SH+dFdVk75fDefTsD6xA20AIlk4zRJNog4KovCu
 YguJalL0s92AoIYKe0JxHofz04ZmBbJHcuN5RR1tI4bP4m43SX3Byl5D3tpXoxL3Ivvz1YkJ1D3
 kX5886PTwc+Gf6SHrqQ==
X-Proofpoint-ORIG-GUID: s_OzdR9F20xUbrCevyWbwxHwcT5-9OCE
X-Authority-Analysis: v=2.4 cv=Q4DfIo2a c=1 sm=1 tr=0 ts=69c0e89b cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=OKc3O2-h_waFBcwqEmQA:9 a=QEXdDO2ut3YA:10
 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-GUID: s_OzdR9F20xUbrCevyWbwxHwcT5-9OCE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-23_02,2026-03-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 spamscore=0 impostorscore=0 malwarescore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603230054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260323_001540_682764_774BB8FE 
X-CRM114-Status: GOOD (  12.61  )
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

The third PCIe controller on Glymur SoC supports 8-lane operation via
bifurcation of two PHYs (each requires separate power domian, resets and
aux clk).

Add dedicated reset/no_csr reset list ("phy_b", "phy_b_nocsr") and
clock ("phy_b_aux") required for 8-lane operation. Introduce new
glymur_qmp_gen5x8_pciephy_cfg configuration to enable PCIe Gen5 x8 mode.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 51db9eea41255bad0034bbcfbfdc36894c2bc95f..e872b50b11da50e6317ce7e1acf6385925f92cdb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -3376,7 +3376,7 @@ static inline void qphy_clrbits(void __iomem *base, u32 offset, u32 val)
 
 /* list of clocks required by phy */
 static const char * const qmp_pciephy_clk_l[] = {
-	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux",
+	"aux", "cfg_ahb", "ref", "refgen", "rchng", "phy_aux", "phy_b_aux",
 };
 
 /* list of regulators */
@@ -3401,6 +3401,14 @@ static const char * const sm8550_pciephy_nocsr_reset_l[] = {
 	"phy_nocsr",
 };
 
+static const char * const glymur_pciephy_reset_l[] = {
+	"phy", "phy_b"
+};
+
+static const char * const glymur_pciephy_nocsr_reset_l[] = {
+	"phy_nocsr", "phy_b_nocsr",
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_qhp = {
 	.serdes		= 0,
 	.pcs		= 0x1800,
@@ -4705,6 +4713,23 @@ static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen5x8_pciephy_cfg = {
+	.lanes = 8,
+
+	.offsets		= &qmp_pcie_offsets_v8_50,
+
+	.reset_list		= glymur_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(glymur_pciephy_reset_l),
+	.nocsr_reset_list	= glymur_pciephy_nocsr_reset_l,
+	.num_nocsr_resets	= ARRAY_SIZE(glymur_pciephy_nocsr_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_50_regs_layout,
+
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5483,6 +5508,9 @@ static const struct of_device_id qmp_pcie_of_match_table[] = {
 	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
+	}, {
+		.compatible = "qcom,glymur-qmp-gen5x8-pcie-phy",
+		.data = &glymur_qmp_gen5x8_pciephy_cfg,
 	}, {
 		.compatible = "qcom,ipq6018-qmp-pcie-phy",
 		.data = &ipq6018_pciephy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
