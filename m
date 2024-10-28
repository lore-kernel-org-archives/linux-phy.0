Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47767D3399E
	for <linux-phy@archiver.kernel.org>; Mon, 28 Oct 2024 16:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mhrw8V4IZRHfBFPyyglgNdCF0lgwda4tiQ3YDodhcfA=; b=f8L0aEhjQ2xyWM8jNdFeh6ercg
	I9m+3/FKZ87fQcsDgc1ZRWoEIO7vfLB1aHt7ZJ/BhANaAGdZVvxqTPXuW+7crVv0YlMfraB0hJklq
	3nv0WXH0t9AZXynlWi3BWtRi2vOuqRGID6QGIIsuUt1YcBLaDPtJkiS8I+1nZ/59aYbFj4m3PZU6K
	42IVxJxFqke2cgqp2yZM9oVY7hmB1EHsj1ltySni4fqx8VKKaKgkv/u96xdnWVlK11P1EPODs/KgG
	P6wMViI3ZE2epWn0unOKT/4oXHi5HEx7A6D8E1t01w36ELif0RqZ9I2xkPKPKhTNDmOkeY0oCGdWV
	999JU/lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SkL-0000000BVp7-2ft8;
	Mon, 28 Oct 2024 16:37:37 +0000
Received: from thales.epochal.quest ([51.222.15.28])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SCn-0000000BPMq-06Wv;
	Mon, 28 Oct 2024 16:02:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=epochal.quest;
	s=default; t=1730131373;
	bh=sGz1MZtYtIAXCdIv2GYocDtQn9poOcj8dVPhnWb0PYY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gcagMSusHy1ACi/Ypcm2ButvGGg3WyRpHpAQ3vvktCAOaTDx+T7ghwQlXxq4XCn1a
	 GFxkunPHHdItCgFmDb7ca+o0t0L+mYL0oe/ykXK1M+kjt0yAh4X4qpQkQNyUYeG89U
	 O9ynTWBHiV0Nhf51J6mmMBO/0K9VkfnDYmvOD1ZphmQUefhT2vdKRxWtj8QamTcJ4A
	 pzaXixyp5eEE7BYZ2FGxlmQWVa18ggjr7LupZy6u7jvi84+udIbgkqgBDrziSZEzEy
	 NG3vqot4ywjU8hxFqPbwLi6nlHos29LkfCWmPHjbEZQD/gA+UVUg0acK5zy0GuX985
	 EoyOSwey4ogsQ==
X-Virus-Scanned: by epochal.quest
MIME-Version: 1.0
Date: Mon, 28 Oct 2024 13:02:50 -0300
From: Cody Eksal <masterr3c0rd@epochal.quest>
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, Nishanth
 Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>, Chen-Yu Tsai
 <wens@csie.org>, "Rafael J. Wysocki" <rafael@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-sunxi@lists.linux.dev, Yangtao Li
 <tiny.windzz@gmail.com>, Viresh Kumar <vireshk@kernel.org>, Kishon Vijay
 Abraham I <kishon@kernel.org>, linux-pm@vger.kernel.org, Andre Przywara
 <andre.przywara@arm.com>, Yangtao Li <frank@allwinnertech.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Linus
 Walleij <linus.walleij@linaro.org>, Parthiban <parthiban@linumiz.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Maxime Ripard
 <mripard@kernel.org>, linux-usb@vger.kernel.org, Samuel Holland
 <samuel@sholland.org>, Florian Fainelli <florian.fainelli@broadcom.com>,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Thierry Reding
 <treding@nvidia.com>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH 04/13] dt-bindings: usb: Add A100 compatible string
In-Reply-To: <20241027212253.GA98977-robh@kernel.org>
References: <20241024170540.2721307-1-masterr3c0rd@epochal.quest>
 <20241024170540.2721307-5-masterr3c0rd@epochal.quest>
 <173006354857.88418.13246529686874362124.robh@kernel.org>
 <20241027212253.GA98977-robh@kernel.org>
Message-ID: <e3c1d138f2916736dc2a825a0f431066@epochal.quest>
X-Sender: masterr3c0rd@epochal.quest
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_090257_180629_79C226B0 
X-CRM114-Status: GOOD (  10.77  )
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

On 2024/10/27 6:22 pm, Rob Herring wrote:
> On Sun, Oct 27, 2024 at 04:12:29PM -0500, Rob Herring (Arm) wrote:
>> 
>> On Thu, 24 Oct 2024 14:05:22 -0300, Cody Eksal wrote:
>> > The Allwinner A100 contains two fully OHCI/EHCI compatible USB host
>> > controllers. Add their compatible strings to the list of
>> > generic OHCI/EHCI controllers.
>> >
>> > Signed-off-by: Cody Eksal <masterr3c0rd@epochal.quest>
>> > ---
>> >  Documentation/devicetree/bindings/usb/generic-ehci.yaml | 1 +
>> >  Documentation/devicetree/bindings/usb/generic-ohci.yaml | 1 +
>> >  2 files changed, 2 insertions(+)
>> >
>> 
>> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> 
> Well, except that the compatibles should be alphabetical order.
Will be fixed in V2, thanks!
- Cody
> Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
