Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC0C1CA5FB3
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 09:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lOAj4pO8xZwp4F8Ui0Co79eq+yI4+o73iXnHMIKojg=; b=aSTMx/Mxmr7OY4
	PhscnLi+b+TmolFogv9Hcxpcohm7sgmdpI3jyQt6n0JVw8riNMsBTTfeGxq+o7WntPBnCddZ1O5t1
	zk4VAlvEs+FqK49HrPqghAORzBmh9cjbP1cuDCqOa1jAshaNeR3SKythHtw+b+lIMKk/ZguIJEA4Y
	27DDF4MsF6vWYP/Askwqh9AaAm0O1Mbl+ttgwzfIy8F4RDPmnrer2/BjtjObbvWAQOcuRH1v5+UFA
	+cMR1PbgK0kZ9WrLacu4Jc88RzXmeT2Ju28v0QHKitD0cZogOMjI0FT1TvbWk1syq7lZUiPIYD8pn
	bO5ee3xMIcZg3RCsfrDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCa-00000008O5n-188p;
	Thu, 01 Oct 2026 09:35:44 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCDCX-00000008O4b-14LI
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 09:35:42 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6916xRw61289124
	for <linux-phy@lists.infradead.org>; Thu, 1 Oct 2026 09:35:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jNW5ncIRCv0ucBtC9pMRgOL2NfkSvdDCeec+0onL5xM=; b=gl8qhSu8MeS/Hk8S
	jsnfJe1qZk49Vf0PY6lIYehhWNU08gwQlD/aUf95+C7W4OOQJRPxCAQs0AvmpsRl
	9vUbimYTvg6Kw0HTzMr0sPAydctyV1GGg3wu8VHiq0NokB0A4l3y9OhPwxHtjWid
	qwt7VC1B0EiCJnuAXf+0RKgFb2/5pUNpt+rDKxJfT8t4TuEBM26lt2OBUQ5DNIET
	vZNGRKDCZMHBgshm8bZUbp+7pwpxv4ApN0c4uoNlRGSjU+0yJ8hNlJ+HPCySv6kh
	sHWGATgqPK+iGKf5rgKvAm6LmMSdadwWK23Cs/Ztsmm17BME/XmQyptZ26XRGgbv
	qMDIQQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h17pjb4jh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 09:35:40 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-cc44d708055so7689965a12.0
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 02:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1790847340; x=1791452140; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=jNW5ncIRCv0ucBtC9pMRgOL2NfkSvdDCeec+0onL5xM=;
        b=gT/33aCYwG/cmWcViKDeEe5uhISqn2zvcWYMO8SyERHYOrqRPaR/h6X+XOFbnGwO/8
         Ai1mNJMa4BEpwEl7ss4R7rOkD4ElSXJIiNjTLSzXJFpR/UzfTMXFUE4RZMohfFDmcO9s
         W5yvjQUcQlmvgF5nwVCnoBlUXcR9FqHW/UisHFwQ8R6zWDvCztlG5ye8GzSF3ScNEVi6
         ZfDjtI/omXUwN2ms/DO+2hFACS/SfY4VrN8DHHhgDhG+sYHz6YEsyCgEZri9kqT/s+wP
         wSu4q+7dSX+itiV8A0wukoBFHjd1dWnCkSkL+ugtaJ6JH0AcJiUHY52EW2a7izfaXuZx
         OVkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790847340; x=1791452140;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=jNW5ncIRCv0ucBtC9pMRgOL2NfkSvdDCeec+0onL5xM=;
        b=EJOzUB6XttyzlanQ6kkYyZziHFNJlZWUGitR/rIJX9sdLxD95lbvcgq+ckYK5915U7
         08Zm5wqRbmvW1Io5sWgf1mqzhO14vQCiMusvC1It6NJ+6n7dpEX9F3vD9w5Isc/MCw13
         eZ2klkE50m8rOGzVMQsatvg62nVLH7k2Opzwokap1Iu2zeK3W3uw7sm6p7X6QmLZY+SD
         +qgsfgDUpiaiD4v4L79ptwnNcrKVUgnTVwUkeHCpVc9asHAa9ZFaVl21Ll5hFzj6feQp
         eAxD/mbSwTig9xz187MpxegaqiT72bqi4Z+2eBRBA9hgDuRx2inmng1OcbjGaC3jDWPt
         BkGA==
