Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40D91C001B5
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 15:32:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W2pWw3I/m77OEdnZ4FNTUPH5I7HgJCQtQiVqlB3yGt4=; b=cCPrV3y/hkwHaI
	PQeQGyFYbhrETD1WKLjhfisnPz3HBUOf21Jdq7qiAJUqk8ooqEnKVbCjzVlNFjSL4P4EBrxpxB9VK
	kJaN4A9J9TPrg27A+g5tSfaGg3IPYLZLR6uLyYmHKasCZS9OO6zHuoHzY8J5uepD92PQ1xCrEGYPI
	q9md7Ve2e1Su7aeowotGbkeBcS+yXHFKsMFJKAzHvtX4Au++1wqeD6Ix+iK0phBloxiJ4RZUUQj2q
	PVOmhblhG8QH81tniO4d0TJXh2DDx0HzxBIdA5x6kWmlmE+PhMaw7pZYbvtzGZeG5caJyDyIlXGY4
	54OubLqV/kTOCZn9QOzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU8ew-006EPX-3X; Fri, 02 Sep 2022 15:32:42 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU8es-006ELW-8c
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 15:32:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id C00C3B82C49;
	Fri,  2 Sep 2022 15:32:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F9A7C433C1;
	Fri,  2 Sep 2022 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662132754;
	bh=TMf3BdVjVegUTft/oEa9DfSLI5AQyabpvORb5mYeuGs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eiM20zqheXI9sFvq5bgtdWwDfp4rt6e0mQSxFwywe8XpgD7Y3g9HtJWbfPksR2CzN
	 mDZyJtOPhHhcZyTSat9lGgf1gHm0fVPMR2GJJwXuEXSn8UXMu7UZAzmGtDegHD7NB1
	 QiOQajBMDlB4RhnU5MIxTKdddgZIkNLoBsgXnBrpPXrQHSr3g72p1O2vjEmAP1ZwOz
	 DuWGDaLwnI4YeYcYXz06N495w84STz6dGowwLhiU8Sr85AZ0Eqy3AiLvkiJMJOYbLr
	 I/AVQcjE4WSRfZ3lom/1jChAzLHcXTSgdOXCAbieMPxxBerMeTpirUGz2JQv3CFouK
	 QMACQUMkcUHYw==
Date: Fri, 2 Sep 2022 21:02:29 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Vincent Shih <vincent.sunplus@gmail.com>
Cc: kishon@ti.com, p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org, wells.lu@sunplus.com
Subject: Re: [PATCH v5 0/2] Add USB2.0 phy driver for Sunplus SP7021
Message-ID: <YxIiDfNWnT7vfKb6@matsya>
References: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1658717052-26142-1-git-send-email-vincent.sunplus@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_083238_532326_EFADC9C9 
X-CRM114-Status: UNSURE (   9.35  )
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

On 25-07-22, 10:44, Vincent Shih wrote:
> This is a patch series for USB2.0 phy driver for Sunplus SP7021 SoC.
> 
> Sunplus SP7021 is an ARM Coretex A7 (4 cores) based SoC. It integrates
> many peripherals (ex: UART, I2C, SPI, SDIO, eMMC, USB, SD Card and
> etc.) into a single chip. It is designed for industrial control.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
