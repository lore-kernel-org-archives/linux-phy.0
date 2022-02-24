Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B561C433F5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Feb 2022 14:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZPSvWKFV7PawPj/v2o1mL3wFfENKNF5Jxb05MXaozj8=; b=AefkIwfVF5wo0q
	bprgh/IQp+hstA0oAKNxiJ3JqULx/IB1xZ4tOdIRCpbmdu2AyqwtEj593nzhqgQDvA1R51NOm/qkQ
	KyyRAJ3gK8YSe6j4Ljqj8nbjER0Lk0bLlxp2BU/WiVDBPEGZbVhcn9SwsWB3MUEv6U+XbxIeC1ESF
	HSSCtA+Sv07k0vtdxr9NM84bqH+G7dTmJbfNUOOidbX7a3g/FjsqkeOELqkyJOLMkvViXWfnhuIlk
	j8MD5lCWGk6tVmWvFljRSJ7vTyCGyODmEPVDOLzU296+Lj20X+ExhQrrFfouLSIsd5Cz6SaR1c+zV
	Mg2Vb0+3HgEB14TBxrTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNFMk-0019Kz-Gn; Thu, 24 Feb 2022 14:45:10 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNFMY-0019H7-KF; Thu, 24 Feb 2022 14:45:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 8015CB819FC;
 Thu, 24 Feb 2022 14:44:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82D17C340EC;
 Thu, 24 Feb 2022 14:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645713893;
 bh=lNcn+IdlDT0iCnlen6PL4o30r4n4CSddgB+J+wXxOLI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=TK6Vxvi0EBCwHTKwRiPp6/edCM35nF6hBq75phj0/eXIw+gO0sJjFeGiA8b9T2VhH
 +8d2zeMM/IbLMzvQKmCZyAkH8MDzPWYKQTJeI13rM5ASifrcTrpUQClRZWmpfdu6Ij
 pjqT4niJ7FqnBsaetRaV+bYrsgclP6aMEf9msZ07BjP6PKnn/D9adTBpRsFVcuUIwP
 ec66WQu3SqVkc+N9uJSPFgLvTgZUoXmKVrq9VdOSzDgvcFrPujebY99ypVRIoSJMsN
 Obnd81v0zLeMY5FsFZ+6qw4qc5qdUqzEnaEZspEyqGFue5P3LGfNaq+qs46O/GdLEm
 URvXoFT8GqVTw==
Date: Thu, 24 Feb 2022 20:14:49 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, jbx6244@gmail.com,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, kishon@ti.com,
 p.zabel@pengutronix.de, cl@rock-chips.com,
 kever.yang@rock-chips.com, lee.jones@linaro.org,
 wulf@rock-chips.com, david.wu@rock-chips.com
Subject: Re: [PATCH v8 0/4] Add Naneng combo PHY support for RK3568
Message-ID: <YheZ4XDX9kG8CocF@matsya>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_064458_881653_BF5FBAA0 
X-CRM114-Status: UNSURE (   6.84  )
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

On 08-02-22, 17:13, Yifeng Zhao wrote:
> 
> This phy can be used as pcie-phy, usb3-phy, sata-phy or sgmii-phy.

Applied 1-3, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
