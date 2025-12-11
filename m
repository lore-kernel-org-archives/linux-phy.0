Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C21AAD41C15
	for <linux-phy@archiver.kernel.org>; Thu, 11 Dec 2025 10:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bn1dXLB1F6YfRBJtWN3ETh20cqZVEwfwWEzGmoIGSLU=; b=jMu4N98a9f1wME
	+o1K06lUjDFC9FSEbqOh8Twm1UHptyeVBt6TyPOlh0z0EVPsM5VewFe+Wsn6GE4ycMf3QkDb4q0Jt
	CwtcxKTtdLvTMVy7eEFmAHPpDKvsoG0pTpcXc+znfiTlYw4+DGX2Qkhx4ycSjw45BJGTuwOdMHiWT
	3T7Zl1hlRVa5WFwwTRe7T5TJUxD7/4XAfE6JL7X9fpphn9+VxduZL8BvScJe/B08SqMWk1HTKJZ3c
	bBXh2eyJOd4c5ExAtzooVr4p0s8HqY6q1pOv2ZCjBgc9SdCIFg0hrmjhuDEGUoP8eDd7wkxYefMFQ
	2Ve0zCyUJ3cSOly5GNtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjy-0000000GTgL-2DLF;
	Thu, 11 Dec 2025 10:17:42 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTdjw-0000000GTfF-2Vac
	for linux-phy@lists.infradead.org;
	Thu, 11 Dec 2025 10:17:41 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZNZN545382
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GgLD6oaM0YkiC5PhLYJmGT8FbnzwNrVVKAjAgG5DbQQ=; b=SZ1ktmYH1CxL60xq
	FCuPjGNrHoCihYlXgGT07ZpV+Nq8Bzxo/lFx/XA69kPmQsUwY1HsixezEmHKkRDQ
	qub8qZv/RW6NpTOIHzekA4Gll5PsMsPCpLsSGCf7HcrR8XZvTHUeQMhpxVkjNZsU
	9wBjS2Y0Wc4Xup6ZcBgsiL1jA41897u7GoQi5MlYS5swnufJ4z5glGhcv65r6pjA
	qH2QJRltuztXJ1BKWzyMmvxHlbL02J0b2QuZ8NG0lQSYPnMaozwSl+qUDGheuza7
	jjSIptkW8t7CaK5T4nSTbom9/PehdBomhdFgQxreK9t0IBgG6dru6DIcx6Kzr9sD
	6yxmkA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aytwj891g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 10:17:40 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee09693109so16282251cf.3
        for <linux-phy@lists.infradead.org>; Thu, 11 Dec 2025 02:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448259; x=1766053059; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GgLD6oaM0YkiC5PhLYJmGT8FbnzwNrVVKAjAgG5DbQQ=;
        b=AUrSpeEmgGY0gXODML/aXBL2wIofot3DhNgOyMQtkifSqo4yzVc8nDOPltX3o6rHS4
         BHakW9fYXNFBCs/oFxcj/baccQDPjVSgGn4v5xxaOkViqKugY9SPxsjaP8EcvnmpAhbd
         PsbWi1tDD4IJW1pfruWDcxg1vwGqOtpoL4uyitBbGFPnPi0vRrIHxaLK2Rd66qZRc3kI
         aBFGmP/CAJz40FjdUnXgPx2Vy+TzhGbxJv2L+Mllgndzsps/PIWhHn9hMRxsjWSRraLt
         DUTqf40gLnK5pdhE1lN7pAfzXR+RKZi6jAGAuVPgD+1zYrIsHymaX6w79xgLsPb6vg9s
         /x9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448259; x=1766053059;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=GgLD6oaM0YkiC5PhLYJmGT8FbnzwNrVVKAjAgG5DbQQ=;
        b=Y+u4MXPkDmkh/CCOUUoouZ1fPDJwgXr3vsEtM9htdoAn5r0P8Ytg1C5G6fwgcCQVl1
         Z9pzLAvz92ujusVlCxRUhfXoDDkT5UU9NsdSJIgFOb0K+1272i5vmKE3SM1KzEqoSJHQ
         MhMBRtbe5uzIIr5vUZP4Dkn/Es7v0DVQWo77INEu1d2JEKCUf3N06/hpp31s8lA1Cs1U
         MF4hL0YxBIsl1d1AS34gAU4zIXOIa/XCv3NZZMJr58yE/y0NJbbn9ezu4lS5sE9fEY8w
         0XuJ2+G5Z4Gj+fH38nohOo5c+lBs7x0LjzaK1gqCopU4cK07c8Tpvm7/IQVXadGqWjxf
         /EoQ==
X-Forwarded-Encrypted: i=1; AJvYcCXY67p0iv2TOflU5QCLxecRaNa5oKO1ovH9joJDzJ7e8CIdwDr/RySMAwN6OelJ1JC0Wwto3NnaNQ4=@lists.infradead.org
X-Gm-Message-State: AOJu0YykTkC4JdbRHqU+Twn717xLHrHqyu2ASbv38veWsY5MmAkFvtDj
	D+3pdRblHMFyua4hv/aOFnutnH+riUtGcYvbZfrFZq3M/V/3xSRuMGJrhyTzuwJjm9RWYpk6++a
	ZZw/R66FNhpHBEBi6OnA7BePo4IyyRFBCPWE3FhUYxLH24sVg3BuIGeRyWv5HUGqI+HHw
