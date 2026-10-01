Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD19CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ad9UzIbJUC/skrT0SoGsX47G3YNrHsJNe0Pcva8QyfM=; b=M2ehD7bsXyxgIV
	lZnqlkWp8ChOlIVVVy39zU606KBoUJ57x7QiagW58+d1mS7W6YH/zkx4rN6p5srxEglQPI0+XY+Ab
	kXMeH3xhjE4pWIaGQnidx1oXqirzJHIx4EdhJyMfJdAwIg5GK1WFB4F07cGVqc7b9q0JCOfa9qSMB
	pl27DTWYIgJ6XZBWtva6Sc1IBKx00ERkCYra0UEOjsPM25cLbU3xO8hHKNsCq9fqed56E2ZR+mZu4
	/oOW9REsL395pJWBsA1wwnRMDug/2GXPa4OSAeZ8v3LSDKpX/IZeIx78OwRoPNl13q9Eu/KiVVf+C
	flR9RJ6mWy+QXVDuTDeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCB-00000008NwA-2mLU;
	Thu, 01 Oct 2026 09:35:19 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDC8-00000008NuS-2Zor
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:18 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xkT8396181
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Xa8kcq9cupl84D9TjL7OsvWmSiA7DyflYqPRctbqDnE=; b=hIO6Z0dsUd2i88p2
	ul+ERcYlFDdMENSTjCRHKk3OKbxCpjpOG0u1PJTeHdaJvTmVZtwHQVgqankp1ekk
	a2psIP+vY6+HYzp+fHYTCVdql7qhLY71U6qidQ+cX3U2gqMJxiUoa76CXpmS0Klq
	8aZ0UWV3A3FpA0iqjJqFBGc3ueBNO/EhwyPDGO/OSA+X06BChnTnFiu/Zs4Vb9f4
	y/upd4b8k1iR22N2Wx2wey975/0XAWRVZUpAYpHHjK7wAzAWX5wdURMjpgTFoP+O
	h74YBv0sHGZPywC9A8al2FEQdwEJidvvsDQxbYRCAvoJprsRgoqsLg1CMoQvwRqB
	BGygDA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h1bh5a4j9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:16 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-cbb20f82a0eso3895946a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847315; x=1791452115; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Xa8kcq9cupl84D9TjL7OsvWmSiA7DyflYqPRctbqDnE=;
        b=BT9Qbe0RlmClEwB9b5w70baeIk8LQFcib2dk6oRH7BO4w8cflUwTXAnUQptwWQOdo8
         ExPFeKaGXf9NhWwJl6X+3j/wd0+WBm10JSH+z0lBPW5xJypVQKCNnvBqZkDabRptJljF
         NH3KUJF1NfOXimydfpek6pR91zO4+5HL1DDnbc6bRnQtwyHNm8j+WjUd5AeJ/p6NcGLD
         FotyqIvQX8WFG+vVvaFDaqA8ag2rt6u6UCAjNYqthB2UQyKLxqcND6cb1pH+obtznkyv
         waB4OP4QbXuDs5yL2Aczw1rKKN4S6lKDlVXG9tmtCHcRabCSgbeMmsX78ul/NoEqtt4g
         iT8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847315; x=1791452115;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Xa8kcq9cupl84D9TjL7OsvWmSiA7DyflYqPRctbqDnE=;
        b=zAdRlspnIFMWM99zQPDFlIq/Fz+pkZ0MhzdTqUc94IgUXRD/VvN6gmCG7+a4IjxOqk
         jN2zWYeXesA8RC72yrsXSNZ++NP/r6QpZTkjdtnhtDQ6Ql27AjloPU+IJ6KQ84s1QrxB
         H5r/2rvhfyj4uslNGZc1aBaJBTibjPy3bOvalOMge3DsbZKUJ3FX3+i16S2WNsCyvGsy
         jHvKxndoFS+NWF0LB4U8Q9YnfeW/N2dlnoCtfJlo+AMAl6f3WhqfQPAhjml3NjJt+CN7
         oDHqBU3Fao7KIWIc2Q3WOtU7Pr48WjCmD20bipIlAjGI0f1iRy53yLbd48poNV9Uk7WD
         oGhg==
X-Forwarded-Encrypted: i=1; AKwUvBwwrVc+Za2usmtO5PX4YR5sF0tdwtdj84QMh9mPsKPkzC8n+gerC3FvYYD6dbNh3tY+sRJEuEMnCnw=@lists.infradead.org
X-Gm-Message-State: AFuF++nbRSAtpXD7A8E8ZY89FqBlPhqL+tnT0f6zHXRK56sFd/G08HhL
	Vf8cXbnCAKeHM0WqGfGNdTnzf5swzjrTmhYXSo85ZSgS2tE5iSaoOSwpEBEZJZCsXK+VNmOLBFm
	2O5K37UitOOK09ytXQAtZEHUuNiOqzc9sZFD82IzwpyhsAr2kpkqizZFtvDMp578jRUhX1pcALL
	CE
X-Gm-Gg: AYBFou3WAd4WDwDC/4NN4PjiIADvSIi9+1mNpZSf7iX0AgyagTP39mh/VNFzaZyFqPH
	y9vrWGWrPjNUhhVwZqj2oyZ7CRiSse/QUxTc0hyPx6wHB6W8mzMR8QXZJXL3R+twFmHPNyWawIP
	Tp323aVvuPXx/ZxXTkvRt0vQlWniuzmuIEeq19Nk7GZ7LQEbV65YXmIvz8vzus9iGEllEBeOlbo
	70u9hh5WSmVp0wJk0U7N4AfeS1fi6dy7aFrRw8HbruQSsHoS7W+XuyZCDIkwm/nzY9X6rVqf009
	yNl6kVcJ3FxLv9fN/6ah+1BVuvGM2Qye0H+lGXB8391h4NmJ0Wm/6T4ib1dABSNM8hy/WQW/GEb
	HAZm2qY9e7VjExLjIW3NqtkN1elg=
