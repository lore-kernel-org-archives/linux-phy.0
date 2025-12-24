Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD4FAE7544F
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 11:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FxTqY4h8Si0PERBLaguthTCH647FpH2ON6MZkpH82HA=; b=uE5TKaasNWxcwf
	rdda/qwwAgrMPm/AxMtgTn9LkOOOhd/NspffoCSfh69iBzhwLeU4Sgb6OCEQ9Y7SDox6Qrit5WgsE
	ggBayHRDd5uzkXlihUp1lrMLKBeo4yye+Uw+5y9HDEmmBkFFm4Ns+XvuTj5vxywqXKzJlPy9t78G6
	FIWXy0gqMq+p4h/5XE+HeridRK6Qq1SUfZawUR7pefUDyxA2p4V7DosbQ7H9E7GyIbofAreyyAx6d
	ASQnq/y4XrVQQxtFNUE12MZli9t41h5kP3YHUqLYh5FJxbIvUH11hwB0hRdksCfn24qQVmmlrSnLT
	QOj2yFLa/dR2z2iObCBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlx-0000000GiyJ-27Nd;
	Wed, 24 Dec 2025 11:11:17 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYMlr-0000000GiwP-11Ae
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 11:11:14 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO3wlIO3797270
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8N7vAC85FR0nW1JkuNjUJN1Rx+XfyhvxkkcTKWIZnSQ=; b=RgH9hIvYITj8aN6P
	lRag3q3v7a5x3GyEQA6g9yWRZ1feOXdDE+zR+fMakxNqJUQCUA2YYmc0YrxBF67r
	69/AnuxqPPE8X/ylJhWWyueZNhees7w4iNS6kbajS8KvdLlmxf8zZpzT3GnPGKnV
	gT8oO2JS+UN/sh71FieMguidfw4sx3ovSDTDvHHdc6ZrmQWfwyoH3Qgw1V5sxgi7
	kMeI/Vn+17rLNL8xItSp4gQcQqJiYlp0U+wJ+ij/SB1HM5TWGs63UHz/RoIsseke
	qFRJ4ONc9fzPLu/UoDInbpUxV9tBsYfM/ZjJXoSFHg4hB7PgkzQbUlc8meaoyfL+
	fMk/2g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b88r690uu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 11:11:10 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ee09693109so111706461cf.3
        for <linux-phy@lists.infradead.org>; Wed, 24 Dec 2025 03:11:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766574669; x=1767179469; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8N7vAC85FR0nW1JkuNjUJN1Rx+XfyhvxkkcTKWIZnSQ=;
        b=NWkfa+PVzQSRBjRuRlfJzIGIbE4J9Lidi5ONidDyAi1pelNwv/tVKoPtcl5VQLTBmw
         jF7ZCojNPdqoJoTLuHHlqJUojJCHvDfxPs3PGyme0IFvwh4wypO4xBdMMnCimJtjLPeJ
         Exe5+xeb6mnCB5r44vGglzwXPSrRASOtq66018QYj5xIs/MMjkESRxBV19/Ok4E2vHvQ
         HfXKH6P2XG1UzDgeCgb9tCCObWPkgGOsrI4b0y8ikpvDjGN5f6Ep4hQt8r5nnnNmCQrM
         4N9OMybK5nYT4AgyKYzVG6cZKp3Fi2nVzK3IiRzymD3xR+F+9RL+5P1SQaCjRkeQ7afm
         G++Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766574669; x=1767179469;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8N7vAC85FR0nW1JkuNjUJN1Rx+XfyhvxkkcTKWIZnSQ=;
        b=smq10iGQfH6axF3JUN0ohL2abvyHytApra7ADUjYfzZ3dLjGcreuVB4G3alNw2GEz/
         8JEo36qbqS6dGwDU4RUHMas1325bYidGNNI1LLwVyfydb+pkZAOIfixw8NwOmzQvn3J9
         ABl1fDz1NDuTmBaq9KJjKQcpjKSASt8ST5Q2wdoFdHEQT1m7OR6Js4EFwjc0Kk3eJO8Y
         JgwadAqo3gC8H3HnUFfMF+7/kFi9mKatGlieN6D29t0xIbyFoBydOqmsOgPqqmWxbHRP
         WJCFucaAArO47U7e5dfMSd9QPl/uioT0KNQNObdcg7mCWdp/bhU6PhEa7/9CKjPWycQ6
         fW6A==
