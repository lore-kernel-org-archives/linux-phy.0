Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1FB4CC433F5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Nov 2021 04:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:CC:To:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hFO3ZwfXogmxy30Eum+/8Lo7qEhXB4FqiW+eAkEI6CE=; b=K+jCIKKBuUgPn9F1KFldE/3et0
	T2GriGIo+BBcjqS1HmonCC5uOGGhtFwwroSfwY74mJkqWV/Z+iOlPW5Q3VQFWZupujMEIrd3XC7oP
	HNaODA9yA1aAI/k7+RaE0RLpsflC8cmhID20BYzaSgmpwu2eBZlqyi4GEIN/4PkBua6yq8l3OMas9
	8brcfxn7Tkk0b24D9ftEdbmo51YMYEkEknB9rrtba5NUQjIDyFzSgmBtYxS+io7WWjXSx0Ek7WVO8
	+7peF0jmSgOyst7MQ3Pq1+z5nga+KwJC/THBRzbXCG3/QGDi3VgaIYjGyQ4L0RcQF3CvaDgOovGd+
	ab6neM2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mrYPU-00HOGn-Bg; Mon, 29 Nov 2021 04:37:00 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mrYPK-00HOGE-EK
 for linux-phy@lists.infradead.org; Mon, 29 Nov 2021 04:36:52 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 1AT4aZVA103393;
 Sun, 28 Nov 2021 22:36:35 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1638160595;
 bh=T5ua16ilPFMaScWb+OoNmTXhxlYu6YduhMgRmagewJU=;
 h=From:Subject:To:CC:References:Date:In-Reply-To;
 b=Dql1PpzBGgHWPkere5NpJg6Vl1zEgoP5jH+keEuopHBBoh/cnvRsTQHBkDJKOBnW3
 SIaBmnUNxTX/R3ssF28leIIXM0XiUDGY6tYBokPdQTNi4TuBU5ZnFCBIpznPwWLGVS
 rPQgBgzSp21BcQZT3BxxIEjDapCY4eGQDiraEJ94=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 1AT4aZw6033420
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 28 Nov 2021 22:36:35 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Sun, 28
 Nov 2021 22:36:35 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Sun, 28 Nov 2021 22:36:34 -0600
Received: from [10.250.232.185] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 1AT4aVaE061174;
 Sun, 28 Nov 2021 22:36:31 -0600
From: Aswath Govindraju <a-govindraju@ti.com>
Subject: Re: [PATCH RFC v3 1/4] dt-bindings: mux: Increase the number of
 arguments in mux-controls
To: Peter Rosin <peda@axentia.se>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Rob
 Herring <robh+dt@kernel.org>, Wolfgang Grandegger <wg@grandegger.com>, Marc
 Kleine-Budde <mkl@pengutronix.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-can@vger.kernel.org>, <linux-phy@lists.infradead.org>
References: <20211123081222.27979-1-a-govindraju@ti.com>
 <20211123081222.27979-2-a-govindraju@ti.com>
 <24781209-928b-dea4-de0b-b103dac8de82@axentia.se>
Message-ID: <5f455c4d-5edb-4382-1193-a519a7a227a5@ti.com>
Date: Mon, 29 Nov 2021 10:06:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <24781209-928b-dea4-de0b-b103dac8de82@axentia.se>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211128_203650_621681_3CBA23B3 
X-CRM114-Status: GOOD (  36.26  )
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

Hi Peter,

