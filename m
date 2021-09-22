Return-Path: <SRS0=p6f2=OM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 592B4C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 15:13:09 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA4B2611CA
	for <linux-phy@archiver.kernel.org>; Wed, 22 Sep 2021 15:13:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA4B2611CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kTAn3VtBIqUz8SEM/8j52WVwf6clyKi46xaWoksnQnE=; b=hWs8tq+5SXdPWHFHB3+4+Syb0o
	P4FUODPWRRqb5bi72UoSDl0NutcLLkJShnJebXkcd597g3s0DLRt9RGmmnSOCcKzpBBrzV+uI3JCB
	R/y7UWoW7DMEmxXO0dVJWdETwQ7goahAcySBVAryF6/9t48KZZ1K1fc7t0Ue0HfamquxyApAjxJoK
	snP46s5KHbEBVvRYis/KYniShZ/r0ZXAjZ6MiBvrb8abuV4eQUyyCyeYk+HLNQC5WogQlBrMhNlRu
	I/sdUhIib6r0YeQ3XQyrvnXLJjxPaz3T80zHy4cwdp0Npa3tvP6X8EDJks3iABW+LNOPfZW0JSJHd
	9Orl7e4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mT3vo-008ueB-Ax; Wed, 22 Sep 2021 15:13:08 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mT3vk-008udi-Ka; Wed, 22 Sep 2021 15:13:06 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 18MDOEjt004854; 
 Wed, 22 Sep 2021 17:12:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=selector1;
 bh=/afVz4BYbCv1QBc7A6yEnhYY48kiqJk/gkkg2SsTPoU=;
 b=rPsZh9FRAIAbjdVkSwuhlpCcsfhRNaBrstADCAP7i+ckqHaUBe2qvmZ+XdQfscGtnmzX
 G8XDwnEc/t1MIc890hMJ/v6w9qhOHgO6yrQReBJ6y3KTtZ1DkRD5r0NxiCC0Y+UizQef
 KfR7qA3D5qicszQe77pPzRwb3UI/SvnVkbh3cO3IYQYX9nLAWIpU5QV3c6RYVDEA7Pxa
 8WMYTMeYjuz9bTY6Z7xSf5aENFb4ea2j4ZlGe0s0TrLnQNJufgYCLFqqK5hyTygzXAlF
 6aQBN1LtEF3IzbWdf+azLH6n9cfbg5/vor3SMN1Ld4GGWH4Oz4K5GAeSpN+6xRyFvDtn dA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3b81gs28u1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Sep 2021 17:12:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 97FEE10002A;
 Wed, 22 Sep 2021 17:12:52 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 8ECBD240A33;
 Wed, 22 Sep 2021 17:12:52 +0200 (CEST)
Received: from lmecxl0995.lme.st.com (10.75.127.44) by SFHDAG2NODE2.st.com
 (10.75.127.5) with Microsoft SMTP Server (TLS) id 15.0.1497.18; Wed, 22 Sep
 2021 17:12:51 +0200
Subject: Re: [PATCH 2/3] dt-bindings: phy: phy-stm32-usbphyc: add
 st,phy-tuning optional property
To: Rob Herring <robh@kernel.org>
CC: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>,
 <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>
References: <20210914145256.243869-1-amelie.delaunay@foss.st.com>
 <20210914145256.243869-3-amelie.delaunay@foss.st.com>
 <YUpGr5riT3+YpWDv@robh.at.kernel.org>
From: Amelie DELAUNAY <amelie.delaunay@foss.st.com>
Message-ID: <059578c4-1930-5fcb-55ef-f9b3b514ed56@foss.st.com>
Date: Wed, 22 Sep 2021 17:12:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YUpGr5riT3+YpWDv@robh.at.kernel.org>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-09-22_05,2021-09-22_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210922_081305_091473_AE31524C 
X-CRM114-Status: GOOD (  32.71  )
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

Hi Rob,

On 9/21/21 10:55 PM, Rob Herring wrote:
> On Tue, Sep 14, 2021 at 04:52:55PM +0200, Amelie Delaunay wrote:
>> This patch adds the description of a new optional property for usbphyc phy
> 
> Looks like a lot more than a property.
> 
>> sub nodes. st,phy-tuning contains all phy tuning parameters to apply on the
>> phy.
>>
>> Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
>> ---
>>   .../bindings/phy/phy-stm32-usbphyc.yaml       | 68 +++++++++++++++++++
>>   1 file changed, 68 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
>> index 3329f1d33a4f..0fa184ea54db 100644
>> --- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
>> +++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
>> @@ -81,6 +81,60 @@ patternProperties:
>>           properties:
>>             vbus-supply: true
>>   
>> +      st,phy-tuning:
>> +        $ref: /schemas/types.yaml#/definitions/phandle
> 
> Looks like a node to me (type: object). But why is a node needed here?
> 

stm32-usbphyc has two phy/child nodes and each phy can be individually 
tuned.

Depending on the board layout, the tuning can be the same for each phy. 
The node here avoid to duplicate the tuning parameter in each phy/child 
node.

I was inspired by Documentation/devicetree/bindings/net/snps,dwmac.yaml, 
snps,axi-config for example.

