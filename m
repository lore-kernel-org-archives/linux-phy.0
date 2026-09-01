Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2C1FC624CF
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 09:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fbvAgvShWx6GLN7IFXrilkqr6Awc2QsuAgG5b1g3LfE=; b=AIoZMxtmESbXkk
	gJgta66+84NpMeGtySdErifF5Zjm4jGz/oE/2wN+L7dE8iSh9le+PIAen58lYbBhRtXoTQXrmH922
	MSCB3vcY9PR78cqgaFeggM0NoVI3LGka5KawFzKfxdPziYY4Bq54bor1CqqgoKrBP/KK9MGuFw7Wq
	piK0Qq0WbN8yA28vLk+Gzih+B7aVW4TrdkqVPkEq1WVJy27g35zEiHaHdNFFBc8nyPIbqHC1ukeFY
	uCV8diAoA1lp9B7j1w0xE6AtNgAFdR68b8yXqpAnOPgQMM6ZF+kUnBugwEK0qJ4S9JBbfPweGpxjI
	TlbJMYzDKKuUV/8Lej6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9Y-0000000BTfQ-2FBf;
	Tue, 01 Sep 2026 09:51:40 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1L9V-0000000BTel-37ps
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 09:51:38 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 681792dV705426
	for <linux-phy@lists.infradead.org>; Tue, 1 Sep 2026 09:51:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=yvIqketjobH
	8ByjLpcovcPUoBcVyIstp1NfXActfSbI=; b=R0M1kHQnejg3sgvxtM1gei7Y2dC
	cwzIfcuVmwpkkG9bSXAnMwzCLg9QYi/5g18T7WzWuCUOePSWeofyp6wrOrXtfxze
	08Lm+M0jO7M8POx9sI5lnF3kfGlY8v9TyK6wuYqxW9mBMylar5hS1+y1nj06UFyu
	jfKEn0c4HZT3GaeAlcbKUOpbsatnGdpUCcekYcki+0P0iQKE9XOna8fkpLA1Da8f
	R7KdXV5Vz16YMG9hT8kBQkyZ97dKPuqcB9K2xEw0c6/XNsOZHhuMDiA77EI6IrUS
	2+R/hmH34/DboNbTG4AvP9+/+JEsbXBay/pCjwXHTlwxY4bWBKyaxS/sgxA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gdrcsh5uj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 09:51:37 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-398ba5404d2so4024414a91.1
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 02:51:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1788256296; x=1788861096; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yvIqketjobH8ByjLpcovcPUoBcVyIstp1NfXActfSbI=;
        b=B1g9B9MuAQMSTwNE7PATb8oYjL0fop73afFrjQKFSoaDBs+vWlMFMUVzyR9GBnxBKd
         lEQj8BcTPTKcxHPKVJDyKcZZgRAubSgspEOrXnlxfW1klHHLU5m7etG2dFoNJ7Y+Je1Q
         /NKZemF3+ys3Ig3z518kbfZ+oaqGe3BLCIp/NSfrcipY48jmk7nt5rO31QbsWAohRsuZ
         tIBF1xtsadjbhwCrh1b1uChpgfhP+ZBOClYCmGoDMSiCuFu4oCJ9GQWANxBRyrtSr9F5
         zThwHOYdAdKVCMrWbPDNRMuAk0c+7x34cNLbdvZyUCsHdS0NJS95M9sU5Su3fci78Nyh
         GrzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788256296; x=1788861096;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=yvIqketjobH8ByjLpcovcPUoBcVyIstp1NfXActfSbI=;
        b=F3W1DLns8YK9CD9evRoCNICNoc/73WgvSZZs5yuh4nZkzy+JFUglb3m+re0GBiKrvp
         LGZPw+Sm9q9/BD7JX85zFTsUnHi08GHdVHWvrlIVUHMSiUi1wDfI3EJ1xfJkzhCidQsl
         /4qaCsZaOYjQsLbZDVn7N8Lj3AGrTwuuxC8tiyGrJbBg2Zr7RwRvW2yL1h8K+VMpiE7j
         GliqXAoQ4PEcUvcYhigLKYtzBIEzWbMureR9IZoW2YVaU/psFz7EuvuZhekpw8s7y6jk
         jwuRpa43vXGdE0tToiwLCgVlkXucGDhWTqxIg5ob4zOIuNMoPwKY5u7yynUgYQdfopzh
         hkxw==
