Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66430C88E50
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smtQ+TbSmtoa/ZihihekqLo/KG8uTQujiEkpoMpsmPI=; b=syLEze4apQzX4M
	qzSzMB8j47Na6HxKZrXDjxkuQeY23F8uBbd96uQbTXkL5joh1vsEhK84LGl6QR/qZ5K/6OOMNRter
	GSXCoTDf/K5nQrYcRPIpbW4NGsPtXwwBrtyNP+FdaeNiDPHiVrq5szVCfKvDQldLyePnLlEh3xd1Z
	N5uNzL9kRi4wRrDt+FQm4UMjssgY7qwgUszGrU3u4MgyPOHakVBHSK+yfYtlgWo/jXh5EnLr3q2DT
	g4CYK4d2rGyzXB3au9CEENycTzWpU6Ct71n6GWGArTvjZKLl1HRPZxoyCMvoMPzW/T6yJRyOQ5kNb
	UBIYW/1mz2iuk55DT/Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Lf-0000000H5Ro-43cJ;
	Fri, 11 Sep 2026 15:39:31 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Lb-0000000H5QV-41YG
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:39:31 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEmPmv799180
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gsOL6A/XqlNEcKVc6fhAS5j/vIAUWo9Ol5uSSyj0hsA=; b=H+EEQtfarwqUIvmS
	Vy7Qi9Oeyq1ghH/qfUBnTvbZ/YgZiRSHfnyUNLpzAYuebisbueA2OTDIkfRfO7Wc
	OYPv2BYVpt7SPEEYoxgCiQwHEHTDsGZ+dQb2f7ohn655GiKLfhWo9tByi8fLWvKp
	fjBqFxvO1EexVxrYvW1BI3zUOzsf9I6ZQJyB81FLGj6sh9BncLCCUW4ZZWk/5En9
	H/1QLCPjBUQB8hPHSIHwwYHB9pFveTyUIWzla1rBHL7gUTh+IqCzOVZQQSyx5nmB
	4cg+DJF5OLCJrFhW4WWmrpHl5Iy/jRSS7pIgx5Miuk68c/e172oJ0W2eXyw8W+vG
	IPPEiQ==
