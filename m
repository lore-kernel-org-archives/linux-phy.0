Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3368D5C0D9
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 08:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJAqTV4pXAhp2FkgGgucFBdVHzZaPXCQm+/P9xnrw90=; b=Lph5Crt1UxM2tc
	F/1Eibcps0Z0KuAjhnUjY+hb3W1/7Oi6+puGIrrtFDMN1/FMcJe50L/MSo2puaJbOZJ7ThSSGJBwg
	vsr286WagO4K1cPkiViMnksyeJyuTFdeEacei86Hl/SJXU2GkWHMxseWzMo3f3WLFj5f2Z/2Ea0AM
	PPkqdtgzA/UdW97ByhuoDOiNYN1EshF+QEU3x/WYwVuUpjhjmeVOicPFYlZVz3MwVnf5EMJZBfvZY
	FF5M3kv1psqD6b5E7VPFgN03hVf/IWOFDQuQCYu1nSxdJqcv2D5e+q2tB74pozSu52QMipVgqxfBt
	HRFtP19bjkx0Q0BiLH7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN5-00000004v3c-0TvJ;
	Tue, 16 Dec 2025 08:25:27 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVQN3-00000004v2q-1iUi
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 08:25:26 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG7PYMM1131670
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wANM2/9CikBZrCoWxAakBFZ1Y50kCByK10cZb602R/c=; b=gVBboK8ah0EALRU7
	rSm+LWcvOjemkdj/hoBECb8S/wfYhGkNXAZs+o3jJWLdPArWSlHSrtEXqf2e5fld
	H+o6cfo4EP05Un0A4Z5H3Sb7M5oD3x1N7uAFlJUNaWB7G9IIUPL0W2r9zAmPhoLn
	eMyv1rk0+M8zmRuZDVgW6KSrmHlwN6lfN3QurCT+Le2NCtw/dWHqVV81RymspZ5v
	N0nalNQRcV063+s+BeF2ikH/nrB4zX+g0RKaMFUQSbK1Tn7e0UCwviLwJv0/CIuV
	qE97lYre+Eg4D0P357nQR0IC9wlw6ZxmFWNW9+qJo+MvNZInFKBB1VYgORf08w5N
	SfnTXw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b2p3ub0rf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 08:25:24 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8bc4493d315so406315885a.1
        for <linux-phy@lists.infradead.org>; Tue, 16 Dec 2025 00:25:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873524; x=1766478324; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wANM2/9CikBZrCoWxAakBFZ1Y50kCByK10cZb602R/c=;
        b=GD5DGSKyq39J2tdALUvIoHKKVjdBSPcUdDA4na2OPChxt3ZPdRl3xAuQ6AAejetBZ0
         xhAb5dTQZZa1fpG+wM3G5+ZOyi2jEgmIYP0f3g/b0qfA6QUNrrcVDDmnv4iEXIJHXql5
         yC9QTDE70GRNYQ1HVLS9XlXUP7GggpoG4w7I6qpqEXjnsdOcdzvQGz2Ko0nwABKW65j5
         pjwcXg+ykr07wfAm3byvZHgEPSfCdHXV7Sk+JfVqO3Pf7DkkUtPbse7ZlO55wGUyemqj
         toCIKuyzxiIhxT438pPDeoXyGe9NdlljdWph1TVpWJoO0d8b10Tzyj398paIvM/z0MQC
         M3+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873524; x=1766478324;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wANM2/9CikBZrCoWxAakBFZ1Y50kCByK10cZb602R/c=;
        b=LmatOJYo0UU8zK3l+aF+NsQWBMuzmFb5XRheaC27kgSFKNtGo2rJlHtKSWnesXwiaL
         dJcGKtmQZWSGCD6ubUzM2iZC9sRNOReFd8njFWzOi/6qdHibOicnKxQMbuM9nq3bMVeF
         Husg5748PpB5+dVaWaJ4TlhlULQOPaCZ28neOdEv8LHUYC+bSWreJguNgtxtm40R2wVl
         42AYcNT29PLFguzIx7phPueq/WWgopNdmoXImAptZE9/5XoNbz5COVq1TW2NxdqbpGzn
         GEsfBXmtYMM5R6mPYi4hE2PvET/0LuP9lCBdux18hF1wziaR1aB+yXHBpv9xciwNM7vT
         bnRg==
