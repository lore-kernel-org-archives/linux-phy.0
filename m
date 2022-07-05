Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02BF7C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 11:36:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=liCFKJklp1HyJ4UvMZ6pl8fVDHKOXb+6gpz+gIXgCVA=; b=l+YSbvMOvGjTAg
	0vPGVnngSkOqfxFp7SHgQgsYep0b7QEyRxJm23ERK0aTF8Cpojy6OG1NmVTMdY/lh3p9L3ZfxIzzu
	4jpN6B9PadMJk6lqYUYYtBMEKxhPjMis8bCtOHFYrKmlb/uJQsxMSjzo6w2/wlbCt4R7kOSdlm0vR
	wz7z76nox3LFBRUfBkuMPqIwXf7ZmM2d2HTgf7bb7gLtDR3kx3ly5yIXSYeUY6G1Wd+7xlakoaeim
	j/n4a4XUGED+EhNgaiFON2LgstOVdGDsatQwXRu//SJ74hzV/bzIswIkPQ86oojuxLFifYytSHjjS
	w0yhj8Zwjwz8oh69dT4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8grR-00HSTg-6G; Tue, 05 Jul 2022 11:36:57 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fO2-00H219-7U
	for linux-phy@bombadil.infradead.org; Tue, 05 Jul 2022 10:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=OYwrOdk9M2TXZXqWn05ucQhjqf0xIttCdICZ9KLcl5A=; b=MLU6iLFGu/R8B2Im1MAL/L7/v9
	imQaJdHcOlE7CXGOgsApZxy0RaAWj/ssTSbTlXib6QY9c5mm7XgS3UxzWiLos0Jl2bJZDd+6Wtzp1
	my2i6FY2AdbfJ7CurfpIQQGAfgoVuJaMBVkqdcSACGOh0i4pUc+A6texJ+HW3PYxmUeGFFvnsdVLy
	1exwf+35c2t+BpuzX53P0++d0EDWrYbv95uTaRfTrs8ZglhQT9vlsaBk5A4yc/RzeUZcXRYe5W8hh
	MYoXM3LAp7TqHE2BBqpNmZtbvvS9y9N2vFa/MvSIbQZ34FT+NtRsTUBxm8GKNYepk3Y3hI9QJKr//
	EOWBkCkw==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fBF-00HV7X-2h
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E2969B81736;
	Tue,  5 Jul 2022 09:49:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 877B0C36AED;
	Tue,  5 Jul 2022 09:49:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014544;
	bh=UrYmxKcokEnipCFXZY2m8O/HJdO0TM/Sq4azmTPuAaU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=iQqjtqPny9cqTsIHgU4mHdOGRQJ7xcomfXr5Wuwp50wD/izzGcRLFD0pGmrXX7S7s
	 pVfmOcDMj+VIo5A2UyaHPKWUbm/uh5AKQQbxiOq4DjSQEJ1fRlliGkdvYvAPteWfiV
	 h2i24xDDWmDMJ76wJ1XLOvpZGurmBOQgHmIck2qFf9DXis7Zqf4QPkaIAr0MMyoEPk
	 1oygL4rf6KCb0LzBz9ZLqm3ZVigxgokB8v9Y9rHh4q8Z5Y9oHg3viAmH6x4bKIBrYJ
	 vFv06/s9qHUR77oOOWL1lRzH4k3BLeTClL623+yHkyOiwiaismjEeR5rNwgnDOFhoJ
	 UQEKqeqrAR3rw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB3-0004YV-KC; Tue, 05 Jul 2022 11:49:05 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 35/43] dt-bindings: phy: qcom,qmp-usb: deprecate PIPE clock name
Date: Tue,  5 Jul 2022 11:42:31 +0200
Message-Id: <20220705094239.17174-36-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_104918_154945_E14CB04D 
X-CRM114-Status: GOOD (  10.31  )
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

Drop the bogus "lane" suffix from the PHY PIPE clock name and mark the
old name as deprecated.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb-phy.yaml      | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
index c9a6765708cc..279b8823bc17 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb-phy.yaml
@@ -88,8 +88,12 @@ patternProperties:
           - description: PIPE clock
 
       clock-names:
-        items:
-          - const: pipe0
+        oneOf:
+          - items:
+              - const: pipe
+          - items:
+              - const: pipe0
+            deprecated: true
 
       "#clock-cells":
         const: 0
@@ -403,7 +407,7 @@ examples:
                       <0x600 0x70>;
 
                 clocks = <&gcc GCC_USB3_SEC_PHY_PIPE_CLK>;
-                clock-names = "pipe0";
+                clock-names = "pipe";
 
                 #clock-cells = <0>;
                 clock-output-names = "usb3_uni_phy_pipe_clk_src";
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
