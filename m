Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4051CA5FDD
	for <linux-phy@archiver.kernel.org>; Sat,  3 Oct 2026 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Aar1BjXTTRtzv47feoaN2iq0a2SKR4yrz+x+B7y3Ts8=; b=gF/QOFJH9ZO2IS
	Ud4/ZE35M0EN3RUsW1+qdamiBfzg+CSF78jREtI61PHXH8L1aG5Yyz+ktpuDsTFAYadDD6ggRfSkE
	mJjluGTKz1O24PHCT7Tky1tfYx95b8qUIWfe7+Tjlye1LhJUyLn4jU5e6QRviOD/suxkxXGzUK4EY
	jvBr7NxrJmB4uXyKveXXfTf98Zbsd4D5hEbfw5Imzup+0/pyJDSKhueAX6drPOGF1t+O6rZlXo3FM
	GaY4aVUyDh1GKxYqOLVP/BOLoUXl0XOnYcsZpTkcO9pRQMghDp6HB2UslxjDW1xTY5yTLUtu/lV/W
	ZRwdAMvgbH9RjMdnhlvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c2-0000000DgXj-0ias;
	Sat, 03 Oct 2026 15:25:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xD1c0-0000000DgWY-48nq;
	Sat, 03 Oct 2026 15:25:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 68BFB60DA3;
	Sat,  3 Oct 2026 15:25:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 042F71F0089C;
	Sat,  3 Oct 2026 15:25:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791041120;
	bh=DiX5YW6EBF7WudDBAa3mCh5+8hepxsK5EmgVDcVUaHs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=KxpJPO9Qmv2UgUpdX5duGVS+kcrJcLxiLByfXnXLACZpzcadShH9Ab148O92g8LYx
	 3n4IWgPohS6M+beqz1UK5gL6Aykjda4JVWuRBu2mIyJ9ytS1ru2a0M5+mTtQTXERv8
	 rto/2CSxMpZD8UbhRJvRq0yZ/RpjBLcOPpo2hQr0WGHROIpDGCRREEiRVaEr/7q1X/
	 xYu7XQW3+gxpqgYjlefdOoafEgWwLkMeHZIkVX0xgCyE9dNdvZhNB2Zhx9z3bprTTf
	 CvtwmoFlkp3jrcXTLJVk+sxgANh1xV803u9i68pbUHOASGA6CYrK2ZtOu9LNN77Sz6
	 Vh2/3utiS3vmA==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Jason Yang <jason98166@gmail.com>
Cc: Heiko Stuebner <heiko.stuebner@cherry.de>, 
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260821-dcphy-rpm-v1-v1-1-a7db728b2539@gmail.com>
References: <20260821-dcphy-rpm-v1-v1-1-a7db728b2539@gmail.com>
Subject: Re: [PATCH] phy: rockchip-samsung-dcphy: Enable runtime PM at PHY
 core level
Message-Id: <179104111766.223537.14780886695955286078.b4-ty@kernel.org>
Date: Sat, 03 Oct 2026 17:25:17 +0200
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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


On Fri, 21 Aug 2026 19:44:19 +0800, Jason Yang wrote:
> phy_create() only enables runtime PM on the new PHY device if the parent
> already has it enabled, and this driver enables it afterwards. The PHY
> device therefore never gets runtime PM, and phy_pm_runtime_get_sync()
> returns -ENOTSUPP for every phy_init() and phy_power_on(). The block is
> still resumed today, but only through the supplier link fw_devlink builds
> from the phys phandle, which fw_devlink=off and =permissive do not.
> 
> [...]

Applied, thanks!

[1/1] phy: rockchip-samsung-dcphy: Enable runtime PM at PHY core level
      commit: 261e84f9278f4373970471ad71479df20d82ed4c

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
