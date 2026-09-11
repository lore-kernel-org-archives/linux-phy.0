Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 196EAC88E59
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LLWCMb+JnftkxI3aykS5+UYEERQEzkpGbWFecauT0Vo=; b=4UAUiV+tu99iuJ
	qag8ekf73QddRKr/DedOu/4H7Xi0rI2o22ExtfIsqFQa6BwdQe0nKWiubvYZ/9srh86vbWPWX6Pph
	HNZMkcWvWt0gCNpwB/KphGxISXbc6Zyje9obMu1BOuMYm0D3+Os67xcr3tv0TYRojT6nNCVvWn+vr
	jR6FSTfvRkv5Z/9uZqivt7xswCA811Jc92zsw/LJoYiFp8xwL9zi9oCz36pkfp5OSPlyCnZGKa6lr
	yef7VGfNjGQUcwYPuetcHE8nZL51Ajk3iGH+5bAKlGWt773fHXVoogIPMSJ8yhm4FaOLqCDdqN9TN
	8jSotAQc10c1BIV1GqGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53LN-0000000H5Mm-2Mvm;
	Fri, 11 Sep 2026 15:39:14 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53LJ-0000000H5La-2OwO
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:39:11 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BF91Zb170844
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7GNl5Ol7V171vLY4SOIszaya0H3xLldgY2l7ienkQzY=; b=DNcvZsXhmARZ35ye
	zktBb0/2OfN3xCnrw2BrlTi7/7yEOxpVAFohELuLfYHmX5IyYyQVFYQ1rv8F9kS5
	UUt9/0hFtP/Urh4UBFUKrLkqyJCLll3hEkaXEWBAoSoIcWDXIy4bwHz3F7zq02T9
	fcO+h1g1Qc6KkMSzUwVxHnYi5obTEWXmU45nvXdSI8nzaYoUJXHsP/9wRbjoYfqp
	s8w+uTJYGhZ8r4VXwOBbvFCHty+/IdqLwvPnMZ9FJJM86lEUAW6Te2FbXnpFbkBB
	gFNGpL6UcSuOp8G2XN52kjvLW8gvR32Jt1PXjbr9JHSLQYGEadxCUQkQhf1Jeje+
	plOLcA==
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmm1e84c0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:08 +0000 (GMT)
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-4519ef1babeso789085fac.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:39:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141148; x=1789745948; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=7GNl5Ol7V171vLY4SOIszaya0H3xLldgY2l7ienkQzY=;
        b=ZEDiDxLwpP6vJiYSzDs0Ss2Tzcov8C9iylHY/iRQc+zx5VK23tqabDf7XuEMFe4UD8
         7YitwiGABDrZM00fpzLYQNKqqwRsoL9Ef9ALR01P8Wl9rMd0XtyuZygB5wZJ431+T2rJ
         zsoPzLul0q11fAFn5cc9MUq5juqWuGOTLBlQ3ecK2pxmovYQB+UCt+pBxEkAktS97rml
         79s89fSqO0mUDIva9aD/L6wAlOHPIeA0sEqK+BUVEkanBoQrO7Nu1wJkkOK6IJ95WjvF
         8hf0mSa4TOS/nKoS0S9ub4BR+yJP7iXDdHWlWfDDOB5pA8XzQWiWHdtb3Y1e2crwSU87
         xBsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141148; x=1789745948;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=7GNl5Ol7V171vLY4SOIszaya0H3xLldgY2l7ienkQzY=;
        b=s6/8wFg5sgS0GjKf8CStc/w0W5Qwsl6h4aqNawwjGtzT5TtsNiNH/qVgsFSUtkkjok
         KujLYtg/D4YESXk6nWfnc6ozmj0u9vB8ksBp1qgKnAFq+cc22KW11L7mxcxOnSAypdwM
         5fGvLrSrkMacGgt77C3rmvcJSe/e6XuAQSPD3+MQPTU8nhCotmn92Vu6pXqxzjpoCMsZ
         SN5aiBAzgy3bc/Hqk7aFk3HVGTPdVBKvGH8GY1fFPc68x2ZUaEk04C0q+lxAd82QRFfj
         ASskpA00QVH119ze1xBmgj4c6ppLSJlI7qJOxgT9NmoHz4VQv37vcZCQyO+QujAcFX4V
         XUjg==
X-Forwarded-Encrypted: i=1; AKwUvBy2lA83uMIn6qf2qAlAn3dVnlkKNqse7zgXTs6J2cahnvKMEA4j8FpOvINeZXwypCq9pnSw2HNl63k=@lists.infradead.org
X-Gm-Message-State: AFuF++lDctw9Bv800mEklN2fiMbKT5okM2Y0zHYDgJH7ygko0fQb/DAS
	2UfjEIh07NCL3oVsaqgtk+oDCI6VWkfDhRfld9vIWjJNOBmO2zML7WOM1D8AjK40dQH7tE8FpwT
	McLe8UkrDAc/RixrScy3EilP1MODrh/lDV8Rpnd4ajboiWW5NFYBN62g0p9UDkyb2kB0gTJWbOl
	Ap
