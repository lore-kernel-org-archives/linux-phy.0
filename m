Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33CDDCA0FE4
	for <linux-phy@archiver.kernel.org>; Thu, 21 Aug 2025 19:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PtqFETsfoIXJCH4HPDQAdCNjhxX/R52drkH5H0i32U=; b=F+mqYaahiNIrzb
	EyFHbyw+ex5hAokuAByuq1PO5HA6yTT/MdE3D2sxUxNmOU9csCNZnNgCYppbrzVYSk8q5LnhfuoBi
	AnQBaW52y1osF9va27xvi8KC/4ZjWMs+nQ01GnbGaaORtlvAGSRuH3IRPKcIdueFBJ35PJe8i64l+
	2WtQrc7TzmsAIjxtS+Prm8byY+sZu3YE8li9qBead65EaCu2Z2RwGRvIDOgCRPIYX5jMzZdXHrMbz
	7z1Ofy0SrYS2NHFi1gSjNXjdoRormzEOSiBXCBwVEAkkJhCiz5NnnB0qVIIozWpm7VKOq9iAsqGVF
	rJ58q/iFZLJhC230rl7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upAi0-00000000EmD-17Tk;
	Thu, 21 Aug 2025 19:12:24 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1up5jP-0000000H7xp-2fPw
	for linux-phy@lists.infradead.org;
	Thu, 21 Aug 2025 13:53:32 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-45a1ac7c066so6289675e9.1
        for <linux-phy@lists.infradead.org>; Thu, 21 Aug 2025 06:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755784410; x=1756389210; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4EIBQO1Gz3enJDEIRLN/ppBfRRD6TDZUCn9XNdLrwEY=;
        b=EqhD/Ca3+DTtg7708AfF7XW052glnT25oN+PViH/NXNRPMB8ElPIg5cMYkVEo8KokE
         mzHWKcsi66yfdhOR7BjRqI0xtUm/TJ6RZGTdfTwLMGUh3g0h9XsS1ge8rbIH+RYAr/u+
         hgW2MOvvs6Qq6KvBGHdwSmiLBr8rFKQxqT/rR53AJUfOFNcM+PqC5f9iGS1qq0FfbT1/
         OENfUs8dN9xkHvmZsntP0qtcHRDjWJ9z5ZISiGP/cQP9jIWqr93/dsQHSrEcIs4kDkkj
         +peqfoJHnBCdQkCdxBO1KYZvWEbaGjVMgsk9vB+BAY3w+7aqHjMCtzNca33xtuYmHcKG
         XYVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755784410; x=1756389210;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4EIBQO1Gz3enJDEIRLN/ppBfRRD6TDZUCn9XNdLrwEY=;
        b=nzXjFpSfvzWPsYwPjY0sWubG3JmycVWqZ17GYdYJN7fGmBjwlsyMbKmjjCYyJPg6pA
         eElPKTmOuyuT9/s4WSDBdKen+R0C2kgNDF13IUfW07/XO5wFHAMX8GXw2ubljnP4qBgj
         zwATNV0g9hxdw++qqJnQb78WTjyZ9AQdoYIQFxSn/1Wt3f+9uV382mOqwei1bxZ+MBuB
         qynY5PdQAAi1nYDK02oGLLUZjljFlzWX1F0HN81uc/xnr63uPSagI16+dOyH496dpUs/
         wcxMThvsT56njp8R6N94cbiZrxGYEWJqOiy5JCNWKiS2lVIf/I0ZCV46eU4YRRrlCdVU
         rehA==
X-Forwarded-Encrypted: i=1; AJvYcCXvTLyshhD3zMMSbnbnRh+MVkZOqHFEKpoh0mqwpOabOALSWroKuQcAE8FlU5E6oeztdFjFmeT0mwQ=@lists.infradead.org
X-Gm-Message-State: AOJu0YwT0cw9jmq8zmI03D5EO9PeO4LJ/54zNL5CRCRiVmWDy7DG5jRF
	gJEWIXdTnHWU8ZQ4bgoLaDbC8QttveWvv4B9KBTs/0HE6eE8o0K6mRlWlaSLTUkxVTw=
X-Gm-Gg: ASbGnctsDgoaDX6L3OtjDS+2W2rgrtoGIAOBwCG8riSJ+i9IA4Iz3KOC/4F19cBMWC1
	zDlQ34gswFP+diQgCCF4NJ59gHgAame8CRR0etd1OX5wBN9Lfcp1JwxaX3NYpj7/zcPFpD4pqLv
	n3lFiA612vFtwbR2kCE1xds6kSU1IDVO2GL7RNux01dSgT489JRfrBjnwZTBy43oJ9OWGCeDxRR
	23ETlGQCch+Smrz/wU0t2EBJRhusUyK3FJHBAMEqiprB1DjYI5yUz2BVXR3G88Hoe1AXVANkVcF
	gqIr867y7953UBTxZEebmcYMXuMWg41OHs22YHFoiNcPBmWJFcLsfk+X/O8G6c2xcP+OsbyHVYM
	YMUruiNWDJGWyHOI2D/G8I5IAQxb5N+KQHMJPSnDropHuNWBrZEnhXQ==
