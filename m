Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D4CBC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 18 Apr 2022 16:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLFwJ+ugo0OVbJp7bnq45Qhd1bwJZiZH0i+DwmD87+o=; b=RBIx6tKPokpDOl
	7FXshljzuLol+PqfOS5nUdYo/NAwaFuODh1rrYYoqRt9hA6pHD2+4lhNJ/5C3/d82QmTNlw/8NaM9
	emAIuCx3cGenn+GOD5Q2BSMApgDATqRbxno37l2ZUaUIwldkx00owau40fJn0cjcs8fsAXFqrX/Jy
	Ag4jg90e0aPycb+u2SWvJDOGw4EMVC7nRqePIcRcg3r4fdZHOV09betyAY/2VEymLpYpcQWfMVSqx
	04oHmIr9XVnJWsdkFk3V1rCaANbHlW3xubK94TO7dooPkyWvGgrjsyqKFxmop2trLslpb4c1o8UfW
	BP2EzDx6NR38NpfiF24Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngUgh-000BKH-1A; Mon, 18 Apr 2022 16:57:19 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngUc2-0008ls-1N
 for linux-phy@lists.infradead.org; Mon, 18 Apr 2022 16:52:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id A2B91B8104D;
 Mon, 18 Apr 2022 16:52:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A77EC385AB;
 Mon, 18 Apr 2022 16:52:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1650300747;
 bh=FqA87CXgaTYslJKT4j5d//cmzCdvUZXSeGEszJTZZjk=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=MrkJSukFcEJ1Zk/lIRC80aIrInKZSSpKqmq0u5QlxlZaTrIQD21v5v5gzfcGmCjep
 ct6C7k7YyDekrWeXPAPWEaTd5TpLHVNFCwo3/NBmqVf5G6baM2QNZCL9pRaK63cHR2
 X8ZbexAFAFgFgzYYGNrk5TuH1uxiswgGzL02Zre2U2DEAQoRVZ7EdWNC3Rn8n2csaS
 efFeAva1gSESCMNUSVVhLP7ZbK3dTXPIdrEfFWdHfvYCFc6b5b3WPBvjtHRVvXmYTl
 5lFEitQ/UCkh4zgieGEr1NVM9/JvlDzpIyvziiZNerRVaEWxLssdJiH1ajii+02gki
 uwvC9Jg/Oz0iw==
Message-ID: <4a6dd90c-3f8e-ad18-0136-88b75f4d9cf9@kernel.org>
Date: Mon, 18 Apr 2022 18:52:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 0/5] Add support for Axis, ARTPEC-8 PCIe driver
Content-Language: en-US
To: wangseok.lee@samsung.com, robh+dt <robh+dt@kernel.org>,
 krzk+dt <krzk+dt@kernel.org>, kishon <kishon@ti.com>,
 vkoul <vkoul@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 "jesper.nilsson" <jesper.nilsson@axis.com>,
 "lars.persson" <lars.persson@axis.com>
Cc: bhelgaas <bhelgaas@google.com>, linux-phy
 <linux-phy@lists.infradead.org>, linux-pci <linux-pci@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>,
 "lorenzo.pieralisi" <lorenzo.pieralisi@arm.com>, kw <kw@linux.com>,
 linux-arm-kernel <linux-arm-kernel@axis.com>, kernel <kernel@axis.com>,
 Moon-Ki Jun <moonki.jun@samsung.com>, Dongjin Yang <dj76.yang@samsung.com>
References: <CGME20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p4>
 <20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p4>
From: Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <20220418072049epcms2p463a9f01d8ae3e29f75b746a0dce934f1@epcms2p4>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220418_095230_455050_9F4C4B32 
X-CRM114-Status: GOOD (  26.84  )
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

On 18/04/2022 09:20, Wangseok Lee wrote:
>>> Also, as you know,
>>> exynos driver is designed according to exynos SoC platform,
>>> so both function and variable names start with exynos.
>>
>> That's hardly a problem...
>>
>>> Compared to the existing exynos driver, 
>>> you can see that the structure and type of function are different.
>>
>> No, I cannot see it. You coded the driver that way, you can code it in
>> other way.
>>
>>> For this reason, it is difficult to use the existing exynos driver 
>>> for artpec.
>>
>> Naming of functions and structures is not making it difficult. That's
>> not the reason.
>>
>>> Our idea is to register a new PCIe driver for artpec-8 SoC platform 
>>> and maintain it in the future.
>>
>> We also want to maintain Exynos PCIe driver in the future.
>>
>> Best regards,
>> Krzysztof
> 
> Hi, 
> Sorry for delay response.

Sure, happens, but I don't remember the discussion, so replying that
late will not help your cause.

You know that if you (you as Samsung) worked with upstream, e.g. by
extending the drivers and keeping them in shape, it would be much easier
for you (again you as Samsung) to actually add new features? It's much
better/effective approach than the path of pushing every time new driver
with explanation like "we do not want to maintain older driver, so we
want a new one"...

> I have listed some parts that are different from exynos pcie driver.
> 
> PHY driver
> PHY is different, so register map is also different.
> Three reference clock options are available in ARTPEC-8.
>   It operates by selecting one clock among XO, IO, and SOC PLL.
>   However, the exynos phy driver sets one ref clk though sysreg.

It usually trivial to code such difference in the driver.

> The reset method and type of PHY for initialization are different.
> The overall sysreg configuration is different

Indeed.

> Artpec-8 requires a separate sequence for phy tuning,
> but it does not exist in exynos phy driver.
> Artpec-8 requires pcs resources, but exynos phy driver does not exist.
> 

For the phy driver indeed it might require much effort to create one driver.

> Controller driver
> Sub controller is different, so register map is also different.
> And it is different handles lane control, link control, PHY clocking,
> reset, interrupt control. 
> The number and type of clock resources used are different.
> The overall sysreg configuration is different
> 
> Also artpec-8 is performed in dual mode that supports both RC and EP.
> As described above, the PHY and sub ontroller are different
> and the regiser map is different.
> sysreg is also different. And there are differences such as reset.
> The driver will be much more complicated if both hardwares should be
> supported in the same driver.

Maybe, quite probably. The reluctance to extend any existing code makes
me doubting this, but I admit that there are many differences.

> For these reasons, my opinion is that better to create
> a phy, controller both driver with a new file.
> Please let me know your opinion.

At the end it's mostly the decision of PCIe and phy subsystem
maintainers whether they want to have separate drivers for DWC PCIe
blocks in ARMv8 Samsung SoCs.

In any case, the driver code looks like copied-pasted from some vendor
sources, so you need to bring it to shape.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
