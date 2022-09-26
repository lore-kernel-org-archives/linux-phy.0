Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E42CC07E9D
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 06:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/nQMQ8xtlLJt+o8fxZDvXNZ3VMC1Ag92azg+Iw1TJL0=; b=pzaziwe74nac9Y
	amq6yBsRFLhC3qMrZwdNnLabKWZNu04xFR5RstRrLpHCCkXeXfTcIdY96bSBsxfxHCTU5/yKVzUl/
	/tB5sZsnOLZiHmvDB/m/g4jcUDNFZ2Ow8wbLP0HL9Mj0svtlMyQUgbfmo8QODZubUBxpeGolRRXxq
	6BN20a+5mpyV11GdcPsTkRZhBghH6qUKJ/igNbwEHhPTPGIbu14gzObVMzuHSgGY3I+RyJpyXAKZ3
	g2t+ew60wFI/pty1bEZDqBET22KpmT8sgN9HqxcRuaQ6QZ/QSSvNIVxuYVvnCjIo181Lo4kwUgCnk
	ZG0Fvuph9+BU1ha7RKXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochxG-002VH8-T0; Mon, 26 Sep 2022 06:51:02 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ochwN-002URb-Oi
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 06:50:09 +0000
Received: by mail-lf1-x131.google.com with SMTP id k10so9320672lfm.4
        for <linux-phy@lists.infradead.org>; Sun, 25 Sep 2022 23:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=rMv/6RaQNfPOzLYbEjVzggzY8CZ+X96gFNKrqQ2B2Ow=;
        b=xg1FMouFc39uYJfpo1TMTLh6Tz1Vheo3Fw4i4l3fcognD2CeckgksJP71bZytbEUqU
         K76jhbCWLj5KC4OqfPlcmMAaQjeje9tY380R0SpZm61Xs6slylUAciPBo1eHhac4y65U
         u1fs3iY+n+FxT7C71rYQiInoZ8ZJZaWkfVp0EqdB7cL3aUd5tKaXSr95zdQEdxFCHLMZ
         Ya3PB+ZHoo4kNnxmt3VfbUS631IaaXvHlmSS1u1FpS3bkEgyvOUdtrC2rKGWwgykomML
         /8ZVhBn4XTzSQ80KUB9HPUPOkIWbu5/o/HSW5Lp9IEn4tAtkwVPjeag/XW8vQFvQDSXP
         INtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=rMv/6RaQNfPOzLYbEjVzggzY8CZ+X96gFNKrqQ2B2Ow=;
        b=gmZNet4HQXHxoWe8R7yFnt9aYGrBDmbp7lrriEDgNLJzeasiPGjenXH039PiUTdi6h
         ZdOJVqLxMBdpIP/s7Rni4LgWMtZmsYXa9uKHZg9Q2gG/5o7OAVLMjqDuRz2CPFikD/je
         ifVzGxHHA43AMaDjyHpiHvk0L+wFwfR9K0Bz+UnkcEs/jPmMiW+YyNtQ5U9Qz7GQxm71
         xFC0jLJmS8DJEgWcFCST8N7LU7w7Twtwz5JU43QBqOktFhc4E2rJlHmmxWvWIa044Jnm
         xz4jy0bILEzKFrJJSVKnM+9Jzh0bMDWpS18uYaNlS/9lT76tI6EKwETU46FlbTt+7Nrp
         IaOA==
X-Gm-Message-State: ACrzQf2AEKaDuVBW1OdcJSwfNgB5zQcbNapAA76WmUgvz29f4XlT9wjX
	Wx8FpSdpWdhDflq8vbkg8EURpUd6rNO1qg==
X-Google-Smtp-Source: AMsMyM4A2p2dVHbr2MrZbNkvzA+TDXrYrHq10zKyOpuUy8eKdgqnmSqsTMBymCWb70/WbocMjsZ6jw==
X-Received: by 2002:a19:e01e:0:b0:497:81a9:c2c4 with SMTP id x30-20020a19e01e000000b0049781a9c2c4mr8259528lfg.74.1664175005928;
        Sun, 25 Sep 2022 23:50:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id e12-20020a05651236cc00b00499b19f23e8sm2440271lfs.279.2022.09.25.23.50.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Sep 2022 23:50:05 -0700 (PDT)