X-Gm-Gg: AYBFou0kliF2lVH4BMDKDXqdCLi5vDi78KWetPVmDbSq0mioM0y0C4hdlcjwEefRA+V
	QK/q3LX6VfNmJ8buZBaTYIL8ThIRgih74WWaMImekIlTOPzkauVJ8hFo9f3bSzIUtBHsR7RTign
	lVqQ4Qg+Hh5EDFvsX+5zEDDfyatvfY4v938iEvxc2qCUkg5Nfs3kdkdn05moReCHr7rs55msgUn
	fDUsbLavtl6wiN1tNVKMt7aOc5UNHNZiigiLepR0QnKuLTad2q0k+lPpSPmAv7WcJjh5vYS5C/8
	mS0f9jcbpS5CA0ByvwfC2qqAJd/Krupafc2xgVrRFQVFIhRaBQxElv6vUGOPOB2NrosHL+mz9aw
	wgKuGUGzcO0hDFt76yuvT1fSsZb4=
X-Received: by 2002:a05:6870:b017:b0:475:e0a7:9f2b with SMTP id 586e51a60fabf-47de8f960b1mr3322070fac.25.1789141147970;
        Fri, 11 Sep 2026 08:39:07 -0700 (PDT)
X-Received: by 2002:a05:6870:b017:b0:475:e0a7:9f2b with SMTP id 586e51a60fabf-47de8f960b1mr3322042fac.25.1789141147541;
        Fri, 11 Sep 2026 08:39:07 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:39:06 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:44 +0530
Subject: [PATCH 13/17] phy: qcom: edp: Add Nord spread-spectrum clocking
 configuration callback
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-13-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=2061;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=FwJzTy5VClUwUHMCnyi7dHL7Mwmhf3eI0myaOfAWa3U=;
 b=DiWqQ5UZ5j739oSBkbZhMvv/suocnQ9Xj3QcKzoOKXRHYMnmqYPhStGPTKG47qOZElQeh7Ny1
 iyiVuZ1MPvtCsZRvX9BXs07CT/rnTDWTwPf/jphP1/whRtnfvYtBNuG
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX7ADNKdjLUBOJ
 qxL09VqUDxm2gXRAYZHx1OpbJndjtbclynA7tiqC5bydfPaf1QuXMNrK4p4pI3awd33N4TxxaYN
 28fknkW5szxpprEtFcHFm1zQnou5Tg4WU+K/rVvFQW6EKdjlp6VrClLJzFaTv9qVHlb40bQi4gC
 WM0vDS3aBME5tivf5a8JBWJGfPihbdUdv5iR844rfaMM/NQvV5WZ/aqJFHvfrgtLanmkKvaGxgP
 8byMDNM3F5Ju5UlEuPTg/lDl04g9zCsv1W/OA7N5enVN2ppBTrxwDVGrM6nWP6fbZ65OhB2LHXc
 ISACSoUTBqD88yqIOX7CSfnzBpTpALGJcAXMc8aAD/37cRTbJix/aJ3ZFWMo07kryz4Er8ja22d
 0B27ZHporeOpQD76GiFNWH1VTnDeybS0krZmpu3Fyxthc9OYqEnzBADkvPwX6m+aTzNMJcouHyl
 R+YB8JS/qAu8wDby0nw==
X-Proofpoint-ORIG-GUID: jB9Xgucg9PAy327ICVIUAjH8oXOEUd98
X-Proofpoint-GUID: jB9Xgucg9PAy327ICVIUAjH8oXOEUd98
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX+c/CTV/s1ppc
 OWx4vACPyGAJbWy7wyskkMAPtPH4VwQqoDdie/18GpxM09mZgEhvNh8oqOq+lyHOxhp9AB5u06I
 8/Qzp0K0wv6lbQWp/wHXVCyqqADbUX0=
X-Authority-Analysis: v=2.4 cv=LrwHWXdc c=1 sm=1 tr=0 ts=6aa4209c cx=c_pps
 a=zPxD6eHSjdtQ/OcAcrOFGw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=EUspDBNiAAAA:8 a=guHe4NRHSy_fFtsU4t4A:9 a=QEXdDO2ut3YA:10
 a=y8BKWJGFn5sdPF1Y92-H:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083910_720008_17A18750 
X-CRM114-Status: GOOD (  14.08  )
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

Nord requires different SSC register values compared to existing SoCs.
Add qcom_edp_com_configure_ssc_nord() which programs SSC_PER1/2 with
fixed values and link-rate-dependent SSC_STEP_SIZE1/2 for RBR, HBR,
HBR2 and HBR3, per HPG Table 2-9.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 43 +++++++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index ec4220cffe69..a0f4b12e561e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1645,6 +1645,49 @@ static int qcom_edp_com_bias_en_clkbuflr_nord(const struct qcom_edp *edp)
 }
 
 
+/*
+ * Nord SSC settings per HPG Table 2-9.
+ * SSC_PER1 = 0x6b and SSC_PER2 = 0x02 are fixed across all link rates.
+ * SSC_STEP_SIZE1/2 are link-rate dependent.
+ */
+static int qcom_edp_com_configure_ssc_nord(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 step1;
+	u32 step2;
+
+	switch (dp_opts->link_rate) {
+	case 1620:
+		step1 = 0x83;
+		step2 = 0x02;
+		break;
+
+	case 2700:
+	case 5400:
+		step1 = 0x18;
+		step2 = 0x02;
+		break;
+
+	case 8100:
+		step1 = 0x5b;
+		step2 = 0x02;
+		break;
+
+	default:
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
+
 static const struct of_device_id qcom_edp_phy_match_table[] = {
 	{ .compatible = "qcom,glymur-dp-phy", .data = &glymur_phy_cfg, },
 	{ .compatible = "qcom,sa8775p-edp-phy", .data = &sa8775p_dp_phy_cfg, },

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