X-Forwarded-Encrypted: i=1; AKwUvByKxM+q+hIEzH2DmM6uyEmUmXF54bKL7W9kC1e6VIa2o6bSa58yDLnWpD/kUCAVCRKYBFY+ETjQUZU=@lists.infradead.org
X-Gm-Message-State: AFuF++l4yilU4lYcKyIhLOdEQpCRUsNKhxhHNTqfGLCEHO0KHXRVmS2p
	n+EKc4e/oGi1EW5u2RKcnrU3JJZHe6l8WESZOE0US3mCpQtt9u3XK0XOcR2iQvQUkyOyTOrqix7
	r2/AKj6vwD4GP9P75cL7lkt4ni80sK/9jwgj0UKnMQlT/psxG2Jy9NLRv26NuudEjHG46
X-Gm-Gg: AYBFou0o6lhfmvcUbJVuV7uJ3FFyLbx2kgOLSPa5d4hIEFZvIcHBWMmleG3kzBAoVS/
	XXE/DkbAWrW3eFtAsgZjHuarfN3BBkAEcWMALIjh0R0X4e0QbGLJn10bBodw13yK/W9KAWFidZd
	1bcU+TKAzRe8e3I1RrkR7Yy7oLvGmkTwlOnL85PNPeQNnMMGzn07JFmG+xfno/liFwiEsLRqVkT
	fVX5VHVjKbCuZ5w4nstMmSM6Zwc901UV/xPuOaLImHYAL4e97I7lqYHkRDHLnXdOWCwhS2zODHP
	cIDfS8cFJId7wq4f+/GeUondbHrgWo7b9QfyP2XWBGsmo/MR5GoKX12/lB2RLpN65i6g85Ac7JT
	INZYH42O15rzF3ufm+wmIdyDJ/PrFEoeX/LTegWLkJqpkXHpP12kmWdo8bhvM
X-Received: by 2002:a17:90b:48d1:b0:398:9be6:f996 with SMTP id 98e67ed59e1d1-39907e07947mr10536663a91.21.1788256296350;
        Tue, 01 Sep 2026 02:51:36 -0700 (PDT)
X-Received: by 2002:a17:90b:48d1:b0:398:9be6:f996 with SMTP id 98e67ed59e1d1-39907e07947mr10536599a91.21.1788256295859;
        Tue, 01 Sep 2026 02:51:35 -0700 (PDT)
Received: from QCOM-aGQu4IUr3Y.qualcomm.com (i-global052.qualcomm.com. [199.106.103.52])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3286fa37fa5sm40641466eec.29.2026.09.01.02.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 02:51:35 -0700 (PDT)
From: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Subject: [PATCH 4/4] phy: qcom: qmp-combo: Add USB3+DP PHY support for Nord
Date: Tue,  1 Sep 2026 17:50:55 +0800
Message-ID: <20260901095055.42229-5-shengchao.guo@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
References: <20260901095055.42229-1-shengchao.guo@oss.qualcomm.com>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfXzq/biNwyTsTd
 zMPgWARkjqXBLhyxlDqXQANeSMKdkYewu7yHo8xJkEUIzm/YssoHhK3pUGKQ+sv3b2OHC9EqvCm
 t2faSBwAtTQghV9rYcNvwWds8U0prLw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTAxMDA4NiBTYWx0ZWRfX6qD9e1VyXOWZ
 Ona2q/3Unpn+42xPC5zcn+xB06CDZAypx7llp2rpSiPXTTUCN7GBP0yxj9LQiZ99Ki9Bztl1VWV
 w8llTFZhOhNo4twmskKDXqeYTmCfhSQKgid2y+KMzNdIkiurHij3Rr94LfKmNXJsaKzCJzNabES
 FlDkWfkOasNesaJboXX23FKOIuQrXD2PS2J4f8LnpIfLyynA97UPrIX7bHnJt7NllNm2BobEFah
 B/UQRLbBTbGpo+1Yca7ht5DC2c1wlgFOp7zTmQxwfw4lV3Vh6fSlo+r+pNOOBby4T1YToOd0Ntn
 XHOXDbCWtukW+bTZE4+ZC90A6dtGEV6cCQYwoOT36ODtMrOvFpK7XnEIjQ00s8uDvZVlXxuUYKx
 GUZuzGUFsUs4xVxInHi6635Ei0TSsUt/y+4163mXQoxd8fkPegggTENLZriKFmbi5rQdmZln55M
 YYvq6vsX3Q51obTzdvA==