X-Forwarded-Encrypted: i=1; AJvYcCX36V3IGVrnBBxaY8QqUG7a5IUuwJ7ogWd36He+UPiK0X8u6W6N2sxQ8EVJlGhFxVWt9z9uKmhbZls=@lists.infradead.org
X-Gm-Message-State: AOJu0Ywa3KgjbhMWr5UuRJyf1FI6CncV5gob37TdbllxBRQZEqWzHipc
	olNeQsAjbKAX5orycePAoDnsPj/l+c5nkhnpR6kPUHIREiLf5GE5QMHOv95XBuyC6mQ03emRmlC
	KES2rAqkHXDtz/l4vXj1Xmfg5iirPPU9lOOaLqsIgaSIzw4GSJY0IE23gLsDy8uvmYwNYbJBE7O
	+j
X-Gm-Gg: AY/fxX603YITAv/kkaPVToWIS4DTdd5iO4tc0rApP6166A2pW6uyTv50hI/4MfBjGRS
	dG9EoDwCuWZqSUVQkjv6c2pf0XN2aJDQOF1JNb/LjAh0y1TUbAUjtvWL7F7AMcFqSOpJLm80dbX
	RyQyiTAmUMBcVhdTXOwc4GaDZr98kM94x/YggmHqBT7UflwcHwE5/aMGDXUs51r/gyvDTV/U8tu
	fhzVBjp2QFovpGB5lmICI25qfx1V0arNPT0KO90LrZYdQOR2FAjc5NhRVZr26ANJHWG9y67jlKC
	alwbCtZxg5CwWy43Fvdj68PNmcl4GuO5rhrgfTdlbRWnF9WB8shPfc5laO0snBS6LZdd5UW+fSj
	PoWAGTZt/ImXXojw=
X-Received: by 2002:ac8:5d02:0:b0:4eb:a3fe:53d with SMTP id d75a77b69052e-4f4abdebbabmr290397771cf.79.1766574669029;
        Wed, 24 Dec 2025 03:11:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEQSZIw9gBDigIeuF8iFTkfyWX5mpmlwFbDLyT2L8Bi1LQzOnGnD4wY3hK+L17NnuqLFAoBog==
X-Received: by 2002:ac8:5d02:0:b0:4eb:a3fe:53d with SMTP id d75a77b69052e-4f4abdebbabmr290397281cf.79.1766574668354;
        Wed, 24 Dec 2025 03:11:08 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916adc61sm16799036a12.31.2025.12.24.03.11.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 03:11:06 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Wed, 24 Dec 2025 13:10:47 +0200
