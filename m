Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2606C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 28 Feb 2022 12:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CW4aTSW2UQWx56SkF9a2SwGhjVxXusSkgLCh/LkKfPM=; b=FgvzdTtaRpuLtA
	63i/LXk+fcBxynJgxS6WXtXQwKNAJsrcP42InySbpIkyJwQOc2goGmhWPq/5lJ6Wwvq0XjQfAMQ5Y
	h9j9VGUeyyRm7l60yy933YrTunRtr9sTbasb9oeymQzYCA4QAHe9z2p0M71woqZ7gILc8ffusg5Qh
	VoBsJpnnRjRJds8DCjiZ5dIcKbOTOaAKZRZ1MzZS8QoaTtw38EHePz4I10wEtxtqKLPrNhwd446Dh
	PKDqbCRnxb7IG6FVJweNq5lQb+BvggVqsCBmMVb8WHJpAC9CsfW4UTq/y/jQlTryVnA+st2WWzRUS
	lzquiGJc/QHAYIylCLyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOfSS-00CKTf-Rt; Mon, 28 Feb 2022 12:48:56 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOfAi-00CDVm-Sl
 for linux-phy@lists.infradead.org; Mon, 28 Feb 2022 12:30:38 +0000
Received: by mail-pg1-x536.google.com with SMTP id t14so8318940pgr.3
 for <linux-phy@lists.infradead.org>; Mon, 28 Feb 2022 04:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=c33H+KhNRIM+MtgBKw1JzAencmoLfjnJxvjWbztOR4M=;
 b=nfY3uJRMInYtmcvYlqJiBa0oJZDzwXCW6rYKPRYJnf0y8YQHjn9slKGL0E7jnluWVq
 9L5aYVt61ohxbKB+5MIfQCYbpEIaVZj2rQbiMWwMZVNGOWh+MBMiF8SEDOTg0DMF7FLN
 8orujb0d4ioXcVd/tyAdV6N6w4r9eAIXnBW0ET8nptJ3IACdD9/wXZEVHpnoEorjJm0k
 GRIGM2hXdETWo0580iEvja+ifU5779QIJUIQTvQE9H8CLvsHRVJoNg7OaDsMgIJbTMW8
 26XgbOPnnE9qeNErnw8+mljIxj6m2cmQextFEU9Ru4HBPCcaX0RBpSvprbKe/ocHunJv
 KZQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=c33H+KhNRIM+MtgBKw1JzAencmoLfjnJxvjWbztOR4M=;
 b=RA7/EdpxuLXfsKW3RiK+bbq09/Qus/KYQ09VcyOxelOgqwBWIF1VIkznusQLyWEGyH
 2S73evHSIP7hyWjiYwmOsxLhkJ8rwu6s7fwrLhX5W5RIZM/QXVQKHLWc3LggxC7AllEC
 pSlmPHLcv9djZV72YJ1/LF8rdaELq4DIs/W6LIOKhtvYP5iErnixHOHFKDjIl0BeOo1X
 TCtduf5TXVnlHnGN81JYM79uWZk+iVX994krpcJi8fRYdOLkrnUM5Tr484esd94s8u6z
 MhC2BZuIE0ZtycF8hRxRaPm8SmHLfNxGCZbAPeQ5WwXJeQfPBpUU1kW5O4lM5Q5o47Ql
 DJ8Q==
X-Gm-Message-State: AOAM530198Db220nj6SdazeLdcmPAUNPKsYD7vI9ZgSyqsUKSHkGRlnQ
 cHg9hoJxNY07PeUFbhWGHXA7tQ==
X-Google-Smtp-Source: ABdhPJxXWDcpwY6MdTNXZkLBQ9ksngNF8tb/ZSWnHf+xwxH6L3RJQeV0pSxXKaq6fG0OVCS+H9Ms6g==
X-Received: by 2002:a05:6a00:130e:b0:4cc:3c7d:4dec with SMTP id
 j14-20020a056a00130e00b004cc3c7d4decmr21491088pfu.32.1646051436042; 
 Mon, 28 Feb 2022 04:30:36 -0800 (PST)
Received: from localhost.localdomain ([223.179.136.225])
 by smtp.gmail.com with ESMTPSA id
 f7-20020a056a0022c700b004f0e9d686dcsm13790001pfj.137.2022.02.28.04.30.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 04:30:35 -0800 (PST)
From: Bhupesh Sharma <bhupesh.sharma@linaro.org>
To: linux-arm-msm@vger.kernel.org
Cc: bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com, agross@kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 shawn.guo@linaro.org, vkoul@kernel.org, linux-phy@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v2 1/8] dt-bindings: phy: qcom,
 qmp: Mark '#clock-cells' as a 'optional' property
Date: Mon, 28 Feb 2022 18:00:12 +0530
Message-Id: <20220228123019.382037-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
References: <20220228123019.382037-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_043036_969389_549E3A6A 
X-CRM114-Status: GOOD (  10.60  )
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

Since '#clock-cells' is not a required property for qmp-phy(s)
(atleast in the '/' node, but is used in 'phy@' subnode),
so mark it as an optional property instead.

This fixes the following 'make dtbs_check' warning(s):

sm8350-microsoft-surface-duo2.dt.yaml: phy@1d87000:
  '#clock-cells' is a required property

Also, make the dt-bindings confirm to changes
already made via commit 82d61e19fccb ("arm64: dts: qcom: msm8996:
 Move '#clock-cells' to QMP PHY child node"), by moving
'#clock-cells' property from the '/' node to the 'phy@' subnode.

Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
index e417cd667997..48cd6b6171a1 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-phy.yaml
@@ -63,9 +63,6 @@ properties:
       - description: Address and length of PHY's common serdes block.
       - description: Address and length of PHY's DP_COM control block.
 
-  "#clock-cells":
-    enum: [ 1, 2 ]
-
   "#address-cells":
     enum: [ 1, 2 ]
 
@@ -109,11 +106,13 @@ patternProperties:
     description:
       Each device node of QMP phy is required to have as many child nodes as
       the number of lanes the PHY has.
+    properties:
+      "#clock-cells":
+        enum: [ 0, 1, 2 ]
 
 required:
   - compatible
   - reg
-  - "#clock-cells"
   - "#address-cells"
   - "#size-cells"
   - ranges
@@ -461,7 +460,6 @@ examples:
     usb_2_qmpphy: phy-wrapper@88eb000 {
         compatible = "qcom,sdm845-qmp-usb3-uni-phy";
         reg = <0x088eb000 0x18c>;
-        #clock-cells = <1>;
         #address-cells = <1>;
         #size-cells = <1>;
         ranges = <0x0 0x088eb000 0x2000>;
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