X-Forwarded-Encrypted: i=1; AKwUvBxIKjbuTICvLwipT8/AfU7dnTYeP27WYp78gDxTZRR03yHViG7J9HgHhBiJqZxtPC3eRGsiLwvEfhM=@lists.infradead.org
X-Gm-Message-State: AFuF++k2kRSNXCxw8SJyyPyhNX8/2BA20GU4XsoCSAJGKG/b+cQBZuDi
	3lQlTHVx0i04/26ApmJKiybms7H+xUfExYoi3JDqhCwES9vXO8VT50qWl09gT9RwiQjpQiK2LTu
	QTXWj2rEbkW0WEFIYLkYFSHLsadeHvTLTVgRa2plyL3SlN0HeUHBF1dg84iFZ5dTlukD6nPxmsQ
	eE
X-Gm-Gg: AYBFou3/3Xjq2bHmvPf8mfep+YgBHlPrFFW87sVPdrWXZd+AJeD2uIKCaLnf79wGf3W
	elfuEjOsgJvPlx9CQ9V9AgczCcnGsPPe8s7aAus2tdlGQ1Lk7ncPPlHs2dypnjzml2nEm1DtNMx
	aOsGEE7gAFpEYVdnz5KMi7A5JnDZE5oluNd5pCy9m7j/KxpeTSk2WGUvdrPDbS4WpA3VKG76NGU
	nVasC5llaryJ4yiusBZdQEkSuc2WJNtpvD5AOMFAY+3mukvv6HEVI67yXQm7GGNlUZ36QS4WmsC
	gkR+RjQ9JsTgKkFXbdldBJX/09Rp2n4SzBdtZYU70AG9aCLZRxTiUtHMRQK+Cdf1/D9uqaLoelh
	RX2TZBxE6ijmsmyHyGXj9tD4FTTA=
X-Received: by 2002:a05:6a21:9191:b0:3da:bea4:622c with SMTP id adf61e73a8af0-3de9e7392a3mr4375992637.19.1790847340097;
        Thu, 01 Oct 2026 02:35:40 -0700 (PDT)
X-Received: by 2002:a05:6a21:9191:b0:3da:bea4:622c with SMTP id adf61e73a8af0-3de9e7392a3mr4375958637.19.1790847339625;
        Thu, 01 Oct 2026 02:35:39 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e54bf4c4sm1152944a12.29.2026.10.01.02.35.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Oct 2026 02:35:39 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Thu, 01 Oct 2026 15:04:26 +0530
Subject: [PATCH v5 09/11] phy: qualcomm: qmp-combo: Add per-link-rate
 auxless/LFPS and drive level for Glymur
MIME-Version: 1.0
Message-Id: <20261001-glymur-phy-v3-v5-9-3848c2615d5a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790847286; l=4241;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=pUj6b4ENPUA4XLnFIcN8qudRlZzVAcU4OP5AWqGsODk=;
 b=3LzkAg4XuvVrQ5zzNbfsTiboanmO4HVstA2MStGD3ahJpx3Q2FhJ9IDOS1CXWh04IWCptv6Wf
 vSOskQupflBDml+MzMeDFYebGG5XnRI4fdDswP6ctNlmcX67ucxUQ6+
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Authority-Analysis: v=2.4 cv=eqpKXYpX c=1 sm=1 tr=0 ts=6abe296c cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=tE633ojKFf1lYKHj1RUA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 15qor8MzC197ctNzY2w7qxUkHl_ZKiMF
X-Proofpoint-ORIG-GUID: 15qor8MzC197ctNzY2w7qxUkHl_ZKiMF
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX26pxkSur8WeW
 ERk8KHpjltznc44MRXS5dqpu2ffK+zoXOc9QsnyrzdWNFzw+kNOVBpw8UWoBOalY4UGPs8VGDC3
 zONfrbjNEBrKud3iIf/Ycuw0ODq1stA=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDAxMDAzOCBTYWx0ZWRfX/7+B98aAmi8Y
 Hrnz3E2xtL8NCjd7JVPg+KxtWLcVvuiDyaKs3+O1sAWGjLd2QmlETZqfctoaNuWuCMEZoF1yZFh
 PzWHr4G+f2InX/jAFTrGNlKWAcaL5+aMK/9LR1hXznaPnlGF7a5357250VjQDou6he7YRTmq00r
 j3LKu6anYld4A0pejlrxktemIiJ1GlMXhMAyo3P6Ac6DuX0kF/qovc312Q0F+SPDQ+dTHM+USQe
 3+78u6mKzY4ZYOzEqid8+OoR3hXhez+5GzQYxdwYIqKTS31uOn2ihtoom/wcbmTgDVXnNQQ0r25
 u1GYCSUvQ4QgF3p7T7VhOZPR2wnzjkPdRJNTJs30hLQS4tggzEIFd8Y88yTr5/1wsBSPLV2HNFv
 s3lofShvkXTw4mMeByJ19LK9jYLabEpJYxB+bOuDqIcjXtk0od5cnnJjg3bNH2dPp91Hyo5+gTM
 1jFVpPpN+1WOFG2Aw/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-01_03,2026-09-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 clxscore=1015 malwarescore=0 adultscore=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610010038
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_023541_310059_80CCC46A 
X-CRM114-Status: GOOD (  15.26  )
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

