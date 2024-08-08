Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8A737C52D7B
	for <linux-phy@archiver.kernel.org>; Thu,  8 Aug 2024 16:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nR5oQK0FDux/daFGi0xWRXH7b8jHXxD0jtQjY7uPULo=; b=2k7Ht7lW4O85e4
	kGDqkGOp1/lB5Awjd50MPJTVxleVAPZtMmbHvM1058qe5ycf2J2s3T2bJjTVv+Ym2TO7fTgKZCS5F
	FxnX6vC9VjV9triSU8dtemRb8/vU12ok4TsRDJQy2Q+h1aIhUgjrorZbkMHZoppSl1sMiFt4kps2+
	YeSry8zgEpk7MeQc+X32MR6j8Mr72EDW4HJWtqAq5xt09qk6SIw9zr1qPzFMHwqEReqiOHFLhH0kR
	lCOyHgJ5LR7/tm3RKyEgAu2XdDwSV3emEbu8F0fJI9V4KAAF8/hpjJy5YtrU/3JDnoacpfcNE2qYV
	qWSm3euuWAjuo1qFgQlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6By-00000008yXc-0aVG;
	Thu, 08 Aug 2024 16:40:46 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sc6Bv-00000008yW4-2QHx
	for linux-phy@lists.infradead.org;
	Thu, 08 Aug 2024 16:40:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 05BD360DDF;
	Thu,  8 Aug 2024 16:40:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F98DC4AF09;
	Thu,  8 Aug 2024 16:40:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723135242;
	bh=GabQLabEhyqsEdXaRUGJtB8v7uR1Pxm6GPCYYfNZLEY=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=gvzjGSu87QOZpXsgGWPIkVpIp2PL3nctHlUORkTsUpyYlsCkYW8JdV/QHjHwK9LWr
	 tLQu8aH4ZcclV5rTVcmxJA77+fywVIcQBvxLyl9v3oMEx4c9NuwDdt7P63hM1RM73O
	 hC2r9ZmrMFcAhrAZo3lZvwTx0NncMb07ZTRGWoy/aYWa01xrbjT8CPjWes6mJemuiX
	 FtGTuzP76De+mea2DjFZ6uCfIAUIUufLiKwonL8wAhTUw2XI+dy2JuASECR7XDXG+Q
	 vUrXtobIy/cX01oZOiv7ckcqxnmIFLXznvO6ithaisJTaH2leEMS+oisOalrKRW3Qo
	 N+/SMJpawJhmg==
Message-ID: <56a52c81-68de-438d-94ae-9decc799d824@kernel.org>
Date: Thu, 8 Aug 2024 18:40:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] dt-bindings: phy: ti,tcan104x-can: Document
 Microchip ATA6561
To: Conor Dooley <conor@kernel.org>, Ilya Orazov <ilordash02@gmail.com>
Cc: Marc Kleine-Budde <mkl@pengutronix.de>,
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Aswath Govindraju <a-govindraju@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 linux-can@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240807180210.1334724-2-ilordash02@gmail.com>
 <20240807180956.1341332-1-ilordash02@gmail.com>
 <20240807180956.1341332-2-ilordash02@gmail.com>
 <20240808-caucasian-cartridge-f728ed4982cd@spud>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <20240808-caucasian-cartridge-f728ed4982cd@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240808_094043_749637_CBB329B2 
X-CRM114-Status: GOOD (  10.14  )
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

On 08/08/2024 17:48, Conor Dooley wrote:
> On Wed, Aug 07, 2024 at 09:09:56PM +0300, Ilya Orazov wrote:
>> Microchip ATA6561 is High-Speed CAN Transceiver with Standby Mode.
>> It is pin-compatible with TI TCAN1042 and has a compatible programming
>> model, therefore use ti,tcan1042 as fallback compatible.
>>
>> Signed-off-by: Ilya Orazov <ilordash02@gmail.com>
>> ---
>>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
>>  1 file changed, 9 insertions(+), 4 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> index 79dad3e89aa6..f6f1fd843874 100644
>> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> @@ -14,10 +14,15 @@ properties:
>>      pattern: "^can-phy"
>>  
>>    compatible:
>> -    enum:
>> -      - nxp,tjr1443
>> -      - ti,tcan1042
>> -      - ti,tcan1043
>> +    oneOf:
>> +      - items:
>> +        - enum:
>> +          - microchip,ata6561
>> +        - const: ti,tcan1042
>> +      - enum:
>> +          const: ti,tcan1042
>> +          const: ti,tcan1043
>> +          const: nxp,tjr1443
> 
> The enum doesn't need the "const:s", just a "-", hence the bot
> complaining.

Plus indentation is broken, which is important for YAML. Before posting
the patch, please test it.

Please run `make dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).
Maybe you need to update your dtschema and yamllint.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
