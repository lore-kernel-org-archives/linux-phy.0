Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B84B7C6FA83
	for <linux-phy@archiver.kernel.org>; Mon, 26 Sep 2022 09:25:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6sEyr1aufKmwkwSBUfH8hSA6RaVsOvHGQhUkIrnga0=; b=A6iNKw7ntDaxt/
	infDtSWdBGHIaCFbejI68iAzXapP2+vbtuGZygAOk73Ht36Rso7WjYg9Q7hT10n6+jQT2iVy0vnj5
	+FYx3EsCyPtQ/7KnvZpe+0Uiljz67UTEk92ueytmbnHW/7F1GAQX/wBWlfw6eNOha/ocrTS6rpzu3
	vT59GNVZxXu9ottXWOLG3MolBiUCjA7ovgHmGdqUwbQ37lZX3rS4bQyXKdz3jhOF76sahON3Q4iTI
	iH517Uu8N7xPI0SI0BOfAP7hk8n9Jjt2i8zkQ3Slh+iqn+iybmbUaJ2KS8aczz1d7lsfbOHxWIs8M
	pSc+eERevImrTyjBkLbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockMT-003bpV-Pn; Mon, 26 Sep 2022 09:25:13 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ockMR-003bm3-55
	for linux-phy@lists.infradead.org; Mon, 26 Sep 2022 09:25:12 +0000
Received: by mail-lf1-x134.google.com with SMTP id w8so9820286lft.12
        for <linux-phy@lists.infradead.org>; Mon, 26 Sep 2022 02:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uaiDp3kvgnG0ypPaVSIUeFXmDz7x/JwiryUmZAc4dU0=;
        b=PyO4KmrNHFYEQ2ZSdZDB9CJMxLJPpUpBGMGKh9bgd9hRACeXmb9UggP1Ckt0tYZz9/
         uCV0ecW3jGWwuoWqrExby2NFlaUorzLvbzRUfup6GCd57qnaK43AI/qIIp+Ia2F32yzb
         eML2C9ZIpA5DUZ2ertJVHvfrfQO+2TN9FmLJyTkdSLS0GdQxsjTXwAqh1tpb8UZLdzW3
         bFlbnuauudKC8IZGW6d/n8mpCLavtYa/XbXfkOBkSi5RFjOiazQvPQ5OOToaWb/Pew35
         AM6foqUUGXko3iGqd5K0xt2gDPcxx3nb0ctV252Wj+GkrB0Ai2GP7+mPLgQsE4ekG1we
         /fDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uaiDp3kvgnG0ypPaVSIUeFXmDz7x/JwiryUmZAc4dU0=;
        b=gZndQ3kxCj7PEUa/XkJwxB590VRO9suE4Le25hYej0gGV44LZGWLlPmxKHSqzgV3bw
         jAT8WaxDah3Q0w4Kc7DqGZB7MHvJRvR5d3ytL98xPy45dpeF9LNVapGQuFyXsHYNgnfT
         N2WlX+VfAsRhPyVGftLBmYwKxB/pulSxxWfDNnHcyJV5+IYYbuCcYkYDjuE4hUBe360M
         kcG/09SKb9wqASE2p+kZ0BUwC3f5FjGENp1kntb9jvPvs5Gvr7bg75WfshKegEmNzX/i
         PD2BxMmH7JYCTf79s5ksnREp024kVS9+zFgj5VdBYF15HsOq8ObHJ56kdRoFgHhNnIat
         X+hg==
X-Gm-Message-State: ACrzQf151QelR0e7z9Z/0Rw/1ySnLLj+GBlioRxLlgihcIWQulUukdb4
	iwy8atXF8fhbMmpfJXVmFMTFhQ==
X-Google-Smtp-Source: AMsMyM4+r8FKGhQFjLKSZbEOMsnV8nGHobCDs01XOaZyixiXEKtNbP3l8DQcAeEF5kNVLcEbUGz+2g==
X-Received: by 2002:a05:6512:3409:b0:499:faa6:edb0 with SMTP id i9-20020a056512340900b00499faa6edb0mr7944823lfr.682.1664184305962;
        Mon, 26 Sep 2022 02:25:05 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id be25-20020a05651c171900b0025fdf1af42asm2308859ljb.78.2022.09.26.02.25.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 02:25:05 -0700 (PDT)
Message-ID: <7dbdb43a-0ffe-58db-5f8a-f3bd62a4feea@linaro.org>
Date: Mon, 26 Sep 2022 11:25:04 +0200
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
 <d31dc406-3ef2-0625-8f5e-ff6731457427@linaro.org>
 <TYBPR01MB5341B5F49362BCCF3C168D11D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <TYBPR01MB5341B5F49362BCCF3C168D11D8529@TYBPR01MB5341.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220926_022511_228048_A2CE0A13 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

On 26/09/2022 11:14, Yoshihiro Shimoda wrote:

>>
>> Don't drop, but instead put it before "properties" for this nested object.
> 
> Oh, I got it. Thanks!
> I'll put this before "properties:" like below:
> -----
>   ethernet-ports:
>     type: object
> 

Without blank line here.

>     additionalProperties: false
>>     properties:

This is ok.

>       '#address-cells':
>         description: Port number of ETHA (TSNA).
>         const: 1
> 
>       '#size-cells':
>         const: 0
> -----

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
