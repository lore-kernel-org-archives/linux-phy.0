Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9C492C433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 11:27:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKZrb6Yx/ifHTWTH7rzHu7TjTkmKH3i8klmHmT8TAUE=; b=LaP0frlHv1ZxYW
	/q/M0KnujcCQr9lUOuGwG6agk7naO96F18Xu2aDg60UWDXLOgw9BTjr3vG2DvqkG+G3yWiu4bvz5J
	X9aFSDo8n4fJU/kT141tOguTse8LDKs8Z2jmLUwl0FuuaLWixhzu8OlMjXptNkQiZneKonyfvfc70
	oPGzwMzxLWQri0GXF2OYiKjoqR7VdvwhJhizehIW+zJkJCa5dZvcvSWPb9GocH15loP+sUIrqSBh5
	3eimrnFVnJgyVzD9YmHPxxF/nS+lZKG9s1eg5JrSLNAmkMU9GItQvkr6Hmdk1yZuXyK3mdsKcikoQ
	X/WDYZP7PwgX87JQeNhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwMVe-00FcXe-0W; Wed, 01 Jun 2022 11:27:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwMVb-00FcWI-2q
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 11:27:28 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 251BRIUD011398;
	Wed, 1 Jun 2022 06:27:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1654082838;
	bh=o9D86qzvXd10JMqGORrMWHfGaInhUb1BMDlgZjbpg74=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=wpyMCZ5WBYKKSjFz/6FgAXAbEy1dXQvdVlVTrABbJEoRs3f/5a6oO2JwjvU7+1rSv
	 z1wQaLM70OT4CuGdjgl9TUBu1wz3yCEWVq847v0sI565QoxI6dxAj8jsimHyfkON5o
	 rVakqRBaHVzUzRdBIC1feXD4E3PGcQZ5Rp8r3YqY=
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 251BRIwZ098987
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 1 Jun 2022 06:27:18 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 1
 Jun 2022 06:27:18 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 1 Jun 2022 06:27:18 -0500
Received: from [172.24.222.108] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 251BRCU0093180;
	Wed, 1 Jun 2022 06:27:13 -0500
Message-ID: <985ab302-17aa-c0de-ccac-63525589918a@ti.com>
Date: Wed, 1 Jun 2022 16:57:12 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH 1/2] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J7200
Content-Language: en-US
To: Roger Quadros <rogerq@kernel.org>, <robh+dt@kernel.org>,
        <lee.jones@linaro.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <kishon@ti.com>, <vkoul@kernel.org>, <dan.carpenter@oracle.com>,
        <grygorii.strashko@ti.com>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-phy@lists.infradead.org>, <s-vadapalli@ti.com>
References: <20220531111221.22963-1-s-vadapalli@ti.com>
 <20220531111221.22963-2-s-vadapalli@ti.com>
 <26603540-8887-ef8d-8f4d-26f2f33d2a6f@kernel.org>
 <b5353c06-c8b4-c065-3843-28b2a34e1867@ti.com>
 <a7754c31-bfc6-6451-8340-5d3aa671e3c4@kernel.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <a7754c31-bfc6-6451-8340-5d3aa671e3c4@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_042727_260137_06A8D300 
X-CRM114-Status: GOOD (  35.65  )
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

Hello Roger,

On 01/06/22 15:08, Roger Quadros wrote:
> Siddharth,
> 
> On 01/06/2022 09:01, Siddharth Vadapalli wrote:
>> Hello Roger,
>>
>> On 31/05/22 17:15, Roger Quadros wrote:
>>> Hi Siddharth,
>>>
>>> On 31/05/2022 14:12, Siddharth Vadapalli wrote:
>>>> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
>>>> that are not supported on earlier SoCs. Add a compatible for it.
>>>>
>>>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>>>> ---
>>>>  .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
>>>>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 24 ++++++++++++++++++-
>>>>  2 files changed, 28 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> index fa86691ebf16..e381ba62a513 100644
>>>> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>>>> @@ -48,6 +48,11 @@ patternProperties:
>>>>      description:
>>>>        This is the SERDES lane control mux.
>>>>  
>>>> +  "phy@[0-9a-f]+$":
>>>> +    type: object
>>>> +    description:
>>>> +      This is the register to set phy mode through phy-gmii-sel driver.
>>>> +
>>>
>>> Is this really required? The system controller has 100s of different such registers and it is not practical to mention about all.
>>
>> The property has to be mentioned in order to pass: make dtbs_check.
>>
>>>
>>>>  required:
>>>>    - compatible
>>>>    - reg
>>>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> index ff8a6d9eb153..7427758451e7 100644
>>>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>>>> @@ -53,12 +53,21 @@ properties:
>>>>        - ti,am43xx-phy-gmii-sel
>>>>        - ti,dm814-phy-gmii-sel
>>>>        - ti,am654-phy-gmii-sel
>>>> +      - ti,j7200-cpsw5g-phy-gmii-sel
>>>
>>> Why not just "ti,j7200-phy-gmii-sel" so it is consistent naming.
>>
>> In TI's J7200 device, there are two CPSW MACs, namely CPSW2G and CPSW5G. While
>> CPSW5G supports QSGMII mode, CPSW2G does not. Hence, the compatible being added
>> with the extra mode (QSGMII) enabled is applicable only for CPSW5G and not for
>> CPSW2G. Thus, to highlight this, the word "CPSW5G" has been included in the name
>> of the compatible.
> 
> Here we are talking about the PHY driver (phy-gmii-sel) and not the MAC (CPSW2G / CPSW5G)
> Does this PHY on J7200 always support QSGMII mode? if yes then embedding "cpsw5g" in compatible is wrong.

