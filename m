Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0C4EC5DF94
	for <linux-phy@archiver.kernel.org>; Mon, 24 Aug 2026 06:38:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cD6iKlhFUoBlDTO27a5hVTwqcvV9z5CWdVhE6kN7UdM=; b=dBCgRYQ2hOS0t6
	Edxx5ZSAGBn+OcaChpYFt5Cp34Hsr9MOU8Wqdx/Tiyg2ao2dlx+g30PhzSBooLw0v/Z8VvTUFg+fi
	HAUEQsrMvOVNhODSNiKY8zcXEKYGYNOarTREsxEdu+XnmF7vhZr0ABQ3WDJFgPoH2ps5EYLAYbXe8
	IgJda8iuDccQVLlMWMmpZaTwoMsJFY5qYzfbHbvYpLYrd0fWhUjQughbPuCUU6VO8/UOmEPBQAM9s
	1Aibh14IHK+5ITdiycyk06D2nS+M4vn1viDhczuimj9vQn/fSayQ16kJzKK0UV/2hkmhqTsJXu1AU
	ri3EagQAGqrLmwn2usFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOK4-0000000G0TG-1UgP;
	Mon, 24 Aug 2026 06:38:20 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyOK1-0000000G0Si-2wPD
	for linux-phy@lists.infradead.org;
	Mon, 24 Aug 2026 06:38:18 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67O5RMZ31577301
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6QSqXzY7iYH4qUszl6ICHxg1kStF4zLRoxDqBlT9FOs=; b=e6xIhVSGQDNQVgKW
	LwzSwC8o8Y5cpRjWTPhXty6MdtMDkv0wUj17EGqx/gCgvQdDOHUEYX/sqIARPYRr
	rWsOpWZq6xxDOBaBO0DOv4ryd6N4sc+ennxRWTWdu0rf3cvICXe4ZRy+h6feTOzx
	oYvC/VoW/z3Wcn8RvHXz3ObKSW4BiOrkExK2OIsSN/iqgD+FNkIHzmL0bEjJnw4t
	4Tno7E3MCJZaIwnp214VFzDQ9clYgGmnJTM3LGAX+Hqmn/OiLztAroG/EtE5Te7o
	jttn/6xzIhTvqZWiGS0XCZuP0i3fxONS/Wc/qJpobxYlHgJzowQTeC8u06L1HdYI
	luzQ+Q==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g74hcwhww-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 24 Aug 2026 06:38:17 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3954def0191so5434515a91.3
        for <linux-phy@lists.infradead.org>; Sun, 23 Aug 2026 23:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787553496; x=1788158296; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=6QSqXzY7iYH4qUszl6ICHxg1kStF4zLRoxDqBlT9FOs=;
        b=kEf/tAj/BUcyGZI/dIiSziN26iel8wB9YSe9wQDHruWQn3zZoBjtEA8FZ5VaYqaJxb
         csQ/dJadLHtBZ5Nd7n/jiAjeOPHquKJuraihwkvIJ4V2SG+TdnLVmhQwlkHFvDs3iRcO
         qWQfZNFJD9GTgnMi1XC3roajvGJkMDlUa0pjN9dgCwzWK5gpkMGEivZ0B7DBFtzQdw5j
         zoYrXR44Hix9acKQWKC9LYlGyrT6Sgzs7yfEQBniJDSJJW5qYZFPRtgR1UeGM8pfUffU
         +VxTmExDUNZyBXDJnAXFYmiHrSMpK71qOsiUm/uI7bUcAjcoZyWgNil/RRMq+BtirOnN
         8aVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787553496; x=1788158296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=6QSqXzY7iYH4qUszl6ICHxg1kStF4zLRoxDqBlT9FOs=;
        b=K1YJi92mQCHhA/RZcu6L3Tdqj0QHso0P/Ub8TcVNo3eJ4Ucq85Hlqcd7eBieXTvZuc
         IVWuJBuVa5TBDRrpYneA91wQG0bK8Ya6hCG2bEx7Le5cOj6fDcODSqPLi3IbDzISs2cy
         xx2QL9P2FHK/ad7/AwBnKrCPSCkBuz9Q9Wj3iueLDkjo0/Gmek09zAwygAZhIDZRFSr4
         XOe7x7wZbRjO5DPpcbjmpd81sSX3zrKXia9wjc6vKUnehfuKtI3aTtjSxxj4F9H1GgXb
         UOrOeahHXMxDWbJTUkJwdsxk6X2HGZP1DC4h3xQ7dIc1tfWp6Svn8vPIAVLm0WMjC4lD
         0vbg==
