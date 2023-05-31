Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EBF3C77B7C
	for <linux-phy@archiver.kernel.org>; Wed, 31 May 2023 04:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9cNc7tMCmB35eVczydPtz+7GfyxvhTFPVem9wWrAOkU=; b=qTvf7DN29XgO9M
	sVhIKpTkqnXMRy5pWOfn9b5glOs4Yzzdy11Yee7iH/k2yskHIOw4Teq5LoCS1Lcyp4jJiQwn6XP4T
	K+R4kdw1JiFhr15ae9U/DTr8Om9KbDP7XKRH0p873F0ZoPYpv957Q4hVDQGgiBbIMK+EfBtCx45DR
	mjklk1vPNUlraNocIaSUSmtWFiFFochnKzkokDPAp7XH4lE5xXAjoYaKju4B0Ubi1Ozgplo7NToE9
	9wwNj43bdK//zW8H++jhOvN7QfPon0UDI2Uv6T3E/4i23DYxGA4nsKhd/vu0xe2UHCZIbhtP4WhdH
	Ni0YbUaj3Dkq/FkE6gTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4DQQ-00G2sx-2T;
	Wed, 31 May 2023 04:27:06 +0000
Received: from muru.com ([72.249.23.125])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4DQN-00G2sI-28
	for linux-phy@lists.infradead.org;
	Wed, 31 May 2023 04:27:04 +0000
Received: from localhost (localhost [127.0.0.1])
	by muru.com (Postfix) with ESMTPS id E585681A7;
	Wed, 31 May 2023 04:27:02 +0000 (UTC)
Date: Wed, 31 May 2023 07:27:01 +0300
From: Tony Lindgren <tony@atomide.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Mark Brown <broonie@kernel.org>, Dipen Patel <dipenp@nvidia.com>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Dilip Kota <eswara.kota@linux.intel.com>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
	linux-rtc@vger.kernel.org, alsa-devel@alsa-project.org,
	linux-spi@vger.kernel.org, timestamp@lists.linux.dev,
	linux-watchdog@vger.kernel.org, Rob Herring <robh@kernel.org>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH 1/7] dt-bindings: phy: intel,combo-phy: restrict node
 name suffixes
Message-ID: <20230531042701.GO14287@atomide.com>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_212703_756048_94EBAB78 
X-CRM114-Status: UNSURE (   8.09  )
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

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [230530 14:49]:
> Make the pattern matching node names a bit stricter to improve DTS
> consistency.  The pattern is restricted to:
> 1. Only one unit address or one -N suffix,
> 2. -N suffixes to decimal numbers.

Reviewed-by: Tony Lindgren <tony@atomide.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
