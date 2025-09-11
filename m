Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88909CA1016
	for <linux-phy@archiver.kernel.org>; Thu, 11 Sep 2025 05:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+phIPamHQpMsg7+xiUpzFQG1ySmL91zO0IAxplmTuM=; b=yfY0zGLMVpSXRV
	b1XWZlmM20Cne7Qxrpl/wMflMkHWMaw9+7Z3ptUWUGEXVkrW0UOqQPRQS0NKbZcVP0og1Cv17Pajn
	NWcgXodkRPPcQLL0bBHPv9vKS+2S/JW/K/7Z0Qjqoqm1zGQIIvkDFS2W0oWZzkVbQxXbnkY20nz2X
	9gQT8F51xR9yDcUsGqeL7PvIfH8DvN85Rdoig1Yqly/vi7qkoYr81wId2NFiBqPr9Q7/2b+fz8WWa
	ocaVXKIXvj3ts6kKZQvo9U/dwGQlwdU8ueSpvBMKqTfDpc9HqPtJxvs9HiRHSCGDjbC3KG2k9iwjo
	9z1MbGxNL0XYDL5Y/M2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwZZH-00000000wQo-08iW;
	Thu, 11 Sep 2025 05:09:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uwZZE-00000000wPP-1whN;
	Thu, 11 Sep 2025 05:09:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6E8A843455;
	Thu, 11 Sep 2025 05:09:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4831BC4CEF1;
	Thu, 11 Sep 2025 05:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757567394;
	bh=Ey9contA2Kpz3RtT5dMWiuizXGWkDz6xohXX0manX30=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=gUXiklMOCFFLqDMJowfdrtdEt/usyskqJmqZqq1K0C4Kl5idjkrLxyPR8sYlFC9Op
	 Y5oxZBWTksq2X6ZCVT/efzhvY8w7PZOIQfsJ+/CPBHFFtKuihdqVpIIhaSPODJOvCs
	 WUubcF60siSGM0KTuy0iDB5TGc7MwI021j+lIxVca1QYqKdftxIoHh6Ec8vBjsS6Sn
	 Dnf0RVVpAJIWVHCXKrg3w9ikTKcp3MgehAhHzZF7Oj4mqXxATzBDQGhpA1W8+/5bHK
	 ZkxJoI/Vb6tIhCafS+mDDaKcg24lcmZfGq+zYYv3M8ozOySukWREvTKqTQC4RLFZvL
	 ybhC39jgVUGMA==
From: Vinod Koul <vkoul@kernel.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Collabora Kernel Team <kernel@collabora.com>, 
 Michael Riesch <michael.riesch@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, stable@kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250616-rk3588-csi-dphy-v4-0-a4f340a7f0cf@collabora.com>
References: <20250616-rk3588-csi-dphy-v4-0-a4f340a7f0cf@collabora.com>
Subject: Re: (subset) [PATCH v4 0/7] phy: rockchip:
 phy-rockchip-inno-csidphy: add support for rk3588 variant
Message-Id: <175756738898.509621.6509696151657981708.b4-ty@kernel.org>
Date: Thu, 11 Sep 2025 10:39:48 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250910_220956_530436_E7D124F6 
X-CRM114-Status: UNSURE (   9.98  )
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


On Wed, 03 Sep 2025 19:04:48 +0200, Michael Riesch wrote:
> Habidere,
> 
> The Rockchip RK3588 features two MIPI CSI-2 DPHYs (not to be confused with
> the two combo MIPI DSI/CSI CPHY/DPHY blocks). The CSI-2 DPHYs can be
> supported using the existing phy-rockchip-inno-csidphy driver, the notable
> differences being
>  - the control bits in the GRF
>  - the additional reset line
> This patch series adds support for this variant.
> 
> [...]

Applied, thanks!

[6/7] phy: rockchip: phy-rockchip-inno-csidphy: add support for rk3588 variant
      commit: bdb978979ed133c47e19099ff2a4ae51e515452b

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
