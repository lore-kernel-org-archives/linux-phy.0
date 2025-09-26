Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50F1ACAC5B8
	for <linux-phy@archiver.kernel.org>; Fri, 26 Sep 2025 07:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AQz2YS7eQrUXx0z/OUCFWFKmGKyRHvDaxCe/iC/6lFk=; b=UkQD7eyjWoMYTS
	XuPI9CimobCSuARhtmISipkzNvmTENO1UpAEqykx8UcCDOxIgWnF/j+ZQnOJ9r6kBuETamGrGjkc0
	/JA3Dsbz1it6HVG9IGdcaJGUE7YHkAh8bzG0ftAH5piEZ3igT613ODC2TT42z04fFHm7pA6cUT2Nh
	fx4SckMA7ht+B+D9Rw6UdHtyOXKUmg/rIvpnqdgNsiAZeHjDMt0nxqG9XuqIUNj98ezgKFOeWNvQ8
	WGtSEwqz1noEDyXxhaPWJKbMilij7PGR8FtfebqM9p+rQ8U5WStSalYmf9QpqVewtsMc82gwz4UEN
	Qt1y72p0RoDUvoh/vGIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qq-0000000Gl78-0N3E;
	Fri, 26 Sep 2025 07:26:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v22qn-0000000Gl5j-3fUJ
	for linux-phy@lists.infradead.org;
	Fri, 26 Sep 2025 07:26:43 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58Q6tLwP021646
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=; b=lcdzY8+45Q584zCA
	QRnxVJrPlZktq2dplon92ol7t5p473evyuZmuab1of/TrftCyoOCQ05DSkkvE0Jj
	pKNBPkuhqNjCXLcUNzrIT2utJjxvR/0To/zz2QJh+dWHN7aNk5w6AkpT4tnVEpcq
	x02xFHYNPf4Ep4Csc0d5V/N9fvjDs1rD75x6qBvk/tEZlFeDjvQcFKyt7l/XkuCv
	OKeT9XEZ6/oxA5m1odjRCj4aenCl5BcGvNwCYnfu55OkVPCEiEG5ymtR7gE9RSuH
	TgqTNRYCNP+5XwXE0FPdmfrS2QkE5+JQuWh8HB56sUc0GP5Lx6Wpt9YYKLt89T0h
	p6mJ6A==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qsvqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 07:26:41 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b554a032e39so434973a12.3
        for <linux-phy@lists.infradead.org>; Fri, 26 Sep 2025 00:26:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758871600; x=1759476400;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ph7HUhaBaiRojkAD3JbT6dqDUnW8cPmN0abiXHdzjwk=;
        b=rvs/diirEMCZGaTVMdUyoLtYSx6aRiU23jQgwFIqT5zWtJQTcCCIzo0bKdoguUZrSw
         O65RsyEEKKRivAchFaUVadk2mjePR5m0Ud23zrbYxtaKlopeztTDwCDMR+CHXMGfySKe
         xyjOwUMM9Pgm/uYTLzaZ8FEM+R8OO6CYRmK86WyiNbvuZmMdSAT7cNn5wvJsmacBKYbk
         BS4dznQQkf7Z49PipXkqTLRNrTC3d3a4T010zrieQlpmF03CyYBVhl42jbm+cVcPmOoH
         gYXekZvBh7k8kkVMWn9QLeB27+LTFWV5GTg7lq74sosLrPGiCGelW7iryV4RscZS6kia
         e92A==
X-Forwarded-Encrypted: i=1; AJvYcCUWdVFMLnlUJZjzROWrESJicWNTpzfygNgy6D+n+ke3FHX4/D9X4+su2RYlZUyBzQmfgFM2JI5gKOo=@lists.infradead.org
X-Gm-Message-State: AOJu0YxTzlduCL5GrENirwgIYaIiPOv91lBe/7v5gvffvGWG0yLTdU1k
	ZRtc/77HTPX6XcZOITTouoAv4JNtHpZ8ILZEuvQUz5FdlxqU1s6RNfp/OlNaHu+6dgjbiWmsmlR
	n1+Djtt+7X8TjkHrfJU+Ea+2DwbSfFCxX1CqyvKyEgxKIU4kJwVndzuwqBSPxmkeTlsX5
