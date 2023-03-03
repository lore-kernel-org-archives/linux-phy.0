Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C59BC64EC4
	for <linux-phy@archiver.kernel.org>; Fri,  3 Mar 2023 23:53:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9NeT5BB0Mqtyts+pvACdDhtyHg3Z9/sxZM95I+tZ6A=; b=puP6S16KotCC7Q
	sg/H6HRMgjoLe8RasT84jqZ8wi5ko+l0vC4mTJJBgQONS0xeqBVt6aafepIrNmTxmBNKu761F7qzL
	X0Z+HYmDBVDACrlXqiUHaOAs3AtqIJKoU1fGYNxOxgUhP6Rmw1lTMuUBXFLsKdCcRVnMPqcRHXT4N
	8EYuf8kB4q1e0EukJnCF4G60QKVmqTRxYFcbQjmM7ssWBUbUASh+gDjK9gciCCsTtS9hCZbVbtJkD
	mITp5hAyebMmH0YGq5z9KRvBRMrVrlU8lR1IATaQxR7SCAMooKZqYLkW+z6o2JCwSipmQGOtv3+Du
	a3zkIWW4DyaqupSlRXrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYFDT-007qe3-Nl; Fri, 03 Mar 2023 23:53:35 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYFDJ-007qaG-HW; Fri, 03 Mar 2023 23:53:26 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id D2874B819A2;
	Fri,  3 Mar 2023 23:53:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4363BC433EF;
	Fri,  3 Mar 2023 23:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677887602;
	bh=f0VZGTA8oOnAaMkfwB2QB6pLFSy4sdHSrlgXIOshidI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pPg3aquMyk8quzI4S98uu90F22x1h3GOUJkYSghdVqGCJWF1TcwvUvWST3RzZWK8w
	 rCHK+YOBvoipN8b1QlvOUPK4vO5E/mokaSvQZlqqbSQfxWi4p8/N8sCxNVmAKrrdaq
	 L+h0LZD50TpI9OyO6nPzyLw7uPq/6Cx03FTFrpn19RzgmE50c7c89ik0FdARIV8cMi
	 B0WVX0zjm5XxcDVW0ukFs/6w+rp0DSh3l+3DzO5WLU6q9CluToYJP5DDIEiJz6y69+
	 oV+Adjksmu9f6MgqJwE49S/CHR61kap4SKD/E7xE5SEzkMpjz6rvoI+mZwuszZRkkE
	 5pyD+qJFcUj2w==
Date: Fri, 3 Mar 2023 15:53:20 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Stephen Boyd
 <sboyd@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, "David S.
 Miller" <davem@davemloft.net>, Rob Clark <robdclark@gmail.com>, Abhinav
 Kumar <quic_abhinavk@quicinc.com>, Dmitry Baryshkov
 <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, Thomas Gleixner
 <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Eric Dumazet <edumazet@google.com>, Paolo Abeni
 <pabeni@redhat.com>, Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit
 <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham
 I <kishon@kernel.org>, Mark Brown <broonie@kernel.org>, Conor Dooley
 <conor.dooley@microchip.com>, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, dri-devel@lists.freedesktop.org,
 freedreno@lists.freedesktop.org, linux-media@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-riscv@lists.infradead.org,
 linux-spi@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: yamllint: Require a space after a comment
 '#'
Message-ID: <20230303155320.5e394431@kernel.org>
In-Reply-To: <20230303214223.49451-1-robh@kernel.org>
References: <20230303214223.49451-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_155325_773095_1977A89C 
X-CRM114-Status: GOOD (  12.13  )
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

On Fri,  3 Mar 2023 15:42:23 -0600 Rob Herring wrote:
> Enable yamllint to check the prefered commenting style of requiring a
> space after a comment character '#'. Fix the cases in the tree which
> have a warning with this enabled. Most cases just need a space after the
> '#'. A couple of cases with comments which were not intended to be
> comments are revealed. Those were in ti,sa2ul.yaml, ti,cal.yaml, and
> brcm,bcmgenet.yaml.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Jakub Kicinski <kuba@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