Subject: [PATCH RESEND v6 4/4] phy: qcom: edp: Add Glymur platform support
MIME-Version: 1.0
Message-Id: <20251224-phy-qcom-edp-add-glymur-support-v6-4-4fcba75a6fa9@oss.qualcomm.com>
References: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
In-Reply-To: <20251224-phy-qcom-edp-add-glymur-support-v6-0-4fcba75a6fa9@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=12669;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=lzSPPRu5v0qfFSEL47Mc43IFyRddY9+MtUGPgrFohSs=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpS8pA+JfKxBoSiY4XJ9CL6ujhJ3hrEwnQ0q5t4
 flX1UOztauJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUvKQAAKCRAbX0TJAJUV
 VihlD/4vqzVARxA22GPFE6eL/EnGOSWFA2RfSmEu3RhHgVAA35wgxLUsL13qkwa7oTIf3fCDiPU
 la2+LZVsLSFWfYUzF+nVc5Aky9n19tdAmQTWZdtRxJiFgnRLfDGvkjT8Awqh/PwYiuL828tKoAM
 ggvTmR0XUGTJOymwoGTZPxHFXaK/RFfExCHcaiV7tMkY1QVl7vBwuJZGGlvda87P3tJmVF0+Xyt
 XQyawbo4ZCdz3xRWQAcWGv7gEo9KQMec1t+R7N5YzFDwhA96QClaKd/KVov/e2u0ZyEYbt03EkC
 k3UYR9rkuy/jr5BR8oqWk9z0QNzqEaIJ48qbWXm2QXV37xbesVkrZ0wPME/vfPGwZqFm/WnYhYD
 md1+7d6wCJRX3dqXfuuqMC4ThmFjrtJ5Nq3gs9PDQyjG1VmENpE67QPhovrfygdXTtsPbgYxHSN
 +OF5ObzihqwAKsr1qSKvwO/zEb0uvnerVDzG5nW6FQsAztj+mV6AtrH7PhyfkUmz08zqtrV91bp
 8VE67nmjblFwTfUR+zlv7suU/letXpb4TJ0b6d580UnuGMvDFOcp8AeRokUjfdT+HXaQYkZ/DEN
 5Ojdu2O4OgOKzjFG4ifw7uI9OFnWUDSpnPEmxWbyp+OIZfOYhes+SY+hZYhONMVGbw3IG1BMO80
 WRrXmnQSVbAAaUg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: aQPx2K_l6t1VXZHrdoWQTrcwdBtqcJIw
X-Proofpoint-ORIG-GUID: aQPx2K_l6t1VXZHrdoWQTrcwdBtqcJIw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA5NyBTYWx0ZWRfX5iMOdmJ0XcRv
 LfvMl4b8JrVSnfz6TGwCymCdwWr2GAfLaT6gkclPb5yU7SbgAg0BBCqvgI/0ZyRnQQ/Y1wm6Ksz
 BGjJ13Txk3h5/eAdCUL3rcNG26M+g+nccdQmpabScU/Ta53BM06z/x0rmeYZSIUlAegdCLE10+a
 +E9XjnxM5Ra1SrWLnoSqWYiomkrDghrvxYI4kyRk70S/td82XBOSK4yMVD1IiyuD4nf4oddK6Q7
 fZy3C8Q1yRKVixoXY9jTVf3DmwBeq3dWvC99n0tbTZz8qH3lbaen6GLi+MBy0xPvB10kJBst5rM
 jD/XuiGGJYWqpupmmiGv0U97YbSFt7l7f8lBSgGgfMk/8iyzxZzU4BHO5tQfLTNLjdqo9rE11q/
 mdWFSNYWKh8BMkdmpKOzubd2rGIyBx5/qPjr9ZTd/GCv2QJCm3aFXjdaloqGvKMazXnS9FyJF5w
 8k7KP2gU5rN7fsGZ5YQ==
X-Authority-Analysis: v=2.4 cv=Qahrf8bv c=1 sm=1 tr=0 ts=694bca4e cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4YCwYE_O2Fn-gSgt1roA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 malwarescore=0 spamscore=0 bulkscore=0 impostorscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512240097
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_031113_365210_3E1D1295 
X-CRM114-Status: GOOD (  21.04  )
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

From: Abel Vesa <abel.vesa@linaro.org>

The Qualcomm Glymur platform has the new v8 version of the eDP/DP PHY.
So rework the driver to support this new version and add the platform
specific configuration data.

