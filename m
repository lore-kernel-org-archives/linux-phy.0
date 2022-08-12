Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBC67C25B0F
	for <linux-phy@archiver.kernel.org>; Fri, 12 Aug 2022 07:58:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LOKvoLppRQFH8pBxaJ0vW7VOS2YS/APJjkcWXu0wD1s=; b=Y/EG1qgK17isHo
	8GnP48/SETaNq7D+FHBp0haN5l8kTjq31YjUOaI4Jf+xoJ73qANq65TLME5j5Y1Z0gzbEK75T0bjQ
	VfPWlc9zjDOc34p0FHfP154g5pfhqEslx8TgBB6wz0dfCRjyFcMP8nKW6JoKv0WBHk7Q/Ev/jc5gk
	P61kfhyR/FfA7vqOTj/jFVRNmeBhbe3Dv6GWrCJzmSId4SdlwSh7ChPDmqXDCB8BrO0wEMgJp0b5p
	2kAWgOmU8ueGy/h8zpiuoeYSuKGa8wBOCeQd/C8LomyzwBjFbhd3gYAoPOnpDpCvaD1YUNcb0mjsk
	rcmyqoRY9obwSwvNjK3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPYZ-002Er3-3M; Fri, 12 Aug 2022 07:58:11 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMPWY-002BXU-Oc; Fri, 12 Aug 2022 07:56:08 +0000
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 945F35C00D2;
	Fri, 12 Aug 2022 03:56:05 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Fri, 12 Aug 2022 03:56:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm2; t=1660290965; x=1660377365; bh=Z6OqHh+7y79/rYETjyUl61z4Z
	yCh62yq8O0Dd/39St8=; b=LAJ7jEFLJ6jpTgO6Yr0XmB60/TmkLbWpmWpyemV+J
	k0uYgUy7z/RVn1/PJkCPr0Gfr3XAD8xPs1I1tDR/fZ/f1bICZzgCqZcJitF7kMzu
	Z3nbza9c+gyTykFDAuq36BdTXOfUo1vH41Ifjd1zcaD2OCSVYJMVbetFHD7y9/yy
	9RbG2aaGaskNcSXWqolLfiLLQRftCo1rHA2wHQsyg59rD5zKKiN834k9RpEBPeLR
	SP2hUL/xyuQnEy1w456WUP0iemE0CmfQWINYg9+EqyooyICtomaMiD/V3XVMhNGR
	djnt3hy8TqD8twcIsLfN4h05VxdAlorq8KTE95127NP/w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1660290965; x=1660377365; bh=Z6OqHh+7y79/rYETjyUl61z4ZyCh62yq8O0
	Dd/39St8=; b=oW/gMC68C5kBafcWJ8V+cEXqjCAUdIelTlEsfu2lyQqtJBF+MO3
	rtZ75tOOydlj3gm55yLkSdefda7qMh/u9W8o8HZdAWDhz+wsyDPOO9dt30Ib7rUK
	GRHJsfksN94xlpUwU/sreYzrM4oNpKu0Bzg5pD3Jz1iiEJNQBGQWp/AJTh+noVaN
	KJgM3RPAH2/WsPGudjZtsGE+SAXs1n3QuSxAxpxQ8ujn3fE/fmIZFRCQaW0meK8O
	Pu2cWdbDryJtzpz35IFQGjHVgSsM2iIoxKmoNT5J3ydT8qNXId5NJeISE82xOlAg
	s1jS/7o3e0bsNr57XhPSODpGGxxNUxxMe0A==
X-ME-Sender: <xms:lQf2YoyvVrNeWW-ly3os0o59tEoXprcH1gHsV0s7nzElwIpbHlB3Iw>
    <xme:lQf2YsSipsLAramrIqYSwB6rXPc4FIV9GXE2BXzVBS1Mg4sCYkru4TdAX00JByyRb
    lqascTSwb8up67qFA>
X-ME-Received: <xmr:lQf2YqW9P5MP6wcOKzO0nVfWNuAM1T3WYfXdIO2HQ4G7A00bVxKtu0yxbvIa0Ql88U3XiKAUNihSsT_5f0TZQ5t6a0KzwSMPaECVXL-8LG91SOoV9ETtUmWGxaNXf8jmwtTTcg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeghedguddvjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
    lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
    frrghtthgvrhhnpeekveelhfejueelleetvdejvdeffeetgeelheeujeffhefgffefkeeh
    hffhkeekgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:lQf2YmhphSX8mqcOUGpwf3XhCqKT4CoekJBCdIzDnR5GrzeINbbntg>
    <xmx:lQf2YqAVpW7BVJKvppaTWTvG1l98kW9pCswCnkG82Mq8BB6hpyMEzg>
    <xmx:lQf2YnKRHp4A0CG2dDeL1KPOVlcKIOpergm9VsnmEp9CDGQjxvtALg>
    <xmx:lQf2YiZEhYl3ojjs0R1MBow7bAMM1RKoM-xdBqwxqPdn89S8At7AOQ>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 12 Aug 2022 03:56:04 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
	Samuel Holland <samuel@sholland.org>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maxime Ripard <maxime@cerno.tech>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Subject: [PATCH 0/8] phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY
Date: Fri, 12 Aug 2022 02:55:55 -0500
Message-Id: <20220812075603.59375-1-samuel@sholland.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_005606_911578_7224341D 
X-CRM114-Status: UNSURE (   8.19  )
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


Samuel Holland (8):
  dt-bindings: sun6i-a31-mipi-dphy: Add the interrupts property
  ARM: dts: sun8i: a33: Add DPHY interrupt
  arm64: dts: allwinner: a64: Add DPHY interrupt
  dt-bindings: sun6i-a31-mipi-dphy: Add the A100 DPHY variant
  phy: allwinner: phy-sun6i-mipi-dphy: Make RX support optional
  phy: allwinner: phy-sun6i-mipi-dphy: Set enable bit last
  phy: allwinner: phy-sun6i-mipi-dphy: Add a variant power-on hook
  phy: allwinner: phy-sun6i-mipi-dphy: Add the A100 DPHY variant

 .../phy/allwinner,sun6i-a31-mipi-dphy.yaml    |   8 +
 arch/arm/boot/dts/sun8i-a33.dtsi              |   1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi |   1 +
 drivers/phy/allwinner/phy-sun6i-mipi-dphy.c   | 235 +++++++++++++++---
 4 files changed, 214 insertions(+), 31 deletions(-)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
