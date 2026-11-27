Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B7B4606A335
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 15:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CsbxV/LY;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bedUsE1D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X06wTmN5cp/K7zkMOaQKKCd0+98Jp1lp5gtZJIb6ltc=; b=CsbxV/LYofRq3B9yOvNowJux7b
	4uUMWM3m2KhYusYMzpd3MvOQz5DaDIOXuIrz1o0Vd1QsmVBVAWmoydKl0pBKpnC1xbIRNikvnlVXF
	/3Kr5YDHhQuy/K71rcKJehuGnwIpZgnigq4vX2oQRKRI+lwiF+mk/YUGFK7vq3k8EQEVHmetqXp3g
	lHqbS4Nj5kJwFmdyMDmL5gBxN0KajXddZpfQSWY7jtR6fedtP7pmMOB56ZFZqnnpMGoyp3y5YVdEz
	Q1o3VHw+3RTIH2vhh/+wzqYStRsVOg9Ynb5gWv2hYhaOHf7fofiAqyDaPbF7vt56obVVDSnMNFagm
	gKquDLIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWxeX-0000000Gisw-0EmY;
	Fri, 27 Nov 2026 15:14:21 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWxeV-0000000Gisp-3z2c
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 15:14:20 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2C74860267;
	Fri, 27 Nov 2026 15:14:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6ABB1F00897;
	Fri, 27 Nov 2026 15:14:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795792458;
	bh=GpLexouKPHhlMqvz5ie6TcMRJx78hImLzoB2DvR1Llw=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=bedUsE1DktNe1hP0OzSLTI2TPvUFoCDfCIFiAIHopB8JKNBLPM4tTZbYwgnCnPnZN
	 M7ThK0diVyGK28Jd3HW2xXzm08O1oRqAbBzGrDjxIDu/6+vnJEP4a7NH+Ybwp+ikJ7
	 H/MLol6I71lxsUkw86o8IdBLtnw6zqsRL11mg15k+0xqKHbE6oxXCBTajoQ9YB3oAj
	 hthkBGIYyreDhP1Zu87lPI1F3ehCMWDOrRYC0MJeROto31/VnjpBNB4SMOnbS+8Eu0
	 6/0JuMAxnG+GJUtavAJr5fJhS0VN0adGfco1pfbohrq4pqpbqgZAI6eseleGQdGIn1
	 kMz852ZDP2mJg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v2 0/2] phy: Add the Siflower SF19A2890 USB 2.0 PHY
From: Manivannan Sadhasivam <mani@kernel.org>
To: Joseph Telaak <joseph@telaak.dev>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Chuanhong Guo <gch981213@gmail.com>, linux-mips@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>
In-Reply-To: <20261116-sf19a2890-usb-phy-v2-0-df3ce9d23f5a@telaak.dev>
References: <20261116-sf19a2890-usb-phy-v2-0-df3ce9d23f5a@telaak.dev>
Date: Fri, 27 Nov 2026 20:44:06 +0530
Message-Id: <179579244681.13164.2474249536306401170.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1260; i=mani@kernel.org;
 h=from:subject:message-id; bh=bBdLdv0Yktod6bVDElg4EDTKn4SrHzmKVulE4JmfaNk=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCZ5EXc/MR1v4Y4uhL1ZDYSPWCIt8e1vAfRqI6
 UV3YjrRJO6JATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawmeRAAKCRBVnxHm/pHO
 9UxLCACHv+qXhOOyHEmDDsi2qEW1jtZs4i2xwAYuG9jkunQuBXKZa3ZRtOZRhNkuhrdWEl70V2p
 XlGIA930zIqiu90YdnKNJZkiidxgtbHQ+mXaAmNOPcn7WBRbgpVL0l/dYMDIIJhk4CiakWkvPpg
 AgTuaZJhiWyYC5scllwm9BLGP9qkDOQJiOADIHrXMNh9L3H5mrhw4FD0MfIKNRW3DTj82sncBZW
 J03mwnfXiDS6t8q+q7yKr+JY2QAt2ibXTfWrbymuQw4f7ngNM3NYg2Y7buoBMvOWVEHB1vZEA6Z
 hnjMn7QfdaONJP9SlPcexYInIoc523ZtjiRAMnkYHiwgzZ1b
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-11-16 19:31 -0500, Joseph Telaak wrote:
> This series adds a binding and a driver for the USB 2.0 PHY of the
> Siflower SF19A2890, a MIPS SoC for home routers. The PHY takes its
> reference clock and its two resets from the USB block's clock and reset
> manager, which goes to the clk tree.
> 
> The driver is Chuanhong Guo's, from his SF19A2890 branch [1], with my
> changes noted.
> 
> The SoC support itself (MACH_SIFLOWER_MIPS) goes through the MIPS tree;
> until then the driver builds with COMPILE_TEST. The DWC2 part goes to
> the USB tree.
> 
> Tested on a GL.iNet GL-SFT1200 with the DWC2 patches. With v1 on
> v7.4-rc1, a USB stick enumerates at 480 Mb/s and reads at 5.6 MB/s
> (5.0 MB/s with the same stick on OpenWrt's 6.18 kernel), and comes back
> after unplugging and replugging it twice. v2 takes the resets with the
> bulk API, so it was run again, on OpenWrt's 6.18 kernel with the driver
> backported: the stick enumerates at 480 Mb/s after a cold and a warm
> boot and after reloading dwc2, which powers the PHY off and on, and
> comes back after a replug.
> 
> [1] https://github.com/981213/linux/commits/siflower-7.1

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
