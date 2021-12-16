Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF4DC433F5
	for <linux-phy@archiver.kernel.org>; Thu, 16 Dec 2021 04:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:CC:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uZFMFPtORG4X5edeGb1PsQYuqHIt6CptQ1Az+DMBZrE=; b=g0Fj/MmKxghOlLmDzdqD8bPxxh
	9zzo1gPLLe7qOiAVpgpKJI+ahCcj9l204bcGX86lfAiVOw4Kkoy2vSfYJ1hEfo8xYj/NJ2X06xTbX
	Q11wZMorzB910jhCWgmNCiQhWlLfRrxurZQbSF2tS4sihEVVEyzna+r9c2SgeuvzPCKa2g2URI75R
	nUOTCWzQWs5IeOobpe0f9XWItJTzFYUBuRGxZVSNnVuWH/lX2EfRGY4C1k0XsoE+7K0QN9Eu4aI5D
	aoWhBaPlNmitBPZ2LQvKvM2SN3rFf03jM8hbJwHLqpa7H+LDKB3ffMdlyI8IjW/cdVGMHTeVDIYDZ
	kgAhb5dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxhw0-003WEf-6E; Thu, 16 Dec 2021 04:00:00 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxhvw-003WDz-6F
 for linux-phy@lists.infradead.org; Thu, 16 Dec 2021 03:59:58 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1BG3xfjK095343;
 Wed, 15 Dec 2021 21:59:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1639627181;
 bh=zpoz48vU+NXpI5ORSUjCOhF7WIek5PewEa1fLnVl0qY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=hX1iA9eZte85v8Sa4IDZm2x8B5SveNUrCqkMl65eojXE2f7tlOyeRtCMtAfS83IN3
 BcgG/BIxXO4StRNj+0nbi2mqdGxrKFV6NFqUsrmc0mZ3pnysostfeWDlZuzGjzrfNc
 HrtNmsbpn6H0ydi9WRnbI2FXi2Nb5iaalh4H1jfY=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1BG3xfUr055793
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 15 Dec 2021 21:59:41 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 15
 Dec 2021 21:59:40 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 15 Dec 2021 21:59:40 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1BG3xbJp049787;
 Wed, 15 Dec 2021 21:59:37 -0600
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,tcan104x-can: Document
 mux-states property
To: Rob Herring <robh@kernel.org>
CC: Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
References: <20211214142908.27940-1-a-govindraju@ti.com>
 <20211214142908.27940-2-a-govindraju@ti.com>
 <YbpSy0+x/SnTYUzb@robh.at.kernel.org>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <71c926f5-7dd5-b2c3-d31c-fbc7a3d553c4@ti.com>
Date: Thu, 16 Dec 2021 09:29:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YbpSy0+x/SnTYUzb@robh.at.kernel.org>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_195957_195892_1577A7EA 
X-CRM114-Status: GOOD (  22.07  )
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

Hi Rob,

On 16/12/21 2:10 am, Rob Herring wrote:
> On Tue, Dec 14, 2021 at 07:59:07PM +0530, Aswath Govindraju wrote:
>> On some boards, for routing CAN signals from controller to transceivers,
>> muxes might need to be set. This can be implemented using mux-states
>> property. Therefore, document the same in the respective bindings.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  .../devicetree/bindings/phy/ti,tcan104x-can.yaml       | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> index 6107880e5246..7b9216e43b58 100644
>> --- a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>> @@ -37,6 +37,15 @@ properties:
>>        max bit rate supported in bps
>>      minimum: 1
>>  
>> +  mux-states:
>> +    description:
>> +      mux controller node to route the signals from controller to
>> +      transceiver. Two arguments can be present depending on the
>> +      mux chip. If one argument is used then it represents the state
>> +      to be set on the mux-chip. If there are two arguments then the
>> +      first argument is the control line and the second argument is
>> +      its corresponding state to be set, on the mux-chip.
>> +
> 
> You are still describing how the mux-states works. What the cells 
> contain and how many are opaque to this binding. Here you need to 
> describe how many muxes you have and what they are controlling as that 
> is what is specific to this binding. If there is only one, this boils 
> down to 'maxItems: 1'. It's just like reg, interrupts, clocks, etc.
> 


Got it. Thank you for the clarification. Amending the description to the
following,

  mux-states:
    description:
      mux controller node to route the signals from controller to
      transceiver.
    maxItems: 1

Thanks,
Aswath

>>  required:
>>    - compatible
>>    - '#phy-cells'
>> @@ -53,4 +62,5 @@ examples:
>>        max-bitrate = <5000000>;
>>        standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
>>        enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_HIGH>;
>> +      mux-states = <&mux0 1>;
>>      };
>> -- 
>> 2.17.1
>>
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