X-Gm-Gg: AY/fxX4bZ/nd1CX8dA1pYyq7CNHAmcixZxgLou8La/0Zz+WQj8zDzo45G2DBGwZkAx/
	OmwJm/iMlaav3Eo/KRxytcEMi26HH8QGjnJGZi3XPoK8ItJ38l+Qgm94sP8bZmyJaGOk6rNAsEK
	xYfxteM52uKTeqHEwA0vodVSYWOJTsP0yN9PLzoBND7TK16B1HhyfDtaRDqn4Iz8C5ISHOdIWmw
	h7v8IDDJbO0FvPdF7LiQkS/Xn3QnVitvBk4QucJXga3ROChNtVoTEpEfDFovX6ttZAucoIDtEyg
	2KLwr73EDt9waS9GIfTnqV+Wt7DpWr+1mPywgu4mvCy3HnI7bWzlzYSc3uAWciBQ7WIgH63Oq91
	tMlyDhBuqCmpnOz8=
X-Received: by 2002:a05:622a:1210:b0:4f1:ab3b:a29a with SMTP id d75a77b69052e-4f1b1b20bb7mr77006051cf.65.1765448258895;
        Thu, 11 Dec 2025 02:17:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+0uD2u7N7HeXWEs/TWc2sJHEmtoBvpweZuxVefZuSIZKGawQM5RE46YfK1m1y4dGhzWmaPQ==
X-Received: by 2002:a05:622a:1210:b0:4f1:ab3b:a29a with SMTP id d75a77b69052e-4f1b1b20bb7mr77005771cf.65.1765448258365;
        Thu, 11 Dec 2025 02:17:38 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:37 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:25 +0200
Subject: [PATCH v6 4/4] phy: qcom: edp: Add Glymur platform support
MIME-Version: 1.0
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-4-5be5b32762b5@oss.qualcomm.com>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
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
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=12602;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=3wDDa0y3Nu5j7vScRtA7bGLBMevmnIkgnnn9OsoiXkg=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo41GA7lRFBYv4uXmv5Cho853sjy+a2Y8AGm
 v/r6QMHvzyJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaOAAKCRAbX0TJAJUV
 VtiwD/9TSmbV5Rv4XN9y8w59RirsQsJ/kaR3TIjqrkxtUyO9XmWHQ1tG4Eh4vKzKyS80fyLSoab
 YuVhno6dcSH5aDYCiGjXPPFctqWhcaowSb6V2Q0RlHAtzn1iAPgOMoCj8cTYymgdV3mM9Sgb/Qa
 N0o7YoEh8fwdFimgRehlZ1TPi14fK6+G/L61LvyzSRUNM9NPN3ybTpis4pNt0CbyUGsSwi6s6NT
 hYPOje32QAsSIw1R+qW0Op9HVEHwg+nBnqDjqex1H0UmeYl8DME4gqRYehk0kRn/uaOvrkmh6lM
 4wclTRdzLU7vUE3lPFDmC4cZ2FkpOFk8lhg/7Y0/TXIc013feDztd5sIbIpDEdl4+bBokxfhZas
 OmXD72AVY9tW9pOKuQBHtWHAQcKjrCk7N1/oj9JMa7iio+qVO3KilWMYLHMV7b7vpJHuU1ITPYx
 Xebjooiu5oKVessWXswmtNrE6OsBT+xzr7HqmgzwgniRF8UAKWF5zpouTCA6P82iwUzqKinEuQm
 0zYinr2hLTffEhYG+dwIFo8+o3U7zzrgANcicroxRRx+OTHmwtqIVzKXzQ0jK9V/4BhIFLlhanh
 7P3mrULOoJTIiEqbAMOJ7rkpKqHclKtN1RLpoh0j4GKYnKqpETyMxY+8SoOXvvVyFQeZn5f9b8s
 TQXS6InwvwSrZ4w==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-GUID: skoFNhKnEslHymprAFa2mo-xwSbKpr6x
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfXxSPvcqoH2A9K
 FHGXPyu6pp9TwiFnBkJobDpNq6jefmOzivJXmIKDMkB2Pgi+PIYE9E+mxw5odcnUDS3A5m8bvFC
 3sLysXul8PmwzWOndGXP4r4lmf5MaU2t2q0tNHmDlRikqJNVKDdrTvURpYJtiNr+SqB/wvaWPYj
 Iz2zhAtPHYR8bXXkTcCYfCtkUUED5T6tXbs6U2mjZ2K3pXT9HJUrACh5zT7+dN/3v2rhRIKTQ2t
 wGWkc9pKRmP2dU5wZ4eeioMEXsQVlfm3/GrLrOGOSk/M0P4XzL7mdFoa8FxtE86G+gxgPuP52qn
 7SbQofJTDyns9AcYYnrkLEGBaVRsFBVJ5+9OOPnjqD53jbZtGC9Yb7gPD9lH0jx3ewOObiKlIu5
 KSvBdArwL9wo0XYhL8kXqJGS0/rIqw==
X-Authority-Analysis: v=2.4 cv=YokChoYX c=1 sm=1 tr=0 ts=693a9a44 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=4YCwYE_O2Fn-gSgt1roA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: skoFNhKnEslHymprAFa2mo-xwSbKpr6x
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 malwarescore=0 lowpriorityscore=0 spamscore=0
 clxscore=1015 suspectscore=0 bulkscore=0 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_021740_675095_CD9DF891 
X-CRM114-Status: GOOD (  21.08  )
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
