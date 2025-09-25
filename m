Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FE2CCAC5A5
	for <linux-phy@archiver.kernel.org>; Thu, 25 Sep 2025 07:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3L9PQX2z7jK2BqUuNG9aciWCGXVsOALcrdk9XddcXZw=; b=vTm5kIdTEz7yuV
	lNV7+SYXfcHR8vGGdcpWhKBT1fRI1GRH+tb2NVlEEG6KKewTRW9O4nLNDDWciuEJ8cuqcJ4WZzr9X
	5UJ9gABYxJtVIcZAYV1C1+rkfjXgga3CRUyT17DKIucdxHLGLp7HE4OtlhTAd5QuqPb2VjVq1ipvF
	Mpj1iQkpIiE34rmiyyP0mZh7RO3VnnCxtBSIYuSvOf4edFDQ8dYoQBks80Ji/cMZAcoGyjzGLc2Nn
	YOvu0K7YD6nRvYWCKrfnaY0DjSz/mKr/id8d4F/StdwbJDAz3GUA+/zpl7aJ5wMiY2ysZBNfYInes
	agGrrBz6DTc0u9ZidLvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3C-00000006YDz-1HJy;
	Thu, 25 Sep 2025 07:05:58 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1g3A-00000006YDT-1Q8E
	for linux-phy@lists.infradead.org;
	Thu, 25 Sep 2025 07:05:57 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4a9T8026667
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GrguMAXW+fsIhAkyrPq5HAaKMZ1Mc4h2NG633gQkApg=; b=h7wC7Db8Qy9+pqRg
	27cIvsmRzrzh77Y7Oni14zgKZ1z9R5KMU7kktkrm4RTLreYWhbJX9YwFFW3xpkw3
	X33ZSCuAtnjH+m2Gcmx0t4+agws4INoC9r0A7uqOfAFLfU+sb3gtwZnodkNFKTz2
	gMCqV5B2WHBcHQJVCHGChQ0lSglrVKZVyPoOGpkIVEIF2mmMZdtblruMcHvwO7kE
	XyjgCMTcp994DuWkv/2gqRaDao92xMk04VcKL8yCZ6Csaxh23OvKckYaVfpdFJyQ
	mLs20y/PXl0yOvtFDe2l4/k6vv5yD1kep4XiCmIDE+HRZ9svAGSymsxt5H3sRBNF
	j1dUaQ==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup0bv0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 07:05:55 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-32ed9e38bccso177772a91.1
        for <linux-phy@lists.infradead.org>; Thu, 25 Sep 2025 00:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758783955; x=1759388755;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GrguMAXW+fsIhAkyrPq5HAaKMZ1Mc4h2NG633gQkApg=;
        b=XrRvHE9DiAoR9/rQ2JVJe3yGmcuU5vgtVPfiQnGHq+y8Iu+k1CDloHm3Wqw0i5m41V
         qyio/6S3ijWEEwHJY/fcZxcASnwvOYGsXe5SXndG9ki65QYAwX/PbpoXzPu52UJVOQC+
         WC7Ex32cFKJ7xIT9LUggwBX+LrWA2vTCYIFtFqZr2chwEN6MM4Akpa8bx5zJEnWPR79Q
         ElckuZ83yMV/fsl/9xCcVzZIGT1MrBQ18UPR+BAEcfrH9yQW45bDSZ3wRUnyvGCKIstd
         XPq6NiybTkNzZJFPH8w8WuDv/Dol125TwiNLz7GXkjznsOJ8Z3vBo6/wGImH33ZS2bhy
         0DXg==
X-Forwarded-Encrypted: i=1; AJvYcCV9oZT5hy/NnSt6Qnw/ffsc3Vhrstv3QhSAqtMi18st/Nh1mrT9dXDIyPQEkjMxy/pL+7f7lgE3X7Y=@lists.infradead.org
X-Gm-Message-State: AOJu0YyBRj0OT39CoGUZNx0uiraPilPmuSgY6b+Wx/MJjz4vqmrZYErT
	8zxqeH1LMa0yNcm1PdqK2C+mYPVCAyfZNITX+5lp4Av2vRhW55PLX5ePfEQ99oSGBGvNqwwUSZD
	t2j0AbGuLl6dkim9Qr//mBWFxMlt4sUycU/gLfPlaB7snHDTVuCAu5ZsetAu9Zaw5DGM9
X-Gm-Gg: ASbGncuCOneWmUcn+q9kxsTAsqs7TCdL24zuvV+wNhBwW3FrC5UO1hyXJY8CeW12fjy
	HGCD1KNnyKOj5vVYDk6+IJRpJme5g3KgBh4VoZcJgFSytP8til4Xg5tXiQmuCdWuoR7Y2jLFpMF
	MylNqADbhsdT+q5wRRL86V8AnO9wwbvTUb/poQUrS5B1jI59YKamOxYBxaqgi3O+TJDNegCKvas
	oeliFuX3IwAGSepqIueZ7kyOfJlWX0em9/7qKfIFL3LWAFL4CESgKF+X/f85SYvHJb/4NIQ8rKQ
	C24PtwuxlmEdKLgoNePBMNHpTuIjlBUruReNnI69a0ikzsX9Stb6WUMeCkHjoa2soVCG0RVHyor
	gPuLrHK+VayrxLE/tPN8nmJsQzHPvOFS+7oF4bsUYQJEbNncIFFJNaKO7
X-Received: by 2002:a17:90b:4b87:b0:32e:8c14:5cfb with SMTP id 98e67ed59e1d1-3342a22be84mr1423266a91.1.1758783954708;
        Thu, 25 Sep 2025 00:05:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGiGLGl2UMupnuQtpEa9ZZfBh6eqEqcbNFWWTUDdSOwpa28BBCD0SysDLrBKUXsdg4C53UiFQ==
