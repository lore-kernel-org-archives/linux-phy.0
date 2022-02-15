Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85BA5C433F5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Feb 2022 19:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgkOOr5zD1o+YTxmG6uRq0c17ORJLAhxCO0ms+X4Bw0=; b=frGS0c1k4fCQ9J
	n31Nh5G2iXEIBkrsFmtqviIcRYAvCOfEVRaAzNMCHzOogISJ6EixVIVwL15gEX3zVdgFnUFM/lfRs
	CU68Oxmfi1e2c09eWbKWxrbxNZKGqrDm7Zb6cP7xF7+txuoVULUgNFsAimY0+o2MgDl5lH61pTECN
	LiX0SCZ9wrK+A2XODg1SXDvR5c3sltc0xtChNJtrKEXw8bZLLm71665GQNgKTfnBfRfYeOvZc4lD+
	oBq3mWdKe/quvsy6xZrFZHUjvu9lv400LPTXBX7SHENfhBbejIkwYclz3DMUTiIaKaI7Abs6D6wM5
	vsBzgN6mPtCz40GhC3PQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nK3Mw-004HQm-Ow; Tue, 15 Feb 2022 19:20:10 +0000
Received: from alexa-out-sd-01.qualcomm.com ([199.106.114.38])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nK3MZ-004HFx-5t
 for linux-phy@lists.infradead.org; Tue, 15 Feb 2022 19:19:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quicinc.com; i=@quicinc.com; q=dns/txt; s=qcdkim;
 t=1644952787; x=1676488787;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=VqmqdFqQfU3ky6dw6FWZJiZ19fu4Cs3hMyuJyVnXJtE=;
 b=wZKwArmHs69suG+vsog5Tehb3WfMZYUMRVJSJFKOi1+F7jQUDOX7RH5u
 XxY+/crBZh/x6EerDyYSTdYhLa2UajAh0iBRzBYVrsuJhVvarmzvrSJI/
 UyVK+YXzQTV4HKD0zgLfJE7BMsMzEEn7465eC/fDSGyJLpy0iDK7Kc0k7 g=;
Received: from unknown (HELO ironmsg01-sd.qualcomm.com) ([10.53.140.141])
 by alexa-out-sd-01.qualcomm.com with ESMTP; 15 Feb 2022 11:19:45 -0800
X-QCInternal: smtphost
Received: from nasanex01c.na.qualcomm.com ([10.47.97.222])
 by ironmsg01-sd.qualcomm.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2022 11:19:45 -0800
Received: from nalasex01a.na.qualcomm.com (10.47.209.196) by
 nasanex01c.na.qualcomm.com (10.47.97.222) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.986.15; Tue, 15 Feb 2022 11:19:44 -0800
Received: from c-sanm-linux.qualcomm.com (10.80.80.8) by
 nalasex01a.na.qualcomm.com (10.47.209.196) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.922.19; Tue, 15 Feb 2022 11:19:38 -0800
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
Subject: [PATCH 1/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add phy override params bindings
Date: Wed, 16 Feb 2022 00:49:13 +0530
Message-ID: <1644952755-15527-2-git-send-email-quic_c_sanm@quicinc.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
References: <1644952755-15527-1-git-send-email-quic_c_sanm@quicinc.com>
MIME-Version: 1.0
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220215_111947_305531_B8DC5186 
X-CRM114-Status: UNSURE (   8.46  )
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

Add support for overriding SNPS phy tuning parameters in device tree
bindings.

Signed-off-by: Sandeep Maheswaram <quic_c_sanm@quicinc.com>
---
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml  | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0dfe691..44cf3bf 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -50,6 +50,22 @@ properties:
   vdda33-supply:
     description: phandle to the regulator 3.3V supply node.
 
+  qcom,override_x0:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Override value for hs disconnect and squelch detector threshold.
+
+  qcom,override_x1:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Override value for hs amplitude, pre-emphasis duration and amplitude.
+
+  qcom,override_x2:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Override value for hs rise/fall time, cross over voltage, output impedance.
+
+  qcom,override_x3:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    description: Override value for ls/fs output impedance.
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