While at it, add the rest of the AUX_CFG reset values for the v4 and v5
platforms, which makes the handling of the platforms specific array
cleaner, as they are single sized now.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 227 ++++++++++++++++++++++++++++++++++--
 1 file changed, 219 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index f98fe83de42e..13feab99feec 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -26,6 +26,8 @@
 #include "phy-qcom-qmp-qserdes-com-v4.h"
 #include "phy-qcom-qmp-qserdes-com-v6.h"
 
+#include "phy-qcom-qmp-qserdes-dp-com-v8.h"
+
 /* EDP_PHY registers */
 #define DP_PHY_CFG                              0x0010
 #define DP_PHY_CFG_1                            0x0014
@@ -76,6 +78,7 @@ struct phy_ver_ops {
 	int (*com_power_on)(const struct qcom_edp *edp);
 	int (*com_resetsm_cntrl)(const struct qcom_edp *edp);
 	int (*com_bias_en_clkbuflr)(const struct qcom_edp *edp);
+	int (*com_clk_fwd_cfg)(const struct qcom_edp *edp);
 	int (*com_configure_pll)(const struct qcom_edp *edp);
 	int (*com_configure_ssc)(const struct qcom_edp *edp);
 };
@@ -83,6 +86,7 @@ struct phy_ver_ops {
 struct qcom_edp_phy_cfg {
 	bool is_edp;
 	const u8 *aux_cfg;
+	const u8 *vco_div_cfg;
 	const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
 	const struct phy_ver_ops *ver_ops;
 };
@@ -181,8 +185,12 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
 };
 
-static const u8 edp_phy_aux_cfg_v4[10] = {
-	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
+static const u8 edp_phy_aux_cfg_v4[DP_AUX_CFG_SIZE] = {
+	0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
+};
+
+static const u8 edp_phy_vco_div_cfg_v4[4] = {
+	0x01, 0x01, 0x02, 0x00,
 };
 
 static const u8 edp_pre_emp_hbr_rbr_v5[4][4] = {
@@ -206,8 +214,16 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg_v5 =
 	.pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3_v5,
 };
 
-static const u8 edp_phy_aux_cfg_v5[10] = {
-	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
+static const u8 edp_phy_aux_cfg_v5[DP_AUX_CFG_SIZE] = {
+	0x00, 0x13, 0xa4, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x00,
+};
+
+static const u8 edp_phy_aux_cfg_v8[DP_AUX_CFG_SIZE] = {
+	0x00, 0x00, 0xa0, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03, 0x02, 0x02, 0x04,
+};
+
+static const u8 edp_phy_vco_div_cfg_v8[4] = {
+	0x00, 0x00, 0x02, 0x01,
 };
 
 static int qcom_edp_phy_init(struct phy *phy)
@@ -226,6 +242,10 @@ static int qcom_edp_phy_init(struct phy *phy)
 
 	memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
 
+	ret = edp->cfg->ver_ops->com_clk_fwd_cfg(edp);
+	if (ret)
+		return ret;
+
 	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
 	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
 	       edp->edp + DP_PHY_PD_CTL);
@@ -345,22 +365,22 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
 
 	switch (dp_opts->link_rate) {
 	case 1620:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[0];
 		*pixel_freq = 1620000000UL / 2;
 		break;
 
 	case 2700:
-		vco_div = 0x1;
+		vco_div = edp->cfg->vco_div_cfg[1];
 		*pixel_freq = 2700000000UL / 2;
 		break;
 
 	case 5400:
-		vco_div = 0x2;
+		vco_div = edp->cfg->vco_div_cfg[2];
 		*pixel_freq = 5400000000UL / 4;
 		break;
 
 	case 8100:
-		vco_div = 0x0;
+		vco_div = edp->cfg->vco_div_cfg[3];
 		*pixel_freq = 8100000000UL / 6;
 		break;
 
@@ -398,6 +418,11 @@ static int qcom_edp_phy_com_resetsm_cntrl_v4(const struct qcom_edp *edp)
 				     val, val & BIT(0), 500, 10000);
 }
 
