Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02006C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFm8e7OQhYqUZJHKVM8N9GyOGWO7DCiJPvFvpbJHYCU=; b=kUjNruPDfKT0bJ
	4fgZnTI0gR0buyCoCBNyt1friRz7jOEL29S7N2um51E2tfA4RmeiqSztQA4HQlydMmllk0V6d3LcQ
	rocwlfYVNqZr6GoS5cSmm5s8eKay0amqFTc9YK4+kD7A5vYFrhOkYAVSNxKKcBqDtUHZY2Mowi74g
	k/frq5PkqDJKd2CHIvkbCeIGjcOTsVULuZiOvGBaZlZMAcJmt/p8Zdaajo/B5RI5RmiagtUi9VaGH
	RAFEAJKaL0FTQyLmj6f+fwFqB5kafbBlToZjr0EDep4VOnVICO+eMlc3v2n8iL3SYijSQNQcMeob+
	H+ElmafTHzYapJqG87vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5iL-0000000EEeb-2pvm;
	Fri, 16 Aug 2024 22:46:33 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5hf-0000000EEYt-3f0C;
	Fri, 16 Aug 2024 22:45:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0AD2ECE20D5;
	Fri, 16 Aug 2024 22:45:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB398C32782;
	Fri, 16 Aug 2024 22:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723848348;
	bh=iDrX16u0LelpRPgCqYpDAtw45aROAMIdsf3ytPkWCjs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o5tVgNn/hemXq7NvKi/HfI7Sshqi9puD6hK31NaE2j+J4KFAcHQAcbwtsG7pmxRaC
	 qWP2roWS/1RyUFsylYf65vDG9x99ofiOV9Ft+hbMWsZX4fekuhmqmTZMac6OYhZJ1A
	 KGxx/8c48If8JFyYSNr68wjiKGA2ccEmU6hVo9Fl0gfm+uTytX9Iv/N+5B0UxI5Ina
	 x9PpLFFhdzto6KhWyvfzKEXyNcho+db74mdhsvSU2RySSLPFpuO8Sn2tTqVqASXSzR
	 fxLMJwMFbgmUzBmcHCZYdBsGmPW2vrxlIwE1DcH6MWDk29BJAAa92Wa8/yFoXycf7T
	 cnN17B1cQYU4w==
Date: Fri, 16 Aug 2024 16:45:48 -0600
From: Rob Herring <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org,
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v3 02/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller blit engine
Message-ID: <20240816224548.GF2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-3-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-3-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_154552_111349_2C2D125F 
X-CRM114-Status: UNSURE (   9.57  )
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

On Wed, Jul 24, 2024 at 05:29:33PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller contains a blit engine for raster graphics.
> It may read up to 3 source images from memory and computes one destination
> image from it, which is written back to memory.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * New patch. (Rob)
> 
>  .../imx/fsl,imx8qxp-dc-blit-engine.yaml       | 204 ++++++++++++++++++
>  1 file changed, 204 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-blit-engine.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
