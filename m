Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 409F9C44502
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jan 2026 08:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kc5P232Qu9mGisBL/5pzXoPzcElZV8CRuxocdl28nD0=; b=DExccX+S/k/XPo
	tHhTaTneeahvd4ffBc32vdaJ6GWsjag0mBTQqSag2jOxPGPq/HBjnWX7WsDS7RNo3+R8wJZFnXghI
	SGEGOjKC5qTnSnv0cP8VZunEzE5TUhBnMqtLMIWZSEgq9NEnKSff5JgEpfhfQYOnsybaGse2jqB4P
	ClYheADkgCiejr9x5gU9OBpuhPWPOKyD/L4KylrndVuqyGaJIuWDDNTh6FyXNw/eVcb8F/ahlOVDo
	1ciAWKQEnBNIF9o8zGPNTTg3zjaX1uo/Eso1S4UPX/1Jwp0MZ1v3dRRfuxg6O0B5SVdu3Nc+dxmRp
	PA0uu/uhdxJsfBEKR/zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTx4-000000057oM-030D;
	Wed, 21 Jan 2026 08:52:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viTx1-000000057me-2ndK;
	Wed, 21 Jan 2026 08:52:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1097260121;
	Wed, 21 Jan 2026 08:52:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D473C116D0;
	Wed, 21 Jan 2026 08:52:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768985550;
	bh=GBX0TuUbi/wZVghRTq3x44Lmt4SYlKX0UDjtZonEMBo=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=d6VZwmSNDbav9bCRw5i+01LI/LXTD9EBwONRR75dDNV0r8cETtQ7Gnb7WsfZ57Vyk
	 3nP6SAqRF4YejDdSVdgpfzWuFO0nWxlxk0M9cYicq+v/xvzr2CPuVJO1yVLrE97LRf
	 FOCyabKo37dNOm6tNAhDanjYodY4sSzJZlha3Ly4BbOC6ku3x++JCKy/5BuD4MpYZ1
	 h6TqnaH5tTUMpJmQ9tnHHzm15qcUEwZcD61ursqhM0+4myGIZJ6WHKpM1bU3bYwWpK
	 sOBMWT+LMHvmPRnJFsMB7PXsEPoWmkVaQs4S69SudwLUaqIA9rNowbo/OhoKUijsbS
	 ddhRZn/WL4p6A==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
References: <20260113-phy-hdptx-frl-v6-0-8d5f97419c0b@collabora.com>
Subject: Re: [PATCH v6 00/11] Add HDMI 2.1 FRL support to
 phy-rockchip-samsung-hdptx
Message-Id: <176898554499.1268719.9527539961462152205.b4-ty@kernel.org>
Date: Wed, 21 Jan 2026 14:22:24 +0530
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


On Tue, 13 Jan 2026 01:20:47 +0200, Cristian Ciocaltea wrote:
> The Samsung HDMI/eDP Transmitter Combo PHY is capable of handling four
> HDMI 2.1 Fixed Rate Link (FRL) lanes, while each lane can operate at
> 3Gbps, 6Gbps, 8Gbps, 10Gbps or 12Gbps.
> 
> This patchset extends the HDMI PHY configuration API to manage the FRL
> mode and provides all the required HDMI driver changes to enable FRL in
> addition to the already supported TMDS mode.
> 
> [...]

Applied, thanks!

[01/11] phy: hdmi: Add HDMI 2.1 FRL configuration options
        commit: 41c6cac6decd5123db1da8ca240a9c808b0ae6ce
[02/11] phy: rockchip: samsung-hdptx: Use usleep_range() instead of udelay()
        commit: 0ef8dd1034e3656e40d020911bb7aa14e7084663
[03/11] phy: rockchip: samsung-hdptx: Fix coding style alignment
        commit: 4f310f180373bd0e68311debee7a0dddb14c1656
[04/11] phy: rockchip: samsung-hdptx: Consistently use [rk_]hdptx_[tmds_] prefixes
        commit: 925f26a4f8c65e5686e1820f0bdc7e0a237edba7
[05/11] phy: rockchip: samsung-hdptx: Enable lane output in common helper
        commit: 8e8aa072b19d0d16afbfd690c8e50628176db3ef
[06/11] phy: rockchip: samsung-hdptx: Cleanup *_cmn_init_seq lists
        commit: df74a964e4354e65fefef60c9c50765ff32cd26e
[07/11] phy: rockchip: samsung-hdptx: Compute clk rate from PLL config
        commit: 3481fc04d969bc1528c2d1f7c02443a9fccf1a83
[08/11] phy: rockchip: samsung-hdptx: Drop hw_rate driver data
        commit: 66d76b6d958d7ca195c8b3f43828b12a206fb731
[09/11] phy: rockchip: samsung-hdptx: Switch to driver specific HDMI config
        commit: ac079c1207e492924237fdfb12c93664265b2e23
[10/11] phy: rockchip: samsung-hdptx: Extend rk_hdptx_phy_verify_hdmi_config() helper
        commit: b14fec4dbda301d61603c047277b4f447837b3e3
[11/11] phy: rockchip: samsung-hdptx: Add HDMI 2.1 FRL support
        commit: de5dba83311842cf208735b37bea84073688d470

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
