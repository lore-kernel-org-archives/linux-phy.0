Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37430CD5BA3
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 10:48:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=trRWl+LoqiNfRPPqbXxouzvOq6Bhv/ZzTo7E4l+XXiE=; b=b6iFbDplL5h4CS
	JoXMh4+j6v1hBMJJekRosmzKM6q5HGoy+tqO1TIx4XvFbRV0uCo+KGfM581UWBXRauegjCSeDXK3S
	QEMfO4x7xrh4xdWN0W3wf517nTPa4cutSvSnPkljbhtAwQE8S9U6bPiYxbXQqDtOG0+hF+TqqUreC
	VMadFqJ1piuw3EqO9SOF5BCqG4Zdgg6O03mgkaQWMMXKNip8S7aSAd4Qt6bBJqh2u3qIpTCoK12Vx
	xhMRcpX1J5k0ZIrvv9L1BPEqVG2azs12EMVhNPR897m/oBv1zbwmm9HkIHlXw42G1f8e88zibxBZR
	79tHzEXDHATjfH4Va39Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0G-00000001CWI-443w;
	Tue, 19 May 2026 10:48:48 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPI0G-00000001CVv-11yW
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 10:48:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id B1E3060126;
	Tue, 19 May 2026 10:48:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77566C2BCC6;
	Tue, 19 May 2026 10:48:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779187727;
	bh=9fFf/W/F+1j2qRl/lOpMKesclm8epEEeQsFj4GMStRI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=lOWjTsy8zimLq6WO3z7J/H3/Q0o7vPAmkXGjVfPQB2O7IU8IcWi727c1oWxp0FBPs
	 lqJyM1u/xDOnwsCNfKqJ2D+Tek146e2GUDRCRiEOsDAglI6EuXEI6vablRRmbmyAji
	 nFD98Xt/C6ps52o7AnIFc7ZVCfiyVzlP3C/SUBEOp7N/D03ao8iw3FSjyoPuWwK46P
	 bXUFlNZXP2vR6BQ6jCyYBvGMTg6e1OC5/b+AMvJj52xmwunrXKxvLZi7v0URpc8hX3
	 nxTL4A9b4w2k0Ip8S110ZtqpAayQszO1DrAKGEoR82+CS0t+GDJwsDQUZUWNCgBOx9
	 7e7Hj/9M2fJLg==
From: Vinod Koul <vkoul@kernel.org>
To: linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 neil.armstrong@linaro.org, michal.simek@amd.com, 
 Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>
In-Reply-To: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
References: <20260519082253.40142-1-laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH] MAINTAINERS: Hand over phy-zynqmp to Tomi Valkeinen
Message-Id: <177918772511.269794.9252773760842567724.b4-ty@kernel.org>
Date: Tue, 19 May 2026 16:18:45 +0530
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


On Tue, 19 May 2026 10:22:53 +0200, Laurent Pinchart wrote:
> I volunteered to maintain the phy-zynqmp driver as part of my work on
> the ZynqMP DPSUB driver. Now that Tomi has taken over the DPSUB, it
> makes sense for him to handle the phy-zynqmp driver as well.
> 
> 

Applied, thanks!

[1/1] MAINTAINERS: Hand over phy-zynqmp to Tomi Valkeinen
      commit: 293e19f416fa3f233a2fb013258f7abcb39ad6ed

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
