Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C184C4332F
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 05:58:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Op9sCNUtJmzB3okVpTQvsYUtBw8cK4WJjKLLFyhQwSU=; b=qU7fwYx8pUAkp0
	niUHiaUyiTEbNNkzDOJEnyokktbqMt8eJSnhHLQMmUurPWWdzGdyoMECoUIY150kDZ96cLpR7kHar
	jVVcGC1nYB6Wcg55FlyTgePWn7FKc5rIoZSA6a7fbQJlLM5OkcVdm8Z+Fbj+DBYNH3QZBqPaJNzkU
	H7qGLfoFb3sclGWq8SkT1GDPzSPm4POKcwm9Z8ad4pfBBBi6kpYIH2MYnLiIhctaRQY2UDhfcw1vY
	qDZ5KdbvHxWllORAVAQvUncSAZZXpyunsB+Wo44NXR60rRdfykprVjZNclcE+cXODh+7oNxmti4rh
	wGRjqe1V2lmAbfvHj9Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUld-006vqr-LY; Wed, 12 Oct 2022 05:58:57 +0000
Received: from sender4-op-o18.zoho.com ([136.143.188.18])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oiUkH-006v1F-Rz; Wed, 12 Oct 2022 05:57:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1665554248; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=P5QDtKAyCuSy7KwgNEMDA9+js9SX1c9iBQKt7I7oraiUMctNxyNx+LeN4lnJpnOgJKSfnn5R78e2vwL1jcTekRcB6+nN9qRGmlMZT1whO9Opq4HOQUa1Eshd/VkqenBoPGj3Uj/RQRd1cLIMJOtzdLfSpo5Mwor0anjjx/Gzw1A=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1665554248; h=Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To; 
	bh=/JkvcMJoW+hhAh9TtSMNlMNZn38OKjgf7oaCjWJXqiM=; 
	b=G00tDDuF4nXTEK1739yRsGNuhqXHwCBvFc4s2ChsBmtBBPFmkWPwjzSMgg9ppA/LpRxs+F7iBEqPXF5A6AwEirvRDSuj1IEV3OqVbC4N0Ed/GTjxll/QFv/eat+Ho3Desf2H49FU/wvXM4LPY6pHAq6wigPsIqZSJiP3H5XrGwI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1665554248;
	s=zmail; d=icenowy.me; i=uwu@icenowy.me;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-Id:Message-Id:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Reply-To;
	bh=/JkvcMJoW+hhAh9TtSMNlMNZn38OKjgf7oaCjWJXqiM=;
	b=hn7sPcEkx+izZKY0SEGL5j+jGdWWkuLFoODry6wcwdQl85KqvK8/ivt/Tgb5ypQA
	u8nFw1jJhq3P8DY4b/hXcV06YvqDMx9THhlPz+OJCEV13HsFAF80M2WlWkZJ5d0EKJW
	LiXVIAR6eCMvOc9bMfsrxnWeUQkxJRCbLf49uayg=
Received: from edelgard.fodlan.icenowy.me (112.94.102.144 [112.94.102.144]) by mx.zohomail.com
	with SMTPS id 1665554246635160.3878150600117; Tue, 11 Oct 2022 22:57:26 -0700 (PDT)
From: Icenowy Zheng <uwu@icenowy.me>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andre Przywara <andre.przywara@arm.com>
Cc: soc@kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-phy@lists.infradead.org,
	linux-usb@vger.kernel.org,
	Icenowy Zheng <uwu@icenowy.me>
Subject: [PATCH v2 08/10] dt-bindings: vendor-prefixes: add Source Parts
Date: Wed, 12 Oct 2022 13:56:00 +0800
Message-Id: <20221012055602.1544944-9-uwu@icenowy.me>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20221012055602.1544944-1-uwu@icenowy.me>
References: <20221012055602.1544944-1-uwu@icenowy.me>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221011_225734_102445_E5A269E0 
X-CRM114-Status: UNSURE (   7.85  )
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

Source Parts Inc. [1] is a company that makes a series of SBCs, SoMs,
etc under a brand called Popcorn Computer [2].

Add it to the vendor prefixes list.

[1] https://source.parts/
[2] https://popcorncomputer.com/

Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
---
New patch introduced in v2.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 6e323a380294..035ef859fbc5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1203,6 +1203,8 @@ patternProperties:
     description: Solomon Systech Limited
   "^sony,.*":
     description: Sony Corporation
+  "^sourceparts,.*":
+    description: Source Parts Inc.
   "^spansion,.*":
     description: Spansion Inc.
   "^sparkfun,.*":
-- 
2.37.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