Message-ID: <d31dc406-3ef2-0625-8f5e-ff6731457427@linaro.org>
Date: Mon, 26 Sep 2022 08:50:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH v2 4/8] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "kishon@ti.com" <kishon@ti.com>, "vkoul@kernel.org" <vkoul@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "richardcochran@gmail.com" <richardcochran@gmail.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>
References: <20220921084745.3355107-1-yoshihiro.shimoda.uh@renesas.com>
 <20220921084745.3355107-5-yoshihiro.shimoda.uh@renesas.com>
 <1aebd827-3ff4-8d13-ca85-acf4d3a82592@linaro.org>
 <TYBPR01MB5341514CD57AB080454749F2D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TYBPR01MB5341514CD57AB080454749F2D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220925_235007_869091_928CFCE1 
X-CRM114-Status: GOOD (  16.52  )
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

On 26/09/2022 08:10, Yoshihiro Shimoda wrote:

> I'll add a blank line here.
> 
>>> +      '#size-cells':
>>> +        const: 0
>>> +
>>> +    additionalProperties: false
>>
>> Don't put it between properties. For nested object usually this is
>> before properties:
> 
> I'll drop it.

Don't drop, but instead put it before "properties" for this nested object.

> 
>>> +
>>> +    patternProperties:
>>> +      "^port@[0-9a-f]+$":
>>> +        type: object
>>> +
>>
>> Skip blank line.
> 
> I got it.
> 
>>> +        $ref: "/schemas/net/ethernet-controller.yaml#"
>>
>> No need for quotes.
> 
> I'll drop the quotes.
> 
>>> +        unevaluatedProperties: false
>>> +
>>> +        properties:
>>> +          reg:
>>> +            description:
>>> +              Port number of ETHA (TSNA).
>>> +
>>> +          phy-handle:
>>> +            description:
>>> +              Phandle of an Ethernet PHY.
>>
>> Why do you need to mention this property? Isn't it coming from
>> ethernet-controller.yaml?
> 
> Indeed. I'll drop the description.
> 
>>> +
>>> +          phy-mode:
>>> +            description:
>>> +              This specifies the interface used by the Ethernet PHY.
>>> +            enum:
>>> +              - mii
>>> +              - sgmii
>>> +              - usxgmii
>>> +
>>> +          phys:
>>> +            maxItems: 1
>>> +            description:
>>> +              Phandle of an Ethernet SERDES.
>>
>> This is getting confusing. You have now:
>> - phy-handle
>> - phy
>> - phy-device
>> - phys
>> in one schema... although lan966x serdes seems to do the same. :/
> 
> Yes... I found the following documents have "phy" and "phy-handle" by using
> git grep -l -w "phys" `git grep -l phy-handle Documentation/devicetree/bindings/`:
> Documentation/devicetree/bindings/net/cdns,macb.yaml
> Documentation/devicetree/bindings/net/cpsw.txt
> Documentation/devicetree/bindings/net/microchip,lan966x-switch.yaml
> Documentation/devicetree/bindings/net/microchip,sparx5-switch.yaml
> Documentation/devicetree/bindings/net/ti,cpsw-switch.yaml
> Documentation/devicetree/bindings/net/ti,k3-am654-cpsw-nuss.yaml
> Documentation/devicetree/bindings/phy/phy-bindings.txt
> 
> And I'm interesting that the phy-bindings.txt said the following:
> -----
> phys : the phandle for the PHY device (used by the PHY subsystem; not to be
>        confused with the Ethernet specific 'phy' and 'phy-handle' properties,
>        see Documentation/devicetree/bindings/net/ethernet.txt for these)
> -----

Indeed, seems ok.

> 

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