X-Forwarded-Encrypted: i=1; AJvYcCWxsp+mvAiCePZmNeEGpSDNo++QCy4Tj4bzw5qGzLvoYQyxGJLLJlialO/3CD/O2HyPg61DT8sQFfc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+A9HwlPS4WyvktSWGTjIXoCH+35QGFqg2tYj3x0JJt0cvBryf
	N7oHXLJmzflGNozkV8eXUwxJxETAOg/xABoSPw7c76Ib8L1DZAzs+0SoUw35Hoq6aDyO6KRJ5sf
	uVQoixzfYmfnxnkY35h7FnFE62HrK6hkuGsrfPBS5OvwISf/73jufhkjX3VdkV+k007/Q
X-Gm-Gg: AY/fxX6R2936QnXODE4bykKQbR4hTYSuzUFkRd1XJZEUN6W167ti1Y0ez3SObt8vBRS
	YchRIBKWDpS4dPi9kBniPdBIykShcE5mBYok7IuYEgRpZeAy2Oxz4cpc0ot2MyrgYnvk8g0ZJjl
	8/6afP+o16ibgAC5H0lUoW8Ghlwe5xKip4+ScfBsOb2JMG1niKBc3dvD1Tl3lR4aB/6149aCUb+
	a/HHnqRTS1E00hNNe5QMpXDz2DsAN1z/bPObQIyksZ4BirmAasVWhi5Xit6cKJZQiCefjk//gwz
	xv5NmAnjo1/WQoVej/9p/sxkz4TEeA4Ixo3uKeqPIAPSpZ3po4GZ/vsHmISKapukQZRD5pVXd40
	L3zENggcE0qvI3fA=
X-Received: by 2002:ac8:7f4d:0:b0:4ee:208a:fbec with SMTP id d75a77b69052e-4f1d0626396mr195164041cf.66.1765873523641;
        Tue, 16 Dec 2025 00:25:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH870VyJOlL68+tvPG1mtNh8Qgx4N2nure00Jw1JKifSdq5/RR9xLvkMYjl8Mg+1/r30nVBRw==
X-Received: by 2002:ac8:7f4d:0:b0:4ee:208a:fbec with SMTP id d75a77b69052e-4f1d0626396mr195163751cf.66.1765873523068;
        Tue, 16 Dec 2025 00:25:23 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6498210fceasm15134381a12.24.2025.12.16.00.25.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Dec 2025 00:25:22 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 10:25:05 +0200
Subject: [PATCH v2 2/2] phy: qcom: qmp-pcie: Add support for Glymur PCIe
 Gen4x2 PHY
MIME-Version: 1.0
Message-Id: <20251216-phy-qcom-pcie-add-glymur-v2-2-566a75672599@oss.qualcomm.com>
References: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
In-Reply-To: <20251216-phy-qcom-pcie-add-glymur-v2-0-566a75672599@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>
Cc: Wenbin Yao <wenbin.yao@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abelvesa@kernel.org>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=2618;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=6GZZAJENybuhzclj7N+DkIr9RF5K5pJlUYJXDpPslOY=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpQRdsAzPPX2TRnz96FiPWsxlmDp1f4eokSEFYN
 uTsyKuo0qKJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaUEXbAAKCRAbX0TJAJUV
 VkhqEACcUfu7319PMPHv32W+L/oguHpbWcTo2aIdf+e3cTEVNCp+eUqMpvwQ9oMnF3pZCQHCir3
 wJcD1mWO32z4TqdvzYQZic1me30QJtHYNOhG1OCXXYvPIupvwPlRCGnT+uKuhu3C1g2RL6nYdTK
 Ps0E6bt8UOWFM+qcVPAnznJcqSifAymK5d4AGU3BLItLHG5IiEFaILtvtn8Dp2kH5mZJmiFc1R3
 FhjuFXI1T3llJ25YYsLB23eh5iiXW+gTpSXqNGjWp71FfsV7I5KjtVtEBmDFfjKsFwmqnY317cT
 zi4rJbZd45u4QIeqGc7OUOQsdotOAV5g3CVYtCjx7olRebZVR7oPRw76ESNOgXJ9Gphg24CeEwm
 3N6Xpr5zFIJ+qSWW1hoKvhkXJTjgTEwm4bYIjAQlrGIWk7Xb9UHUAnUtidQsSzMro2uaTnlpcHJ
 ElpF52f+IxepwOEWHWMdv8pOEDV03u7iNa7pkCuOCqXm0Ga5mJa09aR7YZQm+OqYRCyvetLpWtT
 OtB7fR4M0U+yE1ZQGFBjVtiw/e+B/e90kTuz6LY+XmVjGNv0SHBWEBBAeXoUuyTnxSqbvz4G69n
 jvrPw4nispmUwFJ7bZT08NSkmIiRciIN0MvHgGaQs7WZ87dn2yqRzugBSRPx1LDGzredy+WGawP
 0L+BbSkAMBEgXXg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OSBTYWx0ZWRfXxif6qnIpZgWD
 6xKTpqXszOprp2XfrqzgwLjA4ooDnFtAa7CUEEH6MRbyjoYDz1YApnicsm18MOBCU1SNMeOn/2f
 E2CH//WYLjmUdpH4HFyuk+tiOsz+06urUexgA0huMItNd2KkkYExIPFL+XhUVi4p4uQIZMND93E
 ulXJvrHBcTET96Q42GNxMA/4P4E5lyDhlhqW+fcH6L2/zKSladWYxL5Pw58AB862q/V91Y20qvK
 wmyj8eomtCraLjdAOT+4g5jj3SBpUFHTOclAf+mAqB9gGmFncTQlPbSmyKyG3HycKcMu0/8ZvzH
 49axN4GvU0Rwz0T995sXEqE+elUIB7le3lWIcrl7ZIUi8MLzag319jcLYYBtytwblvDTdPw45qO
 8FXWynr3N0JTrBH8HYuvElfUAaPmxQ==
