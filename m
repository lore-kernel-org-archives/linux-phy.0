Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 078F5C88E45
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmiOCLfm52j8HI9mphm03hNY8rfJJrSd5+rwzCUXxgM=; b=KyEysTYNMIpRGG
	DiHcRjbOXjBaPK+4LI7oM686kJEnmI+lPGHcmE1zmaUpS8M7sAFfxQ/s4nwaczxofo4mzNgvo0QTZ
	fEP0uO1dqVhG89Jst5FxOgViIzB804vqI/NiXf/6FxtKG9GczCy8eRPs0QNbfv2EggIAIyWh+dkx4
	AjFU8Ec0yEIAM8xLj4LnP0n335KXZSYsGk6CREzlA9iZGGXtsYHLb7fBfzolAe5rJffcB9mFtWFNQ
	XEHwxJDXtOxYqSsngMotmxP7eg2VvbABE4oMp/Si6K9C/aCxsfseaqgpbYGgfXGc6iVJXuSiL1Dmc
	85UKLqi44wG41kBvIbhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53L4-0000000H5I4-1maJ;
	Fri, 11 Sep 2026 15:38:54 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ky-0000000H5Gq-18jl
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:38:54 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BFA8tf658371
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5NxuIBW575W0eOajYRS3D3fuU11r9CtXlXrtxeBTWyI=; b=cAwVgFbrxyx1ddw1
	WrNGrpTh836+8VxMQDkvHRfWVkIIOrYKxX/cICdOiwy8lC67CrYUJH3tA3aOgCC1
	UDu6atn1GvanNEYh/IquKYfs7qFBL75gfsaa8+GbJgzbpTSMZdKKRZ4Uk7Fr8rk1
	MuEKiTBHTG2ixukBphSsSHMsBC72UMYc5IxWTfD4F6jNYQgWgqnTcUYxkRfMrDax
	FLqXPlQJ7TSmRb+2KVp9DV8JMB9hrABGk3oY0GQtZIDmzvJGTCzAuQZctE19nIrw
	GTzoBOG+9mzBgs5UhiFja5YHpphJMxUF/yrvZYK0bzg6R+J2EP1gfvBAxK6Xksqo
	m6wGMQ==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmm22r446-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:38:47 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-47a8fd3b0e3so1124799fac.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:38:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141127; x=1789745927; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5NxuIBW575W0eOajYRS3D3fuU11r9CtXlXrtxeBTWyI=;
        b=TsTmqMvR0W7Na82nmNekDKeCE3iTCxI96/S5B8urhGc+Vkmu0A0UTEn++H9T8itvII
         skSxWdcPY+je1P4iUZEmUaNw2QRvNRCI9XEj4+1xFCNaKSF/NvSqjDowoqgzADMk5qTN
         0ePVp3LQyt9/siwA8cXsYUabt5Fy6RitL4YR3XDP95Je1bHwwBLjjBRWiq3S+zkKMJz5
         3iVnuGy5OJdVfxU3nvDGi5R7Q1XaOmSUbKlG3YrgsdtuRBCXQPl8aJBLz+6E4DSO45tz
         Yf2na+2TNkwQhjtpmV0V7PVdXQlebzASbQQFJBeM9BElGBSjkjV4tf6h9e43OD+XUq6W
         zFXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141127; x=1789745927;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5NxuIBW575W0eOajYRS3D3fuU11r9CtXlXrtxeBTWyI=;
        b=dmIm6Dm2+9nltCh8w6lJR3D256vZXsLoBIHewrK2tA7mWlq/WkwbfglPVCnVblAagc
         DprPP/uGcWSlm5z+5kb6A/JKK/o4sTv9R7+HEISRquKubha9M9R2Afikvn/Mond3dLKv
         ay5QaaPYX4ihjXjRMPONS1u/5/3INKDB4Fqxmz+OHjC+l95hOHz8mF/HNcbvtpAsPRpp
         flWJnE8hiaoDC+9Ue7VAyj9C/4Amx9MkT+SPLJ9476Zg0GKf60fg1nvnOMQzCrRqqTqd
         uKtQPPhgQriVNX6XLxFOvrZ0Ngm8n3/KY+TIpfMBKGE8ISyi4YuuxaKoiy33OGD43GA2
         XxlQ==
X-Forwarded-Encrypted: i=1; AKwUvBzTsIryaWFhacCpT6XXIs+D9Bef8lUc8Qfb0c9N2Q8jtSP5FcqxiGFFDm6DPNxy5i9K/nQb7KXV8bg=@lists.infradead.org
X-Gm-Message-State: AFuF++kIrV8gfT4rP5SM5v7hFalSN0yLCwtflsxpsXhXr/OIS3AC1T9O
	n2Qrv8EXLehLiycFGbDTLTSKc64CtQt/NyFPl/YEHr/D3B2qSYgS1PXDaVZyDuCoTP2zRol2Opj
	Tlj5pauB+I4JEjuQ+xTxLEsFNbSMldWT7o08SAxPBwOGrMBV94kI2xL8kJfE0wCOM4LY1