X-Forwarded-Encrypted: i=1; AHgh+RrjoPPDPWiWpqj+r0u/r47yuf6CG30FUGxpGCwb/vSHeJHUYGFqEYSNIG1vvcT3TWGwRS1oru/i3Cc=@lists.infradead.org
X-Gm-Message-State: AFuF++nH/QH9wAzmv0hiN4nARarQGIiaT758gOuPXqVjnfNbK3xTbHSE
	I3mAKWWY9MZ/dcITtUS+KHFnLE9Tyzo7NQ2ZcmmOftQjBsBPc/2v3vUFeszR62J1/13faywE462
	8J2AfUKTMBiKDZ6W6eqzsgdPx3RU3bpCC1I3N1crafZQMj4jaW0iCCUBMZYgFO58aTX79
X-Gm-Gg: AR+sD11dsEOOiePb+O/VWSS6AxexvJ4fb7e6xp6SlGGj0gxltaGwIS9U1EuJnqifSeJ
	MsRY1wLoRB6kkMXWGZEWT7hXxAD1K8GW8Jr75Tz62vBQT0JQ37oivRT+6p3nVQzoLqDHhYPrMcQ
	lES5rqeqoy2xC3OZwOkaMPwmEGDWrQhons9ZyoKL2dtdOKtyd2Z/OhpGTA+beGvcUdaaJWpX5lY
	wZQ2PpuKFXWlZiD0GF7313gCKcS41fNyGy/LoL3gbeN6Rb9PQKXSS4ngnAVE8KN7dL8Xz7Lckmy
	24mKPsA9DqZMQ43Mwz/4Cme0L43K1tIougT4S2RKUrx0TaUwQMMBo8A9BofTVvkqh7XI5Tvn63p
	DseuPI5kq1d7t4jusU9Uwdsqu4kwbFSfpIQHssl4PuqYUjBvlehIXMLzf1j4qW5PXui8tF6Zd3S
	f5EmzHyP1umOdmLfZ+cWEgf6HtERUWSQ==
X-Received: by 2002:a17:90a:da90:b0:37f:c97a:939f with SMTP id 98e67ed59e1d1-395c3547daamr47572457a91.7.1787553496450;
        Sun, 23 Aug 2026 23:38:16 -0700 (PDT)
X-Received: by 2002:a17:90a:da90:b0:37f:c97a:939f with SMTP id 98e67ed59e1d1-395c3547daamr47572370a91.7.1787553496071;
        Sun, 23 Aug 2026 23:38:16 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-141861732f8sm21667830c88.10.2026.08.23.23.38.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Aug 2026 23:38:15 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Mon, 24 Aug 2026 12:07:45 +0530
Subject: [PATCH 5/5] phy: qcom: snps-femto-v2: Add IPQ9650 support
MIME-Version: 1.0
Message-Id: <20260824-phy-v1-5-257d68a3210b@oss.qualcomm.com>
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: 7cbeYUKXkNU6OMt8nAed70J_XECJlkbv
X-Authority-Analysis: v=2.4 cv=U7iiy+ru c=1 sm=1 tr=0 ts=6a8be6d9 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=Q9t0gmS3rCGuRMBXcNQA:9 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: 7cbeYUKXkNU6OMt8nAed70J_XECJlkbv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX3YJMkk4y2Lc0
 t2R3ksl6EibLcEowwWLuaPp2E+QCK87SWxMiFIFabq4EFVpjrqQDL8VYnrxO2aZG+WKSAz3Q2AC
 TrkoLUUC6S3T9Qhwxx4k3isEJlJkx8JdrDwOrnQm/sU+WiQCBxeMkueN8rjg+ssh1I0P/K8y2bY
 2cNqgsrbe5UDe5aWW7/JEUKvPklDqN6xwOJ3YGUKPVpu8KjRBPkrbQWXCiAnfphafY7/iy+F/hN
 rbpOVcozyrx6iJ5td0vumfdSrL39MCC38pso4nApPHHb/RPBo9LdJugSBH4rND9GK7RHegfwNRG
 iC7HTnIAXMWynZ88WpGLTbAklRUigRAWEkVtM9E7ICzuEfVqN3iorbKG4wHnN1tkHQr5wdmc5El
 ejdqQdm/HNqmKuogAl/Cnlmhe3c0q9PUViPNLSYSS1jzbbQIqYMRcYrrXbPRgxA348JwcgmTydB
 43DkRaTRZmHM2PPvaCA==
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI0MDA1NyBTYWx0ZWRfX/SSp8tfenNiy
 vGuteN0ADQrZqVIGVv5Y7Qt9DuyojCLXNJ3I+re1NnKU+m1S/KPy83RHAGJrZPiDrmV5A8R31nm
 710VhGi3eQU3/M15lH4rZYSGYKzTTcY=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-24_02,2026-08-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2608240057
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260823_233817_765828_11A08BBE 
X-CRM114-Status: GOOD (  14.27  )
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