>> +        description:
>> +          It can be necessary to adjust the PHY settings to compensate parasitics, which can be due
>> +          to USB connector/receptacle, routing, ESD protection component,... Here is the list of
>> +          all optional parameters to tune the interface of the PHY (HS for High-Speed, FS for Full-
>> +          Speed, LS for Low-Speed)
>> +            * st,current-boost, <1> current boosting of 1mA
>> +                                <2> current boosting of 2mA
> 
> Use standard unit suffix.
> 

Ok.

> All these need to be a schema, not free form text.
>

I'm not familiar with schema, could you please point me an example to 
follow?

>> +            * st,no-lsfs-fb-cap, disables the LS/FS feedback capacitor
>> +            * st,hs-slew-ctrl, slows the HS driver slew rate by 10%
> 
> Name the property such that it is self describing. 'slew control'
> doesn't say what it does to slew rate.
> 

Ok.

>> +            * st,hs-dc-level, <0> = decreases the HS driver DC level by 5 to 7mV
>> +                              <1> = increases the HS driver DC level by 5 to 7mV
>> +                              <2> = increases the HS driver DC level by 10 to 14mV
>> +            * st,fs-rftime-tuning, enables the FS rise/fall tuning option
>> +            * st,hs-rftime-reduction, enables the HS rise/fall reduction feature
>> +            * st,hs-current-trim, controls HS driver current trimming for choke
>> +                                  <0> = 18.87 mA target current / nominal + 0%
>> +                                  <1> = 19.165 mA target current / nominal + 1.56%
>> +                                  <2> = 19.46 mA target current / nominal + 3.12%
>> +                                  <3> = 19.755 mA target current / nominal + 4.68%
>> +                                  <4> = 20.05 mA target current / nominal + 6.24%
>> +                                  <5> = 20.345 mA target current / nominal + 7.8%
>> +                                  <6> = 20.64 mA target current / nominal + 9.36%
>> +                                  <7> = 20.935 mA target current / nominal + 10.92%
>> +                                  <8> = 21.23 mA target current / nominal + 12.48%
>> +                                  <9> = 21.525 mA target current / nominal + 14.04%
>> +                                  <10> = 21.82 mA target current / nominal + 15.6%
>> +                                  <11> = 22.115 mA target current / nominal + 17.16%
>> +                                  <12> = 22.458 mA target current / nominal + 19.01%
>> +                                  <13> = 22.755 mA target current / nominal + 20.58%
>> +                                  <14> = 23.052 mA target current / nominal + 22.16%
>> +                                  <15> = 23.348 mA target current / nominal + 23.73%
>> +            * st,hs-impedance-trim, controls HS driver impedance tuning for choke
>> +                                    <0> = no impedance offset
>> +                                    <1> = reduces the impedance by 2 ohms
>> +                                    <2> = reduces the impedance by 4 ohms
>> +                                    <3> = reduces the impedance by 6 ohms
>> +            * st,squelch-level, adjusts the squelch DC threshold value
>> +                                <0> = no shift in threshold
>> +                                <1> = threshold shift by +7 mV
>> +                                <2> = threshold shift by -5 mV
>> +                                <3> = threshold shift by +14 mV
>> +            * st,hs-rx-gain-eq, enables the HS Rx gain equalizer
>> +            * st,hs-rx-offset, adjusts the HS Rx offset
>> +                               <0> = no offset
>> +                               <1> = offset of +5 mV
>> +                               <2> = offset of +10 mV
>> +                               <3> = offset of -5 mV
>> +            * st,no-hs-ftime-ctrl, disables the HS fall time control of single ended signals
>> +                                   during pre-emphasis
>> +            * st,no-lsfs-sc, disables the short circuit protection in LS/FS driver
>> +            * st,hs-tx-staggering, enables the basic staggering in HS Tx mode
>> +
>>       allOf:
>>         - if:
>>             properties:
>> @@ -122,6 +176,18 @@ examples:
>>     - |
>>       #include <dt-bindings/clock/stm32mp1-clks.h>
>>       #include <dt-bindings/reset/stm32mp1-resets.h>
>> +
>> +    usb_phy_tuning: usb-phy-tuning {
>> +        st,hs-dc-level = <2>;
>> +        st,fs-rftime-tuning;
>> +        st,hs-rftime-reduction;
>> +        st,hs-current-trim = <15>;
>> +        st,hs-impedance-trim = <1>;
>> +        st,squelch-level = <3>;
>> +        st,hs-rx-offset = <2>;
>> +        st,no-lsfs-sc;
>> +    };
>> +
>>       usbphyc: usbphyc@5a006000 {
>>           compatible = "st,stm32mp1-usbphyc";
>>           reg = <0x5a006000 0x1000>;
>> @@ -137,6 +203,7 @@ examples:
>>               reg = <0>;
>>               phy-supply = <&vdd_usb>;
>>               #phy-cells = <0>;
>> +            st,phy-tuning = <&usb_phy_tuning>;
> 
> Just add all the properties here.
> 

If I add all the properties here...

>>               connector {
>>                   compatible = "usb-a-connector";
>>                   vbus-supply = <&vbus_sw>;
>> @@ -147,6 +214,7 @@ examples:
>>               reg = <1>;
>>               phy-supply = <&vdd_usb>;
>>               #phy-cells = <1>;
>> +            st,phy-tuning = <&usb_phy_tuning>;
>>           };

... I have to duplicate them also here (because on this example the 
layout is the same for both phys.
That's why st,phy-tuning was a node.

Please advise.

Regards,
Amelie

>>       };
>>   ...
>> -- 
>> 2.25.1
>>
>>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
