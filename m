Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A400BCD11DD
	for <linux-phy@archiver.kernel.org>; Thu, 28 Mar 2024 19:19:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qZ6U+2K8EKRdtysg9iPv4cE7YMU4J1Tb/bfP3RghfDA=; b=ktByxCkFur1o5F
	uoJVku4Wgfd36W6NKnFjJJm5vl+3uJNaPiPoknwcniJuczoq1PJvNspVdmAoi9EtFL/Rd7mH2e8C7
	glP/eYQPCRgfyJEVxff/kpV+IRr38qMPq1ZooN/756iOYqBbjrucZcQwXbAWM/D29nw2EGSXFGZoJ
	tyH+JnXODCnFvJdhkowXUB+x3sD7qijse9lMgd60hx6SmNq3baCQuBXqcfJudvgQUdgoGi55z0fjL
	ccnOULg2jZIuNhrR0Ki9xOOW0dc3I7yWkakvZ5C/ZvedkwRFU8WXQUygaAdbahWjCV4XM/DA4H88I
	ZzEa2bS39id8s1h1Sczw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHU-0000000FLgK-0liU;
	Thu, 28 Mar 2024 19:19:20 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpvHP-0000000FLeU-1Fx0;
	Thu, 28 Mar 2024 19:19:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 11DE561806;
	Thu, 28 Mar 2024 19:19:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C76F6C433C7;
	Thu, 28 Mar 2024 19:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711653553;
	bh=iSmXMTfJak8gxA9ioiFk1xWqNqgnFX4tNdouyFOFKzU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TX/TPPK/XYJzzO1pwCUb26poWrm2a/lS7wwJ7llDMUc/EuBapf9fqGcDrhGHjCw9n
	 plST4hgyhv4Zov7gosFoJG/QvYT871e/R9w5iNxREXpufEFN63qHMW9S/OBcaFmov/
	 +RSPIX34qNS84ArOZw53H+LaycdJtiO3yEM2HcJ83zb/rmocUC4hmANtTTHZIPXK1y
	 sgbV56KSpI5LhIl/TicLck10mIjAH0dyTgo//Zucn1mSxzAen9oXTcWW7Gr1aVysM1
	 NeP4sZnb+KeI6Ex/EaLgd0X4L1885xGZGa/lvALogFoQIcPCbNZO9K1tdfu1efddeI
	 KztvTwCdhlUNA==
From: Vinod Koul <vkoul@kernel.org>
To: linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org, 
 Adam Ford <aford173@gmail.com>
Cc: aford@beaconembedded.com, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Lucas Stach <l.stach@pengutronix.de>, devicetree@vger.kernel.org, 
 imx@lists.linux.dev, linux-kernel@vger.kernel.org
In-Reply-To: <20240227220444.77566-1-aford173@gmail.com>
References: <20240227220444.77566-1-aford173@gmail.com>
Subject: Re: (subset) [PATCH V7 0/6] soc: imx8mp: Finish support for HDMI
Message-Id: <171165354734.152390.12386757633951091803.b4-ty@kernel.org>
Date: Fri, 29 Mar 2024 00:49:07 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240328_121915_430559_F19466FB 
X-CRM114-Status: UNSURE (   9.85  )
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


On Tue, 27 Feb 2024 16:04:34 -0600, Adam Ford wrote:
> The i.MX8M Plus has an HDMI controller, which depends on several
> other systems.  The Parallel Video Interface (PVI) and the
> HDMI-TX are already in the Linux-Next staging area 20240209, but
> the HDMI PHY driver and several device trees updates are still needed.
> 
> This series is adapted from multiple series from Lucas Stach with
> edits and suggestions from feedback from various attempts, but it
> since it's difficult to use and test them independently,
> I merged them into on unified series.  The version history is a
> bit ambiguous since different components were submitted at different
> times and had different amount of attempts.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: add binding for the i.MX8MP HDMI PHY
      commit: d0f4b70eb9a9ed05a37d963655698906cd4dac9a
[2/6] phy: freescale: add Samsung HDMI PHY
      commit: 6ad082bee9025fa8e0ef8ee478c5a614b9db9e3d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
