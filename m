Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 875D7CA5FED
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 05:30:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgHL46LVADhzRvqI3fGo/DTvRuerNsh5EWqLEVxTglU=; b=CQ8jx03ynAeO55
	nzZtSSI63gTYvCFJqYZyocsr5CiFDbiUH38gJDgBnSD6c0QFIyGICrj2KqzKsatF9jvIuoG+Lc0jU
	3+S3hEiMskSn6UjOB7+YFC6f5SIZxUnGQlKlWsQQYYUUHx725go9zPNt4XWm2WSBjZV4HJq6JZuod
	cSgqymn6Zlt6aPCzWioXE5mWyMOwvTh22hGBXTVExrbESapw/uWlNqf2dKy+kFBlsHhc6ozHkmBaT
	ZtbW7UqcJwUPl1zmH+B8PIlj99F4q1lRdLctRNvmlyfyVsXfr/qHekAftEHYqvVJ3xMVIvZc1YueN
	Ic0tr0CCeNgqJ5JYD+RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkY-000000004Kc-0fTl;
	Tue, 06 Oct 2026 05:30:02 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDxkV-000000004JV-0ryp
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 05:30:00 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6963AGqL585480
	for <linux-phy@lists.infradead.org>; Tue, 6 Oct 2026 05:29:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oakCOR/MxK4aTqsivjCflg3sV5s4Rn3d77hnwCyKCyw=; b=RB/Uhs10d/phO1ST
	r+mY5a0EpMn09n9gILY08KRxJulaC48u8zxBDzePka8sdRcNqpkxT8a2yCL4kDJc
	0eF8hqvf+ZHFaFm+iHLYAu1DttCcibd2b180af07DiY+kDA0MnRU8HPIGiF7Fp0a
	AWPTOFhGeVPbP/DC1vwdZCAqCjYHIOJqIoFgind+ar5xVvvDaVpmCJ0CAbszEal+
	IB8xOCpKtoLIJQCEdDKTglUHHDmqhIc+WSa43mEgSXullkEI9DpVU4bLzIqFecE7
	IVdOiqN5R81ulaySwHVl/0L8LxhlpMELBqu9IsfXZYlsjfDxvC+r4Ap3f0cL/Wcp
	jPUenw==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4h49u43vtw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 06 Oct 2026 05:29:58 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-14fed306427so9893011c88.1
        for <linux-phy@lists.infradead.org>; Mon, 05 Oct 2026 22:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1791264598; x=1791869398; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oakCOR/MxK4aTqsivjCflg3sV5s4Rn3d77hnwCyKCyw=;
        b=XKj3cF7vsANRtiXjUXVAhkoY9Gc0z3bdD4mH2Px6JJAr5+FxiyWBTC0pyhVOg8TbzL
         RGJmGTK4mWrdke+sWkXrFCwQuP2//z87qJziZS+ma9tVobDJq074V14+Vj96H7wIOx+D
         0cNVWAFb8VzwHd9XPNgFGkDYFuns8/ivQwgsStS8JZrmaMkW/OA8cMvNZlAkEFeiXEb+
         AKo6j99kNGSRibkOJ8CKbivmBpU73wqQZRDDrJvI9pkqS0W7YIJg3oDRmDB4Jf0RBlKj
         fdlcGljFbabDAynaqpe+z3kOjXjevIXgahIDW5I9vObK8RO4EVP6v15i8nJS6A9cSJcR
         sjXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791264598; x=1791869398;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=oakCOR/MxK4aTqsivjCflg3sV5s4Rn3d77hnwCyKCyw=;
        b=h74AqDU2wlzd8mSfmwEDe9US3Q0PQlXLH7jOOFcJ4q40GU2WcYjuSqoT710EmxOU0n
         3oYmz0R/p3QUlKtJ8zSsLB16+QtEB8NUsdeNN613etc/m8Jcn29wu/M40pUeSDMBFBHO
         osp4lnPSArYKn3q76GD6CxZT8RyF7aqPeCaq4vSkFtnf3yMJnvZxaJ1IdMWMkN4nCPa2
         pS/xAgsny1mjWU5E41NWJUsSeprfEIUA01N3KN9Hduj8ItM2NHWmqtMz/ko8kd0doZdM
         wXsUmWztbT/n2VXCRQiF4wBh5w4idlOYmfAN6//OJhVyrz5WC4Ysk41FL8Nk47xZtPsK
         TQ5A==
