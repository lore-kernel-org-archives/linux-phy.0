Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 205EFC433F5
	for <linux-phy@archiver.kernel.org>; Wed,  1 Jun 2022 06:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ip2KENLue0Pzzhs0NiHZDxTJ3oWmpcZIvRKA62mo9Js=; b=PNTtglvYuop6yp
	SlcDx05X6fh4Xdz2J4aHLawyE7fHRRFhvt30z5k1utIHyPMh0jvHCNNGsxKikvSfgKc5S/wRQZC0C
	RHP7fLwiE80yuVEt8xGM9197noLVNiP+rpFCm3xaCal2B8C+PPuZOZ2oUFoOXuyI0n+JTeNW04TVz
	NSeI96RuLoe5FiRLlDdLmeLQrSEKh050NuTPZrat2Vp/34fNyEP2OuuMyBUCWBHhaSCnnPpymGOrb
	dH0KlWj6f4jtA1LU8pUIG8tgypDBFO0O3vzfeM4LKOWzMPxJ0uQ3ulTYMuRYIbi7bw5e0APWNRFul
	pV9w5pPjqSxQXm2OtPeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHQM-00E2KJ-FQ; Wed, 01 Jun 2022 06:01:42 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHQJ-00E2I5-B2
	for linux-phy@lists.infradead.org; Wed, 01 Jun 2022 06:01:40 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 25161Zak111534;
	Wed, 1 Jun 2022 01:01:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1654063295;
	bh=+aCCojRMiq5xMMa2smOMLWywfcMjA8WBVUZc2agFKro=;
	h=Date:Subject:To:CC:References:From:In-Reply-To;
	b=zLvqwmLzLBFdgDsmYNrzpfTjIocb1yyGcJIcj2XS9wPqywSh6iznmIQliBc9LVtiP
	 YKhguYdLs+0A9P9hqUE+dEH47aHFXf6Jj5fqNipHNz/zJzr3XGsdCP4NWQNNkGN84u
	 df5Wq0tiluRWgwEM7U2t3Wbo8N1kRJ4U+KMEbXLc=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 25161ZPT018041
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 1 Jun 2022 01:01:35 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Wed, 1
 Jun 2022 01:01:34 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Wed, 1 Jun 2022 01:01:34 -0500
Received: from [172.24.222.108] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 25161TfB020842;
	Wed, 1 Jun 2022 01:01:30 -0500
Message-ID: <b5353c06-c8b4-c065-3843-28b2a34e1867@ti.com>
Date: Wed, 1 Jun 2022 11:31:29 +0530
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
        <linux-phy@lists.infradead.org>
References: <20220531111221.22963-1-s-vadapalli@ti.com>
 <20220531111221.22963-2-s-vadapalli@ti.com>
 <26603540-8887-ef8d-8f4d-26f2f33d2a6f@kernel.org>
From: Siddharth Vadapalli <s-vadapalli@ti.com>
In-Reply-To: <26603540-8887-ef8d-8f4d-26f2f33d2a6f@kernel.org>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230139_521951_A58B7CE4 
X-CRM114-Status: GOOD (  30.77  )
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

On 31/05/22 17:15, Roger Quadros wrote:
> Hi Siddharth,
> 
> On 31/05/2022 14:12, Siddharth Vadapalli wrote:
>> TI's J7200 SoC supports additional PHY modes like QSGMII and SGMII
>> that are not supported on earlier SoCs. Add a compatible for it.
>>
>> Signed-off-by: Siddharth Vadapalli <s-vadapalli@ti.com>
>> ---
>>  .../mfd/ti,j721e-system-controller.yaml       |  5 ++++
>>  .../bindings/phy/ti,phy-gmii-sel.yaml         | 24 ++++++++++++++++++-
>>  2 files changed, 28 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> index fa86691ebf16..e381ba62a513 100644
>> --- a/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> +++ b/Documentation/devicetree/bindings/mfd/ti,j721e-system-controller.yaml
>> @@ -48,6 +48,11 @@ patternProperties:
>>      description:
>>        This is the SERDES lane control mux.
>>  
>> +  "phy@[0-9a-f]+$":
>> +    type: object
>> +    description:
>> +      This is the register to set phy mode through phy-gmii-sel driver.
>> +
> 
> Is this really required? The system controller has 100s of different such registers and it is not practical to mention about all.

The property has to be mentioned in order to pass: make dtbs_check.

> 
>>  required:
>>    - compatible
>>    - reg
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> index ff8a6d9eb153..7427758451e7 100644
>> --- a/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-gmii-sel.yaml
>> @@ -53,12 +53,21 @@ properties:
>>        - ti,am43xx-phy-gmii-sel
>>        - ti,dm814-phy-gmii-sel
>>        - ti,am654-phy-gmii-sel
>> +      - ti,j7200-cpsw5g-phy-gmii-sel
> 
> Why not just "ti,j7200-phy-gmii-sel" so it is consistent naming.

In TI's J7200 device, there are two CPSW MACs, namely CPSW2G and CPSW5G. While
CPSW5G supports QSGMII mode, CPSW2G does not. Hence, the compatible being added
with the extra mode (QSGMII) enabled is applicable only for CPSW5G and not for
CPSW2G. Thus, to highlight this, the word "CPSW5G" has been included in the name
of the compatible.

> 
>>  
>>    reg:
>>      maxItems: 1
>>  
>>    '#phy-cells': true
>>  
>> +  ti,enet-ctrl-qsgmii:
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +    description: |
>> +      Required only for QSGMII mode. Bitmask to select the port for
>> +      QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>> +      ports automatically. Any of the 4 CPSW5G ports can act as the
>> +      main port with the rest of them being the QSGMII_SUB ports.
>> +
> 
> This is weird way of doing things.
> 
> The Ethernet controller driver already knows which mode the port is
> supposed to operate.

From the ethernet driver perspective, there is no difference between the QSGMII
or QSGMII-SUB modes and both are treated the same. However, the phy-gmii-sel
driver configures CPSW MAC registers differently depending on the mode being
QSGMII or QSGMII-SUB. Hence, the ti,enet-ctrl-qsgmii property is used to
identify the QSGMII main port and the rest are configured in CPSW MAC as
QSGMII-SUB ports.

> 
> e.g.
> +&cpsw0_port1 {
> +	phy-handle = <&cpsw5g_phy0>;
> +	phy-mode = "qsgmii";
> +	mac-address = [00 00 00 00 00 00];
> +	phys = <&cpsw0_phy_gmii_sel 1>;
> +};
> +
> +&cpsw0_port2 {
> +	phy-handle = <&cpsw5g_phy1>;
> +	phy-mode = "qsgmii-sub";
> +	mac-address = [00 00 00 00 00 00];
> +	phys = <&cpsw0_phy_gmii_sel 2>;
> 
> And it can convey the mode to the PHY driver via phy_ops->set_mode.
> So you should be depending on that instead of adding this new property.

QSGMII-SUB is not a standard mode in the Linux kernel. In order to proceed with
the suggested implementation, a new phy mode named PHY_INTERFACE_MODE_QSGMII_SUB
has to be introduced to the kernel. Additionally, all existing phy drivers will
have to be updated to recognize the new phy mode.

Since the QSGMII-SUB mode is TI specific, it was decided that it would be better
to add a new property in TI specific files for identifying the QSGMII main port
and treating the rest as QSGMII-SUB ports.

Thanks,
Siddharth.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
