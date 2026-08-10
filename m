Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1EA9C5B561
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 11:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1lsyoaUV2ALmewA1Id1Fgo16kKB0vMGhO6Hnw+XmMU=; b=yv5J+9BJun81e6
	DG+RuRU4Zr8Mh8W7NWJrt3n+HwhIhiEXiCyhlEM7/LAtzIPUXF4HiEoxJ52XWvBxIKxGTG4t2nnwF
	z3Ho9sGH5nRNsw+8OlGKttPrKCzySc+e+u1+2bXfMInyuyFohoa+ucw1DW9x0N1RmehWI7vW02q2v
	uxPjTR/LX2bHZ1/pJbzJhhwZfbjc5nyTDSVI8WhRPpB3Y1r/IuSlzldQgzupyf4XTS5uiroV8iF5x
	7//qxXk0kd2Mq58fY0JWkJM2hv45DomqEOeREg0HrDPPBQy8XwoSKXBlPpn25fhhftg/fQGfUXCoR
	HUrf2SntuNy+yy/H0m0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOP2-0000000BePk-1kVb;
	Mon, 10 Aug 2026 11:42:48 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOOz-0000000BeNl-2BT6
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 11:42:47 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67A9SBr51189838
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U4goTIxvjr7lxKcA6CVlsNTAeb5Bz53+/zp2NBXk9oA=; b=T8FMrRzvM+mE36zU
	ocBQDHh51UrvREXxLXFNZY82oFbEyVntS7BtCzM5/7SOugcytv51JVe8KA0hNf6W
	ptR4vqw4qPT59IHPCdEgHLJXzOJaoAZrn/6n8kVhtQUY2R3KdABRLsOqflrLLPxJ
	Jp0u4VZG46NT/K1eBXEPwc3/WcGvXU2c7vFDTqHWyryP+ML9Y3iqnBVdagHq1cJV
	Eho0OO+cgUg3fCK3j7xESuNL5ZmsPpp1V+ViLx/TREStdftpeRzyMzNT0Zi9I35c
	klJVyj8ogFWS91GTYYcKn1xgppIJDvlKIqVyCJfTtiWhGuhaFSxOjgmU89zTlDMJ
	sMp8mA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v29cnx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 11:42:44 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-51c1a9764f0so17451441cf.1
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 04:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786362164; x=1786966964; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=U4goTIxvjr7lxKcA6CVlsNTAeb5Bz53+/zp2NBXk9oA=;
        b=SqQPsoYaoaRD6p8ukGiRPPBTaGct5nYSvoMJT1JE18/QshUc9zHARNGUriuFhOPxKn
         cCLPDqqnrJEz5xNoB7edOjwfXVl2KfEGIzFbZWeLNR/q99fml0XorEEzqa0aHcyb5rhP
         rZ/ovcsVv9+VYPKBgSHXlik1wAfkOrEt5m61dXM/zMCU/xqfyF6nrJXbl+tVFEthdyWx
         xvA8nJMbgtkLWw1gdkTATi3q42G/BquHPAFfa35/VB3bECy1+plX+NBbzIb9TJXvhs2p
         9Qs37NVy/BdhvGV5O3LEOgbI8JYr5BfdwWM0whGpePpz1y59hzAjKpNeXN3ixdI1fcq+
         4oYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786362164; x=1786966964;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=U4goTIxvjr7lxKcA6CVlsNTAeb5Bz53+/zp2NBXk9oA=;
        b=Zg34fytB7ft6rDRELuQicKee/BaMDoWGkwgVwgT4BrAF9DFBh+w20Xhk2WnvicRLlM
         v+GM7VsmGFmYLsfJgNrYUCDzWE9SIMIWPZlaGDrN4TTCDi8NfkSGevxr1FK5BPx8sSjb
         r+hqOl/B8/3CExu6Jzcty0c/5aSuscFFIQlhz0ouGDF25U/RyC/cOKtj5pcVE2nyzYYa
         Da/xglJFhPMGoyj+HhAT4fgM15aqwBCibDoYAsXRNGQ16ILr+f017NcsomSAWeS0e9l8
         WZoWP8CVEyS709zpx45ssvhgc760dwLh9jAu4vqlcIfqGIg/Qu6t/SiO+Af3R4qFOfzW
         zxWQ==
