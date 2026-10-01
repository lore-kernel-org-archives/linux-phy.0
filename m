Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38A5DCA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3KU2x9cxmAIoToBHjENNXqgfIH9TR65zrgDeDlMQX6Y=; b=bFHZlGkxKj83Nh
	serWdVyUZvXYODexmPCmTeou/I4kgJv7AVAtFpdpOOh5eR6b4sOiRcaKaHjzHzo69cZ3d5hVMkqbN
	THbwP7geqA6BXadNcIvKpRz0/66vnM5euJXpiTqVW5UYQ5HxKqMP06zifRKPrzgqHFe+Z+ch7PWa3
	uRtOQIy/obKV41EmIgevNoQjxyO+kf3245yCmIeQt4d1jrHISJrarrl1uQW026we6aW7qqNLwgRDy
	tm6rZv5aDAyE6+fRL44KWooRMuXGshd9jeZaeZo418706qhVx42Fdr2q70d0kch2vq2VtT88YIIdM
	yp4YlMvIqlwAoYLdfIFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCL-00000008Nzs-3spK;
	Thu, 01 Oct 2026 09:35:29 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCJ-00000008NyV-1GHE
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:28 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xgdJ1511971
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JwSHg4raT3Dkw6LFbknjcwqxCfchq/p2PlFzorw7TjI=; b=YF2oXfSst4P5Jc7I
	luC3QWq00PAmcFpGW6oGgIPg7BX/4z32AGVOGKTWeHiOwsSUmwKcfS1bzak0x9cb
	XtpUiX+65fV1xBwu2rFJkBce4etJandAEHvLG2tdleU8j2eK5RAMqwJoEtpOo5ly
	CBhKUmBRLDBrGPDT7jYyByx7pjGiHvZWQnT0G1xZHyLuXKTys/TWjIO+rygbF8XZ
	zSTYVJKtUpHGmquGh8ZQBN0CMk+phNHanzZS2vFtRH0cZI1/ToRF+CVhC3wynwnC
	DtvjtmJwrKXBD/TruKGbax2zD16q299b/KPMFkjvqwtaVOKfwroZmlVTw8N9QwA8
	0kwZZA==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h188stwpa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:26 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-38f57e31b6eso4544536a91.1
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847325; x=1791452125; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=JwSHg4raT3Dkw6LFbknjcwqxCfchq/p2PlFzorw7TjI=;
        b=KgbR6eydcUIKf4NMsuNMuaQW3ShgmZF6uxfXqE9L/7xnaWvyYQWLXUDyC2sHuTp1Mx
         7qKTkKTbXzublgw7dWp5DlyN8uYH5Snjomcev3suuFPrjaGftw4VDWPvZ7MV21e29XDS
         +XgwqIERnC2LI3BC/e6QRRut66S1rZOsZ1yy9MlGluxdabDd8pfWcPJgQ4pjv+It6Lxo
         8vru9K//DKyAeekbTR7bGLIwGAFHhzi1B4bQOxBTvATWNNJx77MMW4jc08ngKxTu+uUA
         nNdX8gCYdK/PyDy6Nw8yQKpPUOD5mPC2bGS0g0gpdja0S915SUcnKsvdsZz6IDewkd9p
         gCuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847325; x=1791452125;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=JwSHg4raT3Dkw6LFbknjcwqxCfchq/p2PlFzorw7TjI=;
        b=w38570D3Jw2PrY/HXbi0Tjzc4AKf12cnizV/5At6utPqP1Z9Nm/VCncM3nKMcBzP6Q
         HQSL80FCdyExv49U5R+AZpSaKu4y/R4Gsd2h2Qlo8a7bHl/kzEdUn7uaiJ50ar/t3FeU
         X7OWjVvmU/yt7J8dMC77n5WF1sFeM63CLE/NxBPXuGRQi3zMCZIl3vKT3cYD+X8Twm9l
         Smts7LMnipRV8T+ULUZPI9ifDmaR2Y1K99xuMCx2aivNQC2sH9aj0fiZFrd9wg2Lok5c
         tL/Ghz6vjkOkK2xmn77JtGtRZuu/T/tYdWkMhLMFqEi2kVO/Qvm+eNUrAWB1HLZgGDM0
         ibjw==
