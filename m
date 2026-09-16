Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1960EC982C9
	for <linux-phy@archiver.kernel.org>; Wed, 16 Sep 2026 18:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4UXdjsBeJEotC+qVruKzvrbuB+YF6NvqObHP7w0c7Cs=; b=FDuiS8LlX1Kx55
	hE2I6H0HJFROtpA6OqsKjR6SNhB79PnqOhJEdyjCs//ep+WG3JMY+p+iyNtCqsst7oXCXpwoJWUuK
	54Iirveww3aiwOc4HWUYK48w25E+KgjPPspSje7W0zFmQcsc3Orf7OoJk9Se9obxqBPeBM6CUV3Kj
	CzjMFiFxT5Vkv41+0VER+zpoGqOJ6zEhZFENHS0/VuouhFxXudJH2acAlpuGje5QDqHxTH3jJFmx5
	SE6go4gyccG5JQLKAdVfdWoBiS3R02hSBlWWdt0MXwUHBGa5199oPKRQehj9Sav56XYxH/lAgiPhf
	obBFu2Adui+39xonaYtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPt-00000009xXK-3RNf;
	Wed, 16 Sep 2026 18:31:33 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6uPr-00000009xWt-38Lf
	for linux-phy@lists.infradead.org;
	Wed, 16 Sep 2026 18:31:33 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68GH3ftR3897301
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NO7b42YBwSn1pgx8rjlpajz93VqzR7OjhoiLHTqdiDI=; b=UieW6IA9653WC2f5
	VUWRAfJCYzXWz1NEXsSBpmDoz2iqz9/oH8VGUgeUxhGxFJ3TFO7XML4GbJ+t1BUG
	BR/0stofY60MzU3c5+hUgtRl5hrhVoLTARZXCFnIk4bLHiG+G8/zXgurzxQ2Ohdt
	+17PdWwpnS2Pg11vEOIu0XSJawd6TZXmQzpFwPCMnwxhKc7bAOt4q7NIVTMIeua7
	dStJHuzdmg/Zc3Lc1NG+r38cXZqTbbe9M4dWizsO5Y1Vay6z5KcFNRVVygOJfQMO
	j5M2HaWZGNBwUGojRSALeph7goCvMmwHSSkG1YAoPdAXsLjwEJjqrAMYpEHXccVs
	oNkpYw==
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gqy6arcjn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 18:31:30 +0000 (GMT)
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-804e73b36eeso11068067a34.2
        for <linux-phy@lists.infradead.org>; Wed, 16 Sep 2026 11:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789583490; x=1790188290; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NO7b42YBwSn1pgx8rjlpajz93VqzR7OjhoiLHTqdiDI=;
        b=ZuVWvy6bUqNqihbtbWCrCQ5DCXeXnqf7KQGF3tB6t7xbPK6p4bKx+Hs0YbjErYN4wq
         2Pzgzs0P36878pYPr+Ky7ejU8TaI1Sf2EAn3UBPv4WjQt9uOAe8U5UHdyx15/oH3bkMl
         +bfy4+l6Fd8TfJvUmekjqS6GQo20djbO86JGtcJXk7Tn3CSu+tIYIavynEpmYdq1oQjk
         d8gbMDTNr23L2UvNNE68xXBgo8BBVTDIQQqM4wSjIujxy/XFZW9S8bsljZSz0vJEgnyL
         sdLXzmg2N9DzojH1YBkqatQbmsZw50Qw9jJ9AJuVZZQ8tAAC7m6yclDrnHXluvQIkzP5
         UASA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789583490; x=1790188290;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=NO7b42YBwSn1pgx8rjlpajz93VqzR7OjhoiLHTqdiDI=;
        b=oZDY0ToUohR9aJSCXV1yhkt+t0QifYyMS4cOfLJml/6oqH4Gt/G8WDqS/274LQxY8h
         UOK6OjjSGDnIXueIf3inN3uXhGoEoAv/QCcMGBe+5umiDhLfMBqJX9lIMj/92iPBMOwS
         N5d4XP8cJDftwAm9wXyxBHiMaQMHGzlATzxP8r8IdXNOxqpx/22g6AbSa5pQPwR/nayu
         fgGdvdggoc62I1zU6LL44TGCDf40h2iIfzIHvTVBUsEnImAGZ1v/bJO54Dn9hS7KWpOj
         NDG1YD5XUr6HYb2Aut55oXELdhHmmoJQnXzAMm5HliEju+lgk623NpHt84o1Vj/NCW58
         Pkgg==
