Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B5BCC5AE5D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7NcIEA2Aiy4bjkehcLGkC06idLJHJMeP0LAWi2UIGw=; b=QUw+RwYiaWA1Fn
	VrEfM7rQXSuHvRraOM92FdWYDDOKbKlguLwGwUmp8Dz8OTuV0g6+4o9x9213R0ctCsKKIh4MrjvU8
	BLdHPOhkpP8iA5IWSSFBkxjMLIlh9xBLhKvj1h4A0/bL0mQowBPX4C3/YVZfOAWv4iSu9MzP9fb2S
	L+NtX0EbbRYzmhhT1mgNVK4kBYHGLXKT5q3TvIKzdoVylyTutwmOZ6JN3dj5ccj42VQDl9OxLl+9U
	xVEscv4OhWnDC2TbLdYW7iHejnvmoUKYC+oULE5Xl5nuDnKJK8CmBHIT/XePd2RHQuAwruCHLsE6J
	cg33bISuuhV9R2HsXSNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP7-0000000BeTn-3re1;
	Mon, 10 Aug 2026 11:42:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP6-0000000BeSu-1ZES
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:53 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9S1OF1231858
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wLwV9vm/We3SoT9tFe4xuEP5t17LeVKwkk+uJZ4iOTo=; b=ZXDEaf13EKW+yMra
	JvyI3BYhtaG4Di23w8v4s+q/rVb9k0x6TrO9siF4Sy2I+Vfn/m3Z6mmDrLBNs6y6
	7sGtqI1OfdN9jWMQRjqXtFwVJ+qLceFqp5Xo64mPvxp4NcjRh6sYk4Iq7lbf+0Ga
	KxbGzw2wXm1DzAPcedfMVHGI3jJpisI90dI8c1hvwVkFIcEfl5Ve9/A8K36cXIhM
	gic29A0eKPB0VNxeFiHsJIeXiT9XhtOk5WNkwN797chf/CWjH5slO/vyDX/FlS/e
	jTFMsWxUdChJdu5rEdZIgwiEEF3pCmM6iRqCEtYGGiCqrw/a+1ItSHWdpli1CsKw
	q8ra3g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fybh58pn7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9368f2b7b2bso86381785a.0
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362171; x=1786966971; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wLwV9vm/We3SoT9tFe4xuEP5t17LeVKwkk+uJZ4iOTo=;
        b=FOEDZ6Unq/msPeSo0IvDCfbEWN78QnMfNPrq0nTpig/fsJktvtZbkys8ptFm0zkYGR
         XqRFie6jHJsLExet/+ap9IXvjsu43unK7E9xTOn5ES4HH/hAF2a8CqSy6fxuydNlcIgx
         5NuYYmB+rlCYQWQv1t7koexJhM6NUyyYNKBUTTriVI7QGTxxwgNLpmNNqXnyVskY1EPc
         F+9Kd+x54IrxbD3MxwUWpo6U0f7V/7yNQBV7HHXO5SxE4Wp1VDTqPL5JD93Yx8iWjGcL
         HW+HDEYKZnY+WcJk2WZclHpbugSH4IeQV8Jqt5DoBeN3ezpsMG1LJ3mSSMf3IkRdGi7V
         xmXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362171; x=1786966971;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wLwV9vm/We3SoT9tFe4xuEP5t17LeVKwkk+uJZ4iOTo=;
        b=YLHoQE2Mfxdz0x3BJ3WpNtqvYW7ylL12UQ215uOd74uh1+4Jgpa+PEjMPF49bX3fiB
         YpuO4Zt891yqWM5bC58l4O2fnMcuARA1Cx6mFU5ZSFwLueuFyeECE0uH/NkzhGr8WzwK
         TSRnE843lsO32Uy0ODgAWqtjA9qOAsR+K32bE16pVCkJV1SqLhc6YlUUOLorS0MZabPi
         W1ghOwrZAC6f2TFZ5/XkrDulNoJsssN5wYmHBTyBeb9dPhp2RIJd/ajijhCLqi4tOSRE
         r4F6F3oWHGZfwSgJUuEgplsjRZBjxJHDVQKFQlNoNqLzmPfW6EAOVBGpLi3oVIG6uiBH
         1IOA==