X-Forwarded-Encrypted: i=1; AHgh+RpV74orEQ0LGABtdjiBTJEU9ZoJDD918Nq6LQXrW7XmnHimkkZMK/cUZ8u7fnh+eaxSEBmZR38SNJ8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwoZ5sAh/BqNxFgljkLubSKzXnAb9fGSDutn5ffkNhNcdHcbRNj
	AKjRXMjuEkjA2iuDru/Ph1JNHsy5rdGBXDRrzRJtplDS9/nPOgeRrH9C9p7rFOIEFXXUDGISog/
	TDQu8BCc9DU8+/JB6LJGfTL0PLJLznXft4pr2I7SARTpWY88Mw40j3HM3DMhWBTEJh/b7
X-Gm-Gg: AR+sD12aQ+dg1ZEP4EBrUSJbIM+B0bFQ2rbNu6colTglHbtWkV0Ml5J8L2PiUXqScIy
	wGLhtCaEOyndNIEvvs1d1jqT8DmZDeCj4RrZQj54vGPQyCoONQuMwGYfj6PHzwhJXvUcPFP0rTf
	xycDptqjbZ8v7aU/NykIEUhpySEeKV/B3l8zgQgi0J3dIhfIA0gln+4hw+Tfe9s8uCNjf3N8EIk
	I9m0Kiymv532hA1PfT37aAliJzccRpVXLOCY7ZvNK2qnPTdl7Huiw+21RvYjZkuOcbi+VFwfY0r
	RLVV8KVtZ9kUMlBtr9bPi0EXNnaBXA45BNBeMa9z9RUNSB0dkx05aB9MhOs6AmQcwUiy2fNoFj5
	g+tzAayjsSw6aO+KvKEr2MOF9Jaxm+kYNGrendW+VPtIj3R1PQmgHIxX+fKdHCwS8z8vu4ASnkW
	2OmaVb+cQvPYSZHQ==
X-Received: by 2002:a05:622a:148e:b0:51c:1bcd:5cc3 with SMTP id d75a77b69052e-52d20a16164mr204708211cf.25.1786362163662;
        Mon, 10 Aug 2026 04:42:43 -0700 (PDT)
X-Received: by 2002:a05:622a:148e:b0:51c:1bcd:5cc3 with SMTP id d75a77b69052e-52d20a16164mr204707831cf.25.1786362163181;
        Mon, 10 Aug 2026 04:42:43 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-39fddd67ea8sm21201671fa.28.2026.08.10.04.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 04:42:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 14:42:34 +0300
