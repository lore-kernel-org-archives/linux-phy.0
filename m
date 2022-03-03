Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8667DC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 06:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=54SoRurUOaImw0TkRCTMYUSqpDlO2UQw24UMsaypKTU=; b=SdaJXEFWgzbsHY
	mRk68qLEayvx3Hw0wDbcG9JJFXs5MhbkEEEsS5cJCSRW2G+W+LSDORNlaC2igCwe2jXTUUFXvDgxS
	l4JRUlK50ovrSeXIrqRPGnwiB9cFzc1Ng9jK5Z1cBfdvCi6FidRR/wsqZWJUXfoguxJkEa7Azj8h3
	OY4r1lrrGv4+eSAZTi+UIGjSDLWG35Z+peIxZPzwApBmcha2IphOjpLU8fDZrhmzQZc2+S5MXbvGk
	O0RwDFb8VcK1bM68N+hpuCeDgBd9cxfQVOVRZFzVHlpeDcKDK7V8zoWVJOSE/deDPUHR+VeBt8TUN
	xyYfiGO0P0GnkSp6pvVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPej4-005J27-WD; Thu, 03 Mar 2022 06:14:11 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPej1-005J1M-VM
 for linux-phy@lists.infradead.org; Thu, 03 Mar 2022 06:14:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1646288047; x=1677824047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=i1AV8rhlTdaNhUq0Ae3IKRbuNI9WmGeEyJu75n9/QgM=;
 b=gLcsPh9yAXeCBxvmP2Cah5edmnZ7VeszMmwMxg8xYmbFrukFKzXkaCYf
 DBf7Bh/DM2wqW9cA0b9sYeRQA0ETXkXIdbNmILur8LHLE1/Xmm/29e+6M
 DGihbS74SYdhmZ9WufFH21P1+vefrwqKv0vUxE6KSm0mKN4x1vStJjgVp Y=;
Received: from unknown (HELO ironmsg05-sd.qualcomm.com) ([10.53.140.145])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 02 Mar 2022 22:14:07 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg05-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 22:14:07 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 2 Mar 2022 22:14:06 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 2 Mar 2022 22:14:01 -0800
From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
To: Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, "Bjorn
 Andersson" <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I
 <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Wesley Cheng <wcheng@codeaurora.org>, "Stephen
 Boyd" <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>, "Matthias
 Kaehlcke" <mka@chromium.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski@canonical.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <quic_pkondeti@quicinc.com>,
 <quic_ppratap@quicinc.com>, Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Subject: [PATCH v2 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params for
 SC7280 IDP device
Date: Thu, 3 Mar 2022 11:43:31 +0530
Message-ID: <1646288011-32242-4-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_221408_061884_A118B8B0 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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

Overriding the SNPS Phy tuning parameters for SC7280 IDP device.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index ecbf2b8..0fbc5a1 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -317,6 +317,12 @@
 	vdda-pll-supply = <&vreg_l10c_0p8>;
 	vdda33-supply = <&vreg_l2b_3p0>;
 	vdda18-supply = <&vreg_l1c_1p8>;
+	qcom,hs-disconnect = <6>;
+	qcom,squelch-detector = <7>;
+	qcom,hs-amplitude = <11>;
+	qcom,hs-rise-fall-time = <2>;
+	qcom,hs-crossover-voltage = <1>;
+	qcom,hs-output-impedance = <1>;
 };
 
 &usb_1_qmpphy {
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