X-Authority-Analysis: v=2.4 cv=Q/TfIo2a c=1 sm=1 tr=0 ts=69411774 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=tiC4AEIUfACfndhgxo0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: EaEOlTZchcYvG4FM94X2TQIgrh1z_C9H
X-Proofpoint-ORIG-GUID: EaEOlTZchcYvG4FM94X2TQIgrh1z_C9H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160069
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_002525_458068_C501D572 
X-CRM114-Status: GOOD (  13.72  )
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

Glymur platform has two Gen4 2-lanes controllers, the fourth and
sixth instances. Add support for their PHYs.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 34 ++++++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index 86b1b7e2da86..5b53f03771d8 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -100,6 +100,12 @@ static const unsigned int pciephy_v7_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V7_PCS_POWER_DOWN_CONTROL,
 };
 
+static const unsigned int pciephy_v8_regs_layout[QPHY_LAYOUT_SIZE] = {
+	[QPHY_START_CTRL]		= QPHY_V8_PCS_START_CONTROL,
+	[QPHY_PCS_STATUS]		= QPHY_V8_PCS_PCS_STATUS1,
+	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V8_PCS_POWER_DOWN_CONTROL,
+};
+
 static const unsigned int pciephy_v8_50_regs_layout[QPHY_LAYOUT_SIZE] = {
 	[QPHY_START_CTRL]		= QPHY_V8_50_PCS_START_CONTROL,
 	[QPHY_PCS_STATUS]		= QPHY_V8_50_PCS_STATUS1,
@@ -3363,6 +3369,15 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v6_30 = {
 	.ln_shrd	= 0x8000,
 };
 
+static const struct qmp_pcie_offsets qmp_pcie_offsets_v8 = {
+	.serdes		= 0x1000,
+	.pcs		= 0x1400,
+	.tx		= 0x0000,
+	.rx		= 0x0200,
+	.tx2		= 0x0800,
+	.rx2		= 0x0a00,
+};
+
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v8_50 = {
 	.serdes     = 0x8000,
 	.pcs        = 0x9000,
@@ -4441,6 +4456,22 @@ static const struct qmp_phy_cfg glymur_qmp_gen5x4_pciephy_cfg = {
 	.phy_status		= PHYSTATUS_4_20,
 };
 
+static const struct qmp_phy_cfg glymur_qmp_gen4x2_pciephy_cfg = {
+	.lanes = 2,
+
+	.offsets		= &qmp_pcie_offsets_v8,
+
+	.reset_list		= sdm845_pciephy_reset_l,
+	.num_resets		= ARRAY_SIZE(sdm845_pciephy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+
+	.regs			= pciephy_v8_regs_layout,
+
+	.pwrdn_ctrl		= SW_PWRDN | REFCLK_DRV_DSBL,
+	.phy_status		= PHYSTATUS_4_20,
+};
+
 static void qmp_pcie_init_port_b(struct qmp_pcie *qmp, const struct qmp_phy_cfg_tbls *tbls)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5192,6 +5223,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 
 static const struct of_device_id qmp_pcie_of_match_table[] = {
 	{
+		.compatible = "qcom,glymur-qmp-gen4x2-pcie-phy",
+		.data = &glymur_qmp_gen4x2_pciephy_cfg,
+	}, {
 		.compatible = "qcom,glymur-qmp-gen5x4-pcie-phy",
 		.data = &glymur_qmp_gen5x4_pciephy_cfg,
 	}, {

-- 
2.48.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
