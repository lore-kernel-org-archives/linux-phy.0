Return-Path: <SRS0=Y3PQ=PR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24399C433EF
	for <linux-phy@archiver.kernel.org>; Fri, 29 Oct 2021 10:33:42 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D09A8610EA
	for <linux-phy@archiver.kernel.org>; Fri, 29 Oct 2021 10:33:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D09A8610EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=socionext.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjiGFcpFHzJEDZhpe9KN2cYZZT9u/DIbeSYSU0vHu68=; b=mA65OZn3wQYYR0eaVIFxXH+Or7
	YcKtz4TtrHAOR83ugYN7OXbDX0XvsAQtQ71kysY2c4O7x6EvwRLLcqHymeZsQLJpd3cgrbUgrHLCJ
	ELUwtLVRT6zP1fRXEj68PqYZXji1ZNk4meV0tzHrnB/pIs/cBacURo52P5pMiMC5aWtgSh+QWGXK3
	NTEPa8noYfO3YRYJDqBzLc6W/oF90EduK5HdQB27KXd7itFku/BbmO3oB5ulJx/6TR++xxF2HYNJz
	dQXrkNpjGxj0tb2DJSaTC2RCEFSwEuMt5x+Zcg8t/OBl86j5n3GznfWXLSBwV2PWsE8IMd+0lF29M
	/0cfFmbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgPCf-00Ac6V-Ce; Fri, 29 Oct 2021 10:33:41 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgPCQ-00Ac26-BZ; Fri, 29 Oct 2021 10:33:28 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 29 Oct 2021 19:33:22 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 3BABC207616C;
 Fri, 29 Oct 2021 19:33:22 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Fri, 29 Oct 2021 19:33:22 +0900
Received: from yuzu2.css.socionext.com (yuzu2 [172.31.9.57])
 by iyokan2.css.socionext.com (Postfix) with ESMTP id DAAC2B62AB;
 Fri, 29 Oct 2021 19:33:21 +0900 (JST)
Received: from [10.212.181.14] (unknown [10.212.181.14])
 by yuzu2.css.socionext.com (Postfix) with ESMTP id 6EA1EB6291;
 Fri, 29 Oct 2021 19:33:21 +0900 (JST)
Subject: Re: [PATCH v2 7/8] dt-bindings: phy: uniphier-ahci: Add bindings for
 Pro4 SoC
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1634687888-23900-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1634687888-23900-8-git-send-email-hayashi.kunihiko@socionext.com>
 <YXsSPm1SdvaeDwbq@robh.at.kernel.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <9db1cd5a-c4f0-a1d2-2681-e8c58ee540ee@socionext.com>
Date: Fri, 29 Oct 2021 19:33:21 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YXsSPm1SdvaeDwbq@robh.at.kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211029_033326_560062_FF9A5F67 
X-CRM114-Status: GOOD (  17.99  )
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
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Rob,

On 2021/10/29 6:12, Rob Herring wrote:
> On Wed, Oct 20, 2021 at 08:58:07AM +0900, Kunihiko Hayashi wrote:
>> Update AHCI-PHY binding document for UniPhier Pro4 SoC. Add a compatible
>> string, clock and reset lines for the SoC to the document.
>>
>> Pro4 AHCI-PHY needs to control additional GIO clock line and reset lines
>> ("pm", "tx", and "rx").
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   .../bindings/phy/socionext,uniphier-ahci-phy.yaml    | 20
> ++++++++++++++++----
>>   1 file changed, 16 insertions(+), 4 deletions(-)
>>
>> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> index 745c525ce6b9..67415f7ebe8c 100644
>> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> yaml
>> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> yaml
>> @@ -16,6 +16,7 @@ maintainers:
>>   properties:
>>     compatible:
>>       enum:
>> +      - socionext,uniphier-pro4-ahci-phy
>>         - socionext,uniphier-pxs2-ahci-phy
>>         - socionext,uniphier-pxs3-ahci-phy
>>   
>> @@ -30,6 +31,9 @@ properties:
>>   
>>     clock-names:
>>       oneOf:
>> +      - items:          # for Pro4
>> +          - const: gio
>> +          - const: link
> 
> Add new entries on the end...
> 
>>         - items:          # for PXs2
>>             - const: link
> 
> So add 'gio' here.
> 
> And add 'minItems: 1' in this entry.
> 
> There's also an error in 'clocks' as it needs 'minItems: 1'

I see.
I'll add "minItems: 1", and fix the item order.

> 
>>         - items:          # for others
>> @@ -37,12 +41,20 @@ properties:
>>             - const: phy
>>   
>>     resets:
>> -    maxItems: 2
>> +    minItems: 2
>> +    maxItems: 5
>>   
>>     reset-names:
>> -    items:
>> -      - const: link
>> -      - const: phy
>> +    oneOf:
>> +      - items:          # for Pro4
>> +          - const: gio
>> +          - const: link
>> +          - const: pm
>> +          - const: tx
>> +          - const: rx
>> +      - items:          # for others
>> +          - const: link
>> +          - const: phy
>>   
>>   required:
>>     - compatible
>> -- 
>> 2.7.4

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
