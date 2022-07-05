Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DACFECCA47C
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 09:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zu66OaC8io9hDKtDl07kj4gtCVGNKZg320Fam6SzxCM=; b=knd4oUP66g79YK
	Yin7mF7b6folLSSCXC7B1tY9EJSV4DyWMA26QngGJ/eT5Bcz0hy8sN5hTwOqNqxmVI9f+4mVqguQH
	sWOva6mSidcmETFh7KZw54RqcMR8wU/XFc9WSCNolgj4fL63Ji6rCjlrsziQea2pkP8akHKvCo/Fj
	VyNHctb5t2T09eSykGa4xYnBuICvRwE8cj/GOobIf7AdA9upLD791cEj2VZQCU8b1jTgHsZD4WOwp
	7x8koyd7JOZHvH4SkO7plU6XVx7ebEoBVftAeugqRjuGKtITYKOb9/aeSvVeerqcgyM7CQhQyyjYg
	Kv3WHrgAR05u6HJXQ9+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fDb-00GwUy-RN; Tue, 05 Jul 2022 09:51:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fB9-00GuYW-BN
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 09:49:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id ECE976193B;
	Tue,  5 Jul 2022 09:49:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2090C53FCA;
	Tue,  5 Jul 2022 09:49:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1657014543;
	bh=b/KbY0N+WoeNCbG0GvZvLkXdY81Ccwg9+JZzrfr1k9U=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oBtDTv5/Am4jEJ35H02D41V4KHT+KZCSChQ5ANQ7jMPaIP63a9KUGcmdMi5Cpfve6
	 sQJH7QjIwEyytzrjZCU7nDmtJ6de4XgAgwQl7c6X3u6uJYKIur+6P5So3BHp5a56rA
	 AyZPd7I0TcPhgKhrbQ8alCuDvvGy/PGYQozaS8VDwi3Cq6FlkHlbHl0Cue/RlExvk0
	 gLDYaycIVo+bYqOqrlH5EyL76sEdCuHOkWG1Q3JwbZWNdm1H0on6+K/uGD9z54iS/W
	 J+dcru77Js1o5I0Tb2CJwdNZmhKsa7QOteizUmPjrftgfAEfU5V2mVePcC4cdY0J9A
	 6a2VgcDgvsrhg==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1o8fB2-0004Xw-IT; Tue, 05 Jul 2022 11:49:04 +0200
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
Subject: [PATCH 23/43] dt-bindings: phy: qcom,qmp-ufs: clean up clock constraints
Date: Tue,  5 Jul 2022 11:42:19 +0200
Message-Id: <20220705094239.17174-24-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220705094239.17174-1-johan+linaro@kernel.org>
References: <20220705094239.17174-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_024911_526538_B7DD4CA9 
X-CRM114-Status: GOOD (  10.98  )
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

The UFS PHY binding requires one or two clocks.

Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
index b84511f02221..732518d0427c 100644
--- a/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,qmp-ufs-phy.yaml
@@ -45,11 +45,11 @@ properties:
 
   clocks:
     minItems: 1
-    maxItems: 4
+    maxItems: 2
 
   clock-names:
     minItems: 1
-    maxItems: 4
+    maxItems: 2
 
   resets:
     items:
-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