X-Forwarded-Encrypted: i=1; AKwUvBwEE+sJDD+YUN5b1fYnWC70nPekpfFU9LK8FTTX7PxB3OZYui4kzFHlaqag4D9ApmTRPN0oBmOg6hg=@lists.infradead.org
X-Gm-Message-State: AFuF++klptsYhaiYhyJJGsFKrULVtNn+j86MBqg1rvN+Ct85zUgecOSa
	q5EFZQoRIyh56p160UgSIC9vT2nu63UlHANip0IxFLVC5gNznb+hhYI/+xLWBalVggI5j6PjgZT
	APyjakLF1Yy5vwWiZFcCEYJ6GVIFxC6/oOAkvuJifY2vgVRu9OTrxTuHB/nLA93AlZV+V
X-Gm-Gg: AYBFou03LKhre+0MNf7E1EOjOIIF45jG9xRCQLfjwm+vzut9IovgjQwpE+Zkbe9b0Hb
	kfEnyfi9MzA8mdmPg1HCnApSgItav8/PLmKBMaEGSG7q5/60tB2c1qMIkHBue4vWeDIZjzRfjzJ
	tG0rfF3AHtb7cPxEujfTOvDjE6ql3AtmSu6SepbT56BEGEHaPVKDlwfCFq2vT3HXfstfJwEu319
	tUx8teZc/szuGkKJnHCZVPIo1BSFGkeQ2dxb0AsNNbvxlXtlQ6mvWR61rccQhRSM6wgN3gDj4Jd
	MYF93qdnuSyfVpfwKjiWeIK5zM1+9E118CsUmPvZb4lZqk9Q9DFXnK7KwO4FrfcH4NT9GiUUqya
	2egyP5rCwlqQpnDa4HAyASGrg+UmHLz2FNYjvNz7rGsQFPWaH+j1OVNoeUcFJ4mvzptvStXknP4
	+iqT7poxPvQRQ2R3PDyTj/Jwbl+9yr
X-Received: by 2002:a05:7022:3a8a:b0:143:2984:6517 with SMTP id a92af1059eb24-151c4640297mr12927477c88.38.1791264597661;
        Mon, 05 Oct 2026 22:29:57 -0700 (PDT)
X-Received: by 2002:a05:7022:3a8a:b0:143:2984:6517 with SMTP id a92af1059eb24-151c4640297mr12927440c88.38.1791264597070;
        Mon, 05 Oct 2026 22:29:57 -0700 (PDT)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-15d85781d49sm4017403c88.16.2026.10.05.22.29.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Oct 2026 22:29:56 -0700 (PDT)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Date: Tue, 06 Oct 2026 10:59:20 +0530
Subject: [PATCH v5 6/6] phy: qcom: snps-femto-v2: Add IPQ9650 support
MIME-Version: 1.0
Message-Id: <20261006-phy-v5-6-cbe9330a6449@oss.qualcomm.com>
References: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
In-Reply-To: <20261006-phy-v5-0-cbe9330a6449@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <pza@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: G3fZv4h1Luo77CuR4A_5vCvG4B-EPjxR
X-Proofpoint-GUID: G3fZv4h1Luo77CuR4A_5vCvG4B-EPjxR
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfX08IjFzpiqWYU
 JIqgc9z4QGtwrvFq/e3VjPYPhwq70hKSUWEB83v8+m8k1dVCCkglWWvvFiibGbvH9Xp9e9xP4Lo
 KLjGKVqlioadg3zaegnW9nU+eq99EXc=
