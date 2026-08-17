Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BAE5C5B572
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 05:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2oqBBDMFCEZTRAD5W5tN1y2YQ0a3hrSiR303P1+YxQ=; b=wpX6ve0hrjUNTe
	Yp94E7TMOnV7H0nrGfIEFWQiBrjB1QkVIb0IcAMvMHr+4wi1IFWaHTJIH+hErow+kGmD5ccaXRMsx
	OqVEJBiEdCYNMhNvl15JZoowCMQ6idHottjF/Ky4SB8jgqqD3YVYwXytxQCY2I2zQXsK9N/r8WVyZ
	0eNvcNlKyMBJF0zl6CSVTxO579P/g/RdR8YOIvGn+XE2+mKzgvZW+/eGxYwxHtwO1hhphPWgk5/cu
	XAz9HKVQfVq6Q+WK22Tn3H7tIBDpGGr4aTOyF8SCJXgrXxgmL2ZFoV5pihiVC6RK+jiI1wdqand+0
	XjeTl9VNIlgEWrjMtQFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvplP-00000005QzZ-1cUT;
	Mon, 17 Aug 2026 05:19:59 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wvplM-00000005QzH-1ICZ
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 05:19:57 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4998e0916faso12776675e9.2
        for <linux-phy@lists.infradead.org>; Sun, 16 Aug 2026 22:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sigma-star.at; s=google; t=1786943993; x=1787548793; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=sOAzM3F+gJS+8ekXWLBSmACUEeC2z+0rXqaknxPGi6s=;
        b=Hd96LnSbUYSmAx5mgJ1trXrTL/BoEIrCuhGR/kNDNVRBU30gApwpos+zwfnuruETk9
         jDjV8Nt8CMMT+gAO0Nd9zcbY0nWHJv/0rtQyVmXv3C59VlHq4RnUOzKKaFUF9wFUKy4l
         H5/fNQV1cx3huM+NbfROnlMBnfS5C1llzdL3JKXRkGi2VsQBgiPW9a2ylDS4qIvHJ1jc
         Pk9P9YMu7t3UPlkwcvcxWD7iDsWoDFnGOYPf34rqfICZv3u+DsXRjU6mBVCmxTiY7j+6
         adrGvK8MRWSBuxLzvtZvphj4pW0CCvfwoEMeYLUxkuA5obKlGGXVe7e/yLqXvaJaEeXi
         LuFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786943993; x=1787548793;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=sOAzM3F+gJS+8ekXWLBSmACUEeC2z+0rXqaknxPGi6s=;
        b=E6G6qlluEovwnylq3NDxcN1XlL5/iZahIMBtMUmgvByddjU0IIsO3FMATvIVRNtjUW
         nLb93+vKyJmrJAAkDYMAeYsHb1/zMW+vC8Uuxm3dkDxUe8Q3ldDZWy96zOdpdzaZO/kW
         ucyq1kebmLjNbQklLagVxJ2stP3kBoQtQKrLcqbsG01z743cQeShgHNuLmf0dEGWnIo2
         rJcelLXb2MU02gaoapl8LLfsZid61GJEN6OFPUb5cAvrZAMxG7rR5JoC6MVhdVQJhQ//
         WN8kYfZWd38dlUn16XBDqvRRSedHK5Uac1+ioX02PDeE2biM0cL+9r1i1EV54DQuQfae
         x4Gw==
X-Gm-Message-State: AOJu0YwT5E1q+kRA+QyCOtgrCFx8VRPcSfrn28Ifo/9nnm2Y6geaInTM
	F8fxZN2JjXmYGrj11wRK1Wuc9mEBr9t4g6oAKyiyGNVBOMk8KQWQxIw5VabglxvKyAk=
X-Gm-Gg: AR+sD10I7HSI0DDsiLL1UO9jwLPW8nPJIzi0KK0WE8j4G//kU9BiWiP//scuHlr/BxG
	N8NvSX4Wts+f42kKngDHEb+F97tqyPlD3WiWL5kyMSXJ1/ZlEdA0ecjGm7wRgP+6bnwiXJnayn7
	SGh3SDalcfmhlqGxMfxl8iSfMv5otS320AXorKdqL71iMa3qAIk661ls9jKERV0g+TSicofRk1J
	MDvgptxPLYnTXWMp3gX7bPUfpcpRoXqM1kixDxzIXD7EX94LkKBLoaNduoq5YwBfgGT0T7vDGXa
	0TlOMrOjOLTQIuMhCjkfIU+g6bfmR/Brwgf+XbktKgPsvHBj/9lPyUVeG/zKov7FKG0ZZ1n43Pa
	NTRiMq0fCHEm2n5Ph+j+IPSLE1rttdG15FoXALucX+sMDD/NXBweFyRBSvMK3HhBWtTEVuXUVP1
	vv16MYJkuHdqvWmMXe+L6vaav3oR0R50LEl1YF1njc6WtfHb4Pf1vwUxWmU4F5RtJPiWjc3yFAI
	D6p/MVOQUo=
X-Received: by 2002:a05:600c:4924:b0:495:503f:cf9a with SMTP id 5b1f17b1804b1-49987971a6amr210142505e9.9.1786943993346;
        Sun, 16 Aug 2026 22:19:53 -0700 (PDT)
Received: from [10.115.255.165] ([82.150.214.1])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482a5a3b51asm836378f8f.11.2026.08.16.22.19.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Aug 2026 22:19:53 -0700 (PDT)
Message-ID: <3c11637c-8e81-44b2-8692-a5c7940ab7c2@sigma-star.at>
Date: Mon, 17 Aug 2026 07:19:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: Add aspcie
 reference clock setting
To: Rob Herring <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, neil.armstrong@linaro.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, johan@kernel.org, rogerq@ti.com,
 Julian.FRIEDRICH@frequentis.com, upstream+omap@sigma-star.at
References: <20260806091112.164695-1-david.oberhollenzer@sigma-star.at>
 <20260806091112.164695-2-david.oberhollenzer@sigma-star.at>
 <20260812022031.GA554483-robh@kernel.org>
Content-Language: en-US
From: David Oberhollenzer <david.oberhollenzer@sigma-star.at>
In-Reply-To: <20260812022031.GA554483-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260816_221956_652155_35EEFBCC 
X-CRM114-Status: UNSURE (   9.74  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi,

On 8/12/26 4:20 AM, Rob Herring wrote:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: ti,phy-pipe3-pcie
>> +    then:
>> +      properties:
>> +        ti,syscon-acspcie-tx-rx: true
> 
> This has no effect. Invert the if and move the else here.
> 

Before I send another version of this patch set, are you really
sure about this?

Not only did I copy that entire block from the one directly above,
(the one that is supposed to only allow syscon-pllreset compatible
is set to ti,phy-pipe3-sata), I actually tested this by running
make dt_binding_check.

If I intentionally break the example by setting a wrong compatible
string, I get a "False schema does not allow" type message, same
as when I use the syscon-pllreset property with the wrong compat
string.

Is the existing check broken too? Is there something different
supposed to happen?

Greetings,

David


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
