Return-Path: <SRS0=iPRR=JM=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3F90C433B4
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 09:12:22 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4853261139
	for <linux-phy@archiver.kernel.org>; Thu, 15 Apr 2021 09:12:22 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4853261139
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:CC:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hW9T5KZmDrOFHi1SBi67upIYIEwGlJJdU3z6VQanHpg=; b=LpV6M4IZpHJDQGRRKrBDNGKuC
	sKXQYEIWLMidmfDBPrQv00t+taLXUrIji3t6o/NA7BmVv93hfEcpiLmhjFF3QN2uH51MktZmptAxG
	e58bQFKHpYa2iHdgbynfSm8tOQC0vfZOcHXYya7YsJBGLM2LuFRL17VhhKQj/w9jRG9C/NVwgYdT4
	qj8ibfgn7bC7Lh8zY6/pZ/ioMOODc5PaKI3gTldcJQS8byazOpMIomLlqDVp64YPAL/fO0yttOa5p
	O+ovBs0/z2gfrHa3kNil+lUhjaWYxDfcdGipg8RbdXT1c703KXuTKn8SXbNNLIc4QzM5aEhMubdY7
	wJ8OO9wRw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWy2u-00FTPD-Gk; Thu, 15 Apr 2021 09:12:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWy2s-00FTOg-BN
 for linux-phy@desiato.infradead.org; Thu, 15 Apr 2021 09:12:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:CC:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=jGR561TrDqzLWL9VO6pvcCN3CbJFcTaYeFYvpbcz6N0=; b=NQA8ep5IqerCwSR/wdwXpLYMAk
 MbefMOp3CmGfzI7KB5faJAkm36TGqu/eXiaPIC8AKudfwnfdE5rW5NJzkgl8r6IXFByt1FJr63inm
 FMZcw8MF6FelgAWEjXN07GUs7Vwztic3OPfdovGwiYd5DtHMDFERliSd+kQBgVq/k7ZQGpETbhSHB
 XuEDJlbcAl3P1nP4FH44+2R7j2MPd67m8Bmh+tDZBwGQytYIhr41+NyChm3cXtBKxK+Z08Wj8sGS0
 khGOkG/XExU3sX2xLyls5GgUrFw4TlM5kKNwT9DN+5Vjnh7ONf5D7NcAX46i6TycQm0maVLv6hWEx
 M1xSLzbw==;
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWy2p-008Pco-B6
 for linux-phy@lists.infradead.org; Thu, 15 Apr 2021 09:12:17 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 13F9C3QS127848;
 Thu, 15 Apr 2021 04:12:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1618477923;
 bh=jGR561TrDqzLWL9VO6pvcCN3CbJFcTaYeFYvpbcz6N0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Z1jk2Vh/7eTOg55ohx9aljFaNhj3h4q4T2EY2S/V2NDbm16BoErnBInCT0JO0wL6/
 5S0Uh/YA/4aUqMUJzHQBad2dqXgIh8DwMDmc97bzcDdiIdq+HlmvRNSENd4P6cShZl
 07h4mzsn/LWP8wCgyBvOyTxnyAb7EVFFkFT79f5E=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 13F9C31w073960
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 15 Apr 2021 04:12:03 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 15
 Apr 2021 04:12:03 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 15 Apr 2021 04:12:03 -0500
Received: from [172.24.145.148] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 13F9BwUV106092;
 Thu, 15 Apr 2021 04:11:59 -0500
Subject: Re: [PATCH v2 3/6] dt-bindings: phy: Add binding for TI TCAN104x CAN
 transceivers
To: Marc Kleine-Budde <mkl@pengutronix.de>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Chandrasekar Ramakrishnan
 <rcsekar@samsung.com>, Wolfgang Grandegger <wg@grandegger.com>, "David S .
 Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>,
 Vignesh Raghavendra <vigneshr@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>,
 Grygorii Strashko <grygorii.strashko@ti.com>
References: <20210414140521.11463-1-a-govindraju@ti.com>
 <20210414140521.11463-4-a-govindraju@ti.com>
 <20210414153303.yig6bguue3g25yhg@pengutronix.de>
 <9a9a3b8b-f345-faae-b9bc-3961518e3d29@ti.com>
 <20210415073810.nwoi2hx57hdg4ima@pengutronix.de>
