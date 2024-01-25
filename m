Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22875C47258
	for <linux-phy@archiver.kernel.org>; Thu, 25 Jan 2024 19:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AcsPQlVxpdk2E6GZ6jDPFaQgn9+9774bio0dq0F5ihs=; b=qhznpQVoSlIcmk
	9TKOUrAnvSBuiljjJqjWNBRBAgzywImj+HkB5/qbkCrKFqOBvJB0HpMgAXjNCTbUAH+3F5DIo8Cw/
	/TItbMbpsoeuEMRVl9L/uFjZbh2A7SOID1eqv9yX1AkHqJ6zt4BkrX7JSbI+U1HOFZdZNSQHzF075
	+JNKsheg0+5bCm/Hv/5SlfYzNOkwMlpjjAeXXGdfK2QsPYhGYxFYizkU+2wIhG4d0tsvnu7LEYVHA
	Fe1OczrXXc45/4acU6wcvQRavXU5CGOBG9ZbcGBlxGXF5Y9FUUyo3DV9HmSou1imr2mz+FIDywTW/
	kfiO9X0zkhmv+RHxrVCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT5qa-00000001fcH-1xLy;
	Thu, 25 Jan 2024 19:57:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rT5qW-00000001fZy-1P4E;
	Thu, 25 Jan 2024 19:57:09 +0000
Received: from [194.95.143.137] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rT5qE-0001FJ-Df; Thu, 25 Jan 2024 20:56:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Algea Cao <algea.cao@rock-chips.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] Add support for RK3588 HDMI/DP Combo PHY
Date: Thu, 25 Jan 2024 20:56:44 +0100
Message-Id: <170621254052.1850726.5970136297823229036.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
References: <20240119193806.1030214-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240125_115708_407519_87840DC5 
X-CRM114-Status: GOOD (  10.69  )
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

On Fri, 19 Jan 2024 21:38:00 +0200, Cristian Ciocaltea wrote:
> Add driver and bindings to support the Rockchip HDMI/eDP TX Combo PHY
> found on RK3588 SoC.
> 
> The PHY is based on a Samsung IP block and supports HDMI 2.1 TMDS, FRL
> and eDP links.
> 
> The HDMI link has been tested on Rock 5B and EVB1 boards.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: soc: rockchip: Add rk3588 hdptxphy syscon
      commit: 738227ab42fe0c6047f932aef11b9fd647d203f9

I've grabbed this one already, to keep my GRFs together :-)


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
