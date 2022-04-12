Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6CCAC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 12 Apr 2022 09:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zY6U88ONWo84aiPc93EQ9aL1aU2CD9CndYzqlJcMkLE=; b=bK65S26F6KywQw
	n52BxuUayXQB3XPwZ29qEcrCjE2NdySSxTeUqjs+R7CM0+G5xPzbG8Q5OOgiAiCzj4EHY/CiFt2UT
	EtqhG4KriJ+RsZWn7htdipud/sICMrv/LgKCraw3TFKCt3zVl2dWr5kcZ5bi+ip1u79cPoGypXZoP
	Toz9Bb/AVt+n2SGChR5kumy4/pbY+d8ItmPNb31gg6nsuaClX3YkPi6IKjJY6MX6YUI5/zTtLHwJz
	H/B0KxiXwMCc03d3qdexG06v5yiq7/MkjRHG1gHSfL6kuSjW+6dijvc/S3e5O23caXaXCMpcXGqCf
	nUyYV5JphpPL4tvoSQyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neCgG-00CrzP-3O; Tue, 12 Apr 2022 09:19:24 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neCfZ-00CrcB-Pn; Tue, 12 Apr 2022 09:18:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1649755121; x=1681291121;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wllcvgbH0tVMOp4P3a8Ug7HpQsdqWo0Kq9vLghsmuEc=;
 b=QZDrQQ78C8OeS7AhqU2ZQ8z2uhyQ75MHBX4usvtSVstQ4NGd0subPDY0
 y2OwqtUVCucarEJlqSXzf6LwKeLDMqYGV/vZ+MR1mM98D2pc6SZrljONU
 vNNWJD08VXidoE97YPX4cB3eouZwPyQIk8GxMvAEd8j9R48HPqXc0xIVS
 ZTI60a63oObXv5DrugItc1PbfYFA+iHnJK/pzjQPFs2JhCrF4M9SxEydB
 aDnN8Xce9VljZ7IQvX3aprJ3R1BRe2S+rVQJHVRLIDll70johUoa1m/fN
 8QXixPr7SqNAUxeaI4J12NL+gN8+nAsHSkwGhaA6pw5gYBVQS4v6C+kcT Q==;
X-IronPort-AV: E=Sophos;i="5.90,253,1643670000"; d="scan'208";a="23243933"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 12 Apr 2022 11:18:35 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Tue, 12 Apr 2022 11:18:35 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Tue, 12 Apr 2022 11:18:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1649755115; x=1681291115;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wllcvgbH0tVMOp4P3a8Ug7HpQsdqWo0Kq9vLghsmuEc=;
 b=Tf5L0LxbU/NkPHHoWu8bLs1eTREnL7w5LVdrR3HOy3PZaVJn+3olcbmv
 00+4h7FzXjfiSEvZ6RrDPuRO07UNTNS3biyaSlux3c2o4HXU+0ExcOYBJ
 xuwB4QBhjOpjvO4oLCkr/ymCszwb04HS5+Wdydgu8LXF49XZuhTkm/wfx
 L38yrHxUlny1x2WibC1ryQh9Yhw7wriv94SOeUsf20pU/JrNSEPqq+Yv8
 Jg2RHsaaG7Xb0rAoveR1+g2Rv83J79dIbjrGZhqyCnHTiPdIIDzH11tF4
 EpawZyY5vRI32/kCb7uRMrjE/UfrjVxiUNgan6RW/WoojPNFtOodWfhih Q==;
X-IronPort-AV: E=Sophos;i="5.90,253,1643670000"; d="scan'208";a="23243932"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 12 Apr 2022 11:18:35 +0200
Received: from steina-w.localnet (unknown [10.123.49.12])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested)
 by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id C650C280070;
 Tue, 12 Apr 2022 11:18:34 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Robert Foss <robert.foss@linaro.org>, Neil Armstrong <narmstrong@baylibre.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, patchwork-lst@pengutronix.de
Subject: Re: [PATCH v0 00/10] i.MX8MP HDMI support
Date: Tue, 12 Apr 2022 11:18:32 +0200
Message-ID: <3484598.R56niFO833@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20220406160123.1272911-1-l.stach@pengutronix.de>
References: <20220406160123.1272911-1-l.stach@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220412_021842_163072_F4B4E8C8 
X-CRM114-Status: GOOD (  24.87  )
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

Hello Lucas,

Am Mittwoch, 6. April 2022, 18:01:13 CEST schrieb Lucas Stach:
> Hi all,
> 
> this adds support for the HDMI output pipeline on the i.MX8MP.
> It currently depends on the i.MX8MP HDMI power domain series [1]
> and support for the new LCDIF [2] in the i.MX8MP. I guess the
> implementation presented here also still has some warts that
> require fixing and the individual patches most likely need to go
> through different maintainer trees, so I don't expect this series
> to be applied right away.
> 
> However this complete series should allow people to test it more
> easily and provide feedback on the implementation with the full
> picture available.
> 
> Compared to downstream this implementation actually allows to
> power down the separate HDMI PHY power domain when the display
> is inactive or no HDMI cable is connected.

