Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E25C0CA0EE4
	for <linux-phy@archiver.kernel.org>; Thu, 14 Aug 2025 21:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4DQ8LwllKI2IMwwQfokgb9nO6SDJMB9GkdDG9gxF5M=; b=sNGG8cDDNKQZvr
	CIC1LkUxIYDfrVQ3c6RQGVKq1brN9Aj7FugTTqdpt8u29HGiMFTBOZYI4DvwYCOCC8O3/WQUqpjUw
	0V60l7Lr1hJIJ6CbFB/1eeKh4GQDo6B3uu3G48P7ZJNPpDCvaUEiETsrcLgqw99jSby60MPVm5eZ3
	uYqL7cVXlnDnLzVWBoFg5Uh7rWMhUrMmtfCPc/S46ifG9mRFUPbISCtoVhg/hh/eQQw412bDHkJ36
	L+FQ1ozGwzzCZv8nE3N8voZ8ykLvFkZsm/DPgUabA3CrJ/pQCn9UB9ztV8Xn76CM4QrrDmHQlpMQB
	X1cvbvkb9iSx2RL/4mig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfod-00000000ced-23yB;
	Thu, 14 Aug 2025 21:48:55 +0000
Received: from mail-il1-x135.google.com ([2607:f8b0:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umfoa-00000000ccf-3sig
	for linux-phy@lists.infradead.org;
	Thu, 14 Aug 2025 21:48:54 +0000
Received: by mail-il1-x135.google.com with SMTP id e9e14a558f8ab-3e57003ee3fso6864935ab.2
        for <linux-phy@lists.infradead.org>; Thu, 14 Aug 2025 14:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1755208132; x=1755812932; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XCt+/c8MTw4m0fkTKSEjZUjQW40svl96k4sq8RtcJzA=;
        b=FwZLbQysT1DKYRmCVGGPH6f+p3mvPM6BMqdjCGZkMqL1Z4a2orc04fWquZ/WzYDnoD
         PJoQFzu/ra5OGfT7HM7fk0eRrzBWgvj5gqI04qqZl8/0wHSKYRfTH8jRu2H6/uMfBP+s
         ny6Sdi6VQ0mWJwoAQUnF8II1gr0qvEqMKIpXWQ2a+rdEJax6aw3ACplXX3iY28WPdXJf
         V5j4GHBBAxYjRv8SawqGOhdC4/4lIdCF9LSvURRQ8rF05SFpZfGrdaeaURRLKOxlEzpy
         wEfba3SWQdw2OgRH9i634DKCJk0UsvtNz+C6d5i1zG0tOvcpbkbYriQpyUCEyeylJtsR
         j7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755208132; x=1755812932;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XCt+/c8MTw4m0fkTKSEjZUjQW40svl96k4sq8RtcJzA=;
        b=WVKb9OoJ5areQfVHk93vC4KVsK0/xdFFHzpU6LiNv1egdgkLMrBPGRo5zS7/anFSHn
         izVCIRINlJ8qdIbUI9N9lFp2PO03pzhY2/UNbSTpU+ToTQze1sGOSwOfNCHMnhymgOz3
         ACji58lobyKipprGIAo62gH/zex9rpdIylM5I9//qc57zW0/863DQwIh7Tu4LbQI0eLE
         91pLELphCX4HawYOrTaYSNR+grGiBpVp5BtJfHroGoOs4JbopEc5EkxcyVPaMjhLEBQy
         GoOES7Gf6oJTCZdlJarq7g0fUwx80waRUeefYnDeAAJfpNWkjykqZ9FnVlBsFbGoV3cB
         ex7g==
X-Forwarded-Encrypted: i=1; AJvYcCUXTJFQz+SLyPk0MZ4w9pJxS2FyBYz+MwZiY+EiHuBQO1hIbtRs5VGCTZ034gNcCSbnlDU5hD9+R3A=@lists.infradead.org
X-Gm-Message-State: AOJu0YwDwze1dkLf8m3BDvQsuiYQexFgjOM6Tis8mpYOg6hrzpDchU/p
	qY1tV6Btbf+nBGE9ZYa3CfU5/NPtA5XMFF2mSbyJzOzUET5W28ORrn8Y6AioHEvurl4=
X-Gm-Gg: ASbGncsoHlEMnxMLqkwzOgciS78vFBWwKtgpRuOpYE3XUeu81CQVD2PV9dglk0uPJBq
	vbEnWzaPCunStDSGRJRkXV8UwB4U1XQCiAEwFo5Fv9ZeVS/OiEB+/3debS6XX6V8czY9HNoX47R
	53O2j/oOhRG74vwe2Bvo15M5EMq6cKbfPkriD0q1KV4yVISQLrdKms06jfc0RQwIDmwnGKdZqSC
	/Rmqhsio1Oa/RxJt1Z1ExMz+pIHD9EpiiGYm+DJLZ9gSo9YZalinCkEHurQXWbX+J8lSW8Vp5tC
	Oibf5CecnIxqbHath1tZNX5vPHQCBhPEFafDiHfvI+f2Zh8BE96E5ZPjRxfr+ZJBt8frRJVzzDx
	3PThMxoz8kwsrE22XMDwj8UDASCz6EERqdK2jB76Ji925ZUaI0d5f6G1sRkHNeA==
X-Google-Smtp-Source: AGHT+IFztpZaPjE0ea4cNoutzDsxWfnWI0H8yYAAWojxd3NMEw8UDJycdrDTch6nLLHh52NEA2N7Sw==
X-Received: by 2002:a92:cd8c:0:b0:3e5:4eb2:73e3 with SMTP id e9e14a558f8ab-3e57ba5c53emr13235285ab.16.1755208131603;
        Thu, 14 Aug 2025 14:48:51 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50ae9bd3291sm4605468173.63.2025.08.14.14.48.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Aug 2025 14:48:51 -0700 (PDT)
Message-ID: <bc6975bd-cc1a-41ff-887c-0509bc8f03c3@riscstar.com>
Date: Thu, 14 Aug 2025 16:48:48 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: phy: spacemit: add SpacemiT PCIe/combo
 PHY
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, bhelgaas@google.com,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org,
 paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, p.zabel@pengutronix.de, tglx@linutronix.de,
 johan+linaro@kernel.org, thippeswamy.havalige@amd.com, namcao@linutronix.de,
 mayank.rana@oss.qualcomm.com, shradha.t@samsung.com, inochiama@gmail.com,
 quic_schintav@quicinc.com, fan.ni@samsung.com, devicetree@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pci@vger.kernel.org,
 spacemit@lists.linux.dev, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250813184701.2444372-1-elder@riscstar.com>
 <20250813184701.2444372-2-elder@riscstar.com>
 <20250814205128.GA3873683-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250814205128.GA3873683-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_144853_081576_A9F6A42A 
X-CRM114-Status: GOOD (  36.86  )
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

On 8/14/25 3:51 PM, Rob Herring wrote:
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
>> @@ -0,0 +1,110 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/spacemit,k1-combo-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SpacemiT K1 PCIe/USB3 Combo PHY
>> +
>> +maintainers:
>> +  - Alex Elder <elder@riscstar.com>
>> +
>> +description:
> 
> You need a '>' or the paragraphs formatting will not be maintained
> (should we ever render docs from this).

OK.

>> +  Of the three PHYs on the SpacemiT K1 SoC capable of being used for
>> +  PCIe, one is a combo PHY that can also be configured for use by a
>> +  USB 3 controller.  Using PCIe or USB 3 is a board design decision.
>> +
>> +  The combo PHY is also the only PCIe PHY that is able to determine
>> +  PCIe calibration values to use, and this must be determined before
>> +  the other two PCIe PHYs can be used.  This calibration must be
>> +  performed with the combo PHY in PCIe mode, and is this is done
>> +  when the combo PHY is probed.
>> +
>> +  During normal operation, the PCIe or USB port driver is responsible
>> +  for ensuring all clocks needed by a PHY are enabled, and all resets
>> +  affecting the PHY are deasserted.  However, for the combo PHY to
>> +  perform calibration independent of whether it's later used for
>> +  PCIe or USB, all PCIe mode clocks and resets must be defined.
>> +
>> +properties:
>> +  compatible:
>> +    const: spacemit,k1-combo-phy
>> +
>> +  reg:
>> +    items:
>> +      - description: PHY control registers
>> +
>> +  clocks:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) clock
>> +      - description: DWC PCIe application AXI-bus Master interface clock
>> +      - description: DWC PCIe application AXI-bus Slave interface clock.
> 
> End with a period or don't. Just be consistent.

OK.

> You need DWC PCIe clocks for your PHY? A ref clock would make sense, but
> these? I've never seen a PHY with a AXI master interface.

*This* is what I was waiting for.  I explained it briefly in
the patch headers and elsewhere but I expected questions.

This is needed to support USB mode, while also supporting the other
PCIe interfaces.

The SpacemiT IP requires its PCIe interfaces to have 4-bit RX and TX
receiver termination values be configured during initialization.  The
values to use must be determined dynamically by doing a calibration
step, then reading a (PCIe) register that contains the values to use.

Only the combo PHY is able to perform this calibration. and the
configuration values it determines must then be used to configure
the other two PCIe (only) PHYs.

This means that to calibrate, the combo PHY must be started (clocks
enabled, resets de-asserted) in PCIe mode.

If the combo PHY were going to be used for PCIe, this could be done
when it is initialized, because the PCIe driver would ensure the
clocks and resets were set up properly.

But if the combo PHY is going to be used for USB, the PCIe
calibration step would (otherwise) never be done, and that
means the other two PCIe interfaces could not be used.

So my solution is to move this calibration step into the PHY.
The combo PHY performs the calibration step when it is probed,
and to do that the driver needs to use its PCIe clocks and resets.
Once the calibration values are known, the clocks and resets
are essentially forgotten, and the PHY is available for use (by
either PCIe or USB 3).

The other two PCIe interfaces cannot probe (-EPROBE_DEFER) until
the calibration values are known, which means they might have to
wait until after the combo PHY has probed successfully.

I asked SpacemiT about this a lot, but their answer is that the
combo PHY is the only one that can determine these values, and
they must be determined each time the hardware is powered up.

I think this approach is less ugly than some alternatives.

Is this clear?  Can you think of a different way of handling it?

>> +
>> +  clock-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +
>> +  resets:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) reset
>> +      - description: DWC PCIe application AXI-bus Master interface reset
>> +      - description: DWC PCIe application AXI-bus Slave interface reset.
> 
> Same here (on both points).

I will remove the period on the third one.

> 
>> +      - description: Global reset; must be deasserted for PHY to function
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +      - const: global
>> +
>> +  spacemit,syscon-pmu:
>> +    description:
>> +      PHandle that refers to the APMU system controller, whose
>> +      regmap is used in setting the mode
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      The argument value (PHY_TYPE_PCIE or PHY_TYPE_USB3) determines
>> +      whether the PHY operates in PCIe or USB3 mode.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - spacemit,syscon-pmu
>> +  - "#phy-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/spacemit,k1-syscon.h>
>> +    combo_phy: phy@c0b10000 {
> 
> Drop unused labels.

OK.

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

Krzysztof also pointed out that I can't disable it so I'll drop
the above line as well.

Thanks for the review.

					-Alex

>> +    };
>> -- 
>> 2.48.1
>>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