On 25/11/21 7:05 pm, Peter Rosin wrote:
> Hi!
> 
> You need to have some description on how #mux-control-cells now work.
> The previous description is in mux-consumer.yaml and an update there
> is needed.
> 
> However, I have realized that the adg792a binding uses #mux-control-cells
> to indicate if it should expose its three muxes with one mux-control
> and operate the muxes in parallel, or if it should be expose three
> independent mux-controls. So, the approach in this series to always
> have the #mux-control-cells property fixed at <2> when indicating a
> state will not work for that binding. And I see no fix for that binding
> without adding a new property.
> 
> So, I would like a different approach. Since I dislike how mux-controls
> -after this series- is not (always) specifying a mux-control like the name
> says, but instead optionally a specific state, the new property I would
> like to add is #mux-state-cells such that it would always be one more
> than #mux-control-cells.
> 
> 	mux: mux-controller {
> 		compatible = "gpio-mux";
> 		#mux-control-cells = <0>;
> 		#mux-state-cells = <1>;
> 
> 		mux-gpios = <...>;
> 	};
> 
> 	can-phy {
> 		compatible = "ti,tcan1043";
> 		...
> 		mux-states = <&mux 1>;
> 	};
> 
> That solves the naming issue, the unused argument for mux-conrtrollers
> that previously had #mux-control-cells = <0>, and the binding for adg792a
> need no longer be inconsistent.
> 
> Or, how should this be solved? I'm sure there are other options...
> 


I feel that the new approach using mux-state-cells seems to be
overpopulating the device tree nodes, when the state can be represented
using the control cells. I understand that the definition for
mux-controls is to only specify the control line to be used in a given
mux. Can't it now be upgraded to also represent the state at which the
control line has to be set to?

With respect to adg792a, it is inline with the current implementation
and the only change I think would be required in the driver is,

diff --git a/drivers/mux/adg792a.c b/drivers/mux/adg792a.c
index e8fc2fc1ab09..2cd3bb8a40d4 100644
--- a/drivers/mux/adg792a.c
+++ b/drivers/mux/adg792a.c
@@ -73,8 +73,6 @@ static int adg792a_probe(struct i2c_client *i2c)
        ret = device_property_read_u32(dev, "#mux-control-cells", &cells);
        if (ret < 0)
                return ret;
-       if (cells >= 2)
-               return -EINVAL;

        mux_chip = devm_mux_chip_alloc(dev, cells ? 3 : 1, 0);
        if (IS_ERR(mux_chip))

And the following series should be compatible with it. If adg792a driver
is the only issue then would there be any issue with only changing it
and using this implementation?

Thanks,
Aswath




> Cheers,
> Peter
> 
> On 2021-11-23 09:12, Aswath Govindraju wrote:
>> Increase the allowed number of arguments in mux-controls to add support for
>> passing information regarding the state of the mux to be set, for a given
>> device.
>>
>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>> ---
>>  Documentation/devicetree/bindings/mux/gpio-mux.yaml       | 2 +-
>>  Documentation/devicetree/bindings/mux/mux-controller.yaml | 2 +-
>>  2 files changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mux/gpio-mux.yaml b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
>> index 0a7c8d64981a..c810b7df39de 100644
>> --- a/Documentation/devicetree/bindings/mux/gpio-mux.yaml
>> +++ b/Documentation/devicetree/bindings/mux/gpio-mux.yaml
>> @@ -26,7 +26,7 @@ properties:
>>        List of gpios used to control the multiplexer, least significant bit first.
>>  
>>    '#mux-control-cells':
>> -    const: 0
>> +    enum: [ 0, 1, 2 ]
>>  
>>    idle-state:
>>      default: -1
>> diff --git a/Documentation/devicetree/bindings/mux/mux-controller.yaml b/Documentation/devicetree/bindings/mux/mux-controller.yaml
>> index 736a84c3b6a5..0b4b067a97bf 100644
>> --- a/Documentation/devicetree/bindings/mux/mux-controller.yaml
>> +++ b/Documentation/devicetree/bindings/mux/mux-controller.yaml
>> @@ -73,7 +73,7 @@ properties:
>>      pattern: '^mux-controller(@.*|-[0-9a-f]+)?$'
>>  
>>    '#mux-control-cells':
>> -    enum: [ 0, 1 ]
>> +    enum: [ 0, 1, 2 ]
>>  
>>    idle-state:
>>      $ref: /schemas/types.yaml#/definitions/int32
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
