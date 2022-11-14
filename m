Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CC72C4332F
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 02:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nkoDx+4yVPUF2EqYf50AjX3/T5woTHFLp+xFEHwPfI8=; b=BcnnlRHX8ZIj/A
	2tdqGK4cZY9ZKzuHgX0Z7g0J2RHDQbmJ3cKioJCSZ7jtWtirrJB9sUyWzAH8frxtkbmBWxGlYwNkL
	xW39CKx36pG7GqDiiyJhv9Cz+a2ZvDLZXIUFrkFbqKL3Shi8arEEDyWRUC8A8ONE4eULTb6w0nTk6
	g8VNWxjdUA+uClyywDQ5cMrNZigc/zI+TEyBA3agGY0dIzlYaGOWfQdipPPDh1x6MQZw6XWzu6AW2
	9P7nOHlhjQWwnqX0wtfFMbOZYjQq7aUTk+TZBdW8v99jBeUVAWWlI4FgbQvakDugR3wVxXPQpisAI
	99NB28QKWXBH5gitZ4aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP6H-00FXMn-LG; Mon, 14 Nov 2022 02:21:29 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouP65-00FXJP-A0; Mon, 14 Nov 2022 02:21:19 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 581573200313;
	Sun, 13 Nov 2022 21:21:15 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 13 Nov 2022 21:21:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm2; t=1668392474; x=1668478874; bh=aYiCWONLZBFtYySFfLlgu9fEI
	+6ZzF2ACekapN/b5p0=; b=VdmRmhbqMNkU5ZwEs8K4R9v+KRqdjbYmRrG+fc4JG
	a2tN8MOoBesN+BaZ1btNO/zZwUEFgQ5ycRgKq+RBSBuBb3jGsGsO1NElyKtCbMQ0
	h2TzT3CuI4mB7kHwCivKShYT3jIOziwlLLOzpJdzcDhPtjaXsS1VpNvEDkU2GtCk
	yRonKC4rsvdufOiRyNySmtV+LVG2uGrw8mSMwv+Tm5smG0ifVtPNt0ol7tIZm6Mf
	vl78Ur6IDsZamQ9ruO57Te7W3PJ/LJnikUMfDVQ2W6Y9oaT1TFip7RoHNAZXhbqS
	eHSuUIrTg4BWqX0WZ2py2yFv0CkktVpH+Qox3LZSXPbVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1668392474; x=1668478874; bh=aYiCWONLZBFtYySFfLlgu9fEI+6ZzF2ACek
	apN/b5p0=; b=JIBbtpjvZhRdOAbvnSmz0agoJzjRDEh8732u04Rtgx+cv6BucUw
	kYr65g7iCgssFPx9P9JZVzlXspHatlNSSdQBE62LGLirQDXM5JThcmMe/bZqjS9w
	MNDIrbFtIefShJ/xqEgUNPLq1rlrOod4u/uZGKvN8vGdU9wPwXMMm7eMXSA2mjon
	Z1Oy8QQvweNiCdg+MgKmhI3oe/4hDmJZdQw6EZddufVA2VFBkOHIeO5bzYMlH0xr
	vlxYJI5CROSdroDiWImYTG3hK8ExITWC1WdNnTOtkVqKM/M66lUTYDPuQthXFS4Q
	ZRXFEwPh+JNcU1xZ4gUZqeJssgmnP/dHDXQ==
X-ME-Sender: <xms:GqZxY1BAxcS0hhqRosBXYuCbB3L16WQej6wIbJGDMAOlEQg2Ue6GAg>
    <xme:GqZxYzheevG5R67k9kgJwHBbthTYVeHgXw73Ielw3Ig2i2gy6BkyZovd7lJyMAv4H
    xzKkVo-puyQ4aEiJA>
X-ME-Received: <xmr:GqZxYwnGwCRlD18sJhqyZiVDVUKMh1k_d2r1dRd3r21fugFQC0UL8Drfewh_wTyyQvLpCeBnrYSZAGI0SasUQLLyYOH5TjaJ9u-zERTRYhuXUw_wecYPsaRWQ4-hGaS4Fef1cA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedugdeghecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgvlhcu
    jfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtffrrg
    htthgvrhhnpeekveelhfejueelleetvdejvdeffeetgeelheeujeffhefgffefkeehhffh
    keekgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:GqZxY_zTL3vqvyRgYZC_kSGrofLTG3OaGu3sp5x6FLY2m-OG8V05TA>
    <xmx:GqZxY6RuZZwvEUjIVE-FwDUnlKbx-YhchIil56LXtCZsoWC_Y86JOw>
    <xmx:GqZxYyYQrnAJCJCd5RG6pDafDAkmN336MZqKHz0JbtqMKbSXxneysQ>
    <xmx:GqZxYxJr0by9ZqBo1mWj6RPElDbmaqB2vXy7V2IL9LNoaxI1SKAQlA>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 21:21:13 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Samuel Holland <samuel@sholland.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH v2 0/8] phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY
Date: Sun, 13 Nov 2022 20:21:05 -0600
Message-Id: <20221114022113.31694-1-samuel@sholland.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221113_182117_729056_B8630E30 
X-CRM114-Status: UNSURE (   9.75  )
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

This series adds support for the updated DPHY found in a couple of
recent Allwinner SoCs. The first three patches fix an omission in the
existing binding. The remaining patches add the new hardware variant.

Changes in v2:
 - Add the interrupts property to the binding example
 - Drop the inappropriate Fixes tags
 - Rename "supports_rx" to "rx_supported"
 - Add a blank line for readability

Samuel Holland (8):
  dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
  ARM: dts: sun8i: a33: Add DPHY interrupt
  arm64: dts: allwinner: a64: Add DPHY interrupt
  dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY variant
  phy: allwinner: phy-sun6i-mipi-dphy: Make RX support optional
  phy: allwinner: phy-sun6i-mipi-dphy: Set the enable bit last
  phy: allwinner: phy-sun6i-mipi-dphy: Add a variant power-on hook
  phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY variant

 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |  11 +
 arch/arm/boot/dts/sun8i-a33.dtsi              |   1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   1 +
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 236 +++++++++++++++---
 4 files changed, 218 insertions(+), 31 deletions(-)

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
