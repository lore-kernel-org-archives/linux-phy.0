Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44590606A682
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 04:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=yLGEmRhc;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Y9qd908l
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qLCegPL0EwouqCh8IQR9jMsogQaYw4TFHD/hlO5okhk=; b=yLGEmRhctQ/mNjZo9f+hcXTl37
	RUeuOmz8x1m3DUa1edNWSzR56jAfU24PuaUQf8cEVYoKXgLBnA+UAleplC/pSzxvLCrCubaaa/RWb
	JyoJPsnkrV/35uf0KL+gATr77KQ+eAIkT2203lhaC1hQNW2NSfmdg+FmWyQI2goLHePhulAeW6+mT
	uKJu1zlHue5pb3fGaxsr24I6PnfaS11bU35lHtYVNpNiD57ttpgA1gbFb5H8lxokGbeLaHTatGONf
	/5yk8VKPFh1ciZT57A9X0P7cM5xwYkiWS/LXTlK/5mk5TmMEb1M8NWYNlIUm4NxjjmAPWtI6kypuE
	a63E1fcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWngX-0000000Eulv-44Ya;
	Fri, 27 Nov 2026 04:35:45 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWngP-0000000Eugw-1wEz;
	Fri, 27 Nov 2026 04:35:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3B78D41AD6;
	Fri, 27 Nov 2026 04:35:37 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1795754136;
	b=VmITl57pfzAXlfg4V7KLo28lKFUADJXL4pOyFTAWjkz/ZRQMOx6IxJkQoyW8jVRNjU6Q
	 pICvtZG/JxGikwRtVGyStl2wcSBwwvtHx3RcMQfkGhynsTZR4NEfSAf9fnAvoarvpnnw0
	 dDENJEptctABFYC0zef/sHV6gdI4gpeTE+sTBIzv+YX/xP7LUDj+dlfrZYbCvYeLkyXuK
	 Og/BaAtj7jF4cQmnnZfEwsdlkaCVnVMdfrpDY1kmAdg6nUeMpsbCQZ8eY0e5OHM3iWwdE
	 6jjye5KiDQq3wlqUz9FjgkLqu7ktlpcTQr1gZF1wEZX/9rx+l2fppo7dPS2r/oJNS0A==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1795754136;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=UUYHi0U86N2FbjxZNkMxeXK0M+RDXoUdFlp5RZwqHtI=;
	b=zPYdUWHvRtiWRaI20fmT98lXX5dfj9vJ1lOgJB7gTVodCAMCyGCJH2uz3ttoB3G5Zgee
	 HUqCLy32YI84AiEnM0mdjXlQmSFZ63V/KO1naHdNPa7uME8z9QWHsjbhNrD1CGTOqM+YQ
	 Ln748UqndsdOCWe2MQDOpUo1lRL32QeqQOyOuB4lKzrcymbusvkHGGIWCqPnY5lGv9fU0
	 YmK8cSvBIG3JKw/5eOGsOny/pYRfYv24MEIwNuJ7m6yWXmon1ie7RxEyR+sywCBkNaV8j
	 mNHGhw85Tl2ZO4KmKOg8U6RcVU392r7CHCaoox/BJ52FBbisuUaJFFFM561SKtbQL/Q==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 84C771F00893;
	Fri, 27 Nov 2026 04:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795754136;
	bh=UUYHi0U86N2FbjxZNkMxeXK0M+RDXoUdFlp5RZwqHtI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=Y9qd908lZlDKXDIwZSlL8ABmD1VM53EEz+T6ziMf8ub6pT8KOtS8UovGBxAwq/ayQ
	 fYZpd0SGIuNUKe4JFl4crvsnSoXNF1Gve/U6xdKI9RV0v8eEPfjbaj9vFK98Y9Dj7D
	 geuv86ahMy7T/CAUvQgoV6/TU3Dld5rEITxgRBsy6j44DSN2X4jlbcRxn6GmEKA74k
	 u9YYP+j/begA9cE5J/WyORT+Uz1ZoxFXtSUWcDl5lz5y8NZxz7hsQ4W7Bvt/93E/1w
	 CAtfKdP8xoVrWagwjd9mM0rT72h0hAatU4e3CdpU+CMflXPiTs6+KcvOzXJtMIE/zs
	 BK1HKYl+Qk6Aw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 0C5754B588;
	Fri, 27 Nov 2026 04:35:21 +0000 (UTC)
From: Fil Dunsky via B4 Relay <devnull+filipp.dunsky.gmail.com@kernel.org>
Date: Fri, 27 Nov 2026 07:35:24 +0300
Subject: [PATCH v3 6/6] MAINTAINERS: Add CS7542 PCIe support
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261127-b4-cs7542-pcie-v3-6-b067875c56da@gmail.com>
References: <20261127-b4-cs7542-pcie-v3-0-b067875c56da@gmail.com>
In-Reply-To: <20261127-b4-cs7542-pcie-v3-0-b067875c56da@gmail.com>
To: Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Krzysztof Wilczynski <kwilczynski@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Stephen Boyd <sboyd@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795754119; l=1340;
 i=filipp.dunsky@gmail.com; s=20260930; h=from:subject:message-id;
 bh=UkNEp3aTxpqmCVLytwCu3R3LsqauciH/R0akRPMKUaA=;
 b=Sg73wH3Og/PYHjBQcgAyCN+dAMPoenI60bkb1EFIHty0rkK0P5DXLafHJhfdNHqxCbcLJch62
 W8CFLaHlBXrACWIsj6nReMYSD0XOeJszo+IZ9IEU5HpqvR95EyuZ5ZW
X-Developer-Key: i=filipp.dunsky@gmail.com; a=ed25519;
 pk=JAYP8e2rJ54DHOmhNtXud8rl1igAaAXoOHxtJmVXI1g=
X-Endpoint-Received: by B4 Relay for filipp.dunsky@gmail.com/20260930 with
 auth_id=1085
X-Original-From: Fil Dunsky <filipp.dunsky@gmail.com>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Reply-To: filipp.dunsky@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Fil Dunsky <filipp.dunsky@gmail.com>

Cover the PCIe host, SerDes PHY and their bindings under the existing
CS7542 global control entry. The shared clock/reset provider and reset
specifier header are already covered by the prerequisite series.

Signed-off-by: Fil Dunsky <filipp.dunsky@gmail.com>
---
 MAINTAINERS | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 703e95e83..8921c91a7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2949,13 +2949,17 @@ F:	tools/perf/tests/shell/coresight/*
 F:	tools/perf/util/cs-etm-decoder/*
 F:	tools/perf/util/cs-etm.*
 
-ARM/CORTINA SYSTEMS CS7542 GLOBAL CONTROL
+ARM/CORTINA SYSTEMS CS7542 GLOBAL CONTROL AND PCIE
 M:	Fil Dunsky <filipp.dunsky@gmail.com>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
+F:	Documentation/devicetree/bindings/pci/cortina,cs7542-pcie.yaml
+F:	Documentation/devicetree/bindings/phy/cortina,cs7542-pcie-phy.yaml
 F:	Documentation/devicetree/bindings/pinctrl/cortina,cs7542-pinctrl.yaml
 F:	Documentation/devicetree/bindings/soc/cortina/
 F:	drivers/clk/clk-cs7542.c
+F:	drivers/pci/controller/dwc/pcie-cs7542.c
+F:	drivers/phy/phy-cs7542-pcie.c
 F:	drivers/pinctrl/pinctrl-cs7542.c
 F:	drivers/reset/reset-cs7542.c
 F:	include/dt-bindings/clock/cortina,cs7542-clock.h

-- 
2.53.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
