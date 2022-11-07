Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B026C433FE
	for <linux-phy@archiver.kernel.org>; Mon,  7 Nov 2022 02:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWpCgYftZsRuBX8RHQN/g0EhndS8pOpQjW/7TjErCK8=; b=jz56Rg7CvvqbZP
	PmboSkGurWGIv8Zh2nURaKdOc1P5ednf7hn0p7k3k1D28jR+AaYGuOiryDBhz07mvvXKaq8jqqrAn
	ywvwMRh1ZI2QKzv44rLDx1ZLnVcSg7jNyMmFH3wtPJFx78p20wBzHsFu7/NKVBuV4WNtGr+EedAbl
	L/JmoLMNDChLMG3UXwWcpvdIEonRbeiksBj6V5YhcjwO0iBjBtQw3FQ0fZ+FMMC+56EZrggs7md63
	kFuzCoBOqxbJkuiYNb0f3hnRz3twB/G66A13V5Plzd2JUqKXPNXo9rwIShPc1Q137IfkI17EsQUuD
	wv2Byb1Tj0t6a3vf+LKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ors0S-00BAK9-LN; Mon, 07 Nov 2022 02:37:00 +0000
Received: from mx.socionext.com ([202.248.49.38])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ors0I-00BAIq-7y; Mon, 07 Nov 2022 02:36:52 +0000
Received: from unknown (HELO iyokan2-ex.css.socionext.com) ([172.31.9.54])
  by mx.socionext.com with ESMTP; 07 Nov 2022 11:36:44 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
	by iyokan2-ex.css.socionext.com (Postfix) with ESMTP id A4D0020584CE;
	Mon,  7 Nov 2022 11:36:44 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP; Mon, 7 Nov 2022 11:36:44 +0900
Received: from [10.212.157.112] (unknown [10.212.157.112])
	by kinkan2.css.socionext.com (Postfix) with ESMTP id 3140EB62A4;
	Mon,  7 Nov 2022 11:36:44 +0900 (JST)
Message-ID: <c699e361-a8a3-c6d3-9db4-1e1d07fc6b5b@socionext.com>
Date: Mon, 7 Nov 2022 11:36:43 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] dt-bindings: phy: Fix UniPhier SATA controller node
 names in example
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221027044920.23194-1-hayashi.kunihiko@socionext.com>
 <20221027044920.23194-3-hayashi.kunihiko@socionext.com>
 <20221028193859.GA2188803-robh@kernel.org>
 <0d7636f6-2c51-587d-1961-face98dfa056@socionext.com>
 <CAL_Jsq+8Rm9v4megza14JPyamV-9Yr4iAa5r+HhM6qtdHRWEBw@mail.gmail.com>
 <07155116-2027-2916-5a39-e4dff8298b27@socionext.com>
 <Y2YSGDOXpRQ8MIoR@matsya>
Content-Language: en-US
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
In-Reply-To: <Y2YSGDOXpRQ8MIoR@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_183650_444973_8DE992F9 
X-CRM114-Status: GOOD (  17.81  )
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

Hi Vinod,

On 2022/11/05 16:34, Vinod Koul wrote:
> On 02-11-22, 08:14, Kunihiko Hayashi wrote:
>> On 2022/11/02 4:31, Rob Herring wrote:
>>> On Tue, Nov 1, 2022 at 4:10 AM Kunihiko Hayashi
>>> <hayashi.kunihiko@socionext.com> wrote:
>>>>
>>>> Hi Rob,
>>>>
>>>> On 2022/10/29 4:38, Rob Herring wrote:
>>>>> On Thu, Oct 27, 2022 at 01:49:20PM +0900, Kunihiko Hayashi wrote:
>>>>>> The word "glue" is ambiguous for the controller node name.
> Should put
>>>>>> "sata-controller" instead of "ahci-glue" on the controller node.
>>>>>> And rename a phy node to "sata-phy".
>>>>>>
>>>>>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>>>>>> ---
>>>>>>     .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
> | 4
>>>>>> ++--
>>>>>>     1 file changed, 2 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git
>>>>>
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>>>
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml
>>>>>> index a3cd45acea28..89b8b133777a 100644
>>>>>> ---
>>>>>>
> a/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
>>>>> yaml
>>>>>> +++
>>>>>>
> b/Documentation/devicetree/bindings/phy/socionext,uniphier-ahci-phy.
>>>>> yaml
>>>>>> @@ -117,14 +117,14 @@ additionalProperties: false
>>>>>>
>>>>>>     examples:
>>>>>>       - |
>>>>>> -    ahci-glue@65700000 {
>>>>>> +    sata-controller@65700000 {
>>>>>
>>>>> But is this really the SATA controller aka AHCI?
>>>>>
>>>>> In cases where we don't have a standardized name, I don't think it
> makes
>>>>> sense changing node names from one non-standard name to another.
>>>>
>>>> I see. This can't be named generic, so this change will drop.
>>>> And "sata-phy" in the same way.
>>>
>>> I think sata-phy is fine. It may not be added, but usb3-phy or
>>> pcie-phy are common already.
>> I understand. But of cource "phy" is also common, so I defer the change
>> from "phy" to "sata-phy".
> 
> Should it not be just phy@xxx does it really need to be foo-phy?

This change was pointed out in the previous review for our devicetree,
so I made this change in the devicetree, however, I think I can leave it
as "phy" until the properties that depend on "sata-phy" are defined.

Thank you,

---
Best Regards
Kunihiko Hayashi

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