X-Forwarded-Encrypted: i=1; AKwUvBzgQJ2+qzCPQOujDh8rMxbAG3FbsD26Da//LjxJCP+bjxX50/haM128ZllwR/OFue9t16pTWm2asSo=@lists.infradead.org
X-Gm-Message-State: AFq9FYKNFuEGePfsDU69W647+zhgD6i12pk8iuV+2eJ/lg/vk/5VeEGq
	SxRwNdfwPHm9MfJkZW3/mZQJ55P5crEGF8MfDWA+GUUvJdsQ7Wl+b02i3Np7krDk7wMhM7QdXPv
	36iuDygM/BrgNGw0cb8v21hQzstLbUTbhhMXIhjQ8DEQrsYzG3OOS8nPpef5Uj6fX/Xc1nD6OjL
	/g
X-Gm-Gg: AYBFou2cwcM7P76ymXKt06C9DwgrtZVZwBh2Jwns7snGAf+5W2R+dtD9eKGVdU8VLt8
	aKnXzvRWFa7/49NT9xWdWbwDmUzMwVmtMBvuVAg6XYYBvVZXdFliykLnpALXVaSorZKOqQF7YJk
	B4k1q/UlRQnFoyZpIBdmGtc7ANrjkFeITgikkqBZK+D+tp7hqKTTStSDQmzvrDfSrew3uuGqNG2
	/HellrqHFrliiBuwYYWKenJdIvDTJVEiTuf//Uxfq8ELNAoz1j6RBvocgqZaC7sAad7Z3Oi/WkN
	VfhgzWnmzLSoHJYue/PvwC6XdVC5EcSUSMkCnAkrAJn2M3dyXjUW6I2IOsYuCuwsieT+p6yoe1c
	MAq6KM80y1bmBsldeywpk6mBCb74=
X-Received: by 2002:a17:90a:149:b0:3a4:fa1a:2b1d with SMTP id 98e67ed59e1d1-3a4fa1a35f4mr708512a91.62.1790847325263;
        Thu, 01 Oct 2026 02:35:25 -0700 (PDT)
X-Received: by 2002:a17:90a:149:b0:3a4:fa1a:2b1d with SMTP id 98e67ed59e1d1-3a4fa1a35f4mr708485a91.62.1790847324645;
        Thu, 01 Oct 2026 02:35:24 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:24 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:23 +0530
Subject: [PATCH v5 06/11] phy: qualcomm: qmp-combo: Add v8 PCS-level drive
 level tables for Glymur
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-6-3848c2615d5a@oss.qualcomm.com>
References: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
In-Reply-To: <20261001-glymur-phy-v3-v5-0-3848c2615d5a@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=3546;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=Bg7So6W6SSHdhH1ngRtobHeH5BfbMCRmb6ie8ZY7Cpg=;
 b=YQFHPKiMusQDKsQMs5eONpuz4yVhuTl80MO3aHSH0g5cb8eQe3ZGMSR48rYRSYePieanVJDx2
 Ctr41tL6pE7AOkjpDL4Rc2lyUpMR/KzMVtRlI8dmUmtNLjZwrb3c3kB
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX5+FMBxcQ5Dh7
 b/SBjDXhx1hNCxQYLy/nSDwmLMKJB1/RXlzBotIjfnkD0m+I5utAA8E6r9I7lzMBT4cXp5EfkH1
 MuJk+5zZbRkiS/iiRrz5Cf+dDI78MOA=
X-Authority-Analysis: v=2.4 cv=OozaWC/t c=1 sm=1 tr=0 ts=6abe295e cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=pJ9Jp-POzqCVGtXzzgwA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: JC0Rf-J_bQVxJg5csE3TIxlTsc_q1rBq
X-Proofpoint-GUID: JC0Rf-J_bQVxJg5csE3TIxlTsc_q1rBq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX0bHZVTZlZ+Ue
 3nV5woIkRKlG3Wvnd93unsF2mpePVdd+E0aWIIRhgKhdr2ElmCmCekcfXJlVHc7jyEllWBQ3Vb3
 2dJN9T3eyiZXMMI6OB55SCIK0etz6BMzNTRPAMv5KslZbFaJ3keU7wOpNmRln8IXvrkpzTbfOqo
 IbgQnpNiuaJ/ZPRm7KN1fE01L+9BOW7ytE5DQDZZUUdwMyq6O4VtSk01w94Oe4466iAMNZRLsau
 eIQledPRSYriDWyP9eul7meVZKf7guw1LOZynUcLilh3HYl89V6xDU+jBIwmrTiIR15rwO8I1Hi
 wiBtPwZ7mRKRxDgQSQoProwRgspT3pa/CSwFQClL+qwnBPUN0gIsh7EI9oM9GoM93iofie5/lG4
 M5evSxZHK+F9thdzJtsUjwaQu8WGiS7PUblTMGooIGMgP5Pa+64Yb42cukKRKCD9ttk5LzKFnq2
 PZMeKyXgR2NNkrz2WMQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023527_468962_B371FC91 