Subject: [PATCH 04/10] phy: qcom-ipq806x-usb: add MSM8974 HS PHY support
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb3-v1-4-1a47e1185524@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4381;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=8VCa/M6bToa5oXul7MDBmdE4OGdMc4fpn0kv4jaC4Gc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqebkpueCctf6JwJtW8ImL1sBgGQuVM/7Ybi4Jl
 ytUr3UuYleJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCanm5KQAKCRCLPIo+Aiko
 1dphB/9khXiN1pT2dTSjIvpfWAZb3MrYWvwWpnjtPxh3gpg4n5TNvmf/vSeFzMymFyrSDKLPkO8
 1q6G7KNr13DNlAD2hdbVIB0uMQl+5d0BFs91bIPanVWH13Y1raJuCw03tNR3qxZ1rCsLPtkF36h
 NuTUlxHwx4XHMwHrHWG6EUhO+bfVXgkk42985Yk5Cra1f6VcjQ/wScVB2BAJ3GhuMA3c7/GeMl4
 34hmhACPrj0aC4rbGlX7qlMmR8M0pGaTReCMfiDsu2UX6utsEUNyM21ZrELStiNjxXQcYkSg35X
 xnoEcFboLnr9j0YRaNNEm79sFS+LBlxm46+Z/nobhn03gvw1
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=S9PpBosP c=1 sm=1 tr=0 ts=6a79b934 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=2C7WxXwbF0DeFyG-elwA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: IDLE-vtVZyk-QG6Giu-n_00Ug0RkUWdw
X-Proofpoint-GUID: IDLE-vtVZyk-QG6Giu-n_00Ug0RkUWdw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX+Kn4wEeAP5lz
 mewicdHuF2MzZdR074KpnPP/1BB8RdM5/0HEyjrrKt4dgs+chv8h9NjYEIRYDeh172qaIIoWiCT
 1Uy55eZMVHoiJSqebVsUg601W0FFjx2aSan/koK2cbsSWPZ9hm7JwFcYS306fUvin7eazayfT9n
 BqvHFkUwSl/ReZmfMoyhfwx9LfmZHE3ANl/MziGEF7bn2TNMY4Y+seT+cQix7klVU+hqzs4ei8J
 rMZnX63PaXLD94RcsqzotSH1Pzk7pZBRpYThHzzp4av+6g72tTPUwWCwO+EumpTfawwnb3ARuIK
 bgJYUpu0dhQOctVadaKUsiafLTLpGosfrpY0/EssL+se5kfjL992M+hM6MaxpDDxR1/dX1X20nj
 EUimBoQPes5bFtIqUTH0X9hxOZr3HJ+bzLFUIuvENZ44UHhxQeQR2+9+OyIUe6DzURtxomNXpYU
 TEhbYo8yO1EoWzohcvA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEwMiBTYWx0ZWRfX8t9T2kHlLHi6
 ZmUNPcob/ypPE9gT1nYIJrHe7W2CPtaihhAYSLnOPQoEQfaqEcFyXoQMID+Z8xm26i8b+X8q+K6
 YTkL4Gr4LsdHOYmenOvsyoXVVsWWhgo=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_02,2026-08-07_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100102
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_044245_681520_E66D1DBB 
X-CRM114-Status: GOOD (  21.28  )
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

The MSM8974 DWC3 wrapper embeds the same generation of QSCRATCH
controlled Synopsys 28nm HS PHY as IPQ806x, but the driver only knows
the IPQ806x variants, so on MSM8974 the controller runs on whatever
PHY state the bootloader left behind.

Add the qcom,msm8974-usb-phy-hs compatible with its own init
sequence: unlike the IPQ806x one, it must not overwrite the whole
PHY_CTRL register, as the power-on values of the reference frequency
selection straps have to be preserved. Only enable the UTMI clock and
the DP/DM MPM clamps, signal VBUS valid towards the link, and disable
retention.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c | 35 +++++++++++++++++++++++++++--
 1 file changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
index f22c0000479f..21b59d4ca8d2 100644
--- a/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
+++ b/drivers/phy/qualcomm/phy-qcom-ipq806x-usb.c
@@ -17,6 +17,7 @@
 #define HSUSB_PHY_CTRL_REG		(0x10)
 
 /* PHY_CTRL_REG */
+#define HSUSB_CLAMP_MPM_DPSE_DMSE_EN_N	BIT(26)
 #define HSUSB_CTRL_DMSEHV_CLAMP		BIT(24)
 #define HSUSB_CTRL_USB2_SUSPEND		BIT(23)
 #define HSUSB_CTRL_UTMI_CLK_EN		BIT(21)
@@ -27,9 +28,13 @@
 #define HSUSB_CTRL_ID_HV_CLAMP		BIT(9)
 #define HSUSB_CTRL_OTGSESSVLD_CLAMP	BIT(8)
 #define HSUSB_CTRL_CLAMP_EN		BIT(7)
+#define HSUSB_CTRL_CLAMP_MPM_DPSE_DMSE	BIT(26)
 #define HSUSB_CTRL_RETENABLEN		BIT(1)
 #define HSUSB_CTRL_POR			BIT(0)
 
+/* PHY parameter override register (eye diagram tuning) */
+#define HSUSB_PARAMETER_OVERRIDE_X_REG	(0x14)
+
 /* QSCRATCH_GENERAL_CFG */
 #define HSUSB_GCFG_XHCI_REV		BIT(2)
 