Add the 6 nm SNPS femto USB2 PHY configuration needed by IPQ9650. The PHYs
on this SoC require a dedicated init sequence and override parameters
before they can be enabled.

Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 62 +++++++++++++++++++++++++++
 1 file changed, 62 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 5ffbe1a77dd4..c18171f9464b 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -29,12 +29,15 @@
 
 #define USB2_PHY_USB_PHY_UTMI_CTRL5		(0x50)
 #define POR					BIT(1)
+#define ATERESET				BIT(0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
 #define SIDDQ					BIT(2)
 #define RETENABLEN				BIT(3)
 #define FSEL_MASK				GENMASK(6, 4)
 #define FSEL_DEFAULT				(0x3 << 4)
+#define FSEL_24MHZ				(0x2 << 4)
+#define VATESTENB_MASK				GENMASK(1, 0)
 
 #define USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1	(0x58)
 #define VBUSVLDEXTSEL0				BIT(4)
@@ -57,6 +60,13 @@
 #define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
 #define PARAM_OVRD_MASK				0xFF
 
+#define USB2_PHY_USB_PHY_HS_PHY_TEST0		0x80
+#define TESTDATAIN_MASK				GENMASK(7, 0)
+
+#define USB2_PHY_USB_PHY_HS_PHY_TEST1		0x84
+#define TESTDATAOUTSEL				BIT(4)
+#define TESTCLK					BIT(6)
+
 #define USB2_PHY_USB_PHY_CFG0			(0x94)
 #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
 #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
@@ -78,6 +88,9 @@
 
 #define LS_FS_OUTPUT_IMPEDANCE_MASK		GENMASK(3, 0)
 
+#define USB2_PHY_USB_PHY_FSEL_SEL		0xb8
+#define FSEL_SEL				BIT(0)
+
 static const char * const qcom_snps_hsphy_vreg_names[] = {
 	"vdda-pll", "vdda33", "vdda18",
 };
@@ -328,6 +341,17 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
 	{ 1310, 0 },
 };
 
+static const struct override_param_map ipq9650_snps_6nm_phy[] = {
+	{
+		"qcom,pre-emphasis-amplitude-bp",
+		preemphasis_amplitude_sc7280,
+		ARRAY_SIZE(preemphasis_amplitude_sc7280),
+		USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+		PREEMPHASIS_AMPLITUDE_MASK,
+	},
+	{},
+};
+
 static const struct override_param_map sc7280_snps_7nm_phy[] = {
 	{
 		"qcom,hs-disconnect-bp",
@@ -418,6 +442,34 @@ static const struct phy_reg_config hs_5nm_phy_post[] = {
 	{ UINT_MAX, 0, 0 },
 };
 
+static const struct phy_reg_config hs_6nm_phy_pre[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_FSEL_SEL, FSEL_SEL, FSEL_SEL },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+	{ UINT_MAX, 0, 0 },
+};
+
+static const struct phy_reg_config hs_6nm_phy_post[] = {
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2, VREGBYPASS, VREGBYPASS },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, ATERESET, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST1, TESTDATAOUTSEL, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST1, TESTCLK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, VATESTENB_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_TEST0, TESTDATAIN_MASK, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL | USB2_SUSPEND_N,
+					 USB2_SUSPEND_N_SEL | USB2_SUSPEND_N },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL0, SLEEPM, SLEEPM },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, 0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0 },
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
+	{ UINT_MAX, 0, 0 },
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
@@ -505,6 +557,12 @@ static const struct phy_config_data hs_5nm_phy = {
 	.post = hs_5nm_phy_post,
 };
 
+static const struct phy_config_data hs_6nm_phy = {
+	.pre = hs_6nm_phy_pre,
+	.override = ipq9650_snps_6nm_phy,
+	.post = hs_6nm_phy_post,
+};
+
 static const struct phy_config_data hs_7nm_phy = {
 	.pre = hs_5nm_phy_pre,
 	.override = sc7280_snps_7nm_phy,
@@ -520,6 +578,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 		.compatible	= "qcom,usb-snps-hs-5nm-phy",
 		.data		= &hs_5nm_phy,
 	},
+	{
+		.compatible	= "qcom,usb-snps-hs-6nm-phy",
+		.data		= &hs_6nm_phy,
+	},
 	{
 		.compatible	= "qcom,usb-snps-hs-7nm-phy",
 		.data		= &hs_7nm_phy,

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