Add per-link-rate auxless setup/silence cycle and LFPS period values
instead of using fixed constants:
  RBR (1.62 Gbps): setup=0x03, silence=0x06, lfps_period=0x00
  HBR (2.70 Gbps): setup=0x04, silence=0x08, lfps_period=0x11
  HBR2 (5.40 Gbps): setup=0x09, silence=0x11, lfps_period=0x33
  HBR3 (8.10 Gbps): setup=0x0f, silence=0x1a, lfps_period=0x55

Add per-lane drive level lookup from the ln_drv_lvl tables based on
the maximum voltage swing and pre-emphasis levels across all active
lanes, replacing the hardcoded 0x1f value.

without this change following error can occur:
- Link training failures or instability at higher rates (HBR2/HBR3)
- Incorrect LFPS signaling timing, potentially breaking USB3+DP
combo mode entry/exit

Fixes: d10736db98d25 ("phy: qualcomm: qmp-combo: Add DP offsets and settings for Glymur platforms")
Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 39 +++++++++++++++++++++++++------
 1 file changed, 32 insertions(+), 7 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 6f5d32afae67..fcbd7b974be0 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3897,21 +3897,47 @@ static void qmp_v4_configure_dp_tx(struct qmp_combo *qmp)
 static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 {
 	const struct phy_configure_opts_dp *dp_opts = &qmp->dp_opts;
-	unsigned long pixel_freq;
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	unsigned long pixel_freq;
+	u32 auxless_setup, auxless_silence, lfps_period;
+	unsigned int v_level = 0, p_level = 0;
+	u8 ln_drv_lvl;
+	int i;
+
+	for (i = 0; i < dp_opts->lanes; i++) {
+		v_level = max(v_level, dp_opts->voltage[i]);
+		p_level = max(p_level, dp_opts->pre[i]);
+	}
+
+	if (dp_opts->link_rate <= 2700)
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr_rbr)[v_level][p_level];
+	else
+		ln_drv_lvl = (*cfg->ln_drv_lvl_hbr3_hbr2)[v_level][p_level];
 
 	switch (dp_opts->link_rate) {
 	case 1620:
 		pixel_freq = 1620000000UL / 2;
+		auxless_setup = 0x03;
+		auxless_silence = 0x06;
+		lfps_period = 0x00;
 		break;
 	case 2700:
 		pixel_freq = 2700000000UL / 2;
+		auxless_setup = 0x04;
+		auxless_silence = 0x08;
+		lfps_period = 0x11;
 		break;
 	case 5400:
 		pixel_freq = 5400000000UL / 4;
+		auxless_setup = 0x09;
+		auxless_silence = 0x11;
+		lfps_period = 0x33;
 		break;
 	case 8100:
 		pixel_freq = 8100000000UL / 6;
+		auxless_setup = 0x0f;
+		auxless_silence = 0x1a;
+		lfps_period = 0x55;
 		break;
 	default:
 		/* Other link rates aren't supported */
@@ -3921,18 +3947,17 @@ static int qmp_v8_configure_dp_clocks(struct qmp_combo *qmp)
 	/* disable core reset tsync */
 	writel(0x09, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
 
-	writel(0x04, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
-	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
+	writel(auxless_setup, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SETUP_CYC);
+	writel(auxless_silence, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_SILENCE_CYC);
 	writel(0x08, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_CYC);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
+	writel(lfps_period, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
 
 	writel(0x3e, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TSYNC_OVRD);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX2_TX3_LANE_CTL);
 	writel(0x05, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_TX0_TX1_LANE_CTL);
 	writel(0x01, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_AUXLESS_CFG1);
-	writel(0x11, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LFPS_PERIOD);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
-	writel(0x1f, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN0_DRV_LVL);
+	writel(ln_drv_lvl, qmp->dp_dp_phy + QSERDES_V8_DP_PHY_LN1_DRV_LVL);
 
 	clk_set_rate(qmp->dp_link_hw.clk, dp_opts->link_rate * 100000);
 	clk_set_rate(qmp->dp_pixel_hw.clk, pixel_freq);

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