+static int qcom_edp_com_clk_fwd_cfg_v4(const struct qcom_edp *edp)
+{
+	return 0;
+}
+
 static int qcom_edp_com_bias_en_clkbuflr_v4(const struct qcom_edp *edp)
 {
 	/* Turn on BIAS current for PHY/PLL */
@@ -530,6 +555,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 	.com_power_on		= qcom_edp_phy_power_on_v4,
 	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v4,
 	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v4,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v4,
 	.com_configure_pll	= qcom_edp_com_configure_pll_v4,
 	.com_configure_ssc	= qcom_edp_com_configure_ssc_v4,
 };
@@ -537,17 +563,20 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
 static const struct qcom_edp_phy_cfg sa8775p_dp_phy_cfg = {
 	.is_edp = false,
 	.aux_cfg = edp_phy_aux_cfg_v5,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
 
 static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -555,6 +584,7 @@ static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
 static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
 	.is_edp = true,
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v4,
 };
@@ -734,10 +764,190 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
 
 static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
 	.aux_cfg = edp_phy_aux_cfg_v4,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v4,
 	.swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
 	.ver_ops = &qcom_edp_phy_ops_v6,
 };
 
+static int qcom_edp_com_configure_ssc_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+	case 2700:
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	case 5400:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SSC_EN_CENTER);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_SSC_ADJ_PER1);
+	writel(0x6b, edp->pll + DP_QSERDES_V8_COM_SSC_PER1);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SSC_PER2);
+	writel(step1, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE1_MODE0);
+	writel(step2, edp->pll + DP_QSERDES_V8_COM_SSC_STEP_SIZE2_MODE0);
+
+	return 0;
+}
+
+static int qcom_edp_com_configure_pll_v8(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 div_frac_start2_mode0;
+	u32 div_frac_start3_mode0;
+	u32 dec_start_mode0;
+	u32 lock_cmp1_mode0;
+	u32 lock_cmp2_mode0;
+	u32 code1_mode0;
+	u32 code2_mode0;
+	u32 hsclk_sel;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		hsclk_sel = 0x5;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x37;
+		lock_cmp2_mode0 = 0x04;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 2700:
+		hsclk_sel = 0x3;
+		dec_start_mode0 = 0x34;
+		div_frac_start2_mode0 = 0xc0;
+		div_frac_start3_mode0 = 0x0b;
+		lock_cmp1_mode0 = 0x07;
+		lock_cmp2_mode0 = 0x07;
+		code1_mode0 = 0x71;
+		code2_mode0 = 0x0c;
+		break;
+
+	case 5400:
+	case 8100:
+		hsclk_sel = 0x2;
+		dec_start_mode0 = 0x4f;
+		div_frac_start2_mode0 = 0xa0;
+		div_frac_start3_mode0 = 0x01;
+		lock_cmp1_mode0 = 0x18;
+		lock_cmp2_mode0 = 0x15;
+		code1_mode0 = 0x14;
+		code2_mode0 = 0x25;
+		break;
+
+	default:
+		/* Other link rates aren't supported */
+		return -EINVAL;
+	}
+
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_SVS_MODE_CLK_SEL);
+	writel(0x3b, edp->pll + DP_QSERDES_V8_COM_SYSCLK_EN_SEL);
+	writel(0x02, edp->pll + DP_QSERDES_V8_COM_SYS_CLK_CTRL);
+	writel(0x0c, edp->pll + DP_QSERDES_V8_COM_CLK_ENABLE1);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_SYSCLK_BUF_ENABLE);
+	writel(0x30, edp->pll + DP_QSERDES_V8_COM_CLK_SELECT);
+	writel(hsclk_sel, edp->pll + DP_QSERDES_V8_COM_HSCLK_SEL_1);
+	writel(0x07, edp->pll + DP_QSERDES_V8_COM_PLL_IVCO);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP_EN);
+	writel(0x36, edp->pll + DP_QSERDES_V8_COM_PLL_CCTRL_MODE0);
+	writel(0x16, edp->pll + DP_QSERDES_V8_COM_PLL_RCTRL_MODE0);
+	writel(0x06, edp->pll + DP_QSERDES_V8_COM_CP_CTRL_MODE0);
+	writel(dec_start_mode0, edp->pll + DP_QSERDES_V8_COM_DEC_START_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START1_MODE0);
+	writel(div_frac_start2_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START2_MODE0);
+	writel(div_frac_start3_mode0, edp->pll + DP_QSERDES_V8_COM_DIV_FRAC_START3_MODE0);
+	writel(0x96, edp->pll + DP_QSERDES_V8_COM_CMN_CONFIG_1);
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN0_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_INTEGLOOP_GAIN1_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_MAP);
+	writel(lock_cmp1_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP1_MODE0);
+	writel(lock_cmp2_mode0, edp->pll + DP_QSERDES_V8_COM_LOCK_CMP2_MODE0);
+
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_BG_TIMER);
+	writel(0x0a, edp->pll + DP_QSERDES_V8_COM_CORECLK_DIV_MODE0);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE_CTRL);
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+	writel(0x00, edp->pll + DP_QSERDES_V8_COM_CORE_CLK_EN);
+	writel(0xa0, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE1_MODE0);
+	writel(0x01, edp->pll + DP_QSERDES_V8_COM_VCO_TUNE2_MODE0);
+
+	writel(code1_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE1_MODE0);
+	writel(code2_mode0, edp->pll + DP_QSERDES_V8_COM_BIN_VCOCAL_CMP_CODE2_MODE0);
+
+	return 0;
+}
+
+
+static int qcom_edp_phy_com_resetsm_cntrl_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS,
+				     val, val & BIT(0), 500, 10000);
+}
+
+static int qcom_edp_com_clk_fwd_cfg_v8(const struct qcom_edp *edp)
+{
+	writel(0x3f, edp->pll + DP_QSERDES_V8_COM_CLK_FWD_CONFIG_1);
+
+	return 0;
+}
+
+static int qcom_edp_com_bias_en_clkbuflr_v8(const struct qcom_edp *edp)
+{
+	/* Turn on BIAS current for PHY/PLL */
+	writel(0x1f, edp->pll + DP_QSERDES_V8_COM_BIAS_EN_CLKBUFLR_EN);
+
+	return 0;
+}
+
+static int qcom_edp_phy_power_on_v8(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS,
+				     val, val & BIT(7), 5, 200);
+}
+
+static const struct phy_ver_ops qcom_edp_phy_ops_v8 = {
+	.com_power_on		= qcom_edp_phy_power_on_v8,
+	.com_resetsm_cntrl	= qcom_edp_phy_com_resetsm_cntrl_v8,
+	.com_bias_en_clkbuflr	= qcom_edp_com_bias_en_clkbuflr_v8,
+	.com_clk_fwd_cfg	= qcom_edp_com_clk_fwd_cfg_v8,
+	.com_configure_pll	= qcom_edp_com_configure_pll_v8,
+	.com_configure_ssc	= qcom_edp_com_configure_ssc_v8,
+};
+
+static struct qcom_edp_phy_cfg glymur_phy_cfg = {
+	.aux_cfg = edp_phy_aux_cfg_v8,
+	.vco_div_cfg = edp_phy_vco_div_cfg_v8,
+	.swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg_v5,
+	.ver_ops = &qcom_edp_phy_ops_v8,
+};
+
 static int qcom_edp_phy_power_on(struct phy *phy)
 {
 	const struct qcom_edp *edp = phy_get_drvdata(phy);
@@ -1133,6 +1343,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
 }
 
 static const struct of_device_id qcom_edp_phy_match_table[] = {
+	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },
 	{ .compatible = "qcom,sc7280-edp-phy", .data = &sc7280_dp_phy_cfg, },
 	{ .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