X-Gm-Gg: AYBFou2GI7d1Lhd0TTy1Hc7fwk0E2u3Awd2r/fHNjdT++Pd6ry3OXeA+jKjeHC4jX6M
	gKD+K8DBP0s2bN/LG96jOFcmk21s903ZVEQijaqg3nF8pYmxphU5lL60jL87PsjLe/DHiTFRL5U
	rFGwZ/QmNNVedkT/4Ur4S2ufzuCiczSHyBao/5CXHPjkkiVMHCZCpNEw7F6jMmNnsXC8/PDFLV+
	q66uHSJFFS+H/Yz+RElhjTvYZjtH2wdnD1xoUNj2uUrwMlgALX3om8b5F6Iqw8TCTisGXvZ3CRE
	zqwWmgXtpxHtQmwvoCFYuts32H/cUDdL1icOMil7MIIt/M4yWWVreG3f8E4JKqzgQmTTJ9PGkSC
	4RubWPqosKA+1NzmiTcjZE/RDon4=
X-Received: by 2002:a05:6820:7092:20b0:6b1:89ff:8a1a with SMTP id 006d021491bc7-6c0b9b541c2mr2653061eaf.3.1789141126714;
        Fri, 11 Sep 2026 08:38:46 -0700 (PDT)
X-Received: by 2002:a05:6820:7092:20b0:6b1:89ff:8a1a with SMTP id 006d021491bc7-6c0b9b541c2mr2653018eaf.3.1789141126125;
        Fri, 11 Sep 2026 08:38:46 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:38:45 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:42 +0530
Subject: [PATCH 11/17] phy: qcom: edp: Add Nord PHY power-on and reset
 state-machine callbacks
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-11-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=1878;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=K21vnVfWi3gJkL/oAMBFt2meTnwDXfVTNB9ot4N0Fng=;
 b=vc3SiT3OwSc+YhqE+td40cxikmsldcWKufYbhRHCLviUwyr2w89FqbTA0uHqR50TW9d2QTk05
 tb4Vf47coz7DcwHh50iiUINbuEbeKui2v8SnRU3cwWtZ7O2+fInAqaz
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX6XlQ8rMAZBqz
 q1et33SKLUPA47eWiFgw9oJpLhwo53R6ongmFPY1d1f5l5nzlyW+Hk9wZrTKE0qxAlwZkze3hCi
 Jo7x/OgIWFhZEsYfAUk4E6deHdnbVDhvucz9nDkjBU6kUA7lXt3zFm4JrmsLdM9FvAAb+eE4NK4
 gNjF5i4dbPVwqCfHGijcaO02uKNzkRTSLo6vWKP/2nNp4V1EXW5gUM5CKhGrz64Vi12wPdbACpf
 1aJWud/ZdMOpQWKmfjkzfEQrdtihgpHdkl3pNyqBpOjL9gWrc/Vrtw2WcG5nayUKu9Mbpm1ZR2b
 DG1Bpr0/j2qw4xRm8Uk/nh+pkGY0l+jkwy8x6UWTuWkKNRpJrC07GPulpOAegE646C8tUUSZxi1
 NNxBJ/ISWK5vri/hF6Lj8Qwll5CfLFvdtuRSWNv+d8nG9xKB1O4cSqcIG2PpLAhhjr9bCzxJoAo
 J0Rsvkqxtvvb6VaqdUw==
X-Authority-Analysis: v=2.4 cv=LPDz05W9 c=1 sm=1 tr=0 ts=6aa42087 cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=X8Wa9jmQWlBxTcu95m0A:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22
X-Proofpoint-ORIG-GUID: IidJuwENmv-Ilr-zt3zzHVO_tRNG0N2V
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX5nd9Yg39m+kF
 hTeAm9vmE5MrBoFterTkccXa4Of5qvUUfN2fy7NFDkjqtclrH1+nCF9k9jJEEyBGhvaQ95h1dsF
 MIARNOIAQS3YAAoZlYQg2K4nLJ9sqZw=
X-Proofpoint-GUID: IidJuwENmv-Ilr-zt3zzHVO_tRNG0N2V
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 clxscore=1015 bulkscore=0 impostorscore=0
 malwarescore=0 spamscore=0 suspectscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083852_931859_D49CB03C 
X-CRM114-Status: GOOD (  12.11  )
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

Nord relocates the QSERDES COM CMN_STATUS and C_READY_STATUS registers
so the generic sequences cannot be reused.  Add
qcom_edp_phy_power_on_nord() which powers down all lanes and polls
CMN_STATUS_NORD (0x1d0), and qcom_edp_phy_com_resetsm_cntrl_nord()
which triggers the reset SM and polls C_READY_STATUS_NORD (0x1f8).

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 64878398f43c..6cac4b55b66f 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1612,6 +1612,31 @@ static const struct qcom_edp_swing_pre_emph_cfg nord_dp_swing_pre_emph_cfg = {
 };
 
 
+static int qcom_edp_phy_power_on_nord(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
+	       DP_PHY_PD_CTL_LANE_0_1_PWRDN | DP_PHY_PD_CTL_LANE_2_3_PWRDN |
+	       DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
+	       edp->edp + DP_PHY_PD_CTL);
+	writel(0xfc, edp->edp + DP_PHY_MODE);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_CMN_STATUS_NORD,
+				 val, val & BIT(7), 5, 200);
+}
+
+static int qcom_edp_phy_com_resetsm_cntrl_nord(const struct qcom_edp *edp)
+{
+	u32 val;
+
+	writel(0x20, edp->pll + DP_QSERDES_V8_COM_RESETSM_CNTRL);
+
+	return readl_poll_timeout(edp->pll + DP_QSERDES_V8_COM_C_READY_STATUS_NORD,
+				 val, val & BIT(0), 500, 10000);
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
