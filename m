Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D0B0C43334
	for <linux-phy@archiver.kernel.org>; Sun,  3 Jul 2022 13:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uNZCL9fhLRMN3FdJFXzIlzzQuJJgqjJwHB5iZQhG7yA=; b=D+wyKDL8zFNeCv
	L5fn5JGuXIFezxgEL57mGWIX9wI9MhyYFWYLtjPcV7kq7nnUmihIsB5wmyNSsxf2eexlDOeVKGplw
	n2IGBHvTBC0ymCS3TXF89jMEtoWen+L8S64RhnTQ8peC6ENcOJWnqitiWbndTvZzmVKxPSGBjIUen
	GTclk9s/2aow62CXc1SM/GUQS398R3YdxtVjlmad9WPOBT+vYxchJ7Le26R/8u62lEbkrWdUCu69W
	cQB9SnETI0rzkQPe957hqQwYCmHydjOur6P6T5PIG9iLcQbFmtMcir5hrywWhHwynI25Of2krPWX2
	n8CYrcPZ6k+7lSLPdBGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7zQS-00G79h-1Q; Sun, 03 Jul 2022 13:14:12 +0000
Received: from alexa-out-sd-02.qualcomm.com ([199.106.114.39])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o7zQN-00G77R-KR
	for linux-phy@lists.infradead.org; Sun, 03 Jul 2022 13:14:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
  t=1656854047; x=1688390047;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version;
  bh=QW7iVWh3gKfo67N28LuCB4Ni59WEXn3l8rPFrudan4w=;
  b=D3QGp0OiLkcBERgOaWvg+s99C4illvuXOaZXXf32QxS+wFlVcoj1YxuQ
   sVs4hfPzJF+XyTueZ2tnKS/Hs7H8z1KEubKST5paoex52tlV3QgoLNO0e
   eQ19yBEsnXpgSKqPIa5Y1K85fmh+x5oaUkVSbzXaQsWjoybh0p1BFACNs
   s=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
  by alexa-out-sd-02.qualcomm.com with ESMTP; 03 Jul 2022 06:14:07 -0700
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
  by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 03 Jul 2022 06:14:07 -0700
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 3 Jul 2022 06:14:06 -0700
Received: from hu-kriskura-hyd.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.22; Sun, 3 Jul 2022 06:14:00 -0700
From: Krishna Kurapati <quic_kriskura@quicinc.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring
	<robh+dt@kernel.org>, Andy Gross <agross@kernel.org>, Bjorn Andersson
	<bjorn.andersson@linaro.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Stephen Boyd <swboyd@chromium.org>, "Doug
 Anderson" <dianders@chromium.org>, Matthias Kaehlcke <mka@chromium.org>,
	Vinod Koul <vkoul@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
	<linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <quic_pkondeti@quicinc.com>,
	<quic_ppratap@quicinc.com>, <quic_vpulyala@quicinc.com>, Sandeep Maheswaram
	<quic_c_sanm@quicinc.com>, Krishna Kurapati <quic_kriskura@quicinc.com>
Subject: [PATCH v10 1/3] dt-bindings: phy: qcom,usb-snps-femto-v2: Add phy override params bindings
Date: Sun, 3 Jul 2022 18:43:47 +0530
Message-ID: <1656854029-21660-2-git-send-email-quic_kriskura@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1656854029-21660-1-git-send-email-quic_kriskura@quicinc.com>
References: <1656854029-21660-1-git-send-email-quic_kriskura@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220703_061407_784677_972BF426 
X-CRM114-Status: GOOD (  13.05  )
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

From: Sandeep Maheswaram <quic_c_sanm@quicinc.com>

Add device tree bindings for SNPS phy tuning parameters.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 88 ++++++++++++++++++++++
 1 file changed, 88 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 7a0e6a9..565ce5f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -53,6 +53,94 @@ properties:
   vdda33-supply:
     description: phandle to the regulator 3.3V supply node.
 
+  qcom,hs-disconnect-bp:
+    description:
+      This adjusts the voltage level for the threshold used to
+      detect a disconnect event at the host.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -272
+    maximum: 2156
+
+  qcom,squelch-detector-bp:
+    description:
+      This adjusts the voltage level for the threshold used to
+      detect valid high-speed data.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -2090
+    maximum: 1590
+
+  qcom,hs-amplitude-bp:
+    description:
+      This adjusts the high-speed DC level voltage.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -660
+    maximum: 2670
+
+  qcom,pre-emphasis-duration-bp:
+    description:
+      This signal controls the duration for which the
+      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
+      The HS Transmitter pre-emphasis duration is defined in terms of
+      unit amounts. One unit of pre-emphasis duration is approximately
+      650 ps and is defined as 1X pre-emphasis duration.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: 10000
+    maximum: 20000
+
+  qcom,pre-emphasis-amplitude-bp:
+    description:
+      This signal controls the amount of current sourced to
+      DP<#> and DM<#> after a J-to-K or K-to-J transition.
+      The HS Transmitter pre-emphasis current is defined in terms of unit
+      amounts. One unit amount is approximately 2 mA and is defined as
+      1X pre-emphasis current.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: 10000
+    maximum: 40000
+
+  qcom,hs-rise-fall-time-bp:
+    description:
+      This adjusts the rise/fall times of the high-speed waveform.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -4100
+    maximum: 5430
+
+  qcom,hs-crossover-voltage-microvolt:
+    description:
+      This adjusts the voltage at which the DP<#> and DM<#>
+      signals cross while transmitting in HS mode.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -31000
+    maximum: 28000
+
+  qcom,hs-output-impedance-micro-ohms:
+    description:
+      In some applications, there can be significant series resistance
+      on the D+ and D- paths between the transceiver and cable. This adjusts
+      the driver source impedance to compensate for added series
+      resistance on the USB. The hardware accepts only discrete values. The
+      value closest to the provided input will be chosen as the override value
+      for this param.
+    minimum: -2300000
+    maximum: 6100000
+
+  qcom,ls-fs-output-impedance-bp:
+    description:
+      This adjusts the low- and full-speed single-ended source
+      impedance while driving high. The following adjustment values are based
+      on nominal process, voltage, and temperature.
+      The hardware accepts only discrete values. The value closest to the
+      provided input will be chosen as the override value for this param.
+    minimum: -1053
+    maximum: 1310
+
 required:
   - compatible
   - reg
-- 
2.7.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
