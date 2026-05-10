Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84370CD37AF
	for <linux-phy@archiver.kernel.org>; Sun, 10 May 2026 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kjJyDDj/nulRYMVovEx0ivLmihrjO0tAzoXAG49IRis=; b=vUj4FhLlP9nnaA
	k6e7Gd02F7ojvwF/7uXJ1nfBdS7sn6W34Z54b9Gm+Ll358kDJl1sMJitj7AX8qpetHKxGtYyhK96u
	Ux3WDGKFSg6EzA4un2e7gmHkVKOZnJVNmIVj/isV+VI2fvx/bj2JhGbL6wrdX5RSFRaZhMeZ4rx5F
	O+o5/25OQKioRtNcj6O8XTIxd7ZCwjwsYJcwD+bLUeBFAyD7m+ikUWFwh3t61AUlQE7mMTwP+G115
	mTvkkrzIdPpKXPf9nlGdv5kqwPKbqmYAQkan8P5HemnJiyocHvwiS04/Dk5bHEmlINzBSDjtakGcD
	O8qYABCtEuztMyWQqB8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jd-0000000AiGV-0vgg;
	Sun, 10 May 2026 12:31:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wM3Jb-0000000AiGC-3Mc2;
	Sun, 10 May 2026 12:31:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0DD896001A;
	Sun, 10 May 2026 12:31:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 51955C2BCB8;
	Sun, 10 May 2026 12:31:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778416282;
	bh=3JqIN/a5xnDrsf7uQ/t04AQRZOGabyoAFAk9x9agD58=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=MnZsboA0jQmaijqnX2BD+hvMlrJcDvxnQQDS/r9gbtq9L0V6otNe32bZ6WXiAjBl3
	 aKhZSAZglSQAFSPZRmNTI/7CsKpNa/vW0GUwQZSSxgX5zNqKwthOcghfNnZGDyvFfs
	 pcqtjUOYAD3a3JBSRBc0WzaejDDpIBU2DgafD/VPQsPUgKnuaFhpyjnSV88PTNZVy1
	 BqVaYN47khWtmCpyaH43ZRIK/rfWHRQCScbn0wHvzO4YXLpYwz5mjuenpxA7ukRS/I
	 aRTznzwF4TgpHbyDD/T4T9c/LeNSzAQGWUJDOgbfOJFRwbfcVRV097cqwM05W0vHAr
	 R7W6HiWOe6XCw==
From: Vinod Koul <vkoul@kernel.org>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Nora Schiffer <nora.schiffer@ew.tq-group.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Siddharth Vadapalli <s-vadapalli@ti.com>, Roger Quadros <rogerq@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux@ew.tq-group.com
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
Subject: Re: (subset) [PATCH v4 0/5] J722S SGMII support
Message-Id: <177841627590.434434.3111204439748668574.b4-ty@kernel.org>
Date: Sun, 10 May 2026 18:01:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Tue, 07 Apr 2026 13:42:32 +0200, Nora Schiffer wrote:
> The J722S CPSW and SERDES are very similar to the variants found on the
> AM64, but they additionally support SGMII. Introduce new compatible
> strings for the J722S to add this support to the drivers.
> 
> This is a prerequisite for the Single-Pair Ethernet interface of the
> TQ-Systems MBa67xx baseboard for the TQMa67xx SoM, which will be
> submitted separately.
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: phy: ti: phy-j721e-wiz: Add ti,j722s-wiz-10g compatible
      commit: 059f1a4c9e3aa44d888c0e7cf4559403eece0438
[2/5] dt-bindings: phy: ti: phy-gmii-sel: Add ti,j722s-phy-gmii-sel compatible
      commit: 567b3c62a7eb51db4cb562b416ec220132d524c9
[3/5] phy: ti: phy-j721e-wiz: add support for J722S SoC family
      commit: 61849b7afb579630fc45dbeaf5449b42b33cc70e
[4/5] phy: ti: gmii-sel: add support for J722S SoC family
      commit: d39cf00e7daea64889dda9abb0b7e6da04a69d04

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