Received: from mail-oa1-f72.google.com (mail-oa1-f72.google.com [209.85.160.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gm2q14a7k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:39:26 +0000 (GMT)
Received: by mail-oa1-f72.google.com with SMTP id 586e51a60fabf-46a4168b520so926311fac.2
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141166; x=1789745966; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gsOL6A/XqlNEcKVc6fhAS5j/vIAUWo9Ol5uSSyj0hsA=;
        b=LeAmGIkiQyjFdgZ8zY4ryTJOF3ByKYp3LnPtiQha6U6X4OOhar+3graWKLBv0FvWv6
         FrmlpCWutMkBUekckXrc1MfGLsHlHVJGya6/6iNXebLX4L2S38j1eQaMjRSLwzppbClf
         JUuH3zNRlrRf3R8xx0VUWSaFQs3AOIr5Bi7PBpf9dpxGBdlI+8lunhwYzi7RlJU9s3lz
         Fn7j7EcaExHvvKhCUP4kSNPXqxVmHeVcgGzuGD7LtiOqms4zqKY2vTazAIOrbShdROu1
         9hUQOOxHDrXYzBh1uHC5yTQU9Pqb1VwSogq/aQycFoPEHdt0Y9mdSKrsqEArdChQ2C7B
         ZTcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141166; x=1789745966;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gsOL6A/XqlNEcKVc6fhAS5j/vIAUWo9Ol5uSSyj0hsA=;
        b=qaKEC0KSRofV6DHMtDebmdI2IVvQ8dhbjqSxR+MFEC/vVm9OYuVgLT0KE2qoJ+033+
         7ESoFOLGOIexpnOm6Ah7Wg5FwLpOfplKf03HBjppxSNmrJHB71mR1LjEb8yXg+tXkodi
         aM9Jtf+m4ukpjnagkHuBcyxW80AqFEV1Fo9VdqKkb9mq1TT/l06Ti0r3YO8OQXIX6+7k
         IeFgTQFDL44XUaS0oz50HNqVQuE5jswjGor+3QX1/YGgVZygzduQoJojX/+LjgpdZIPe
         qRBH1yJNg6XM482lHYgEVikCpNrLuhm0cYezwZiRJUQP+9xy/O+7tpjb0krRAe/Aotd9
         88zA==
X-Forwarded-Encrypted: i=1; AKwUvBxmxUvIG0SHNcCRhfaJrkkW4VnbSurnNccFbehRePG5xEJGeRC3jG7L+hE6gtuCRiToiInycFcyFcc=@lists.infradead.org
X-Gm-Message-State: AFuF++mBq73ACWWw1hPNdHzvGzguNNPA+7SVF7/RKQYeiz+1Pc7cHQmN
	3twGRSLot3nEuwTGhYotyv4HkLIKp+/kTeN3PkC5sScUq2raH6ikXgtOOQ0yOlVXVuAT9BtWKlv
	hO5zM28a3nnSBHRplIAiabqX20m+NBPHC0aNtZZuO3zfrd4MigsamY9n8GHR0X4b0TeFM
X-Gm-Gg: AYBFou3QyLq5fetb2v9Dx3jMMgHfoCz3uu5SnEnEVb9Vrkg1o8sBE/F5QZbdCC23O1e
	R0gZDp2IEllsM5hoYNFnCJV9y5NqHwv1TgjPDOiTZ8fmVCkby3X6Ns+trwcbN8wBMe3JsmNHrcm
	5zD3RkmASvxXjB4BH+8m1FOA+ChWliDDKPeyKV3Ya+6yZSZrIQpw2WFwt0aJGP+5+F+F+SVyoh9
	/06obZlZNKK1ZLwpPlSTahIpEk7FJRo7EDOPdVJ5sGFsn0I8uBacFLziV9zEPrZOpM7yMabT9cT
	xVQ2VuiJf6uVbX04DLhD9p908/JeJfSk//szVQUYDxH63StT85Sre0uk+3z7F6/lgOgtFAI2zuU
	pS34JBVXjg1Q9JrBDUoKsfoimDos=
X-Received: by 2002:a05:6870:a788:b0:457:b657:b084 with SMTP id 586e51a60fabf-47dea52533emr6576584fac.18.1789141166297;
        Fri, 11 Sep 2026 08:39:26 -0700 (PDT)
X-Received: by 2002:a05:6870:a788:b0:457:b657:b084 with SMTP id 586e51a60fabf-47dea52533emr6576494fac.18.1789141165861;
        Fri, 11 Sep 2026 08:39:25 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.39.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:39:25 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:46 +0530
Subject: [PATCH 15/17] phy: qcom: edp: Add Nord LDO, TX lane and TX
 resistor calibration callbacks
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-15-e25c073cf1b6@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=2541;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=Xy/VEWguip0tUXARr40NV4wwp5carfCh+h9B3ClOARc=;
 b=fCVipWrCI9H3CCZKDDD14z5Es5pRMhlle8YcU1NBrHBqtRPMssWUK43GOknyyVMcKJWene/D+
 tVmDRWKwXQyB5+I7VXQ5EnFrpSRBAEc5kM069eafOWLHDQgUEcpXd5X
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=d6lgWhjE c=1 sm=1 tr=0 ts=6aa420ae cx=c_pps
 a=Z3eh007fzM5o9awBa1HkYQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=Ap641EtHlGqqo4O5a_8A:9 a=QEXdDO2ut3YA:10
 a=eBU8X_Hb5SQ8N-bgNfv4:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX7NHKK0hJhGIv
 HWdiGDV9qwjSw2V+4smIcTQmksv1liybZ/KG665y91EFpcnZKd1ku0zIWjMXYa8OTmpwH0skw0J
 6zvRoUv+xyu+W8k3U3tR5JzS7uJJWnE7aktkfA1RjUkwaCp0b5Q9vf2reeiiVp9K7HxzYNonF7j
 j0/FbZFjDtiaj5eRldE5cePLPVlZK1ebPbxu1fF2fL+I9hxCUi73SRwTR6xTbJSVXiJALo+0h7w
 H3YHbyp2ffLa8+KH+67qlQcwIvYUR927AkVXvfA1XchKA/Vpamu379uOU7A0ohxcPgtiODi0+HD
 n421HClaRij2nkkiI64AbNX0AJHqSkntKBT7OK4zB2ZacSTIbwabUC7nnHJ8e3o+TipLaJUQHXo
 FhSlmJ/NaABRbj4AXOV6Sf/b5any9BtudesUFLJtPRwmxEjCBMIt09RDJHY7CO/kASMyh1gKdbj
 lqJZ20W/3GHZURHEmOA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfX/2ZP0e8oMohe
 JrHyyaZ7HcltGsRwHKb6HhnTVPXV98d79pJAodeBoakuCzR2YzbWy0TFKDOG++j3p8sv6zI5WDc
 a3yMO55xc+dOipxRGMtJA+AVpIzU+Ks=
X-Proofpoint-GUID: Ovf6rZeIjgPGRgja8acEhMNOIobSuEbG
X-Proofpoint-ORIG-GUID: Ovf6rZeIjgPGRgja8acEhMNOIobSuEbG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 spamscore=0 priorityscore=1501 bulkscore=0
 adultscore=0 lowpriorityscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083928_130100_59EF20E5 
X-CRM114-Status: GOOD (  12.73  )
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

Nord requires different LDO levels, TX lane control offsets and TX
resistor calibration codes compared to existing SoCs.  Add
qcom_edp_ldo_config_nord(), qcom_edp_phy_tx_lane_cfg_nord() and
qcom_edp_phy_tx_res_cfg_nord() with values per HPG Table 2-1-d.

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 47 +++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 4d1b2c81d956..361f4e467351 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -1800,6 +1800,53 @@ static int qcom_edp_com_configure_pll_nord(const struct qcom_edp *edp)
 }
 
 
+/*
+ * nord LDO configuration.
+ * From HPG Table 2-1-d: LDO Configuration section.
+ * eDP mode: 0xD1 for rates <= 8.1 Gbps, 0x00 for UHBR (>8.1 Gbps).
+ * DP mode: always 0x00.
+ * Also programs EDP2_DP_PHY_LDO_CFG: 0x03 for eDP rates <= 8.1G, 0x00 otherwise.
+ */
+static int qcom_edp_ldo_config_nord(const struct qcom_edp *edp)
+{
+	const struct phy_configure_opts_dp *dp_opts = &edp->dp_opts;
+	u32 ldo_config;
+	u32 phy_ldo_cfg;
+
+	ldo_config = 0xd0;
+	phy_ldo_cfg = 0x03;
+
+	writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
+	writel(dp_opts->lanes > 2 ? ldo_config : 0x00, edp->tx1 + TXn_LDO_CONFIG);
+	writel(phy_ldo_cfg, edp->edp + DP_PHY_LDO_CFG);
+
+	return 0;
+}
+
+static int qcom_edp_phy_tx_lane_cfg_nord(const struct qcom_edp *edp)
+{
+	writel(0x05, edp->edp + DP_PHY_TX2_TX3_LANE_CTL_NORD);
+	writel(0x12, edp->edp + DP_PHY_TX_LN0_DRV_LVL_NORD);
+	writel(0x12, edp->edp + DP_PHY_TX_LN1_DRV_LVL_NORD);
+	writel(0x05, edp->tx0 + TXn_TX_BAND_NORD);
+	writel(0x05, edp->tx1 + TXn_TX_BAND_NORD);
+
+	return 0;
+}
+
+static int qcom_edp_phy_tx_res_cfg_nord(const struct qcom_edp *edp)
+{
+	writel(0x06, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX0);
+	writel(0x06, edp->tx0 + TXn_RES_CODE_LANE_OFFSET_TX1);
+	writel(0x06, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX0);
+	writel(0x06, edp->tx1 + TXn_RES_CODE_LANE_OFFSET_TX1);
+	writel(0x06, edp->tx0 + TXn_TX_EMP_POST1_LVL);
+	writel(0x06, edp->tx1 + TXn_TX_EMP_POST1_LVL);
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