X-Gm-Gg: ASbGncs6Ho0LAwNuvbPEvRiqT4jXcMH0eG56y+t5CyS9yPARKm+0IsxXiAit3fidqwX
	S5VDMlPbziv6zx2mRWcYauVYbwpBzGN+IbQqINFm1LiAkEet96M38lKJTrA75Y50P1N6Qa3iI0e
	qorEr+KOZirbeZfLiAVwzsTTDIqJkWyA1RhtB1PNvrSyHNSywZnXRp2Hib4mNnsWRIL33N3/BrL
	OAa9pNVV3vSCueQppnvZj3ODoVLUW239zujTKsTWauWk06je8Nbs5XG6pf8NoFLOnN4gSrlKb7F
	uBxW8RhNqE1QfrqgElI1o79mpzWuj4An0vLtlHHlofLHdWAjHJitUmgTehHL6LsMh4xxv4vQHTr
	o6fHe+kH7g3dT7GCtzY9mN7tl3o067sJHnNQ1ehwfhE+BUmtdbriyzNVq
X-Received: by 2002:a17:902:e886:b0:274:944f:9d84 with SMTP id d9443c01a7336-27ed4a66e4bmr41068365ad.11.1758871600548;
        Fri, 26 Sep 2025 00:26:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHODL/foIPc/vImOn8UziuC4Zpy7ZHgp1f2EJiz+aCgHOwhMhAgQuOtz8+uUG2x/ioV5tv2Ag==
X-Received: by 2002:a17:902:e886:b0:274:944f:9d84 with SMTP id d9443c01a7336-27ed4a66e4bmr41068165ad.11.1758871600028;
        Fri, 26 Sep 2025 00:26:40 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671d8a2sm45117985ad.55.2025.09.26.00.26.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 00:26:39 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 15:25:40 +0800
Subject: [PATCH v7 04/14] phy: qcom: qmp-usbc: Add regulator init_load
 support
MIME-Version: 1.0
Message-Id: <20250926-add-displayport-support-for-qcs615-platform-v7-4-dc5edaac6c2b@oss.qualcomm.com>
References: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
In-Reply-To: <20250926-add-displayport-support-for-qcs615-platform-v7-0-dc5edaac6c2b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758871563; l=5441;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=ScND5R19fNR4fxgqnX3CVdg+GNtnOHYJhlmcXMGybGg=;
 b=JilRW12/cwSKH9uXb4YCzsMzmAHwczV/dMTBJ0+x5D+EOLPW/ukmoNYlEdlvelT+23gPue8jR
 L3puGEnpVrzDKhlYwLo5EoTxfEV258QfbUpE/f35Qm9todR/cb0QfWr
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Proofpoint-GUID: nPCjiYQWlYb5MLbmp7fuI8yKn4_PzO42
X-Proofpoint-ORIG-GUID: nPCjiYQWlYb5MLbmp7fuI8yKn4_PzO42
X-Authority-Analysis: v=2.4 cv=api/yCZV c=1 sm=1 tr=0 ts=68d64031 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=6BFfyeCpfu5Dl7vuC9UA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX46Hjq6X13CrB
 Xfi3gnnZwKeNYMzXT+hswGizRPbOYa0oaT76TYMv7fsC5g4vJz509lzWvOx9tsfulFkDXpnkAcu
 hNL2DVL83H2ozowsl3MupFTJECWPcgyyEnlHdXD0qUXtvO42jgPF/JAMRIIkPXntw2lBfM2CgNA
 iMPvSp1gcq855bgrVvF+lL2H4Rnvjg0e3PcAMiAJ4maCTx8lgJKw5Zvk/PS4vz8pEMLahdBj6hc
 dXx+Vvq4sE4BQnqNKOTaBfJamaGA7T8U3HKVZxRHWWwZg6jYhuZuEL+nP8IHxQraVOcGcpopkLF
 Y5eNxDCc4qrpZUl+g0cZfsIw72++zJkIz3t6D/Vzntsfr+fqlrbykp7Gp8oheLpWP0XyBZVo91T
 vEeI1tshoqNqG6Wn2ZaeMpUy1yjy6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_02,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250926_002641_913328_8924D077 
X-CRM114-Status: GOOD (  18.59  )
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

