Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99E9DC7EE29
	for <linux-phy@archiver.kernel.org>; Fri, 19 May 2023 17:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fQaJf9NPwRbb/Ie3v3KL8bbs9S0Uk2+/6jCNyqi82as=; b=RgfqYpr2u9FGq4
	6mkqylQhd3sw3B5+JtoImpiLqUg1fXZCwTeKI7rHAVShJbiV2gxs5YJfyWIsuVz7C/BtoV2ra4K9/
	k46vDgaf4nDsw3Ei1Uwl/RVKLBre37kbL4Krjx2H6l4gpOfWsbzAJhHhYLYvip6dR7EtyqbU3+xZX
	QKKxI1s7ZA1LiMdQAyf6vYWw3uo1ogrd5m2Cd6FYGfapOk2cgIXsgGeB7XNkimn0Oiw+WAA+EVCTY
	A5/9SEPM/SLOdnTJ5udanpAzBBiOA+9Y0RH2g4NO35SDEwXMxdP6FBCdZUm6y6eMJnRqddrCpwU8K
	I+Tv51zdG0LcSvPWIGow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q04Fd-00Gulx-0b;
	Fri, 19 May 2023 17:50:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q04FZ-00Guko-2U;
	Fri, 19 May 2023 17:50:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4CC4861625;
	Fri, 19 May 2023 17:50:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C0031C433D2;
	Fri, 19 May 2023 17:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684518644;
	bh=GPLFQUmxCW4bUicLJ/JTla9Va0nrQXI6jzLWU84kVj0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=P89LfOQ+XOErPOdtV8bhG9xzgiKXghm8H2q6uQNtYG650FHlc9HJg1PuIh1yXcqDg
	 4mwaae8YJ8l/VWyRWqjj3CjHaJq2aksXStKDsyn/bGcu1s2eh32TZg6AVUWHJLYLR4
	 hvRwpGWFVvH14yn5xg8M1LD4sub11XzJVjtPdbpkTcq2DMCP0+FfxnVfbKoKrokke+
	 Ce/I9dfisfgfn8NHOYtZUcK7jDqle+4r+sg4EcuYybeqjdFIZ8lSvSOaxOv+GbcJTt
	 0nlZutyavvq3k9GNG40adWPJzyKTq6t2Pf2L/e8chmdHt+TutZGmMeOGboJU17PtHD
	 2eo76Zzev4EiA==
Date: Fri, 19 May 2023 23:20:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johannes Zink <j.zink@pengutronix.de>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, Li Jun <jun.li@nxp.com>,
	patchwork-jzi@pengutronix.de, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, Haibo Chen <haibo.chen@nxp.com>
Subject: Re: [PATCH v2 0/2] Add phy tuning support for imx8mq-usb
Message-ID: <ZGe28E0CXaJv3eKk@matsya>
References: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516-lustige-usb-phy-dinge-v2-0-3383a0de34ac@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230519_105045_875248_1F230514 
X-CRM114-Status: GOOD (  12.27  )
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

On 16-05-23, 18:20, Johannes Zink wrote:
> This series adds support for USB phy tuning parameters, which are
> required for meeting USB certification and EMI qualification.
> 
> Patch 1/2 adds the required properties to the fsl,imx8mq-usb-phy
> devicetree binding.
> 
> Patch 2/2 adds the phy tuning parameters to the phy-fsl-imx8mp driver.
> This patch is ported and cleaned up from the downstream Freescale vendor
> tree.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