X-Received: by 2002:a05:6a21:492:b0:3bf:63af:855 with SMTP id adf61e73a8af0-3de9e131d4amr4539447637.1.1790847315275;
        Thu, 01 Oct 2026 02:35:15 -0700 (PDT)
X-Received: by 2002:a05:6a21:492:b0:3bf:63af:855 with SMTP id adf61e73a8af0-3de9e131d4amr4539425637.1.1790847314801;
        Thu, 01 Oct 2026 02:35:14 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:14 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:21 +0530
Subject: [PATCH v5 04/11] phy: qualcomm: qmp-combo: Ignore Type-C
 orientation for Glymur DP mode
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-4-3848c2615d5a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=2328;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=7m5evHAKSZMPuWBmI8pbjsbB9zXFJPn4mEjLL9zJ4Hw=;
 b=se4+x91fgpXd/HRkM0JOTgR6dY+nJfeYyyXwdbcZunzZ9shYZ1f9N7d3hhTra9VwXzwlB9jfn
 ra45k5QJCDeDTYC9iyfTrP/sSShxtzUIIaI5yIBIk5tvNqGjDSrJbXC
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX1g67wqyXLRDe
 KRkGlvC2zQefTCT930O+EAjcoTEiCy0PbAiRwqz0Q0gk9cpg8rorrGyeqCyeDHyUKA8YXjGJ88Z
 l0RflarCzCd4NDtEznii0VWoao0lFBo4ahlFd25rI/NHIe+1cEdA3lYXhQp03UIYWxBYMbRbnet
 PPCtQSd2OkW3ZlY/XoUCdBbsCT0Ac+2NFQPEnjTODnsT9/bcS6W91NiSnHLndiu+xQHEXZqy5lo
 WFTHyhQmrlHPGpTKl9LmlGqjiX4vvdbFjVcyuFTkiqaXXpvX36qABqlQRgEJzu/ffx+VHAsY9Ba
 K2oZSAGUeHbM8RfMUHg5obkwjbUtjKrQ57ALm8nj0i6YfsitYaubNrdzZgGIdDT2W5Mtcxi0BTE
 thHAqQyGNn4CUKPQsNGidr//iiGz9NmabD8tohaZjjLXiar7hHHDJNqoTaUfCLa79VwsnlJuvOe
 hlpEHcU0wT9Czhul0yg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfXxywGiHH0WwPj
 bHBpjairR40Ul0wWBCIuDiCFdYWx3GvOShGxQgAmCEuf5iB1R4ZMm7S1b6TOxu3uyLRKaGXyfXL
 ficzwLA4C+xld6stDWloc9VVSxc7MJk=
X-Proofpoint-ORIG-GUID: _n4-toM9NENX5h3Fcp6sNvWT9r8LQDZ4
X-Proofpoint-GUID: _n4-toM9NENX5h3Fcp6sNvWT9r8LQDZ4
X-Authority-Analysis: v=2.4 cv=NrJE4MdJ c=1 sm=1 tr=0 ts=6abe2954 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=I9iHhWb_IStLGF-kurEA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023516_677565_42293165 
X-CRM114-Status: GOOD (  15.60  )
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

Glymur platforms use a fixed DP lane mapping and do not support DP PHY
mode reversal based on Type-C orientation. Add a configuration flag to
ignore reverse orientation during DP mode setup and enable it for Glymur,
ensuring that QSERDES_DP_PHY_MODE is always programmed with the
fix mode value (0x5c).

Fixes: 815891eee6687 ("phy: qcom-qmp-combo: Introduce orientation variable")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index b672adb33fc5..646e97a52886 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2551,6 +2551,9 @@ struct qmp_phy_cfg {
 	int (*calibrate_dp_phy)(struct qmp_combo *qmp);
 	void (*dp_aux_init)(struct qmp_combo *qmp);
 
+	/* Set if DP mode configuration should ignore TypeC orientation */
+	bool dp_mode_ignore_reverse;
+
 	/* USB4 specifics */
 	const struct qmp_phy_init_tbl *usb4_serdes_tbl;
 	int usb4_serdes_tbl_num;
@@ -3422,6 +3425,8 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.configure_dp_clocks	= qmp_v8_configure_dp_clocks,
 	.configure_dp_phy	= qmp_v8_configure_dp_phy,
 
+	.dp_mode_ignore_reverse	= true,
+
 	.regs			= qmp_v8_n3_usb43dpphy_regs_layout,
 	.reset_list		= msm8996_usb3phy_reset_l,
 	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
@@ -3570,6 +3575,7 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
 static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 {
 	bool reverse = (qmp->orientation == TYPEC_ORIENTATION_REVERSE);
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
 	u32 val;
 
@@ -3583,7 +3589,7 @@ static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
 
 	writel(val, qmp->dp_dp_phy + QSERDES_DP_PHY_PD_CTL);
 
-	if (reverse)
+	if (reverse && !cfg->dp_mode_ignore_reverse)
 		writel(0x4c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);
 	else
 		writel(0x5c, qmp->dp_dp_phy + QSERDES_DP_PHY_MODE);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
