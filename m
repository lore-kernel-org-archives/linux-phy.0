Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9494ACCA482
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 12:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=an75fwoTiiY4KPygxLJXFaXtPysKnNZqmoT6U+6u0Os=; b=ipEXelZLxcvPAL
	U1vpww+owyevnsHFSQ8504AfDZ8+oUItpqodRjhNPA0Kxat2gldrV52DMpaCYuNln5K27W9EJapTI
	FXblgplrW79KJe9AuBjy/UtEYp4bxVeUUuiZuSeSZ/JEQJdnhYtBmJfAs7TLSa7tMbR5DkVkAnGKW
	0UF633wV0AjCPuVRZ7fcjhh6sLan9k/gNXjhIzTqFzhohIO8pPlYrFqvbI5mH+Li9P0oKUacvk3g1
	eoak1X9NQoWdiiVEmXk7oXQIqL43dPd8CGIB/9FWijtHYTqtb17ztEZwmxkkmzSY8hjB8htf3puUo
	puGWM78P+NnoP9+RW/mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByFQ-00ENS7-Lj; Thu, 14 Jul 2022 12:47:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCh-00ELNM-Bu
	for linux-phy@bombadil.infradead.org; Thu, 14 Jul 2022 12:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IdJAAh9h+9ze4TtarcznVhoR1Y3LMbAUNoJ1z02Fd0o=; b=pyJB8GESvhWFHEUpJZKWabQiyk
	rxfMr3Ujb0OPMpfpzStRPqs7JY3Pbps7sIqx5H26+wHU14t5t0W8JNQY26RMtyuSt5O0Ql0PU6QNV
	PbUkCmt/WZtmE7zeobbE1OnXX2WoLiY6Q1eXq63x9Q+22f08Bwn5L7C2BQavypdYbrj5QdWJMYK+b
	PGeDuxK7m8+k+yFkvRu2pRfwjBrPY35PS0YQ01R2bLB27nKmphIvVUDZ6HElNTpvpDErCA7URObWv
	79Wr0tMlxypxhUHrPB59l6YrwLGpZfVsD2ZxJdDcBDGvpdLATpV57jKdn/LLLop+YZlYUZIGKBswT
	ZPwncskw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oByCd-003q72-7v
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 12:44:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E09BB61FBF;
	Thu, 14 Jul 2022 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8277AC36AF7;
	Thu, 14 Jul 2022 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657802645;
	bh=MxOycvl1MP5Spr/As64YxeTeNx4Wad3NA9+YiGYfY1A=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=JGa17TRQpyZ3v+amyzcr3Dt8YbEaRKkKwnhi5QpDM3bAbo+Qgl0WSFonZqGI9zs1E
	 CfGEmoHSkg6BwL6FUfPcKdr5EF59/bsedsy+8qfL0Qdh8gWQFFaI9aHLAIHlUluSJ5
	 aiDYHDLJ9YesOsIFcxLpd6447OKWG/ZOA6lMJIch2G7kAvcpSZO/pEmzm4O80buseR
	 MYJHBpeArzT+N5k6px+5jB3Dzz/IT++RiMdAde4ZBQITZZaNdVZCifZUeEUnwQHA4g
	 ya0UdPSYFbmC2uPl/eLU2h+E/lGCrLbCiZ7LFDKgz8RQotBO1guKFiuIxJ+fTzv40c
	 tN2CehI5In9ow==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oByCQ-0007EC-TK; Thu, 14 Jul 2022 14:44:10 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 24/30] dt-bindings: phy: qcom,qmp-usb3-dp: deprecate USB PIPE clock name
Date: Thu, 14 Jul 2022 14:43:27 +0200
Message-Id: <20220714124333.27643-25-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220714124333.27643-1-johan+linaro@kernel.org>
References: <20220714124333.27643-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_134423_780629_F67D6D51 
X-CRM114-Status: GOOD (  10.34  )
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

Deprecate the USB PHY node 'clock-names' property which specified that
the PIPE clock name should have a bogus "lane" suffix.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 .../devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml          | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
index d8bfdbd6d9cf..5df78e3b4d8a 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-usb3-dp-phy.yaml
@@ -96,6 +96,7 @@ patternProperties:
           - description: pipe clock
 
       clock-names:
+        deprecated: true
         items:
           - const: pipe0
 
@@ -112,7 +113,6 @@ patternProperties:
     required:
       - reg
       - clocks
-      - clock-names
       - '#clock-cells'
       - '#phy-cells'
 
@@ -192,7 +192,6 @@ examples:
             #clock-cells = <0>;
             #phy-cells = <0>;
             clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-            clock-names = "pipe0";
             clock-output-names = "usb3_phy_pipe_clk_src";
         };
 
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