@@ -115,6 +120,8 @@
 #define LATCH_SLEEP				40
 #define LATCH_TIMEOUT				100
 
+struct phy_drvdata;
+
 struct usb_phy {
 	void __iomem		*base;
 	struct device		*dev;
@@ -123,11 +130,14 @@ struct usb_phy {
 	u32			rx_eq;
 	u32			tx_deamp_3_5db;
 	u32			mpll;
+	const struct phy_drvdata *drvdata;
 };
 
 struct phy_drvdata {
 	struct phy_ops	ops;
 	u32		clk_rate;
+	u32		hs_tune_val;
+	u32		fsel;
 };
 
 /**
@@ -273,7 +283,8 @@ static int qcom_ipq806x_usb_hs_phy_init(struct phy *phy)
 		HSUSB_CTRL_RETENABLEN  | HSUSB_CTRL_COMMONONN |
 		HSUSB_CTRL_OTGSESSVLD_CLAMP | HSUSB_CTRL_ID_HV_CLAMP |
 		HSUSB_CTRL_UTMI_OTG_VBUS_VALID | HSUSB_CTRL_UTMI_CLK_EN |
-		HSUSB_CTRL_CLAMP_EN | 0x70;
+		HSUSB_CTRL_CLAMP_EN | HSUSB_CLAMP_MPM_DPSE_DMSE_EN_N |
+		phy_dwc3->drvdata->fsel;
 
 	/* use core clock if external reference is not present */
 	if (!phy_dwc3->xo_clk)
@@ -282,9 +293,14 @@ static int qcom_ipq806x_usb_hs_phy_init(struct phy *phy)
 	writel(val, phy_dwc3->base + HSUSB_PHY_CTRL_REG);
 	usleep_range(2000, 2200);
 
-	/* Disable (bypass) VBUS and ID filters */
+	/* Set XHCI_REV bit (2) to 1 - XHCI version 1.0 */
 	writel(HSUSB_GCFG_XHCI_REV, phy_dwc3->base + QSCRATCH_GENERAL_CFG);
 
+	if (phy_dwc3->drvdata->hs_tune_val)
+		usb_phy_write_readback(phy_dwc3, HSUSB_PARAMETER_OVERRIDE_X_REG,
+				       0x03ffffff,
+				       phy_dwc3->drvdata->hs_tune_val);
+
 	return 0;
 }
 
@@ -458,6 +474,18 @@ static const struct phy_drvdata qcom_ipq806x_usb_hs_drvdata = {
 		.owner		= THIS_MODULE,
 	},
 	.clk_rate = 60000000,
+	.fsel = 0x70,
+};
+
+static const struct phy_drvdata qcom_msm8974_usb_hs_drvdata = {
+	.ops = {
+		.init		= qcom_ipq806x_usb_hs_phy_init,
+		.exit		= qcom_ipq806x_usb_hs_phy_exit,
+		.owner		= THIS_MODULE,
+	},
+	.clk_rate = 60000000,
+	.hs_tune_val = 0x00d191a4,
+	.fsel = 0x30,
 };
 
 static const struct phy_drvdata qcom_ipq806x_usb_ss_drvdata = {
@@ -474,6 +502,8 @@ static const struct of_device_id qcom_ipq806x_usb_phy_table[] = {
 	  .data = &qcom_ipq806x_usb_hs_drvdata },
 	{ .compatible = "qcom,ipq806x-usb-phy-ss",
 	  .data = &qcom_ipq806x_usb_ss_drvdata },
+	{ .compatible = "qcom,msm8974-usb-phy-hs",
+	  .data = &qcom_msm8974_usb_hs_drvdata },
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, qcom_ipq806x_usb_phy_table);
@@ -492,6 +522,7 @@ static int qcom_ipq806x_usb_phy_probe(struct platform_device *pdev)
 		return -ENOMEM;
 
 	data = of_device_get_match_data(&pdev->dev);
+	phy_dwc3->drvdata = data;
 
 	phy_dwc3->dev = &pdev->dev;
 

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