X-Received: by 2002:a17:90b:4b87:b0:32e:8c14:5cfb with SMTP id 98e67ed59e1d1-3342a22be84mr1423240a91.1.1758783954248;
        Thu, 25 Sep 2025 00:05:54 -0700 (PDT)
Received: from sziotdisp01-gv.qualcomm.com.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3342a2bd584sm914253a91.0.2025.09.25.00.05.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 00:05:53 -0700 (PDT)
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 15:04:51 +0800
Subject: [PATCH v6 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
MIME-Version: 1.0
Message-Id: <20250925-add-displayport-support-for-qcs615-platform-v6-5-419fe5963819@oss.qualcomm.com>
References: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
In-Reply-To: <20250925-add-displayport-support-for-qcs615-platform-v6-0-419fe5963819@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758783909; l=3308;
 i=xiangxu.yin@oss.qualcomm.com; s=20241125; h=from:subject:message-id;
 bh=xkXgNM4liwYFuSUu6liFsyLgM/OZQSJZDsJNBIKnRJI=;
 b=J0gdvfqjAFOidyttJubhcvzBjqP1Zm2wCBXo2NSulNdAolL4liaYtKEaBz9IcvDS151zoaVyg
 bqAqIBWVTU1C4VROc9+fi0LDhH2w5lPAT/FoB4VT18AwGr6Q8XpxwWx
X-Developer-Key: i=xiangxu.yin@oss.qualcomm.com; a=ed25519;
 pk=F1TwipJzpywfbt3n/RPi4l/A4AVF+QC89XzCHgZYaOc=
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e9d3 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zr9GHpnC6WUyfWqp_BsA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfX6Yhq6c0jfx21
 7wnjVm8Qt8e++uTuqkhND/5KBl6js275gcwABo6BW1Fwa52FRMHURPhwYaNpzfxlgc1dJ5IhsB5
 B2kP1K52QYzmfjlXCpHEnQTN9pSPpGbv//S/poQxGbXD36Hu/k1eruFFkHllKUercICgGzcXusX
 yoE7jUtRGt4tQgEgkIVanKEOTpQYco0Mxtzv92axExc+gAgTtRRErO7LhYl1by5YOLQ3TZDh4Mv
 us671IaQe8DfreVCxmnbeboMAE+7OBcfjBsu9r8zNdKbakohwE5PixMtZI2JGs10nmX6+h979Fa
 WKdWvZoemCehrSH4iE9r3l66abRPApbOJSa19xzSRqXbsTNc9tSZsJEpzbrS+2yhGwJYOZdTEx4
 vvd1raq6
X-Proofpoint-GUID: 65qxceWGylu8wwIPP-bUaUuAPn5ekCwu
X-Proofpoint-ORIG-GUID: 65qxceWGylu8wwIPP-bUaUuAPn5ekCwu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_000556_386819_4FB7380E 
X-CRM114-Status: GOOD (  14.22  )
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

The original reset list only works for USB-only PHYs. USB3DP PHYs require
different reset names such as "dp_phy", so they need a separate list.

Moving reset configuration into qmp_phy_cfg allows per-PHY customization
without adding special-case logic in DT parsing. The legacy DT path keeps
using the old hardcoded list, while non-legacy paths use cfg->reset_list.

Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
index 3b48c69f9c3cb7daec495ebc281b83fe34e56881..f9e20f43435c050e33e9490343a4693a339d692a 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
@@ -335,7 +335,8 @@ struct qmp_phy_cfg {
 	int (*configure_dp_phy)(struct qmp_usbc *qmp);
 	int (*calibrate_dp_phy)(struct qmp_usbc *qmp);
 
-	/* regulators to be requested */
+	const char * const *reset_list;
+	int num_resets;
 	const struct regulator_bulk_data *vreg_list;
 	int num_vregs;
 
@@ -464,6 +465,8 @@ static const struct qmp_phy_cfg msm8998_usb3phy_cfg = {
 	.rx_tbl_num             = ARRAY_SIZE(msm8998_usb3_rx_tbl),
 	.pcs_tbl                = msm8998_usb3_pcs_tbl,
 	.pcs_tbl_num            = ARRAY_SIZE(msm8998_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list              = qmp_phy_msm8998_vreg_l,
 	.num_vregs              = ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs                   = qmp_v3_usb3phy_regs_layout,
@@ -480,6 +483,8 @@ static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_sm2290_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_sm2290_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -496,6 +501,8 @@ static const struct qmp_phy_cfg sdm660_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(sdm660_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_msm8998_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_msm8998_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -512,6 +519,8 @@ static const struct qmp_phy_cfg qcs615_usb3phy_cfg = {
 	.rx_tbl_num		= ARRAY_SIZE(qcm2290_usb3_rx_tbl),
 	.pcs_tbl		= qcm2290_usb3_pcs_tbl,
 	.pcs_tbl_num		= ARRAY_SIZE(qcm2290_usb3_pcs_tbl),
+	.reset_list		= usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(usb3phy_reset_l),
 	.vreg_list		= qmp_phy_qcs615_vreg_l,
 	.num_vregs		= ARRAY_SIZE(qmp_phy_qcs615_vreg_l),
 	.regs			= qmp_v3_usb3phy_regs_layout_qcm2290,
@@ -1051,8 +1060,7 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
 				     "failed to get pipe clock\n");
 	}
 
-	ret = qmp_usbc_reset_init(qmp, usb3phy_reset_l,
-				 ARRAY_SIZE(usb3phy_reset_l));
+	ret = qmp_usbc_reset_init(qmp, cfg->reset_list, cfg->num_resets);
 	if (ret)
 		return ret;
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
