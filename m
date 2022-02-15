Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3945C433FE
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 19:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lNv3h7344N2wPbKom7p+yH7L0SeR3h3fJvi5+nb/OrM=; b=uYHz7HsiVaY2Vj
	gOfOzMhRBVgxjZMK2WRACIwfBzcl0LIB8Uv6vlrkHWgmkijV1xOKtZ5SpcCjjWNooPPnloJ24O8O5
	UXHR39fVInWAwjBUvRHutM1ZJ1KDcIRMzy+ZTe8aa6sERZb5POZUkz408Rwh8UVXPVqAuzfE4G343
	v7XQ1R/GDZGvDJkDeKdjlfpyaACpqbCMjhncmGXB/sY6NKafyOORLdCXiSAXagKd5J2HDkB2f+izj
	yH3e9WIGFWwkjA05zUJyOXn1AsjF5x/9V9RzKIiE2VamQ0sXWAVBnU233L3ttZ8MU/o2E1W/1fL6q
	yNoyk6GOdMIwm3cwHeZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3Mx-004HRS-7L; Tue, 15 Feb 2022 19:20:11 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3Me-004HIP-6t
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 19:19:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1644952792; x=1676488792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=+c/sAVWbL+FsYmpW5HTm4iUSXm3Ddt3ihcr9mqI4b2I=;
 b=fnPR4MITCOhMyOaujZ3EGk7wJQqit/7QW84jqPttvsV+R8XO9acRWROD
 bqcQdpFmcfXLo8rSc8OSxsV4HAxOCb5r3gtRXsMgj7T1+4bJvBKj0mhwm
 9naGo38xxdZKMOmiD1yjdRXrJTjk1ESjCKhMRUClt8hYZtZzEyT4Ol3gf U=;
Received: from unknown (HELO ironmsg02-sd.qualcomm.com) ([10.53.140.142])
 by alexa-out-sd-02.qualcomm.com with ESMTP; 15 Feb 2022 11:19:51 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg02-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:19:50 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 15 Feb 2022 11:19:50 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.922.19; Tue, 15 Feb 2022 11:19:44 -0800
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>, Andy Gross <agross@kernel.org>, "Bjorn
 Andersson" <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Wesley Cheng <wcheng@codeaurora.org>, "Stephen
 Boyd" <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>
CC: <evicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: [PATCH 2/3] phy: qcom-snps: Add support for overriding phy tuning
 parameters
Date: Wed, 16 Feb 2022 00:49:14 +0530
Message-ID: <1644952755-15527-3-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_111952_323613_DD7AC385 
X-CRM114-Status: GOOD (  11.50  )
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

Added support for overriding x0,x1,x2,x3 params for SNPS PHY.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 45 +++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
index 7e61202..3cf90fa 100644
--- a/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
+++ b/drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c
@@ -51,6 +51,12 @@
 #define USB2_SUSPEND_N				BIT(2)
 #define USB2_SUSPEND_N_SEL			BIT(3)
 
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0		(0x6c)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1		(0x70)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2		(0x74)
+#define USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3		(0x78)
+#define PARAM_OVRD_MASK			0xFF
+
 #define USB2_PHY_USB_PHY_CFG0			(0x94)
 #define UTMI_PHY_DATAPATH_CTRL_OVERRIDE_EN	BIT(0)
 #define UTMI_PHY_CMN_CTRL_OVERRIDE_EN		BIT(1)
@@ -90,6 +96,11 @@ struct qcom_snps_hsphy {
 
 	bool phy_initialized;
 	enum phy_mode mode;
+
+	u8 override_x0;
+	u8 override_x1;
+	u8 override_x2;
+	u8 override_x3;
 };
 
 static inline void qcom_snps_hsphy_write_mask(void __iomem *base, u32 offset,
@@ -222,6 +233,19 @@ static int qcom_snps_hsphy_init(struct phy *phy)
 	qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_CTRL1,
 					VBUSVLDEXT0, VBUSVLDEXT0);
 
+	if (hsphy->override_x0)
+		qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X0,
+					PARAM_OVRD_MASK, hsphy->override_x0);
+	if (hsphy->override_x1)
+		qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X1,
+					PARAM_OVRD_MASK, hsphy->override_x1);
+	if (hsphy->override_x2)
+		qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X2,
+					PARAM_OVRD_MASK, hsphy->override_x2);
+	if (hsphy->override_x3)
+		qcom_snps_hsphy_write_mask(hsphy->base, USB2_PHY_USB_PHY_HS_PHY_OVERRIDE_X3,
+					PARAM_OVRD_MASK, hsphy->override_x3);
+
 	qcom_snps_hsphy_write_mask(hsphy->base,
 					USB2_PHY_USB_PHY_HS_PHY_CTRL_COMMON2,
 					VREGBYPASS, VREGBYPASS);
@@ -294,6 +318,7 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 	struct phy *generic_phy;
 	int ret, i;
 	int num;
+	u32 value;
 
 	hsphy = devm_kzalloc(dev, sizeof(*hsphy), GFP_KERNEL);
 	if (!hsphy)
@@ -329,6 +354,26 @@ static int qcom_snps_hsphy_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	if (!of_property_read_u32(dev->of_node, "qcom,override_x0",
+				  &value)) {
+		hsphy->override_x0 = (u8)value;
+	}
+
+	if (!of_property_read_u32(dev->of_node, "qcom,override_x1",
+				  &value)) {
+		hsphy->override_x1 = (u8)value;
+	}
+
+	if (!of_property_read_u32(dev->of_node, "qcom,override_x2",
+				  &value)) {
+		hsphy->override_x2  = (u8)value;
+	}
+
+	if (!of_property_read_u32(dev->of_node, "qcom,override_x3",
+				  &value)) {
+		hsphy->override_x3 = (u8)value;
+	}
+
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
 	/*
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
