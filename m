Return-Path: <SRS0=YzZ0=OR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC9CEC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F7106117A
	for <linux-phy@archiver.kernel.org>; Mon, 27 Sep 2021 06:48:52 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9F7106117A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5XHTgWRTjYibBfHs7d6JjOcMRKLivZwpTI6vvEwKgc=; b=gwRDGkxLukPhi7
	7SkJjbTtT9NbHjYeU5xZMfA5uQLph25VF8t9ggBy6h7mP+77nRwiiIbh3DOBefZoHu5s2oD7SK5JV
	E8KIP2PQbT66LO2sFQV6aSed6CDXbY7qab5fSvszb4xMbW/bfgFx6kJCfjH6MJwz2jRBMupBvzzfc
	TQ79c4/zdgEd4Ra/KJJa7/JJAu+JDgKhOxT2CPrzXjmDctBYqKOT9wGHY0HBWX5XR0ngac/4hv90c
	N/QRb/xPi7fgX5ck+5nB3xR/QVu/gV1zS/zAkc3IfNJ7+ieMFf2VWqsk2AksyFASoergSo+4gTgQL
	L/TXdgNvabVW8J3QPDwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUkRY-001kHw-6W; Mon, 27 Sep 2021 06:48:52 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUkRW-001kGh-96
 for linux-phy@lists.infradead.org; Mon, 27 Sep 2021 06:48:51 +0000
Received: by mail-pj1-x1035.google.com with SMTP id
 il14-20020a17090b164e00b0019c7a7c362dso10907720pjb.0
 for <linux-phy@lists.infradead.org>; Sun, 26 Sep 2021 23:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=1isXXJLmhlN1IlR8OI1SSeBiSZeElsmbNCFhrIVQTH0=;
 b=ABTl83oUoeXcPVOvaTSea7gdqrvVZsAjQ6zFnu2vJjGYYcmjkdCPTRo+kYW/xjsshe
 CifgXy8l102EraCs/0x2912tj9Brj13fiRhiMVcCSpMDNHXLe+j4ckTxFpEbgYZPywEH
 DpCR3QJwAF7NXcpL8zYytgv5dr+WLZIsiCHs8DS0CqFRYT4fgXXEtiMSg6WzQ4dtV95l
 HI96+pQNrANq01LnQZ3LcWO3HGbt+pla5Tfz6xOLlDceTiM+gAInSs5J7FRgmE2HJXxk
 vmSYuFCl8+jAWGkshh4/OE6OU7hvH0/Iaej6l2zDy8zHCD+Ps7qoCUHOe3TxZpm9rdOJ
 tnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=1isXXJLmhlN1IlR8OI1SSeBiSZeElsmbNCFhrIVQTH0=;
 b=2hJ0dkr0aHDjjsDiNTTMaC8zKZ2i8mi48uqFx+0NGl5MVaHkwQpf539vpirvk/mg28
 kjLM8DhJxj7LJaXjWXvzny8DpPlBTwcTBdY3RbKqOJAIeixDbWWzxY75XrpJoLdTZgYg
 6D7S9VLWzec8S8XjQlh8XJbQiVq9KjfoFWU8rd9sF2XKYeBTyXohokAAi/MiQXY8081K
 bq9jMkNJoXpoFOup9bM+AjUdIa5X10ZJV+pNj+pIw9nQNQcJJkxDShtqT7DnFMt5oeRl
 Zh9yYfhuTN6iCgYlxXDlhoTt6+22Dq8+LvnYU6OwK0O4pew7ttfcWYTaO6e5Uyoq942x
 ln6g==
X-Gm-Message-State: AOAM532PMHKR38rTVPdbFjeHBgAij/0400xLX3CZ8txKpaKUfhJMeLS1
 DGQR8QpTJBcDjJnBSuDqf9R9Sw==
X-Google-Smtp-Source: ABdhPJygXoarE081fOIuaHVbPDbueZQSYkdfgpPeEF6QDomDVme6XxmwUOjjKqyHSmw2DMDIszn7NA==
X-Received: by 2002:a17:90b:38cf:: with SMTP id
 nn15mr18107377pjb.81.1632725329089; 
 Sun, 26 Sep 2021 23:48:49 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id o16sm17169910pgv.29.2021.09.26.23.48.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Sep 2021 23:48:48 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 1/2] dt-bindings: phy: qcom,qmp: Add QCM2290 USB3 PHY
Date: Mon, 27 Sep 2021 14:48:28 +0800
Message-Id: <20210927064829.5752-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210927064829.5752-1-shawn.guo@linaro.org>
References: <20210927064829.5752-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210926_234850_339311_90F7ABFC 
X-CRM114-Status: UNSURE (   8.56  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add support for USB3 PHY found on Qualcomm QCM2290 SoC.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../devicetree/bindings/phy/qcom,qmp-phy.yaml | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 75be5650a198..4e7371956ed4 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -27,6 +27,7 @@ properties:
       - qcom,msm8998-qmp-pcie-phy
       - qcom,msm8998-qmp-ufs-phy
       - qcom,msm8998-qmp-usb3-phy
+      - qcom,qcm2290-qmp-usb3-phy
       - qcom,sc7180-qmp-usb3-phy
       - qcom,sc8180x-qmp-pcie-phy
       - qcom,sc8180x-qmp-ufs-phy
@@ -414,6 +415,32 @@ allOf:
           items:
             - const: phy
             - const: common
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qcm2290-qmp-usb3-phy
+    then:
+      properties:
+        clocks:
+          items:
+            - description: Phy config clock.
+            - description: 19.2 MHz ref clk.
+            - description: Phy common block aux clock.
+        clock-names:
+          items:
+            - const: cfg_ahb
+            - const: ref
+            - const: com_aux
+        resets:
+          items:
+            - description: phy_phy reset.
+            - description: reset of phy block.
+        reset-names:
+          items:
+            - const: phy_phy
+            - const: phy
 
 examples:
   - |
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
