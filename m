Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D6607C282DE
	for <linux-phy@archiver.kernel.org>; Sun, 16 Mar 2025 17:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=caGbCuFxjY1XbUWYxh4Iqu4FAYyJmSwMI/+opWYNOjA=; b=D2YFbz+aoFYor0
	fcY9UqR6vvGw5zVwLxEKAhChxd1fcHV28V/rm1YbTPDXAn+4lhtWJoaYFuXgIxdASxmWKVxB/940w
	md4c5JxFkW7WYazQQp/BOJQ/OnrpsvUguauHCJDUKxZmPARRt4wEtcMuIVryoWh4MXb0Mxb8URYUc
	k4rK90AAkFxU3h77HWUzK5Vs2QCfsEVx5H4BbZXol97XFbwJb+2f5DqY5slRlZ5UdNH/Ia9v6JdMc
	oHlQGj3tZyorlBbfaDfMIjaMmyBxgftVL+4avdr2+6J9c3L3jxIe0eOJtfUG78lwaJYjUtSQv6IVj
	toEf2uUYs1gK27/u4f8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ttreY-00000000PcC-2a30;
	Sun, 16 Mar 2025 17:19:58 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ttreW-00000000Pbr-25WS
	for linux-phy@lists.infradead.org;
	Sun, 16 Mar 2025 17:19:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D7AD8A48C27;
	Sun, 16 Mar 2025 17:14:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 742FBC4CEDD;
	Sun, 16 Mar 2025 17:19:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742145595;
	bh=aU5p9VZBVUIRGQ24zw6cC9rVZr9NfS1kV/DgNW+x3HY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=B3igTbEThuXfTKHdtACi9Er7XRwtqGPSEv09Eik8p7cCkQqzWHvwW8hlHYuKa+311
	 XBCN6pjCWUBebeW48wIcnsCi9L/eHAl7v0sKSin7m/3Us+uVr0R0/1/6eRHDURetQS
	 7kODqzoJhq/A4W/w/zNcoV32O88VawC2MbiUusn9koTS7tlc/MeKptNUxQBcI/RY54
	 BJFJ8EtvrdQSHmgziMmpNQMod2aA1F7eN3O7UpgZztJAmyME8AlGmz80uIMEe/ZTPz
	 O3YCeDl6nFL8x3z/mmM5TSXqn3CBEIyZ7m0bysLs+UgINDBlCppPCcwa3YeBb/hTeY
	 UX90o/5tX7hOw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nitheesh Sekar <quic_nsekar@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Arnd Bergmann <arnd@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250314154915.4074980-1-arnd@kernel.org>
References: <20250314154915.4074980-1-arnd@kernel.org>
Subject: Re: [PATCH] phy: qcom: uniphy-28lp: add COMMON_CLK dependency
Message-Id: <174214559205.644495.6951036619496371457.b4-ty@kernel.org>
Date: Sun, 16 Mar 2025 22:49:52 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250316_101956_645559_B721C3B3 
X-CRM114-Status: UNSURE (   3.64  )
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


On Fri, 14 Mar 2025 16:49:10 +0100, Arnd Bergmann wrote:
> In configurations without CONFIG_COMMON_CLK, the driver fails to build:
> 
> aarch64-linux-ld: drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.o: in function `qcom_uniphy_pcie_probe':
> phy-qcom-uniphy-pcie-28lp.c:(.text+0x200): undefined reference to `__clk_hw_register_fixed_rate'
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): undefined reference to `of_clk_hw_simple_get'
> phy-qcom-uniphy-pcie-28lp.c:(.text+0x238): dangerous relocation: unsupported relocation
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x240): undefined reference to `of_clk_hw_simple_get'
> aarch64-linux-ld: phy-qcom-uniphy-pcie-28lp.c:(.text+0x248): undefined reference to `devm_of_clk_add_hw_provider'
> 
> [...]

Applied, thanks!

[1/1] phy: qcom: uniphy-28lp: add COMMON_CLK dependency
      commit: be8f23cebdb9546beb30ad15ff59130b66c8f2ac

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
