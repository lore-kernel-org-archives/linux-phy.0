Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF592FCC9D6
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 08:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ukwkXUHfbUF1kt0wLwZKbvuIuIvo7YtNfwR+qMP30Xg=; b=K0U9wieAZSIM4F
	FRTYr78F1GxVO/vtCitLv+T+y2mx6SWDHkuj5/TQPaajOtmjFQ+mdbHvzvGN3AvlHm1nXxbGEyXuv
	c29fLvZJfwB9JnFgAc3Z9l27f3Qn9qQ1SNIUrBezXSphnfvCIcDbX1glnpiChLjCI4LMqMCVk4FUA
	HA6pDThoEaIHYEHULMB/az3L69VoA4VgsWmmoirJbXLUAf/MINw2YFLaOo5c+QFo1aGmGmDyb1xDu
	y0/BMM2gxnKTRM8jYkoE4J+rXfJuGNE6ISxFOoS21baYsZnQf89wDtobBwkzw0fMqb4bRrJqFW4rx
	fMSkK5qPKu+kgxbx+XIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsmy-00000009004-30da;
	Tue, 10 Mar 2026 08:50:04 +0000
Received: from mail.cjdns.fr ([5.135.140.105])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzsmv-00000008zyo-3UN4;
	Tue, 10 Mar 2026 08:50:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8BF9328F482;
	Tue, 10 Mar 2026 09:49:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cjdns.fr; s=dkim;
	t=1773132597; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:content-language:in-reply-to:references;
	bh=khzxWHS6TgscUvNmyc8I0F7jSY9IeTFAgK8XNcri5xc=;
	b=O9ZQO2ScTAZMhu5ldgA1bipI2BOqUNnJpi0+xS6/SrlVm803fALQkFuEsdRXmrbTk5Q3EX
	cyJ+i+sPVTl+bePNqCw9xeqTy6Yj1nx+rhPS4K5nfQrb6wyvDNbSBeQk1E5dFWa6W5SLAs
	vZRomvnYElXC5Nc9yFk3HipJJkAc05+716tpWt71k4AkeLRosv0Bgn/uR//z3RkGuRxi7W
	Qn8DvL4KCRl979lSvRGFO92Ea3z45e+0mKaT/2uehqiyrPVP8dU2RW8jHO8i54YKo7YhuC
	dGc2sdNT1YTAFWi8u8eAntHyxUql2MhuO5T0hQjOF61PLylPE4kKzJiE7tyYsw==
Message-ID: <3235796a-4682-4eae-b3de-ca53aa49e303@cjdns.fr>
Date: Tue, 10 Mar 2026 09:49:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: [PATCH v2 5/8] dt-bindings: PCI: mediatek: Add support for EcoNet
 EN7528
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-mips@vger.kernel.org, naseefkm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 tsbogend@alpha.franken.de, ryder.lee@mediatek.com,
 jianjun.wang@mediatek.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, vkoul@kernel.org,
 neil.armstrong@linaro.org, p.zabel@pengutronix.de, matthias.bgg@gmail.com,
 angelogioacchino.delregno@collabora.com, nbd@nbd.name, ansuelsmth@gmail.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20260309131818.74467-1-cjd@cjdns.fr>
 <20260309131818.74467-6-cjd@cjdns.fr>
 <20260310-onyx-ibex-of-progress-fdf1bf@quoll>
Content-Language: en-US
From: Caleb James DeLisle <cjd@cjdns.fr>
In-Reply-To: <20260310-onyx-ibex-of-progress-fdf1bf@quoll>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_015002_073049_0F5C32B2 
X-CRM114-Status: GOOD (  12.59  )
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


On 10/03/2026 09:25, Krzysztof Kozlowski wrote:
> On Mon, Mar 09, 2026 at 01:18:15PM +0000, Caleb James DeLisle wrote:
>> Introduce EcoNet EN7528 SoC compatible in MediaTek PCIe controller
>> binding.
>>
>> EcoNet PCIe controller has the same configuration model as
>> Mediatek v2 but is initiallized more similarly to an MT7621
>> PCIe.
>>
>> Signed-off-by: Caleb James DeLisle <cjd@cjdns.fr>
>> ---
>>   Documentation/devicetree/bindings/pci/mediatek-pcie.yaml | 1 +
>> 	 1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
>> index 0b8c78ec4f91..57cbfbff7a31 100644
>> --- a/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
>> +++ b/Documentation/devicetree/bindings/pci/mediatek-pcie.yaml
>> @@ -14,6 +14,7 @@ properties:
>>       oneOf:
>>         - enum:
>>             - airoha,an7583-pcie
>> +          - econet,en7528-pcie
> Patch is heavily incomplete - why do you have variable number of clocks?
> 1, 2, 3 ... or 6 at the same time?
>
> Look at the rest of this file to understand what you need to write.

Thank you, sorry for missing that, will fix.

Caleb

>
> Best regards,
> Krzysztof
>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
