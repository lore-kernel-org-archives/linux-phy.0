Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DE34C3DA7A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Dec 2022 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9ORfjFNSNi4a41ZKiZcOLJ/zT0SHsD++lhAYFuS7FD4=; b=cfmHuJLGaVF5L/
	rtZLsL7toKiHRmzENrgY0kDt/8YJdb9Hp0+29ENOWdO9qVlDbETd7fkmCqNv+cemNmdZb1mCqS3rX
	imSAf+3F+CBquHG3U9/IUVea9HoUOQPvPmR9X1Zjlce6LUB/g4JMYGsSqsBRH9lPq97/DxLn9e7u/
	0j8495V3cKvrNIHcVRkbf2BJFhEIEnkBjv2eqZoAef7v9uPZOe2qBzNVBoDR3mRQMmghBmnpQXB1w
	P0KfEDHzvCDJzbPyewZQxyanEmJGrXwzreMqVEPyHNHjxJgM5ZVlTF0/9O37jb73jseN/ZWge+X3c
	si2ODBibF9aUcXAciHYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkHr-00B05c-G9; Sat, 31 Dec 2022 22:25:07 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pBkHl-00Aztn-HK
	for linux-phy@lists.infradead.org; Sat, 31 Dec 2022 22:25:03 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4NkxWf5BYZz1S5F0
	for <linux-phy@lists.infradead.org>; Sat, 31 Dec 2022 17:24:46 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:mime-version:references:in-reply-to
	:x-mailer:message-id:date:subject:to:from; s=dkim; t=1672525486;
	 x=1673389487; bh=n/SJk/pinTpxZTv2ojGtArZAwokciPTwlvYARNi8gEw=; b=
	4yyeCfrWxtpbLoe4ck1VllGTU8Uclmk6nu5ibxMzT865D/+Oj39R+eJjpUGKpT9Q
	WYq2bO8Ih4PuCXOAqipObZmLqAQK1702FcJF2cQZTCraAtPouEn0f/VupbZ0obJW
	+BlLgs/A06r+EyFvml34bVVUp1XtTSPeCTZOPNgxMDC2upwl1DpOZTjRkch5dIqS
	c2I/6s/14JJNqNLePy05K/fa9FDqC3/AreuFHACndOAryOLEW0TK7Dj7UW/QM47I
	9Woi7v579Rw3h2Ch0u4IqGQfOrbzT3+typVxkiGM4bRihZl1PrrADEw0SX4OCFYZ
	d/Mqg/6THalCOlEN3NcRLw==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id lQOafhWJvJbn for <linux-phy@lists.infradead.org>;
	Sat, 31 Dec 2022 17:24:46 -0500 (EST)
Received: from dorothy.. (unknown [190.196.92.66])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4NkxWX3Qw2z1S5Dq;
	Sat, 31 Dec 2022 17:24:40 -0500 (EST)
From: Lux Aliaga <they@mint.lgbt>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	martin.botka@somainline.org,
	marijn.suijten@somainline.org,
	Lux Aliaga <they@mint.lgbt>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/6] dt-bindings: phy: Add QMP UFS PHY compatible for SM6125
Date: Sat, 31 Dec 2022 19:24:16 -0300
Message-Id: <20221231222420.75233-3-they@mint.lgbt>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221231222420.75233-1-they@mint.lgbt>
References: <20221231222420.75233-1-they@mint.lgbt>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221231_142501_765747_BA0DEAD2 
X-CRM114-Status: UNSURE (   5.55  )
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

Document the QMP UFS PHY compatible for SM6125.

Signed-off-by: Lux Aliaga <they@mint.lgbt>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index dde86a19f792..a7af57931f32 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-ufs-phy
+      - qcom,sm6125-qmp-ufs-phy
 
   reg:
     maxItems: 1
-- 
2.38.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
