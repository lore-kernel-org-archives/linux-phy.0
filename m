Return-Path: <SRS0=Qt1L=OT=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B023C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3227C613D3
	for <linux-phy@archiver.kernel.org>; Wed, 29 Sep 2021 03:43:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3227C613D3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/pn7SNmXx9D5UUT0s2k10hN6HpBHE809FnUVO4wSmw=; b=vkxN04vmeA1Oj/
	X6KweCF+m4KoHbZ1CbBzHl0e71i9ojS69CIFPa86UbjcPYemO6o9jmjj4UimEPbh+JT8/QlvjmKPJ
	R2wNPbLFLxZf6usi2vsJ8JvGYiv/TdtVjT1ulhqOAcVf9vN8Wd394a4Pc0pu1ReZ4t6tViEyXZHMm
	viJkrgcsR8+e0B4ZdwlD/zstzgfU0yXv4wLVVx1w0HrcprLZHzo9VytZKuGRC9UDw6texP4D/z6mm
	luWkh/mvPVydK02To3nLkPWUWvS8X+x3DN+cZDHYKek8FscPbfwLaPl8GJNmDpZwY0RMKru0kNEWg
	ryMLsjynXCLfMx++pvjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVQUw-009pyi-JY; Wed, 29 Sep 2021 03:43:10 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVQUu-009pxm-1V
 for linux-phy@lists.infradead.org; Wed, 29 Sep 2021 03:43:09 +0000
Received: by mail-pf1-x42d.google.com with SMTP id w19so775689pfn.12
 for <linux-phy@lists.infradead.org>; Tue, 28 Sep 2021 20:43:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XiAcvN5D+Y73TnzW/uz6uuO7o7HK+IwXNf7Gv1BpkoY=;
 b=V+7T44/slVAl+pNwTIxSKRYbpDdNYZvl8TkqNqfzEBx4S/3NcwSahB2sA8y0BgB0kJ
 qz7HZH2XPHl79aZRTdWuamDLCXjbtdJURO+toqMXk6aev/0SVrDUC7/azRMEjw0Tucv7
 KIhz7VYXjpBTniISWSG9U/uirXebd3052ZyI1uLHkOwIQXm1KHtjo3rJ4vIOWFThHw0r
 wzx+cRG3Y2crnWTgG9rVryqkJSO9QL6yxrdQlKx8HnbLBIVKlI+Ea3HU4nKBqoHkW5VY
 H0UZPx2E5Lky2kUujJI4OhoBHgN9lblr3vfGlEM0KxlrcT9vwiLdzDKPJJMg1c+yeFl4
 ytQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XiAcvN5D+Y73TnzW/uz6uuO7o7HK+IwXNf7Gv1BpkoY=;
 b=zVvyuIjNTFuzmZ4BYJdvOgEfGbxQ+EBHh01YR1P8Wjq8F17dLvbxDrtAY2NJxfOsae
 wpC54cqsWllVxer/PYXFk3fdK72gWsp1A0d7X+6WH+g5j1DGNz0r1zVeo9kHLlE0wB0u
 B4cRVGgZHTwZMMVIRduPz6Plhx4fLG73QFSJsrxqS5oNiw544z1CmML/2MvG9J9f9wnF
 94xKb1twWdH8aCItTElRSRqQIldkW7DPJUiQJqOoV2AWKHVKxyujv/Q4yiAqvbs7y2KO
 VPSMo4zPQKodfo5BxJ5V4OUjbQqnh06+Puv+demPArGj0dEb5/X0b33crh+TFtqSg6iq
 W3ww==
X-Gm-Message-State: AOAM533rc3R3W0AweiW5UMoBKcoYS+6XBpe6M0z/izEE+zgfj53PnI4V
 1KjevVSnmAMVPFcG6VauyMG5gA==
X-Google-Smtp-Source: ABdhPJxo3TFzb6VyXT5qwqheqSUQ61Z1njZpEUQDLHcl5V1QDAt0UzFWTh3qDy4lyiVRjxzs0EVW2A==
X-Received: by 2002:a05:6a00:ac6:b029:374:a33b:a74 with SMTP id
 c6-20020a056a000ac6b0290374a33b0a74mr1223422pfl.51.1632886986882; 
 Tue, 28 Sep 2021 20:43:06 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com.
 [80.251.214.228])
 by smtp.gmail.com with ESMTPSA id b7sm533032pfb.20.2021.09.28.20.43.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Sep 2021 20:43:06 -0700 (PDT)
From: Shawn Guo <shawn.guo@linaro.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 01/10] dt-bindings: phy: qcom,
 qmp: '#clock-cells' is not required for parent node
Date: Wed, 29 Sep 2021 11:42:44 +0800
Message-Id: <20210929034253.24570-2-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210929034253.24570-1-shawn.guo@linaro.org>
References: <20210929034253.24570-1-shawn.guo@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_204308_105200_84101366 
X-CRM114-Status: UNSURE (   9.10  )
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

'#clock-cells' is not required for parent qmp-phy node but the child
phy/lane node.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index 75be5650a198..604435e46623 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -58,9 +58,6 @@ properties:
       - description: Address and length of PHY's common serdes block.
       - description: Address and length of PHY's DP_COM control block.
 
-  "#clock-cells":
-    enum: [ 1, 2 ]
-
   "#address-cells":
     enum: [ 1, 2 ]
 
@@ -108,7 +105,6 @@ patternProperties:
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
@@ -421,7 +417,6 @@ examples:
     usb_2_qmpphy: phy-wrapper@88eb000 {
         compatible = "qcom,sdm845-qmp-usb3-uni-phy";
         reg = <0x088eb000 0x18c>;
-        #clock-cells = <1>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x088eb000 0x2000>;
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
