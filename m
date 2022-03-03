Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52AEDC433FE
	for <linux-phy@archiver.kernel.org>; Thu,  3 Mar 2022 06:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V+JFSrwxMgqp+56sHpKSpGCDeHKdtU99Ppxld2zb8Kg=; b=oz6HHkWuB2IeAb
	LwJeS1zVbPA42TrBdP8awOZEJvUF/JYq8t5JDthx7bh8gkR5mTqypBV3egN5+236pijMh3meoZ5mi
	s609ZNcfwbGjyjYOCBHULwj6gQJq8lEbaXmJA1olKJ/YA00dxParz1YraNkF7hYYCELQNdWmPGOID
	QPX1H9za8gooS9K9oLzXe2p/mIQUb1BrIaMad/UL/dt78ahpe2yB4dcj8O0HuyI4WNYxHt+jgATju
	Pzxr9NpYkDaxCOHdn+tlBfS8nfe4UuAp8aXQTOFIc4f5iCDqEmeFQLhVDqBF29k7DU1/4tR48yGHV
	CG0vVky7wtJIfhArV5lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPeix-005Izy-PA; Thu, 03 Mar 2022 06:14:03 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPeiu-005Iwn-SF
 for linux-phy@lists.infradead.org; Thu, 03 Mar 2022 06:14:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1646288040; x=1677824040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=zyPTvh1c8RPn8sc5rNOcCfJp4uV5whVdkZZ2y239PwE=;
 b=t8NDtG3HoBLf7Y2UNQ0jRKkZAFyB3BqmCemx3M8Ovy3HLM8owHgCMv+6
 f8E/wfa6isWbX5KKgkyTOYWv61rOMI7SrPEQ05ZLM+iheeucuGOTzDpJW
 c88Pr0t0Ph2kgU9yDIiKk7n9506Dtzh8R/bVfJNpTlN4j0uh2AT1C1VY1 M=;
Received: from unknown (HELO ironmsg-SD-alpha.qualcomm.com) ([10.53.140.30])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 02 Mar 2022 22:13:56 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg-SD-alpha.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 22:13:56 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 2 Mar 2022 22:13:55 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Wed, 2 Mar 2022 22:13:50 -0800
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
Subject: [PATCH v2 1/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add phy override params bindings
Date: Thu, 3 Mar 2022 11:43:29 +0530
Message-ID: <1646288011-32242-2-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1646288011-32242-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_221400_974166_5522B5B2 
X-CRM114-Status: GOOD (  13.40  )
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

Add device tree bindings for SNPS phy tuning parameters.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 .../bindings/phy/qcom,usb-snps-femto-v2.yaml       | 125 +++++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0dfe691..227c097 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -50,6 +50,131 @@ properties:
   vdda33-supply:
     description: phandle to the regulator 3.3V supply node.
 
+  qcom,hs-disconnect:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the voltage level for the threshold used to
+      detect a disconnect event at the host. Possible values are.
+      7 -> +21.56%
+      6 -> +17.43%
+      5 -> +13.32%
+      4 -> +9.73%
+      3 -> +6.3
+      2 -> +3.17%
+      1 -> 0, Design default%
+      0 -> -2.72%
+
+  qcom,squelch-detector:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the voltage level for the threshold used to
+      detect valid high-speed data. Possible values are
+      7-> -20.90%
+      6-> -15.60%
+      5-> -10.30%
+      4-> -5.30%
+      3-> 0, Design default%
+      2-> +5.30%
+      1-> +10.60%
+      0-> +15.90%
+
+  qcom,hs-amplitude:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the high-speed DC level voltage.
+      Possible values are
+      15-> +26.70%
+      14-> +24.30%
+      13-> +22.20%
+      12-> +20.00%
+      11-> +17.80%
+      10-> +15.60%
+      9-> +13.30%
+      8-> +11.10%
+      7-> +8.90%
+      6-> +6.50%
+      5-> +4.40%
+      4-> +2.30%
+      3-> 0, Design default%
+      2-> -2.20%
+      1-> -4.40%
+      0-> -6.60%
+
+  qcom,pre-emphasis-duration:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This signal controls the duration for which the
+      HS pre-emphasis current is sourced onto DP<#> or DM<#>.
+      The HS Transmitter pre-emphasis duration is defined in terms of
+      unit amounts. One unit of pre-emphasis duration is approximately
+      650 ps and is defined as 1X pre-emphasis duration.
+      Possible values are
+      1-> 1x, short pre-emphasis current duration
+      0-> 2x, long pre-emphasis current duration
+
+  qcom,pre-emphasis-amplitude:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This signal controls the amount of current sourced to
+      DP<#> and DM<#> after a J-to-K or K-to-J transition.
+      The HS Transmitter pre-emphasis current is defined in terms of unit
+      amounts. One unit amount is approximately 2 mA and is defined as
+      1X pre-emphasis current.
+      Possible values are
+      3-> HS Transmitter pre-emphasis circuit sources 3x pre-emphasis
+      current.
+      2-> (design default) HS Transmitter pre-emphasis circuit sources 2x
+      pre-emphasis current.
+      1-> HS Transmitter pre-emphasis circuit sources 1x pre-emphasis
+      current.
+      0-> HS Transmitter pre-emphasis circuit sources 4x pre-emphasis
+      current.
+
+  qcom,hs-rise-fall-time:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the rise/fall times of the high-speed waveform.
+      Possible values are
+      3-> -41.0%
+      2-> 0, Design default
+      1-> +28.1
+      0-> +54.3%
+
+  qcom,hs-crossover-voltage:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the voltage at which the DP<#> and DM<#>
+      signals cross while transmitting in HS mode.
+      Possible values are
+      3-> 0, Default setting
+      2-> +28 mV
+      1-> -31 mV
+      0-> Reserved
+
+  qcom,hs-output-impedance:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      In some applications, there can be significant series resistance
+      on the D+ and D- paths between the transceiver and cable. This adjusts
+      the driver source impedance to compensate for added series
+      resistance on the USB.
+      3-> Source impedance is decreased by approximately 2.3 ohms
+      2-> 0, Design default
+      1-> Source impedance is increased by approximately 2.6 ohms
+      0-> Source impedance is increased by approximately 6.1 ohms
+
+  qcom,ls-fs-output-impedance:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description:
+      This adjusts the low- and full-speed single-ended source
+      impedance while driving high. The following adjustment values are based
+      on nominal process, voltage, and temperature.
+      15-> -10.53%
+      7-> -5.57%
+      3-> 0, Design default
+      1-> +6.12%
+      0-> +13.10%
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
