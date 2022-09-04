Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53521ECAAD3
	for <linux-phy@archiver.kernel.org>; Sun,  4 Sep 2022 15:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/fE6oBx38JTjLJ7jlElCSSIK0l/wMcGsRxWYCMpzdwU=; b=zqg4IWfHdo9avW
	8QQNR6moF/K2HonDA4cUZEP1I8AB2sKdtQh7s6rBmVlYJsue+pjT4HCAOdlC9Hqqx6Rq4QrpLMCKd
	5APJn+ATjYSS6l6doNH26Csxq91hPfmKtBBiUikpIx2tNcGDFNlOzH69/Jkq8ZLqwQwGELIIBXoYQ
	Qp6Y5esAtMz4gLf1/15u0bXXo7XnKUoE5U6OMkkBC6RGAal3o52lPoKDGNiajbE53912/j/m3VEpf
	5a7vdaLFyEGGUAn9p2zWtXTlPipFBH/JqlGuZyZlwK00FMsAiA5WbsRCYOQ+TOJyHh40psRetE7JG
	EIKvcq0Q4Pm+vsTB+1iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrCb-007MJQ-Lj; Sun, 04 Sep 2022 15:06:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrCL-007M52-GY; Sun, 04 Sep 2022 15:06:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 6E50B60F12;
	Sun,  4 Sep 2022 15:06:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECDB6C433D6;
	Sun,  4 Sep 2022 15:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662303966;
	bh=Niy0Q405M64kGkzlMoXuNafwYqKU9in/fxE/E9TXjCs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MuHX8nXoPTcXqNje6icDT3+v6Z8P6msI4k5g5Uu4iWcrk3fayI+DKy882c3RHx27z
	 +WFVdzmBo1I9I2EPOftl2qVeJt2QYXFL94olfsV16x2A/tNSAZ8S4VvHiEtcurY5n1
	 hSCm2lsVQJ+cxMXLD8YRSr2zEYKXm87LUs1PF078SmVtxhW8ToJBpRnWjRdyOUWwFo
	 ijuqJtXH99ID0QlNUTQye/0PvWnnmLiq0fbw6IPJY6gS2dVEE1K9G9GprzM5dZvIeU
	 uIcW47yAqv3j4auV3DDjwIwFfU9xuGwlZwkhD6FmZPT6Z2Z/DMJ+iWdQuFWC+0cokk
	 EhYMYIAnRFeAw==
Date: Sun, 4 Sep 2022 20:36:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Frank Wunderlich <linux@fw-web.de>
Cc: linux-rockchip@lists.infradead.org,
	Frank Wunderlich <frank-w@public-files.de>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>, Peter Geis <pgwipeout@gmail.com>,
	Simon Xue <xxm@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	Shawn Lin <shawn.lin@rock-chips.com>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: rockchip: add PCIe v3 phy
Message-ID: <YxS+2gh8mCtevz1H@matsya>
References: <20220825193836.54262-1-linux@fw-web.de>
 <20220825193836.54262-2-linux@fw-web.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220825193836.54262-2-linux@fw-web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_080609_604515_BC9D36AE 
X-CRM114-Status: UNSURE (   7.74  )
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

On 25-08-22, 21:38, Frank Wunderlich wrote:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> Add a new binding file for Rockchip PCIe v3 phy driver.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
