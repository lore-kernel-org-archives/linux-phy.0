Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9EC37C4167B
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 12:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ha0HRwHn6PC3iGiuYBmDS48sPgooGXdBM+nBaBNqs8=; b=zQOk6j320Gk4Gm
	F5vjnHtQVg6qUY+8lCDj1qLd5MhbAE1WikBtj5WITKP4JdUl8k6RDvLHpcoma6YmDedWAIExASZPl
	agjV9TJCTHC/PNfz37ki/oPRngqbxQkAmR/DqKEAEPNWHryIv3Waljik3CfZBJVKD11eBx1g9dLjB
	mtvfYe+pQzxtQsqltS83WhpAB4ovZjUxL7k1AzpPxorIiUgXd3tOJNl6OugiRPqMIrG/yAnfHzaOn
	fnhXB2A7mANsoDrqFSh56B83OWJOCX3V9/T8LQ7b7MKMw6fkr8hVut3xkGYMwWWZOaNlSUiul2g9k
	blXmiUDmAlyd1XSLxbMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCffm-004swd-22;
	Mon, 11 Dec 2023 12:46:10 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCffZ-004stq-1M
	for linux-phy@lists.infradead.org;
	Mon, 11 Dec 2023 12:46:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CE3C7CE0EAC;
	Mon, 11 Dec 2023 12:45:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AF77C433C7;
	Mon, 11 Dec 2023 12:45:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702298754;
	bh=ivCyWneT5D6OkwTiQlgPLeM2KahqPmV3Dd/YkZIWR90=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=jT1k33/QV5lRpAC26Wj4WrI9G81GxHpd6PL453FHed6DtJ1fTqcGg5T+MqIajLKAU
	 2mEI9Bm58kocUf8KdQxEiUW4rRyg6OqCwrssHqhEB0zi3ZDOLiTTO7c4fHZvEbHQ8k
	 aljSSRFTvKzezgYXMg7RZyo7XZx5lX0IxuP+fJZnaVlU7MKW+kgkHjtalO8DcS5pWS
	 YBHHjGpjgHsnwsmRroAz/6wJix07j813rOyBk3MgYqHNvDlF/yGKAS9SF/PizVq3ER
	 pIRbVwKn5p7SKa3vjb0acrREigobmnz00UmTeX3NzYS0x2urW3go62JaQCxyNdyBvC
	 H2CYpMJ+y9S8w==
Message-ID: <13c7fa70-ec60-44a7-aba7-5c4b0e21a755@kernel.org>
Date: Mon, 11 Dec 2023 14:45:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: phy: cadence-torrent: Add second
 optional input reference clock
To: Conor Dooley <conor@kernel.org>, Swapnil Jakhade <sjakhade@cadence.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, mparab@cadence.com, s-vadapalli@ti.com
References: <20230724150002.5645-1-sjakhade@cadence.com>
 <20230724150002.5645-2-sjakhade@cadence.com>
 <20230724-unhappily-promptly-b25c7e42504d@spud>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <20230724-unhappily-promptly-b25c7e42504d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_044557_906689_2B98C7C7 
X-CRM114-Status: GOOD (  10.71  )
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

Hi Conor,

On 24/07/2023 20:53, Conor Dooley wrote:
> On Mon, Jul 24, 2023 at 04:59:58PM +0200, Swapnil Jakhade wrote:
>> Torrent(SD0801) PHY supports two input reference clocks. Update bindings
>> to support dual reference clock multilink configurations.
>>
>> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>
>> ---
>>  .../bindings/phy/phy-cadence-torrent.yaml     | 23 +++++++++++++------
>>  1 file changed, 16 insertions(+), 7 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> index dfb31314face..ddb86ee0cebf 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
>> @@ -33,16 +33,25 @@ properties:
>>  
>>    clocks:
>>      minItems: 1
>> -    maxItems: 2
>> +    maxItems: 3
>>      description:
>> -      PHY reference clock for 1 item. Must contain an entry in clock-names.
>> -      Optional Parent to enable output reference clock.
>> +      PHY input reference clocks (refclk & refclk1).
> 
> "refclk" and "refclk1" don't seem like great names. What is each one
> used for & should refclk1 be renamed to match its use case?

All PHYs need one refclk input. "refclk"
Some PHY variants can take a second refclk input. Both are refclks so it was
chosen to add an "1" to the name to the 2nd refclk.
Please suggest if you have a better idea. Thanks!

> 
>> +      Optional Parent to enable output reference clock (phy_en_refclk).
>>  
>>    clock-names:
>> -    minItems: 1
>> -    items:
>> -      - const: refclk
>> -      - const: phy_en_refclk
>> +    oneOf:
>> +      - items:
>> +          - const: refclk
>> +      - items:
>> +          - const: refclk
>> +          - const: phy_en_refclk
>> +      - items:
>> +          - const: refclk
>> +          - const: refclk1
>> +      - items:
>> +          - const: refclk
>> +          - const: refclk1
>> +          - const: phy_en_refclk
>>  
>>    reg:
>>      minItems: 1
>> -- 
>> 2.34.1
>>

-- 
cheers,
-roger

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