From: Aswath Govindraju <a-govindraju@ti.com>
Message-ID: <072648d4-a747-bc5f-a525-25dd055905ee@ti.com>
Date: Thu, 15 Apr 2021 14:41:57 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210415073810.nwoi2hx57hdg4ima@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_021215_556997_2CE20E4C 
X-CRM114-Status: GOOD (  21.88  )
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

Hi Marc,

On 15/04/21 1:08 pm, Marc Kleine-Budde wrote:
> On 15.04.2021 11:57:20, Aswath Govindraju wrote:
>> Hi Marc,
>>
>> On 14/04/21 9:03 pm, Marc Kleine-Budde wrote:
>>> On 14.04.2021 19:35:18, Aswath Govindraju wrote:
>>>> Add binding documentation for TI TCAN104x CAN transceivers.
>>>>
>>>> Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
>>>> ---
>>>>  .../bindings/phy/ti,tcan104x-can.yaml         | 56 +++++++++++++++++++
>>>>  MAINTAINERS                                   |  1 +
>>>>  2 files changed, 57 insertions(+)
>>>>  create mode 100644 Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>>>> new file mode 100644
>>>> index 000000000000..4abfc30a97d0
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/phy/ti,tcan104x-can.yaml
>>>> @@ -0,0 +1,56 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: "http://devicetree.org/schemas/phy/ti,tcan104x-can.yaml#"
>>>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>>>> +
>>>> +title: TCAN104x CAN TRANSCEIVER PHY
>>>> +
>>>> +maintainers:
>>>> +  - Aswath Govindraju <a-govindraju@ti.com>
> 
> Can you create a maintainers entry for this file with your address?

I don't see this being done for other phy yamls in the
Documentation/devicetree/bindings/phy folder. Also,
scripts/get_maintainer.pl is giving the names of maintainers after
reading the yaml files too.

Thanks,
Aswath

> 
>>>> +
>>>> +properties:
>>>> +  $nodename:
>>>> +    pattern: "^tcan104x-phy"
>>>> +
>>>> +  compatible:
>>>> +    enum:
>>>> +      - ti,tcan1042
>>>> +      - ti,tcan1043
>>>
>>> Can you ensure that the 1042 has only the standby gpio and the 1043 has both?
>>>
>>
>> In the driver, it is the way the flags have been set for ti,tcan1042 and
>> ti,tcan1043.
> 
> I was wondering if we would enforce in the DT the 1042 has exactly one
> the standby GPIO and the 1043 has exactly the standby and the enable
> GPIO.
> 
> On the other hand the HW might have pulled one or the other pin high or
> low and only one of the pins is connected to a GPIO.
> 
>>>> +
>>>> +  '#phy-cells':
>>>> +    const: 0
>>>> +
>>>> +  standby-gpios:
>>>> +    description:
>>>> +      gpio node to toggle standby signal on transceiver
>>>> +    maxItems: 1
>>>> +
>>>> +  enable-gpios:
>>>> +    description:
>>>> +      gpio node to toggle enable signal on transceiver
>>>> +    maxItems: 1
>>>> +
>>>> +  max-bitrate:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    description:
>>>> +      max bit rate supported in bps
>>>> +    minimum: 1
>>>> +
>>>> +required:
>>>> +  - compatible
>>>> +  - '#phy-cells'
>>>> +
>>>> +additionalProperties: false
>>>> +
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/gpio/gpio.h>
>>>> +
>>>> +    transceiver1: tcan104x-phy {
>>>> +      compatible = "ti,tcan1043";
>>>> +      #phy-cells = <0>;
>>>> +      max-bitrate = <5000000>;
>>>> +      standby-gpios = <&wakeup_gpio1 16 GPIO_ACTIVE_LOW>;
>>>> +      enable-gpios = <&main_gpio1 67 GPIO_ACTIVE_LOW>;
>>>
>>> AFAICS the enable gpio is active high.
>>>
>>
>> I will correct this in the respin.
> 
> Marc
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
