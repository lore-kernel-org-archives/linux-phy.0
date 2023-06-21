Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12F27C0015E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Jun 2023 17:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tWEA5kAnkdRO5AcUWMoYb3gyGZ8szGpiToJcsVFnejQ=; b=lwHO67AGEvnK8+
	Nmtqywjj0iAgR1aLu39rfb7cX0qpj1sVXr6kYXfGYoqYyxulmfVmhQsv7/zl12GK9EEArDdRxelnj
	H758Zd7ao66FD2ZJJFI0UPNH/hBb0NsbYt9fRe7rLoJh3AV9SJoSVFMEKdXPBgbzNlAQKFjWXDFE1
	qFT9trkE/INK0KrkBbKUakRch/66BbNamE+yYQuaCX0WQsSb9EohQpQBPFpHEG7LTLLigIpP797kV
	zqnxmWzSwix8oJRWz/bxN2U5iK61JDDXK3Pg1abtiuA52bAoErT4hHWh6CV770e2sR8n0e+s4K7Pq
	U8Q2DtL665mUMJeDRdUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1h4-00FEaH-1o;
	Wed, 21 Jun 2023 17:32:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC1h2-00FEZk-02
	for linux-phy@lists.infradead.org;
	Wed, 21 Jun 2023 17:32:33 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5ED9D615FF;
	Wed, 21 Jun 2023 17:32:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F215EC433C8;
	Wed, 21 Jun 2023 17:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687368750;
	bh=VfqGpYEIglQTk51i33OR5r1TFrQwDJbPB0c/7MTgQXU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lL5Wji/oNVr5PUKpng4sRLy9k9e/N1ftHA1H/u/QEfYMDF0txKa82VpDKcAWyENjq
	 9nFIxmUQ7OBdkawD4EgQTkdU0NN4WpeZkzIjDP76oY4AVYMD2Ve/9hScaIytGN5BD2
	 63jFjGe9ZIQBlCs2KzuYLE97Hv90ScP6yvHeyjp3lBHawrxbcIXXqzcaolcAHyUu20
	 RvVg5VUVR7oWBlnMjagDmW4se5Ij8db88LJB5ugxm2M7iT2tlHntQB51Dw55hhjoIb
	 69Yw7/LdTsDiPfDCzfXM2Ro0OAaZhHUdyOuQGIWEDkCugjRNycgeL8MQKN9AV3PIG2
	 8yytwf9fE/QwA==
Date: Wed, 21 Jun 2023 23:02:26 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
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
	Tony Lindgren <tony@atomide.com>,
	Oleksij Rempel <o.rempel@pengutronix.de>
Subject: Re: [PATCH 1/7] dt-bindings: phy: intel,combo-phy: restrict node
 name suffixes
Message-ID: <ZJM0Kh8+ZzfiFQlg@matsya>
References: <20230530144851.92059-1-krzysztof.kozlowski@linaro.org>
 <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230530144851.92059-2-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_103232_105993_7568AE83 
X-CRM114-Status: UNSURE (   9.00  )
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

On 30-05-23, 16:48, Krzysztof Kozlowski wrote:
> Make the pattern matching node names a bit stricter to improve DTS
> consistency.  The pattern is restricted to:
> 1. Only one unit address or one -N suffix,
> 2. -N suffixes to decimal numbers.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