X-Google-Smtp-Source: AGHT+IGAIzsMBvakvxJeKR4kacsmerciP2sEoorpYm9uAOK1lVz1iyXKtDjbXi0GfpWXuuUcYEAuhw==
X-Received: by 2002:a05:600c:5249:b0:439:4b23:9e8e with SMTP id 5b1f17b1804b1-45b4d8de696mr24534735e9.3.1755784409986;
        Thu, 21 Aug 2025 06:53:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4e269d20sm14825015e9.2.2025.08.21.06.53.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:53:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:53:26 +0200
Subject: [PATCH RFC 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy:
 Document default phy mode
MIME-Version: 1.0
Message-Id: <20250821-topic-x1e80100-hdmi-v1-1-f14ad9430e88@linaro.org>
References: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-hdmi-v1-0-f14ad9430e88@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1974;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Aq4B8ubCvdna8UpVPGeOGxwN0aFnE91nXSAPqGRX4oM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyTXldbpm4aBJ2CsjXkwQ24ndf393shGxX332QEv
 OXcBGm6JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKck1wAKCRB33NvayMhJ0cV9D/
 9Ki7JcUNOAeH+4OzoHkHUP+vqAWxGIqz0PI1mKTURjsY+W1XGqbumr63HVm10/uPe+ctdQpVLJcfuf
 P7Zlp2uzHtdNuvdNHUFWiFP2jIOxEK1HkwmTMmw04jj7RMUxj3Wd9+cf4pJJ+1DFLxkM/wCkuIU0lR
 MMhrQWmsHBgI6On5U/7nYJr5EMepeTV8P3nyWYklErdKvijuWm1GRgjNnl57Ff6gNMu+2tmn7Cz5Ct
 8oJjm9W7Tx99PeMsMx2ypyWeLqMpRmOTpxSRN5WerUHcl0OJ3CNkuapZ3JLT8IgF4rU2KTKCE0Z36+
 CDoahhIPvFO17Tz7Zy7jk6vqQMXHNi7SJKyFST/kGfgtfuM/9SNI698IsBScm+pLMxvtPCSB1FUqQY
 oon8yBV31VcPp1385R5sJHfckSgYKihZDz1iAKFMbVvtKFNEEwqgGF8WJR4/VXBbmVaKi+Dif9hFEP
 2bB2O/nFsHUGhu8EEv3ghfexcSnnYKoH3Wydbwal/eXBmPuN1Kh8GPY4knHmqO8MrbbwXfyIgEOvsq
 nDIXQLPzsOzvQHY6XRmSL8bb5NRdxqYBT0dVa/VXLHVW5WsJPHPAArX5opq+p6a/vYUQ9e+y0zRT4S
 WDm4iqLuQx9488Xz1o0C46fbw0xJYmU7qt4CgLdUy/BaJHDfyvp1krYTiS9w==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250821_065331_683170_0D630563 
X-CRM114-Status: UNSURE (   9.98  )
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

The QMP USB3/DP Combo PHY hosts an USB3 phy and a DP PHY on top
of a combo glue to route either lanes to the 4 shared physical lanes.

The routing of the lanes can be:
- 2 DP + 2 USB3
- 4 DP
- 2 USB3

And the layout of the lanes can be swpped depending of an
eventual USB-C connector orientation.

Nevertheless those QMP Comby PHY can be statically used to
drive a DisplayPort connector, DP->HDMI bridge, USB3 A Connector...

But if a 4lanes DP->HDMI bridge is directly connected to the
QMP Comby PHY lanes, in the default routing 2 or the 4 lanes would
probbaly be USB3, making the DP->HDMI bridge non functional.

Add a property to hint in which layout mode the QMP Comby PHY
should be as startup.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index c8bc512df08b5694c8599f475de78679a4438449..129475a1d9527733e43ded5a38aad766f9810fe7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -76,6 +76,19 @@ properties:
   mode-switch: true
   orientation-switch: true
 
+  qcom,combo-initial-mode:
+    description:
+      Describe the initial mode of the Combo PHY configuration.
+      The Combo PHY is a wrapper on top of a DP PHY and an USB3 PHY,
+      sharing the same SuperSpeed lanes with either DisplayPort over
+      the 4 lanes (dp), USB3 on a pair of lanes (usb3) or both
+      technologies in a 2+2 configuration (usb3+dp) as default.
+    default: usb3+dp
+    enum:
+      - usb3+dp
+      - usb3
+      - dp
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
     properties:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
