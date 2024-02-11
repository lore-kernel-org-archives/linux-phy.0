Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A57BCC4829B
	for <linux-phy@archiver.kernel.org>; Sun, 11 Feb 2024 18:55:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTvW6KEEzyIPchdfKSCZFB6ve1ZWpWkAFEIMyCC4Lqg=; b=zZY6PMZxsrxZBd
	F2vBge7j0hSkF0xHZfJ+jFD7mpkDi8StWUn23LrM0i7d4xLyC6fcN03wcxUO74gz+kONXQKG9+euV
	ViG92szkQMWSfuxHOA3xpKfeHtSnfRjBUZMNwxc8zFjD3YJuA+2a+m5/UV1dsySXTU4obiOFTmw/9
	avJUpSdHgt2xcg4okMSRulKIlElaTY1Q0dEtDfmCatHuO2o6PS8dVwiv4byMjAScLFKS+gPpC0+7t
	SJdeb1pigET7pe9Jj/Qyin78TUQro69HjK81vTKsFhyubw+mRU6a7pTz0wUItuuAiKETRMO7kIA8Z
	YHg9ryJ/MmFNqeX9cPYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEzD-00000003Aqe-1857;
	Sun, 11 Feb 2024 18:55:31 +0000
Received: from phobos.denx.de ([2a01:238:438b:c500:173d:9f52:ddab:ee01])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZEz8-00000003AmC-2x0K;
	Sun, 11 Feb 2024 18:55:28 +0000
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id A4EC98798F;
	Sun, 11 Feb 2024 19:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1707677724;
	bh=/1Fv1WUuurd4RZbD3EvEfTCQraflPLqv02/YWJiBxuU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=br8ilUVqmF5UIP7Ky3iDjZm8JmjXe4WK+gh1kzVoXH2xmu7tJq/yhJNGnR5Gk4mLh
	 Z1AfDilHevMlWGjSeAWJ1+fbvaVU86aqTAJ48ZZ8NpYfc6DyZ7zKQOvIvoZcRSiCuV
	 9aItKdBt2hu8jG1PS9e8lzHEp0s0ptV3fsgagYXzYSQhPN19tDL6+XamwD25dNrZjl
	 eQb0ASqxFEuLE0gxp0hs+nH965pfcKFgjyiFi0CGCMMyyJBZqm4BE3JwJOs3nmmHFc
	 T0M2oMwUrK637wZP02MeUm9Rugr8PJmvPvVBm4yhqs3jbI5YFBn88altQT8gvVX7v8
	 Qa2AdJkDzdpFA==
Message-ID: <c7d50bc9-d6fc-4dd6-9db5-e88fcb19a5b9@denx.de>
Date: Sun, 11 Feb 2024 19:51:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 3/6] arm64: dts: imx8mp: add HDMI power-domains
Content-Language: en-US
To: Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
Cc: aford@beaconembedded.com, Lucas Stach <l.stach@pengutronix.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240210204606.11944-1-aford173@gmail.com>
 <20240210204606.11944-4-aford173@gmail.com>
From: Marek Vasut <marex@denx.de>
In-Reply-To: <20240210204606.11944-4-aford173@gmail.com>
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_105526_957248_D378B01F 
X-CRM114-Status: UNSURE (   6.59  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 2/10/24 21:45, Adam Ford wrote:
> From: Lucas Stach <l.stach@pengutronix.de>
> 
> This adds the PGC and HDMI blk-ctrl nodes providing power control for
> HDMI subsystem peripherals.
> 
> Signed-off-by: Adam Ford <aford173@gmail.com>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Tested-by: Marek Vasut <marex@denx.de>

Thanks !

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