X-Forwarded-Encrypted: i=1; AHgh+RqJvmycpiZbCJci+bmJdAo9XB/CsrXIXQo2q4dG4JM7tzaRUoIl8TQxerdeoDUDk9w7+n7zRywv0I8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxZn7d6nAIGiGvhZcu4d2wdQ8CXFwHzyrFzib8GwJr582JjdKX0
	3FWPkK+C0VP6KvLuFA6aMjy+klV/5cpltUsFw9A2iJT4eHd1tJ7k+mksxZZ2qnCunPiA5JPLDHt
	BhEt1BEgKS/0RmJEIcDXczcX+rzslqVJIdRmAtacJxac8rs6ak7qwkB41I2u/D3dfJFJl
X-Gm-Gg: AR+sD119tbuWprIxcmV9gGDEG+gPRjovbtD7UL1/v4fzkfaJxBifn8lST2XWAx3bw+X
	Jl7GWTNz7xGnP9Mt6vkMDw+Tfj04psWuGJisno5yAmQ/jsBiFZycBmYXhYLnrzyZVIb+dp3OGYC
	kaziyyZqRZgZMzvHFKfNr0I/IsVZloAHjh6O0mvLiexgX0bC0Z6lLsDgEdasngWVsSspIui3xEi
	aS9pFBBI5gYJOySoBq6R/Fyv1fDtyTuxQSzJpRsAFSblAY1kBv4dQxXpJOPdzsSNpsnekcqQl8x
	+bvjr5hIGp1Xf8PhB+47jxM3ZffGnsIsl6lgI8APHflnDu/99g9yb8NbckRQrO1v0T9Qe0wiQM0
	ub7xZmJskn22PKWh0alYV9/vIZ8iQt0CL1zNLJuYfIDa5yt07tR3lLkiwKDCUmw8QF66KfhRciX
	thHCFKVm6TAK9TZw==
X-Received: by 2002:ac8:5dd2:0:b0:527:631:8d6 with SMTP id d75a77b69052e-52d4bc37c64mr9594671cf.25.1786362170867;
        Mon, 10 Aug 2026 04:42:50 -0700 (PDT)
X-Received: by 2002:ac8:5dd2:0:b0:527:631:8d6 with SMTP id d75a77b69052e-52d4bc37c64mr9594151cf.25.1786362170259;
        Mon, 10 Aug 2026 04:42:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:38 +0300
Subject: [PATCH 08/10] phy: qcom-ipq806x-usb: support the MSM8974 SS PHY
 parameters
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-8-1a47e1185524@oss.qualcomm.com>
References: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb3-v1-0-1a47e1185524@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Christian Marangi <ansuelsmth@gmail.com>,
        Andy Gross <agross@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4122;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=Gp+4fjrebHGViPXeCSZcf6vjGYOVaOgtHIfa0J1CfVw=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkpTY9USW0REuQQqQ2Olpa89R8QdYg56PPWA
 3t4qGnRqWeJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KQAKCRCLPIo+Aiko
 1RKZCACFCjQQApfYkkUl6uHc26z+WQ3wEx1d0NVzQQasSXVrdHiPCX00a9MBLWlExGHHJwxC8kO
 tgL+HZQDRDluq4sz1198HY5Xc+gHAN80Tc12fK2kqeHil7uqkeIUt41fOJWZHPtg5Hkpz4naukS
 rUb94CYqa4hJ/iTpRCVcJUobvscILkgiDKcV6de31eRYTHUTa0W3TrPSNWlNzYPeX7TXCZ3qtXa
 /fB37G78EIffA1Oa6bL6H/m+xfXYXcNdP7j73JKacvGx0C1UHSmI+tCCSfd8MmWW4if3Zb7tP+p
 +0cBOCCvZ4McDCADKiY7hwmiLzny/y+/4KJMbTZhWIjlpREl
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=O4YJeh9W c=1 sm=1 tr=0 ts=6a79b93b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=nQrtOHMqN2DZ12z0XHUA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: TQLAlyWxQHEg-FFmQTesdjY7cEnp6EVN
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX2qzrCwXV4NlD
 rhVP6gyPTHdiuvV4QJpp6TGvqu9XJyEkX8wNboYhdfYiCqsMNgi4FO6/is+3PmW3L2qj+vSDjMr
 RBaoaGPOZJ+LNzr3GvKyM6g/l/2BqY8=
