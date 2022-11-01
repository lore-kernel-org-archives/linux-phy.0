Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CEC4C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Nov 2022 09:11:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lUuyRNHy5ZDh9UrGFoVp2kE/BRHrwO8cUZKyz3I0T0Q=; b=CKhxptX9MPUwKRkbfun8iSl679
	DkKG5WXoLSJjY9dH5O1WjKcdPcQXYqPvq/cDawWv12TeQezMiMQI/c2vlLI10NPNA6FTh/ZsF7Xm7
	1vnDFB4y0qZIeH5jipVvzPWw4d/9xbWkAJmYPLhBbiYPUtZ8uGkqMhc08LhWBU4htEpUunDhH90ox
	l9U/Bw78Wban0eKsNmsP7CRnxUOjcmfd7Pc7MI2LPSrJ/RKGXAIsVNfKxBicY+erlFoHNkMvbg+/p
	nQuJlT5RYrKaUEoE4SHk0cFOIcuvriksA7Gi02czInHtjLYWZXhIt2HJvtCsJ4hljx/ReKBeMOEsy
	E6epwCTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnIU-003V6t-Kj; Tue, 01 Nov 2022 09:11:02 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnIJ-003UxB-Lk; Tue, 01 Nov 2022 09:10:53 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 01 Nov 2022 18:10:50 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id 9ED3820584CE;
	Tue,  1 Nov 2022 18:10:50 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Tue, 1 Nov 2022 18:10:50 +0900
Received: from [10.212.156.238] (unknown [10.212.156.238])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id B561CB62A4;
	Tue,  1 Nov 2022 18:10:49 +0900 (JST)
Subject: Re: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node
 names in example
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
 <20221028193859.GA2188803-robh@kernel.org>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <0d7636f6-2c51-587d-1961-face98dfa056@socionext.com>
Date: Tue, 1 Nov 2022 18:10:49 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20221028193859.GA2188803-robh@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_021051_856923_4B04FFCF 
X-CRM114-Status: GOOD (  17.09  )
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

On 2022/10/29 4:38, Rob Herring wrote:
> On Thu, Oct 27, 2022 at 01:49:20PM +0900, Kunihiko Hayashi wrote:
>> The word "glue" is ambiguous for the controller node name. Should put
>> "sata-controller" instead of "ahci-glue" on the controller node.
>> And rename a phy node to "sata-phy".
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml  | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>> index a3cd45acea28..89b8b133777a 100644
>> --- a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> yaml
>> +++ b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
> yaml
>> @@ -117,14 +117,14 @@ additionalProperties: false
>>   
>>   examples:
>>     - |
>> -    ahci-glue@65700000 {
>> +    sata-controller@65700000 {
> 
> But is this really the SATA controller aka AHCI?
> 
> In cases where we don't have a standardized name, I don't think it makes
> sense changing node names from one non-standard name to another.

I see. This can't be named generic, so this change will drop.
And "sata-phy" in the same way.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