X-Proofpoint-GUID: jOe05jOgHFNCyN-wD0TykXct4glLi8K2
X-Proofpoint-ORIG-GUID: jOe05jOgHFNCyN-wD0TykXct4glLi8K2
X-Authority-Analysis: v=2.4 cv=QsNuG1yd c=1 sm=1 tr=0 ts=6a96a029 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=b9+bayejhc3NMeqCNyeLQQ==:17
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=FLXYr6s3pwBVFqJ0MywA:9 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-01_02,2026-08-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2609010086
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_025137_790396_99F4DDB3 
X-CRM114-Status: GOOD (  16.49  )
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

From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

Nord SoC provides two USB3+DP combo PHYs. Their initialisation sequences
are identical to sm8550, but the sub-blocks are not laid out the same way:
Nord adds a dedicated USB3_PCS_AON region at offset 0x1e00 and leaves
everything else where sm8550 has it. None of the existing offsets tables
describe that, so add a v6 table which is the v3 layout plus usb3_pcs_aon.

Populating usb3_pcs_aon changes where the driver drives the I/O clamp when
entering and leaving autonomous mode: it now uses the real AON region
rather than falling back to PCS_MISC, which is what platforms with no AON
region do.

The offsets were confirmed against the Nord register map for both PHY
instances, USB3_DP_PHY_0 at 0x088e1000 and USB3_DP_PHY_1 at 0x088e4000.
USB3_PCS_AON_CLAMP_ENABLE sits at offset 0x00 of the AON region with a
single CLAMP_EN_B bit, matching QPHY_V6_PCS_AON_CLAMP_ENABLE and CLAMP_EN.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 66 +++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index c39ced168d03..de82c7107c92 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2690,6 +2690,23 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.dp_dp_phy	= 0x2200,
 };
 
+static const struct qmp_combo_offsets qmp_combo_offsets_v6 = {
+	.com		= 0x0000,
+	.txa		= 0x1200,
+	.rxa		= 0x1400,
+	.txb		= 0x1600,
+	.rxb		= 0x1800,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1a00,
+	.usb3_pcs	= 0x1c00,
+	.usb3_pcs_aon	= 0x1e00,
+	.usb3_pcs_usb	= 0x1f00,
+	.dp_serdes	= 0x2000,
+	.dp_txa		= 0x2200,
+	.dp_txb		= 0x2600,
+	.dp_dp_phy	= 0x2a00,
+};
+
 static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.com		= 0x0000,
 	.txa		= 0x1400,
@@ -3394,6 +3411,51 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
 };
 
+static const struct qmp_phy_cfg nord_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v6,
+
+	.serdes_tbl		= sm8550_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
+	.tx_tbl			= sm8550_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8550_usb3_tx_tbl),
+	.rx_tbl			= sm8550_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8550_usb3_rx_tbl),
+	.pcs_tbl		= sm8550_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8550_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8550_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
+
+	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v5_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+
+	.regs			= qmp_v6_usb3phy_regs_layout,
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+};
+
 static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5359,6 +5421,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,hawi-qmp-usb3-dp-phy",
 		.data = &hawi_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,nord-qmp-usb3-dp-phy",
+		.data = &nord_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sar2130p-qmp-usb3-dp-phy",
 		.data = &sar2130p_usb3dpphy_cfg,
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