X-CRM114-Status: GOOD (  14.75  )
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

Add PCS-level drive level tables for the Glymur (V8) DP PHY:
- qmp_dp_v8_ln_drv_lvl_hbr3_hbr2: LN0/LN1_DRV_LVL settings for HBR3/HBR2
- qmp_dp_v8_ln_drv_lvl_hbr_rbr: LN0/LN1_DRV_LVL settings for HBR/RBR
- qmp_dp_v8_pre_emphasis_hbr_rbr: updated TX_EMP_POST1_LVL values for
 HBR/RBR

Add ln_drv_lvl_hbr_rbr and ln_drv_lvl_hbr3_hbr2 pointer fields to
qmp_phy_cfg to allow per-platform PCS drive level table selection.

Wire the new tables into glymur_usb3dpphy_cfg, replacing the previously
used qmp_dp_v6_pre_emphasis_hbr_rbr with the corrected v8 table.

without the correct v8 table following issue can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP combo
mode entry/exit

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 33 ++++++++++++++++++++++++++++++-
 1 file changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index ebe2e6136f7a..5446b8333a1e 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2464,6 +2464,30 @@ static const u8 qmp_dp_v6_pre_emphasis_hbr_rbr[4][4] = {
 	{ 0x22, 0xff, 0xff, 0xff }
 };
 
+/* HBR3 & HBR2: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr3_hbr2[4][4] = {
+	{ 0x02, 0x12, 0x16, 0x1a },
+	{ 0x09, 0x19, 0x1f, 0xff },
+	{ 0x10, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+/* HBR & RBR: DP2_LN0/LN1_DRV_LVL swing settings (PCS level) */
+static const u8 qmp_dp_v8_ln_drv_lvl_hbr_rbr[4][4] = {
+	{ 0x07, 0x0f, 0x16, 0x1f },
+	{ 0x11, 0x1e, 0x1f, 0xff },
+	{ 0x16, 0x1f, 0xff, 0xff },
+	{ 0x1f, 0xff, 0xff, 0xff }
+};
+
+/* HBR & RBR: TX_EMP_POST1_LVL emphasis settings */
+static const u8 qmp_dp_v8_pre_emphasis_hbr_rbr[4][4] = {
+	{ 0x20, 0x2d, 0x34, 0x3b },
+	{ 0x20, 0x2e, 0x35, 0xff },
+	{ 0x20, 0x2e, 0xff, 0xff },
+	{ 0x22, 0xff, 0xff, 0xff }
+};
+
 struct qmp_combo_lane_mapping {
 	unsigned int lanes_count;
 	enum typec_orientation orientation;
@@ -2552,6 +2576,10 @@ struct qmp_phy_cfg {
 	const u8 (*pre_emphasis_hbr_rbr)[4][4];
 	const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
 
+	/* PCS-level drive level tables (v8 / Glymur) */
+	const u8 (*ln_drv_lvl_hbr_rbr)[4][4];
+	const u8 (*ln_drv_lvl_hbr3_hbr2)[4][4];
+
 	/* DP PHY callbacks */
 	int (*configure_dp_clocks)(struct qmp_combo *qmp);
 	int (*configure_dp_phy)(struct qmp_combo *qmp);
@@ -3450,10 +3478,13 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v8_dp_serdes_tbl_hbr3),
 
 	.swing_hbr_rbr		= &qmp_dp_v6_voltage_swing_hbr_rbr,
-	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v8_pre_emphasis_hbr_rbr,
 	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
 	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
 
+	.ln_drv_lvl_hbr_rbr	= &qmp_dp_v8_ln_drv_lvl_hbr_rbr,
+	.ln_drv_lvl_hbr3_hbr2	= &qmp_dp_v8_ln_drv_lvl_hbr3_hbr2,
+
 	.dp_aux_init		= qmp_v8_dp_aux_init,
 	.configure_dp_tx	= qmp_v4_configure_dp_tx,
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