X-Proofpoint-GUID: TQLAlyWxQHEg-FFmQTesdjY7cEnp6EVN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfXwJvpFJSzRITt
 1u1qXuJwvYkwOLEiVcWsJAUYjUKwxztesnJ1oWweAP2Gq1aBJjiYr4tDmvT27LW983pozOpc0xw
 WFlegFXcSwvUzX8UA+bbNHxZ/+RanGP5pb6vDbKrocbFoZ4POVBIOBusSi2oNQp64/gIzjFFopI
 sCv1WfQLzmvPhkZoqRLXb8WeGTK4683ifMMqQUqTA3O2YdSymoyAvvOkZZUyUNhgzt7ahsv8x7H
 a5fVUmXPWqcBELQFGTKRnD9OVrbw3/988hMPdumLqYEQ62UkrwCuoTlNZGDygLWTOaCKrf0bX7p
 Ou5SjgJnKo5U05S+I6YAW+ASF0+c6MefETGFlxLZ55angueHiudbeAU+ikkAOvHyq9fgFWTJD7L
 cMnRFgaYPOurlDm1VHrGDwafZgA8zkw8LRC6qC3ltfKyz3v5z5TjUv8L1i9UtmcJGY/bNz6OYzj
 EJ7mmCa29bybQNtFPHA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044252_421846_38BE9F93 
X-CRM114-Status: GOOD (  17.20  )
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

For the MSM8974 SS PHY instance the vendor kernels program analog
parameters different from those used for IPQ806x.  With the IPQ806x
values the masked write-readback of PHY_PARAM_CTRL1 fails and the lane
runs with wrong launch amplitudes.

Add platform data for the MSM8974 compatible.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 57 ++++++++++++++++++++++-------
 1 file changed, 44 insertions(+), 13 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index 86e8e869a743..35abe9ae0542 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -142,6 +142,11 @@ struct phy_drvdata {
 	u32		clk_rate;
 	u32		hs_tune_val;
 	u32		fsel;
+	u32		tx_amplitude;
+	u32		tx_full_swing;
+	u32		los_level;
+	u32		los_bias;
+	bool		set_deemph_6db;
 };
 
 /**
@@ -322,7 +327,7 @@ static int qcom_ipq806x_usb_ss_phy_init(struct phy *phy)
 {
 	struct usb_phy *phy_dwc3 = phy_get_drvdata(phy);
 	int ret;
-	u32 data;
+	u32 data, mask;
 
 	ret = clk_prepare_enable(phy_dwc3->xo_clk);
 	if (ret)
@@ -414,7 +419,7 @@ static int qcom_ipq806x_usb_ss_phy_init(struct phy *phy)
 	data &= ~TX_OVRD_DRV_LO_PREEMPH_MASK;
 	data |= TX_OVRD_DRV_LO_PREEMPH(phy_dwc3->tx_deamp_3_5db);
 	data &= ~TX_OVRD_DRV_LO_AMPLITUDE_MASK;
-	data |= 0x6E;
+	data |= phy_dwc3->drvdata->tx_amplitude;
 	data |= TX_OVRD_DRV_LO_EN;
 	ret = usb_ss_write_phycreg(phy_dwc3,
 				   SSPHY_CTRL_TX_OVRD_DRV_LO(0), data);
@@ -433,18 +438,22 @@ static int qcom_ipq806x_usb_ss_phy_init(struct phy *phy)
 	 * TX_DEEMPH_3_5DB [13:8] set based on SoC version
 	 * LOS_BIAS [7:3] to 9
 	 */