X-Forwarded-Encrypted: i=1; AKwUvBzqxGX47M6Qwl+NuJO4rkTiyKZ6Q093EL6XQHCuprpoi1QugjzwPHKEHND0erVn4vD3BzZvZjzq4us=@lists.infradead.org
X-Gm-Message-State: AFuF++kMQ86iwObcAdhaDSimHyqJE+ehSiX01PvzydQXyoWF5JJOSYws
	dixL7psCz6gSDxGK1eRpSKV4UmH/eg7F4PohRov7x00MYhFGUZUcAeIqvCnYQBCSHV/ReMbCJnu
	3f7urSinNHGUnQWeI+vmpVpdiPu162GKXWs6yP/jzXgyg9XM1z13xhhl4z21Y3Pl/sqxnHvtveV
	39
X-Gm-Gg: AYBFou2gf3z5cgpEY8Wqg9eG9PNmO+RZs9Na+lpz6zxOV33Rg+ers+UVPVG+2dpu1g+
	xt6SM4P7O5wjaPK299AZ7Rl+ib3J6Z9WtTujSAiy41YST5Ux0WZaZlmIOCyu+HwDsh90/i9cO5J
	S7q5TZHSzhkqaoT025pyj2In0+7GHDBWhPno8yj0kxJDdzUx5/JbSMsRWwVhWe/U+edtoAC0555
	JJULclCqf4pGD/5OgxGX8sGHNRJ/gbqdwt+73S3cFTkiyuk8RaSamtE89t0TIn5WMejIGVdlsxz
	pD5coYLvdFSjZIIhK3aQ/52Q9OzgdbYEaCcM10VoWmNu9dAaSqcKvqj87r5Spz8pesf7FPzRdKD
	tmKwlRMcc3w2XDzhrgFm9mTWX1b8=
X-Received: by 2002:a05:6830:6ad4:b0:7e9:e85d:2f7f with SMTP id 46e09a7af769-80b2ed5e057mr4641252a34.14.1789583489771;
        Wed, 16 Sep 2026 11:31:29 -0700 (PDT)
X-Received: by 2002:a05:6122:3c42:b0:5c9:a60b:e5be with SMTP id 71dfb90a1353d-5c9a60be881mr407924e0c.14.1789583477604;
        Wed, 16 Sep 2026 11:31:17 -0700 (PDT)
Received: from brgl-qcom.local ([90.161.207.100])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4870bf2797csm8625416f8f.16.2026.09.16.11.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2026 11:31:16 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Wed, 16 Sep 2026 20:30:53 +0200
Subject: [PATCH v2 3/3] phy: qcom: qmp-combo: Add USB3+DP PHY support for
 Nord
MIME-Version: 1.0
Message-Id: <20260916-nord-usb-phy-v2-3-2c8461bb30e6@oss.qualcomm.com>
References: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
In-Reply-To: <20260916-nord-usb-phy-v2-0-2c8461bb30e6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=5341;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=aEHAQHfBVivuua/vFIx06acVPmCqKszNmBVF///mHO0=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqquBpbyie065QQ6xUUU1da4CM8Qm9YBTRuxl9q
 1Fi8t21hNeJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCaqrgaQAKCRAFnS7L/zaE
 w/qiD/4mcX8AE7ot7L0NMUT829zd+LzbU+Emq9E2J3XKvbENIsbDHIcHMYdIxWA23AugQNO/Q2B
 Jd78I+8S8CFfxcUdpdx7PK47fxIWrOy1VvOAgfl1Kt6uHVWrDA7zsNjpmSQxeAlWLJbLqFIRidq
 oVGDFIGjSxLVW4LqjZbVtlY4v1jvH4utiOh0RllC+ec7XdEXyexuVSrqnwlqK7F82Ywkn7sD1qo
 clNao6tJfmvAy17qR0MIRQ3tnCA+xxvs2TiI98GqsRhgh6QTHJ0V/+7uuzJfX7bZEs9KY88Gx1N
 JAa6o33GdOb2ts7SOSIC/NCkLQ8fs8gM4Xe6Ra7GvPMNYPTZ1M3jjLIHncVRHQG1cEazJhRccCT
 NMgg7twwmzuA13UF7mY2LnZ6mGFXbvc356xtQBwAt8S4pzRCPgzkPobYr781whj+WH5ElpR9ax2
 CIe1GIll7Xyad27eQezHJZGY7LULPz+3PomENXPUgDf3qFWPbPIfXQdOLv53Xx9vP6TTWJ//jYs
 HoXhqM6LijPfNt+yolCZ14QtA4uyilweDBFwAenvak9qeWcl7DkvbXsGk28SiIX4Mxgc0HO6xoK
 lXxBCF0xuWixGoKagURq8O1XJ/WphI+0TrCs74saB5G0eFM51wohkp8zgCVb8hftKcHbRnA+FIv
 JIrGG5gUjIcLA4g==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-GUID: VOkp5Ntgj5soe9JHERwUo7MuRNlO7tel
