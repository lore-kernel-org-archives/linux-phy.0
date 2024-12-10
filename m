Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5CF2E7717F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Dec 2024 07:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r6CrIyoTlDK8Wi4NwM5adIGZvJC7lTg45R74zd96KPw=; b=AcSPn5UWzkLmcs
	xXD/OIMcxu5lfbXGlXDTgQ+ljOWLsHKoSJHgYndD3b1BucqyG6paIcVKW9KB2URQ6yDnWTku9qatf
	BARAr1diWxK72My9EZlOVuxpaY0uVWwX/XDSmPL3xNuSmzBpNIeKqWQg4mWEDjZZdi3+Is+g2pqHp
	n1N9+Ftz297hp95tHZrbMhgLp3m3E2hi4ysr/1jDnrlYHftwuNbfxD5P3nLInUXwagiX+FcTpav0N
	Leb73zN1Xrx+zuKtGIilsDlQKOJDTesJUFoNBrah5i+wE0w2HL/YHYuucSowl7H+NgFRDFRR1j0bh
	1qAXpr6M26R8+dmHmiMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuTC-0000000AWke-28Vu;
	Tue, 10 Dec 2024 07:15:46 +0000
Received: from mail.fris.de ([2a01:4f8:c2c:390b::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKuT9-0000000AWk0-1q0Z
	for linux-phy@lists.infradead.org;
	Tue, 10 Dec 2024 07:15:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 127F6BFB36;
	Tue, 10 Dec 2024 08:15:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fris.de; s=dkim;
	t=1733814933; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=mst8N9oqCKySqnU14m4tKZ3IBxjBlOpj8ZD3Z0xTpkY=;
	b=tcYaTV8XX827uzNpFpLkA5VE1o1llHp4vnuewxCPdt0GlIK9rV1BrFbwIJCZ6lbft/lpao
	7DREbmD3D2at69gkzTFMc/tK+qHfrAAoshlcKC0U7hNBDG1pAXkqNJ/xeU/mTqkNNnI/ek
	EOYc1lqLmkJ167mfUYVJyvwotanNEhoK1uAoIZ00wxm4eymBcOc5CAd3lXVxrhq2Ol4G+8
	+6eUJfaPIWSwWIGd9ghAB/tKJkaAlAGpWEzNalcgj9LzGxwmRPXx8IKjkYQwE9ALx7rpLU
	5vpNsEptKe2P5xlC/nLnnfixzIRwOfISrj3zS9zLH0S7Oufdbh8mb25Ux2TR4A==
Message-ID: <0a0af9f8-2903-4852-85ea-117410df595d@fris.de>
Date: Tue, 10 Dec 2024 08:15:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] Extending PLL LUT for i.MX8MP Samsung HDMI PHY
To: Kishon Vijay Abraham I <kishon@kernel.org>, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>
Cc: Dominique Martinet <dominique.martinet@atmark-techno.com>,
 Adam Ford <aford173@gmail.com>, Lucas Stach <l.stach@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
References: <20240910181544.214797-1-frieder@fris.de>
Content-Language: en-GB, de-DE
From: Frieder Schrempf <frieder@fris.de>
In-Reply-To: <20240910181544.214797-1-frieder@fris.de>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_231543_956287_4ECCEA75 
X-CRM114-Status: UNSURE (   7.54  )
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

Hi,

On 10.09.24 20:14, Frieder Schrempf wrote:
> This small series depends on Adam's series here [1].
> 
> The parameters have been determined using the script here [2] and validated by
> trying the modes on a Kontron BL i.MX8MP with a HDMI USB grabber.
> 
> [1] https://patchwork.kernel.org/project/linux-phy/cover/20240904233100.114611-1-aford173@gmail.com/
> [2] https://codeberg.org/fschrempf/samsung-hdmi-phy-pll-calculator/src/branch/main/pll.py
> 
> Frieder Schrempf (2):
>    phy: freescale: fsl-samsung-hdmi: Add references for calculating LUT
>      parameters to comment
>    phy: freescale: fsl-samsung-hdmi: Add PLL LUT entries for some
>      non-CEA-861 modes
> 
>   drivers/phy/freescale/phy-fsl-samsung-hdmi.c | 17 ++++++++++++++++-
>   1 file changed, 16 insertions(+), 1 deletion(-)

I want to kindly ask if there is any further feedback for this?

Thanks
Frieder

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
