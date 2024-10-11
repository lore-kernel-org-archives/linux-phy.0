Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB54BD2447F
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 06:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+1+EkgmbcPWac9Y+Qin7P0LJu/05Ypojekk9rgcWIFE=; b=yJUaJhQXCFntB9
	zI9cAfD8usuKbLVsxMBtTJyGI5MJS3cipdMOyW9quCb+2IS4yvyT4xQTeCRBcry7Ju5blpE7PNgbZ
	nHnp5rJjCIl9WCPWS89FnGZLwUYHvCBE+oFEjo78wkLrSzc4SHYGom2zFSyntaqSYfqOaKgwuZAKN
	70yEMoJg4TciTjz/hg8zTIFd7CAI+1EH5uMJDwRWIEeHHZCHY+8epI6aQQ6ceA/ti5S0klrhVO9ef
	buj6scSmZ9i+51W/7WcSYXPLjxly24qQFnnOwkW+88v2oY1w3FusAB5p2nCmtH0DuewlUtiAF+6MH
	M/uZz/TJiGziSzhPwSeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9aq-0000000FTAO-1kSp;
	Fri, 11 Oct 2024 06:57:44 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sz9VB-0000000FS1x-40Jf;
	Fri, 11 Oct 2024 06:51:55 +0000
Received: by mail-pf1-x42d.google.com with SMTP id d2e1a72fcca58-71df49bbc2fso159994b3a.1;
        Thu, 10 Oct 2024 23:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728629513; x=1729234313; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EdDw79rH2ZZXFzCqs3bPN+dRZOAgzWUPfJIf5p7fl3c=;
        b=hmSO4dAOMyWGDXFIQA3ST5Y+6Z9SsU6ON/3ovpolpbVEFjRM/2ajmkzYlEB3x2pxBT
         eJE/joKmbkZGwLzkwYKWndaZVWkeWXJ6jK1XSzOztaVzUmicSPMgabjVR7P6m3LHm+1P
         jOsFufsIaZG4eN4L/L4EsMZRdevfvHYnrScM6l6gMqROq+h7HUOpiH6N+O+UkkChDRe5
         nqPtC3X3hVrEVhvvH+V63Z+jNklfeE/bWIoZJenlA1vQaIufeyfJqQWmwIPvcZ8TAT3q
         n/vL1kLXQNoK6xzMXtee3ig4KrHpkw5aLFUqLjjzBdxMp0LAyADykuKi3uRtPEY11FU1
         Nq1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728629513; x=1729234313;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EdDw79rH2ZZXFzCqs3bPN+dRZOAgzWUPfJIf5p7fl3c=;
        b=gI4UQePCFlNEr3pGfTCtAWUv5MglbpG3eiU3tbS97AcqYOgcZlVXLM+wM3buWzacne
         ORIyqXhn90KUE8WoP5/ZagSOym2Zn0fkj+bRHzTWeLZLJLjxjou3miRB7xfBHW2d/6P5
         JKN9nsxAQX8izZIwa0ebdbfNdxcOIn/kvHY8Jl2jBecc9XkZNsj9QSmx09ApAOQWIIyB
         IkPnVtSZ+XlpttmaIhUn30+642RWcefR3tJfBsd2xySd9yueOTN1dSD0EKdpBmDkA63N
         Kp7lof4Oy5VilH7/JKU6Sv9Ieo6jtRhcxdnzstT0ip2ymUz8DCrqTb84NEmFxJ1f+6S2
         4rgg==
X-Forwarded-Encrypted: i=1; AJvYcCUMqiAZchG5JqhDiYYlUYI2v4mSTBGRkOU9fCfJRTE39uKEuvWm2yXTwvs2jIpencuE4QI5ZRY2bViKf0uQXQtW@lists.infradead.org, AJvYcCXtW/ITolf23qh7ZH3Ze2aw7mp+82sZu6371TB972nyUqUD9m96bFzusBlCvT0QNXO8cNBOoEcfoiUXcswXhVo=@lists.infradead.org
X-Gm-Message-State: AOJu0YwnxlP+el6LT7bP+lNOjcNBdF960GN2gmAg/01V9lasY5huoofB
	NWM9APs13aSzaA1u6y2EqWz9ZovyjzXeKpuRkdPsFKZjwq4CJc8E
X-Google-Smtp-Source: AGHT+IEvzv0o+ss8gCY1Mp117fH1qmaJdW78qEOqQWOSBsVTBUkvz8aULfP30Jh+8lxMYgt+jtRYDg==
X-Received: by 2002:a05:6a00:92a8:b0:71e:3b51:e84d with SMTP id d2e1a72fcca58-71e3b51ea63mr796027b3a.4.1728629512713;
        Thu, 10 Oct 2024 23:51:52 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab109e4sm2036099b3a.206.2024.10.10.23.51.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 23:51:52 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH v5 2/3] dt-bindings: phy: rockchip,inno-usb2phy: add rk3576
Date: Fri, 11 Oct 2024 14:51:39 +0800
Message-Id: <20241011065140.19999-2-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241011065140.19999-1-frawang.cn@gmail.com>
References: <20241011065140.19999-1-frawang.cn@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_235154_030034_3A2C969E 
X-CRM114-Status: GOOD (  11.38  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USB2 phy in the Rockchip RK3576 SoC.

This change also refactor the clocks list as there are new clocks
adding used for the USB MMU in RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
Changelog:
v5:
 - move the clock-names item list to top-level property.
 - only defined minItems/maxItems in each if: then block.

v4:
 - refactor the clocks list used if:then:

v3:
 - narrowed rk3576 clocks by compatible property.

v2:
 - Categorize clock names by oneOf keyword.

v1:
 - https://patchwork.kernel.org/project/linux-phy/patch/20240923025326.10467-1-frank.wang@rock-chips.com/

 .../bindings/phy/rockchip,inno-usb2phy.yaml   | 45 ++++++++++++++++++-
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
index 5254413137c64..6a7ef556414ce 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb2phy.yaml
@@ -20,6 +20,7 @@ properties:
       - rockchip,rk3366-usb2phy
       - rockchip,rk3399-usb2phy
       - rockchip,rk3568-usb2phy
+      - rockchip,rk3576-usb2phy
       - rockchip,rk3588-usb2phy
       - rockchip,rv1108-usb2phy
 
@@ -34,10 +35,15 @@ properties:
     const: 0
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   clock-names:
-    const: phyclk
+    minItems: 1
+    items:
+      - const: phyclk
+      - const: aclk
+      - const: aclk_slv
 
   assigned-clocks:
     description:
@@ -172,6 +178,41 @@ allOf:
             - interrupts
             - interrupt-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,px30-usb2phy
+              - rockchip,rk3128-usb2phy
+              - rockchip,rk3228-usb2phy
+              - rockchip,rk3308-usb2phy
+              - rockchip,rk3328-usb2phy
+              - rockchip,rk3366-usb2phy
+              - rockchip,rk3399-usb2phy
+              - rockchip,rk3568-usb2phy
+              - rockchip,rk3588-usb2phy
+              - rockchip,rv1108-usb2phy
+    then:
+      properties:
+        clocks:
+          maxItems: 1
+        clock-names:
+          maxItems: 1
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - rockchip,rk3576-usb2phy
+    then:
+      properties:
+        clocks:
+          minItems: 3
+        clock-names:
+          minItems: 3
+
 additionalProperties: false
 
 examples:
-- 
2.45.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