X-Authority-Analysis: v=2.4 cv=LuEHWXdc c=1 sm=1 tr=0 ts=6ac48756 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=EUspDBNiAAAA:8 a=Q9t0gmS3rCGuRMBXcNQA:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDA2MDAyMSBTYWx0ZWRfXyXcl766k0BY6
 dqhFb3NO8wqYWZqhSDE4yZx0ZQH8RSbOgxAbjcW9SXuZZXkqv6FJKFydrGjwojmoTC+fOc5ptYl
 vekU7p2kS61UPKfvz3SM6Nt+x3ccY1Ae4QxHtD+NwE+AYAJDwZuJGUNrLGAHrssOXU1y3lMBO08
 MqLvZ5z2XmlQzoDtOykDrmp2lZO7f97XZy5o9niWYEfCrn4Pn6IZJHkGsQrRKPOveHDEm+1D5BF
 G7x0bQuzbESL+r3fh93Ec0eiN8+KcJd4lx2laa4bZ9LM3xioZ7j4g0V9hwsG43d8HElYkR+uDpF
 M/O79vd55Ily206Lc6123Y5+7XfYMKwppeaZsxufK4rL4gLOrweAvnV3NNw0dd/OSZ8UxTgW0Km
 khOBfwDWId9TI1LNEtmBWSIwhzH6+BhdCGitxNpJE5o9mpc0pOBcilmw0NYkcf+hRvuE2WeYO6G
 egRRvtEGdwgdPxExeOA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-06_01,2026-10-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 malwarescore=0 clxscore=1015 spamscore=0
 bulkscore=0 priorityscore=1501 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2610060021
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_222959_262415_02B14CE1 
X-CRM114-Status: GOOD (  13.94  )
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
index 2e37b39dabba..3ed4292fc8c3 100644
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
+#define FSEL_24MHZ				FIELD_PREP_CONST(FSEL_MASK, 2)
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
@@ -330,6 +343,17 @@ static const struct override_param ls_fs_output_impedance_sc7280[] = {
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
@@ -418,6 +442,32 @@ static const struct phy_reg_config hs_5nm_phy_post_tuning[] = {
 	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0 },
 };
 
+static const struct phy_reg_config hs_6nm_phy_pre_tuning[] = {
+	{ USB2_PHY_USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, UTMI_PHY_CMN_CTRL_OVERRIDE_EN },
+	{ USB2_PHY_USB_PHY_UTMI_CTRL5, POR, POR },
+	{ USB2_PHY_USB_PHY_FSEL_SEL, FSEL_SEL, FSEL_SEL },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON0, FSEL_MASK, FSEL_24MHZ },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, PLLBTUNE, PLLBTUNE },
+	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_MASK, REFCLK_SEL_DEFAULT },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON1, VBUSVLDEXTSEL0, VBUSVLDEXTSEL0 },
+	{ USB2_PHY_USB_PHY_HS_PHY_CTRL1, VBUSVLDEXT0, VBUSVLDEXT0 },
+};
+
+static const struct phy_reg_config hs_6nm_phy_post_tuning[] = {
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
+};
+
 static int qcom_snps_hsphy_init(struct phy *phy)
 {
 	struct qcom_snps_hsphy *hsphy = phy_get_drvdata(phy);
@@ -512,6 +562,14 @@ static const struct phy_config_data hs_5nm_phy = {
 	.num_post_tuning = ARRAY_SIZE(hs_5nm_phy_post_tuning),
 };
 
+static const struct phy_config_data hs_6nm_phy = {
+	.pre_tuning = hs_6nm_phy_pre_tuning,
+	.num_pre_tuning = ARRAY_SIZE(hs_6nm_phy_pre_tuning),
+	.override = ipq9650_snps_6nm_phy,
+	.post_tuning = hs_6nm_phy_post_tuning,
+	.num_post_tuning = ARRAY_SIZE(hs_6nm_phy_post_tuning),
+};
+
 static const struct phy_config_data hs_7nm_phy = {
 	.pre_tuning = hs_5nm_phy_pre_tuning,
 	.num_pre_tuning = ARRAY_SIZE(hs_5nm_phy_pre_tuning),
@@ -529,6 +587,10 @@ static const struct of_device_id qcom_snps_hsphy_of_match_table[] = {
 		.compatible	= "qcom,usb-snps-hs-5nm-phy",
 		.data		= &hs_5nm_phy,
 	},
+	{
+		.compatible	= "qcom,ipq9650-usb-hs-phy",
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