QMP USBC PHY drivers previously did not set init_load_uA for regulators,
which could result in incorrect vote levels. This patch introduces
regulator definitions with proper init_load_uA values based on each
chip's power grid design.

QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
regulator requirements differ. A new qcs615_usb3phy_cfg is added to
reflect the correct settings.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 68 ++++++++++++++++++--------------
 1 file changed, 39 insertions(+), 29 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index de28c3464a40ea97740e16fe78cba4b927911d92..3b48c69f9c3cb7daec495ebc281b83fe34e56881 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -336,7 +336,7 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
 	/* regulators to be requested */
-	const char * const *vreg_list;
+	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
 	/* array of registers with different offsets */
@@ -428,9 +428,19 @@ static const char * const usb3phy_reset_l[] = {
 	"phy_phy", "phy",
 };
 
-/* list of regulators */
-static const char * const qmp_phy_vreg_l[] = {
-	"vdda-phy", "vdda-pll",
+static const struct regulator_bulk_data qmp_phy_msm8998_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 68600 },
+	{ .supply = "vdda-pll", .init_load_uA = 14200 },
+};
+
+static const struct regulator_bulk_data qmp_phy_sm2290_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 66100 },
+	{ .supply = "vdda-pll", .init_load_uA = 13300 },
+};
+
+static const struct regulator_bulk_data qmp_phy_qcs615_vreg_l[] = {
+	{ .supply = "vdda-phy", .init_load_uA = 50000 },
+	{ .supply = "vdda-pll", .init_load_uA = 20000 },
 };
 
 static const struct qmp_usbc_offsets qmp_usbc_offsets_v3_qcm2290 = {
@@ -454,8 +464,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
-	.vreg_list              = qmp_phy_vreg_l,
-	.num_vregs              = ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list              = qmp_phy_msm8998_vreg_l,
+	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
 };
 
@@ -470,8 +480,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_sm2290_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -486,8 +496,24 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
-	.vreg_list		= qmp_phy_vreg_l,
-	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.vreg_list		= qmp_phy_msm8998_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
+};
+
+static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
+	.offsets		= &qmp_usbc_offsets_v3_qcm2290,
+
+	.serdes_tbl		= qcm2290_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qcm2290_usb3_serdes_tbl),
+	.tx_tbl			= qcm2290_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_tx_tbl),
+	.rx_tbl			= qcm2290_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
+	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.vreg_list		= qmp_phy_qcs615_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
 };
 
@@ -773,23 +799,6 @@ static const struct dev_pm_ops qmp_usbc_pm_ops = {
 			   qmp_usbc_runtime_resume, NULL)
 };
 
-static int qmp_usbc_vreg_init(struct qmp_usbc *qmp)
-{
-	const struct qmp_phy_cfg *cfg = qmp->cfg;
-	struct device *dev = qmp->dev;
-	int num = cfg->num_vregs;
-	int i;
-
-	qmp->vregs = devm_kcalloc(dev, num, sizeof(*qmp->vregs), GFP_KERNEL);
-	if (!qmp->vregs)
-		return -ENOMEM;
-
-	for (i = 0; i < num; i++)
-		qmp->vregs[i].supply = cfg->vreg_list[i];
-
-	return devm_regulator_bulk_get(dev, num, qmp->vregs);
-}
-
 static int qmp_usbc_reset_init(struct qmp_usbc *qmp,
 			      const char *const *reset_list,
 			      int num_resets)
@@ -1097,7 +1106,8 @@ static int qmp_usbc_probe(struct platform_device *pdev)
 
 	mutex_init(&qmp->phy_mutex);
 
-	ret = qmp_usbc_vreg_init(qmp);
+	ret = devm_regulator_bulk_get_const(qmp->dev, qmp->cfg->num_vregs,
+					 qmp->cfg->vreg_list, &qmp->vregs);
 	if (ret)
 		return ret;
 
@@ -1163,7 +1173,7 @@ static const struct of_device_id qmp_usbc_of_match_table[] = {
 		.data = &qcm2290_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,qcs615-qmp-usb3-phy",
-		.data = &qcm2290_usb3phy_cfg,
+		.data = &qcs615_usb3phy_cfg,
 	}, {
 		.compatible = "qcom,sdm660-qmp-usb3-phy",
 		.data = &sdm660_usb3phy_cfg,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