X-Proofpoint-ORIG-GUID: VOkp5Ntgj5soe9JHERwUo7MuRNlO7tel
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX1eOGuXzi0sSz
 kVO87bk/Z12EcQMhAAwsQUqCWp/mymtd9jGjelKcORFJUHIAKN83M/lm1cgmgAs3IU+JQj5FbsA
 NkOrlsvpyTLZ2CZ8VFluL0eN4wsRBb5J++wWqJuiHkPz/YpEJIYqOXa7rbgDqKrpVWFH6gIh/cW
 yezRbF4KQlvfgB3Sihzxz85iOIF/p7fhB59wez4U5AMke9fEG4S5ThMFREQt4JmyHYjZHN1r2Fc
 b9d6LYBjJO14vmmjpwPefrJ9OKJb2E5p42oPL4HtvLvGA+ZIj8gv/4nCjv4dprfibadv4G/DGtC
 TeoiRmQ3XMkdZNKsGYBUtwCRjy3xIgbRtZGVJJYU3RNQRrSFHtYFA7afxtwZYkFGgcTwyUNkMJ9
 7Pb+JSXmCKCFb92mpoZ5kNoUWVZbLUWzCyoe9Idzn2PJaDhs23ITxPMeOUQFefxF4Z2HfaYU+8A
 s05p6Th2qLV4W1WnOGA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTE2MDI1NSBTYWx0ZWRfX8c0O+dwrDquf
 b2srUvnSrj0HiSt9Ncpv6rHXcqcnzrX8/sM5dKDrsIRhCe7Cx6V395McRvv7NXmkTw+qsYrA4dF
 eItdoKFwCaGF122NgkFDLbEsP4Lnu2I=
X-Authority-Analysis: v=2.4 cv=VIRIDNPX c=1 sm=1 tr=0 ts=6aaae082 cx=c_pps
 a=z9lCQkyTxNhZyzAvolXo/A==:117 a=BQ2oiuy6hHN+kKmom1QVvA==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=mRaulJff6YCFnxtsk_cA:9 a=QEXdDO2ut3YA:10
 a=EyFUmsFV_t8cxB2kMr4A:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-16_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1011 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609160255
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_113131_911045_B9987DF7 
X-CRM114-Status: GOOD (  15.88  )
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

Nord SoC provides two USB3+DP combo PHYs. Their initialisation sequences
are identical to sm8550, but the sub-blocks are not laid out the same way:
Nord adds a dedicated USB3_PCS_AON region at offset 0x1e00 and leaves
everything else where sm8550 has it. None of the existing offsets tables
describe that, so add a v6 table which is the v3 layout plus usb3_pcs_aon.

Populating usb3_pcs_aon changes where the driver drives the I/O clamp when
entering and leaving autonomous mode: it now uses the real AON region
rather than falling back to PCS_MISC, which is what platforms with no AON
region do.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 80 +++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a4f130fc33e3990e4101a710803bb4d0a0ed077b..c4e88b0384cb557f88f5af233f0568c7a93ab9cd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2356,6 +2356,20 @@ static const struct qmp_phy_init_tbl hawi_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 };
 
+static const struct qmp_phy_init_tbl nord_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0xf5),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_3, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_4, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_5, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RCV_DETECT_LVL_2, 0x14),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x21, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x05, 2),
+};
+
 /* list of regulators */
 static struct regulator_bulk_data qmp_phy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 21800, },
@@ -2720,6 +2734,23 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
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
@@ -3424,6 +3455,51 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
 };
 
+static const struct qmp_phy_cfg nord_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v6,
+
+	.serdes_tbl		= sm8550_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
+	.tx_tbl			= nord_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(nord_usb3_tx_tbl),
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
@@ -5621,6 +5697,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
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
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