Thanks for these patches.
I tried using them on my imx8mp based board (TQMa8MPxL + MBa8MPxL) but failed 
to get the display showing anything. I noticed several things though:

* For some reason the HDMI PHY PLL does not lock. I get the error
> fsl-samsung-hdmi-phy 32fdff00.phy: PLL failed to lock
Increasing timeout does not change anything.

* The HDMI bridge wants to use bus format 0x200f which is not supported by 
lcdif.
> lcdif 32fc6000.display-controller: Unknown media bus format 0x200f
I wonder which part in the DRM chain choses to use this.
But even hard limiting to 0x100a the screen stayed in suspend

* If the drivers are built as modules I get a hard lockup during boot. Using 
built-in drivers or 'clk_ignore_unused' workarounds this.

* DDC does actually work. The display is detected and EDID can be read.

* Sometimes I get the following error:
------------[ cut here ]------------
[CRTC:33:crtc-0] vblank wait timed out
WARNING: CPU: 2 PID: 151 at drivers/gpu/drm/drm_atomic_helper.c:1529 
drm_atomic_helper_wait_for_vblanks.part.0+0x2ac/0x2fc
Modules linked in: caamhash_desc caamalg_desc crypto_engine rng_core mcp320x 
dw_hdmi_cec authenc libdes dw100 videobuf2_dma_contig lcdif crct10dif_ce 
phy_fsl_samsung_hdmi v4l2_mem2mem imx_sdma flexcan imx8mm_thermal can_dev caam 
error pwm_fan fuse ipv6
CPU: 2 PID: 151 Comm: kworker/u8:7 Not tainted 5.18.0-rc2-next-20220412+ #165 
d226098cac46ded24901c7090f909ca8f5098eb0
Hardware name: TQ-Systems i.MX8MPlus TQMa8MPxL on MBa8MPxL (DT)
Workqueue: events_unbound deferred_probe_work_func
pstate: 60000005 (nZCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
pc : drm_atomic_helper_wait_for_vblanks.part.0+0x2ac/0x2fc
lr : drm_atomic_helper_wait_for_vblanks.part.0+0x2ac/0x2fc
sp : ffff80000a133430
x29: ffff80000a133430 x28: 0000000000000000 x27: 0000000000000000
x26: 0000000000000000 x25: 0000000000000001 x24: ffff80000935f030
x23: ffff00000433e000 x22: ffff0000029e7000 x21: 0000000000000001
x20: ffff000002e7fb48 x19: 0000000000000000 x18: 0000000000000001
x17: 4d554e5145530065 x16: 6c75646f6d3d4d45 x15: 5453595342555300
x14: 0000000000000000 x13: 0a74756f2064656d x12: 6974207469617720
x11: 0000000000000000 x10: 000000000000003a x9 : ffff80000a133430
x8 : 00000000ffffffff x7 : 6974207469617720 x6 : 6b6e616c6276205d
x5 : ffff00007fb91b00 x4 : 0000000000000000 x3 : 0000000000000027
x2 : 0000000000000023 x1 : 0000000000000000 x0 : 0000000000000000
Call trace:
 drm_atomic_helper_wait_for_vblanks.part.0+0x2ac/0x2fc
 drm_atomic_helper_commit_tail_rpm+0x80/0xa0
 commit_tail+0xcc/0x1f0
 drm_atomic_helper_commit+0x13c/0x370
 drm_atomic_commit+0xa4/0xe0
 drm_client_modeset_commit_atomic+0x1fc/0x250
 drm_client_modeset_commit_locked+0x58/0xa0
 drm_client_modeset_commit+0x2c/0x50
 __drm_fb_helper_restore_fbdev_mode_unlocked+0xec/0x140
 drm_fb_helper_set_par+0x38/0x6c
 fbcon_init+0x264/0x5e4
 visual_init+0xc8/0x15c
 do_bind_con_driver.isra.0+0x20c/0x470
 do_take_over_console+0x44/0x60
 do_fbcon_takeover+0x80/0x140
 fbcon_fb_registered+0x1c4/0x260
 do_register_framebuffer+0x1e0/0x2d0
 register_framebuffer+0x2c/0x50
 __drm_fb_helper_initial_config_and_unlock+0x9c/0x130
 drm_fbdev_client_hotplug+0x1a8/0x20c
 drm_fbdev_generic_setup+0xc0/0x1d0
 lcdif_probe+0x7c/0xa0 [lcdif e756925430e957a7bc9e6376ad5964e4b1cb143e]
 platform_probe+0x64/0x100
 call_driver_probe+0x28/0x130
 really_probe+0x178/0x310
 __driver_probe_device+0xfc/0x144
 driver_probe_device+0x38/0x12c
 __device_attach_driver+0xd4/0x180
 bus_for_each_drv+0x74/0xc4
 __device_attach+0xd8/0x1e0
 device_initial_probe+0x10/0x20
 bus_probe_device+0x90/0xa0
 deferred_probe_work_func+0x9c/0xf0
 process_one_work+0x1d0/0x330
 worker_thread+0x68/0x390
 kthread+0xec/0xfc
 ret_from_fork+0x10/0x20
---[ end trace 0000000000000000 ]---

But given that the PLL did not lock I assume this is not too surprising.

Best regards,
Alexander




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