-	data = readl(phy_dwc3->base + SSUSB_PHY_PARAM_CTRL_1);
-
-	data &= ~PHY_PARAM_CTRL1_MASK;
-
-	data |= PHY_PARAM_CTRL1_TX_FULL_SWING(0x6e) |
-		PHY_PARAM_CTRL1_TX_DEEMPH_6DB(0x20) |
-		PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(phy_dwc3->tx_deamp_3_5db) |
-		PHY_PARAM_CTRL1_LOS_LEVEL(0x9) |
-		PHY_PARAM_CTRL1_LOS_BIAS(0x0);
+	mask = PHY_PARAM_CTRL1_TX_FULL_SWING_MASK |
+	       PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB_MASK |
+	       PHY_PARAM_CTRL1_LOS_LEVEL_MASK |
+	       PHY_PARAM_CTRL1_LOS_BIAS_MASK;
+
+	data = PHY_PARAM_CTRL1_TX_FULL_SWING(phy_dwc3->drvdata->tx_full_swing) |
+	       PHY_PARAM_CTRL1_TX_DEEMPH_3_5DB(phy_dwc3->tx_deamp_3_5db) |
+	       PHY_PARAM_CTRL1_LOS_LEVEL(phy_dwc3->drvdata->los_level) |
+	       PHY_PARAM_CTRL1_LOS_BIAS(phy_dwc3->drvdata->los_bias);
+
+	if (phy_dwc3->drvdata->set_deemph_6db) {
+		mask |= PHY_PARAM_CTRL1_TX_DEEMPH_6DB_MASK;
+		data |= PHY_PARAM_CTRL1_TX_DEEMPH_6DB(0x20);
+	}
 
-	usb_phy_write_readback(phy_dwc3, SSUSB_PHY_PARAM_CTRL_1,
-			       PHY_PARAM_CTRL1_MASK, data);
+	usb_phy_write_readback(phy_dwc3, SSUSB_PHY_PARAM_CTRL_1, mask, data);
 
 err_phy_trans:
 	return ret;
@@ -500,6 +509,26 @@ static const struct phy_drvdata qcom_ipq806x_usb_ss_drvdata = {
 		.owner		= THIS_MODULE,
 	},
 	.clk_rate = 125000000,
+	.tx_amplitude = 0x6e,
+	.tx_full_swing = 0x6e,
+	.los_level = 0x9,
+	.los_bias = 0x0,
+	.set_deemph_6db = true,
+};
+
+/* MSM8974: values from the vendor phy-msm-ssusb driver */
+static const struct phy_drvdata qcom_msm8974_usb_ss_drvdata = {
+	.ops = {
+		.init		= qcom_ipq806x_usb_ss_phy_init,
+		.exit		= qcom_ipq806x_usb_ss_phy_exit,
+		.owner		= THIS_MODULE,
+	},
+	.clk_rate = 125000000,
+	.tx_amplitude = 0x7f,
+	.tx_full_swing = 0x7f,
+	.los_level = 0x9,
+	.los_bias = 0x5,
+	.set_deemph_6db = false,
 };
 
 static const struct of_device_id qcom_ipq806x_usb_phy_table[] = {
@@ -509,6 +538,8 @@ static const struct of_device_id qcom_ipq806x_usb_phy_table[] = {
 	  .data = &qcom_ipq806x_usb_ss_drvdata },
 	{ .compatible = "qcom,msm8974-usb-phy-hs",
 	  .data = &qcom_msm8974_usb_hs_drvdata },
+	{ .compatible = "qcom,msm8974-usb-phy-ss",
+	  .data = &qcom_msm8974_usb_ss_drvdata },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ipq806x_usb_phy_table);

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