The PHY on J7200 is part of the Add-On Ethernet card. It is possible to connect
RGMII, QSGMII and SGMII PHY. The CPSW5G MAC supports all these modes. With the
current patch, I am adding just QSGMII mode as an extra mode, but in a future
patch, I will be adding SGMII also as an extra mode. For this reason, CPSW5G is
being mentioned in the compatible name, to differentiate supported modes for
CPSW2G and CPSW5G. Also, the phy-gmii-sel driver actually configures CPSW MAC
registers and not the PHY.

> 
> You need to use a different compatible in CPSW driver and make sure CPSW2G doesn't initiate QSGMII mode.

Yes, I will add a check there too by using a different compatible in the CPSW
driver, but shouldn't the phy-gmii-sel driver also have a check to ensure that
it doesn't try configuring QSGMII mode for CPSW2G?

> 
>>
>>>
>>>>  
>>>>    reg:
>>>>      maxItems: 1
>>>>  
>>>>    '#phy-cells': true
>>>>  
>>>> +  ti,enet-ctrl-qsgmii:
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32
>>>> +    description: |
>>>> +      Required only for QSGMII mode. Bitmask to select the port for
>>>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>>>> +      ports automatically. Any of the 4 CPSW5G ports can act as the
>>>> +      main port with the rest of them being the QSGMII_SUB ports.
>>>> +
>>>
>>> This is weird way of doing things.
>>>
>>> The Ethernet controller driver already knows which mode the port is
>>> supposed to operate.
>>
>> From the ethernet driver perspective, there is no difference between the QSGMII
>> or QSGMII-SUB modes and both are treated the same. However, the phy-gmii-sel
>> driver configures CPSW MAC registers differently depending on the mode being
>> QSGMII or QSGMII-SUB. Hence, the ti,enet-ctrl-qsgmii property is used to
>> identify the QSGMII main port and the rest are configured in CPSW MAC as
>> QSGMII-SUB ports.
>>
>>>
>>> e.g.
>>> +&cpsw0_port1 {
>>> +	phy-handle = <&cpsw5g_phy0>;
>>> +	phy-mode = "qsgmii";
>>> +	mac-address = [00 00 00 00 00 00];
>>> +	phys = <&cpsw0_phy_gmii_sel 1>;
>>> +};
>>> +
>>> +&cpsw0_port2 {
>>> +	phy-handle = <&cpsw5g_phy1>;
>>> +	phy-mode = "qsgmii-sub";
>>> +	mac-address = [00 00 00 00 00 00];
>>> +	phys = <&cpsw0_phy_gmii_sel 2>;
>>>
>>> And it can convey the mode to the PHY driver via phy_ops->set_mode.
>>> So you should be depending on that instead of adding this new property.
>>
>> QSGMII-SUB is not a standard mode in the Linux kernel. In order to proceed with
>> the suggested implementation, a new phy mode named PHY_INTERFACE_MODE_QSGMII_SUB
>> has to be introduced to the kernel. Additionally, all existing phy drivers will
>> have to be updated to recognize the new phy mode.
>>
>> Since the QSGMII-SUB mode is TI specific, it was decided that it would be better
>> to add a new property in TI specific files for identifying the QSGMII main port
>> and treating the rest as QSGMII-SUB ports.
> 
> Who decides which port should be MAIN and which should be SUB? Can all ports be MAIN?
> Can all ports be SUB or there has to be at least one MAIN?

All 4 ports in CPSW5G have the capability to be the MAIN port, with the only
restriction being that only one of them should be the MAIN port at a time. The
role of the CPSW5G ports is decided based on what PHY port each of the CPSW5G
ports connects to.

MAIN port of CPSW5G MAC is responsible for auto-negotiation with the PHY port on
the PHY which supports auto-negotiation. Thus, there can and should be only one
MAIN port.

Thanks,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
