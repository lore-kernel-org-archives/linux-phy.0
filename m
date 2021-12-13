Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF106C433F5
	for <linux-phy@archiver.kernel.org>; Mon, 13 Dec 2021 13:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i//kfVdgRbgi92LEif+nCR7kKV/rtgVXzpUSIOQWzAg=; b=c4HuJXr4/KNPG6
	A+0ykLxXpr21LnidCRh1+GR1MRZrfXeYeLcDycMLL7mgF1p2EdXkccBi3kyCVKlhPdkSy6EKCeXA0
	dXvUvJ1NVRqfkkrnv4QaVNhQlAjSZi0p8wMYBHcWSPGsBfS8TZQ6PIQ0B0J0yrXIBqPiT4aDllaUV
	g7SzB7pk4KT33Z89oRysGk4T/DFAXjvyEJorrXLuTykO7/RCJUDim78qEngTO5ofIsXCzqiii8SkE
	LejPUQI6+QsREteQ5slGPOMA/DyZqvMVW0xsv1Fd+XEeaN5t48tYPDa+JBnVupfuYhEBLBP7INIhu
	bABIDWuJICwFrx55tiDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwlAc-009dgj-A5; Mon, 13 Dec 2021 13:15:10 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwlAX-009dfH-FT
 for linux-phy@lists.infradead.org; Mon, 13 Dec 2021 13:15:08 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8DEDFB80ED6;
 Mon, 13 Dec 2021 13:15:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A24DC34601;
 Mon, 13 Dec 2021 13:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639401302;
 bh=tvvUBMXu9bigl3+FP0wtOQ9eIr333s7ge1/gtweziiY=;
 h=From:To:Cc:Subject:Date:From;
 b=Pndtj6+6bOSTA1bnMqAXFzymoqN2zLhQTG3KzBtpDt+42ORyZhX3qlNaleIZe4jNZ
 qDd2pVyv9gaA6D6568KhMQDU2v6FCENCFB0exIUaiYJ/ZGq45eK5u4834nTCgmyU4d
 YVgzb/cXtVV91pRsXG3EtVMwFsHLKbRb2/rNTUm/gpXH3z87hTsfcRXkjxXgciAUkg
 aV8YrQATqhCwe8w6WdoFYlTqLGR3xIjCZCuc/jG9F/OHGKslPSP8xbetU3MOGYJkUR
 zyz6hom03MjOn66tI55VnAJuMaZlDmE5VcJC2+onf9YveQnysgx84oyXXzC0xCNW8F
 NS4ZsXUDVh6FQ==
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Wesley Cheng <wcheng@codeaurora.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: phy: qcom,
 usb-snps-femto-v2: Add bindings for SM8450
Date: Mon, 13 Dec 2021 18:44:48 +0530
Message-Id: <20211213131450.535775-1-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_051505_690571_5A69669A 
X-CRM114-Status: UNSURE (   8.31  )
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

Document the compatible string for USB phy found in Qualcomm SM8450 SoC

Signed-off-by: Vinod Koul <vkoul@kernel.org>
---
 .../devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 20203a8a9e41..0dfe6914ec87 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -20,6 +20,7 @@ properties:
       - qcom,sm8150-usb-hs-phy
       - qcom,sm8250-usb-hs-phy
       - qcom,sm8350-usb-hs-phy
+      - qcom,sm8450-usb-hs-phy
       - qcom,usb-snps-femto-v2-phy
 
   reg:
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
