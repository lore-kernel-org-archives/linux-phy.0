Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94AF4CA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 13:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FvywRep76DlkBGtNOvBelkfma2Mbx/fpWAiHVC/BAX0=; b=jBlweqhTKaC29j
	C6mHpR6yjnPce5mZ7VRtVEbDT/2loLuqc0ewdJKAhs6mK+4AThRDzXONSGvJUZTkFl/p05YGDqX/k
	Hs24G8B+rw63Zrc3shSxgejpWwwkH0Q9aY3uHwVrBSYXYZU4av+JL+spfrIUQmuKNcI5Ndzo+F1cr
	akRaJCBvn7684EXleKwXTHMbkLWage89jmqfeMuuXN5DlR5RSehfd/fcGuB17TnelPgApMc3ZorpJ
	r8q0vOG+HDIVe5YjxDGuiFjGm+ZxgG4Ks0QsRcqpNjPaRC/AcPIuJ1F2muWM/zN7pQEbMAP2OldUa
	tGLmRBZ9ajLZaxVlFXHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY2K-0000000H3Xl-1Ya0;
	Thu, 14 Aug 2025 13:30:32 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umX6e-0000000Gr09-1due
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 12:30:57 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-74381f217e7so597923a34.1
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 05:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755174655; x=1755779455; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ywvq4778+XMT9D9uuqrnqBrIL1jeEJwzcsXhXKprWOg=;
        b=dlXukGiPhpqYM23K08yZblaeoRIbyccG2xdRSj6B+JXQwJQ6kchGyHK4X973+5DNwL
         OIuuRehJx3w23tIlTjx3g417B+J+/okOof7WgDP8I9SHRD+4A3PyTxsOhM3YgEiJxkwC
         VilwEPLXmrDS3zTbxXQlAttGEI4ZAbKXL4Giz73L0fDkRViFxdlzFoNoD1ARh+lY+aLY
         eS275yy9MUMdGmqTFnqQy+an8QxLV9cpUx7HQU1+fwgF9ah0sUUxBYaxaby1zY/cihox
         8+i3IxM33p/99Eo5afCo45gdraLCwTijHJx23sgdww1ZQHaza5t+6I9nVGwnbmcxyTy1
         ppEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755174655; x=1755779455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ywvq4778+XMT9D9uuqrnqBrIL1jeEJwzcsXhXKprWOg=;
        b=Pc2hTEQUqcHRRZsi1O8LFfCc5WKmebh4bplbxq/6UxQJxgER22xsKf3BzpWSVZYYMK
         Hrvx1ZaysZYdqoXCU7Vqtex4HLIiLW4yB0uQVbH8S1h7WMfGpJd8gaNLWvlxSGkaLTIP
         OuBR+owbVgnlAFgUpS3R3mLCc3YD2J20feKlu0k8cvf9GKCdhSVlfaR44GQdG8oC/6QT
         hHbT0N1fh2K+cFVIwx6IhvyeZsZ3JM1NjoIEzZS6+tOTy62qtrdT4DiFkVtQVAh/Lj53
         Xp7IGEV55ocvAQc2EYIW/lkmpt9cFYPVf8Rqq7SOpautVuAgpEZ7lNa1tfkQniLb+9pN
         oSxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUspU7VzMk/bvDMFv4Cb1EUb3DvKpLWIfCZ/5POKw4vtKqgZT3xvjZukhP10tdaksucfodc1FoT5cE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyiKhGNnPTCCXJErymLz+83JGTUn+EN49bqhklwmbau/p4gtND3
	oMGcRKUvVLF0IcIsCuk9hFRE1523rcZUzOH7OGOqqTgTG94IRADFDrbCr/kF2a9j/qI=
X-Gm-Gg: ASbGncv6Tlm9YG1J4QgmrNkgMeJP9WIbm2aazgH2m3DOtBbnuGykqQzv9TqFXcfKgv2
	bC6N0N32aRiWEBqYVif+SveIPu2ggW+Drv+okTGCenzdZc94nMuh0WTMrObTVjOGt2iwS1t8HNR
	5NBzqCAnjIO20g5hJ+onJXkZfHNc6xuNrZM7kZPYZtDRZZNtCEmQfF9ci5jXNHdoFNui0omoj1k
	DQRGpvCn+8D+sZ9HvZtqZAnEvogRrCXMLLHIxqlzBQ1/FK9ZRs0pfjbDNPwXlDAHQPXY9D6Sv/H
	2sHEzvoSvLSd3jCP0KCxRT99H6Em+umRI3OWIyF2lXqmRuUYmblH12PHd54SWJ75BmjH2Mt4wn9
	aDjk3+PW3pmX6TEMbN3EjaJ3wYL/G5JA66OmjEUfrDwVPx3DA0rFI7i5DauuRUg==
X-Google-Smtp-Source: AGHT+IHBzdCRrljPnkfDW8jmr3rpPTUxAN1tCDdoZAzws2zd3haB25jvZwxqllCVG7gPmDZID86wtg==
X-Received: by 2002:a05:6830:3497:b0:727:3439:5bdf with SMTP id 46e09a7af769-74382bc3f86mr1632907a34.13.1755174655075;
        Thu, 14 Aug 2025 05:30:55 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae997ea9fsm4538196173.17.2025.08.14.05.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 05:30:54 -0700 (PDT)
Message-ID: <8f7bac84-623b-47dc-bc58-dc0013a85877@riscstar.com>
Date: Thu, 14 Aug 2025 07:30:52 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo
 PHY
To: Yao Zi <ziyao@disroot.org>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, vkoul@kernel.org, kishon@kernel.org
Cc: dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de,
 tglx@linutronix.de, johan+linaro@kernel.org, thippeswamy.havalige@amd.com,
 namcao@linutronix.de, mayank.rana@oss.qualcomm.com, shradha.t@samsung.com,
 inochiama@gmail.com, quic_schintav@quicinc.com, fan.ni@samsung.com,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-pci@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-2-elder@riscstar.com> <aJ1PJBax-Pj983OZ@pie>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aJ1PJBax-Pj983OZ@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_053056_443554_181C5288 
X-CRM114-Status: GOOD (  22.55  )
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

On 8/13/25 9:52 PM, Yao Zi wrote:
> On Wed, Aug 13, 2025 at 01:46:55PM -0500, Alex Elder wrote:
>> Add the Device Tree binding for the PCIe/USB 3.0 combo PHY found in
>> the SpacemiT K1 SoC.  This is one of three PCIe PHYs, and is unusual
>> in that only the combo PHY can perform a calibration step needed to
>> determine settings used by the other two PCIe PHYs.
>>
>> Calibration must be done with the combo PHY in PCIe mode, and to allow
>> this to occur independent of the eventual use for the PHY (PCIe or USB)
>> some PCIe-related properties must be supplied: clocks; resets; and a
>> syscon phandle.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   .../bindings/phy/spacemit,k1-combo-phy.yaml   | 110 ++++++++++++++++++
>>   1 file changed, 110 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
>> new file mode 100644
>> index 0000000000000..ed78083a53231
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/spacemit,k1-combo-phy.yaml
> 
> ...
> 
>> +  spacemit,syscon-pmu:
>> +    description:
>> +      PHandle that refers to the APMU system controller, whose
>> +      regmap is used in setting the mode
>> +    $ref: /schemas/types.yaml#/definitions/phandle
> 
> Clock controllers and ethernet controllers all use spacemit,apmu to
> refer the APMU system controller. Do you think it's better to keep them
> aligned?

I do think it's better to keep them aligned.

And I appreciate your noticing this.  I don't see anything
that's accepted upstream that defines properties like this,
but I now see this:
  
https://lore.kernel.org/lkml/20250812-net-k1-emac-v5-2-dd17c4905f49@iscas.ac.cn/

I did a quick scan for what others do when a property's
value is a phandle, and other than just "syscon" it seems
that word is omitted.

So unless someone else suggests otherwise, I'll use
"spacemit,apmu" for this property in my next version.

> ...
> 
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/spacemit,k1-syscon.h>
>> +    combo_phy: phy@c0b10000 {
> 
> This label is unnecessary.

OK.  I used it when testing USB but we can add the label
back when that driver gets reviewed.

>> +        compatible = "spacemit,k1-combo-phy";
>> +        reg = <0xc0b10000 0x1000>;
>> +        clocks = <&syscon_apmu CLK_PCIE0_DBI>,
>> +                 <&syscon_apmu CLK_PCIE0_MASTER>,
>> +                 <&syscon_apmu CLK_PCIE0_SLAVE>;
>> +        clock-names = "dbi",
>> +                      "mstr",
>> +                      "slv";
>> +        resets = <&syscon_apmu RESET_PCIE0_DBI>,
>> +                 <&syscon_apmu RESET_PCIE0_MASTER>,
>> +                 <&syscon_apmu RESET_PCIE0_SLAVE>,
>> +                 <&syscon_apmu RESET_PCIE0_GLOBAL>;
>> +        reset-names = "dbi",
>> +                      "mstr",
>> +                      "slv",
>> +                      "global";
>> +        spacemit,syscon-pmu = <&syscon_apmu>;
>> +        #phy-cells = <1>;
>> +        status = "disabled";
>> +    };
> 
> Best regards,
> Yao Zi

Thanks a lot.

					-Alex


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
