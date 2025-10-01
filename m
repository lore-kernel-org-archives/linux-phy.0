Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FAEBCCA470
	for <linux-phy@archiver.kernel.org>; Wed,  1 Oct 2025 02:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UtLPeyXhhS/ULBv04r0V6wOx4H8151K9kaJ3P61XsvY=; b=G0gHdf7NAlsv9w
	xE99GH27HE2avu3k1OPbpjicqVovOH+TAC8FXn/5FmJ62fetHer3CmSrZgpAXRRza/HB/ak6dlgem
	jfCZ+IOtwXqerUVG88n7oVLUTZmCLLPdVRJDZAVAuJTFLzLDx7mqm3Ap3ryleF3vZnUxiELDu4B7l
	tq8MXGD30tdtaQBb97mLyFCeVTrlF232vnY88op4sCxOCk/rmTlMSS+Hv+KSbqp5jJoc+WjtEt/xi
	66qH4bjrcocdYBoD5rt8r7enMKz0o7mNzQCkKBxBoMMnZfiSCodmqrHcR7X6omOjl71K3Lu7h/KKH
	/+YTZHDfdhe1dCGhopzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3mlR-00000006aTU-0P5a;
	Wed, 01 Oct 2025 02:40:21 +0000
Received: from mail-io1-xd2c.google.com ([2607:f8b0:4864:20::d2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3mlN-00000006aS4-1LOJ
	for linux-phy@lists.infradead.org;
	Wed, 01 Oct 2025 02:40:19 +0000
Received: by mail-io1-xd2c.google.com with SMTP id ca18e2360f4ac-91524f5e6a8so410684139f.0
        for <linux-phy@lists.infradead.org>; Tue, 30 Sep 2025 19:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1759286416; x=1759891216; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zxQ2zgdrHb7uD7qDfrNlnD3XXSfWmfO7hzlzDTfXqcQ=;
        b=FFQH8J/UlNjPxw60QtQPIjFDHxtka7fJ9+TidNPmpe7kUNi/HgkdX9nhcK+w06Kymn
         538kzej6Bk8tjX9VdhpK4kKGehyxrMhbTyBYdAtWTz/0bVVE4eWakgeb0zIh7A/IPu2U
         Dm+Mt9+OYaikSv1EXxvA+dEVVxNWT5P1ruW93Plr/naulJkyPrERgzDm2YfB2OxW9vtf
         mo6w/EUxv26vQTLcMZqpZUq/s6PGBfhDcQn33b1BeWFocNpXxCF2yJthPItqmjDtid5J
         3zYYADfMLjjHr36iunmyhMFcwqATw5MIcw72wGcqP0HxFPga1XSwmY4n/AV4X6t1IxWP
         b5OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759286416; x=1759891216;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zxQ2zgdrHb7uD7qDfrNlnD3XXSfWmfO7hzlzDTfXqcQ=;
        b=MsfyI9Z5qoI6OKED/JDWQJDEOuswzZpT+3aYgfo1RBCTUGdn3m9Ud1y/9x//M5K5cf
         m5N3+SXFA0sOIf2XB8/eb48uFCWvuUo+zNnNQb9quEmXvQUKAiUWH+l49X/+vgf3igks
         ovvMRafVWcWsZBPDcIRyqHSuL1AKoyKl11xE4/fYRNP4N8CpuRZhP4iZCNENQ1nlnV8c
         H3lDKifBmbyB0YrBunhh1KmUWctnRumsrtx4PRNVIfuT0fTEVaVkgpHdyITgtawzCXVi
         1Ms8b8NMnsQ9vxykCqu2jjN7LrwWqoB/IdehhSqizDXLsB9lZ5Q9P0yCIW8A1ZFeyjfP
         WEKA==
X-Forwarded-Encrypted: i=1; AJvYcCX11AuNOZg0LpKhh0ph7DmZzzYRtpLHdG9jVJrZGm30p59ZtZAwH3K4MVn3+u8/Z1fNZgTCxDjC2No=@lists.infradead.org
X-Gm-Message-State: AOJu0YxA6tgMyUsuOeOog6zp4ePlvc/eiT3K62Vt5V9+okGFgZlb+A6y
	opJHBWzijS9DJseaPrSB+eiNsIetKj/WasnmnJnE3vwWongTGCKBBdo5MdKJAJBMPVk=
X-Gm-Gg: ASbGncszeSY+CJRiQS66VAV2nQyJLF/3eAxRxuamlkJUfZ6swSc7cCRGEv8trT4Z3XS
	o4lU0vsByIlJG6aSkvIJDaMHQ2dsy3Z4+SeQ2t5ohpyvIYcPG6QTi3fGtyM/FyCeMoEPJKdMG1N
	bOBzJkgXo52PXO+Ge4n+RVkAsOxv+06kBlznRvfwK1q0osOJ/2DDiAaZGZabiH1lc7WtpBh3dUI
	D0t6ghfDoFB2XgWT6p/c3625Ye/n7BmU5AMOlEQhUPlJwk7oVqaNfAAtPsaGyCQ3aolnx8SLX9f
	BmawAUwCgp3GFGtFmeWoF+zm61eUkWrTnf9Be0qVMVCcdGOge7UcU3j3Eei5LbkkiqNtKn7PYuO
	3TncOoj0aQEoPj71z260c+QAkspuZjCd4+JJIZBa5DnqmBQ972AmXEEOEtE3XAOKXZO2jjtAXPk
	wzcrDw1EkM30+wjEZMnQ3j
X-Google-Smtp-Source: AGHT+IFQFvztbn8UfbzR8C12GJuYMM6yN5QwMW7n9lxY6XdpjQ/LdhbflFmYGAY5ytHhPYAVoI2Qfg==
X-Received: by 2002:a05:6602:2c08:b0:935:90f6:892e with SMTP id ca18e2360f4ac-937aebad412mr291037439f.17.1759286415752;
        Tue, 30 Sep 2025 19:40:15 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-92d06cc3b9esm184392139f.12.2025.09.30.19.40.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 19:40:15 -0700 (PDT)
Message-ID: <365ade7c-bb2c-42ff-a2e7-9a291b1faab7@riscstar.com>
Date: Tue, 30 Sep 2025 21:40:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] dt-bindings: phy: spacemit: introduce PCIe root
 complex
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
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
 <20250813184701.2444372-4-elder@riscstar.com>
 <tmdq6iut5z2bzemduovvyarya6ho2lwlxvvqqhazw6dnnyjpq3@72xrd2pij42h>
 <804ea57f-699f-41cc-a27c-844f107e627f@riscstar.com>
 <kam6fgc7ykxwnksu562etrib2z4w3sucvr27ojxq62iwyrdai3@i76ygp2anscy>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <kam6fgc7ykxwnksu562etrib2z4w3sucvr27ojxq62iwyrdai3@i76ygp2anscy>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250930_194017_619325_E996080D 
X-CRM114-Status: GOOD (  36.75  )
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

On 9/20/25 12:55 AM, Manivannan Sadhasivam wrote:
> On Fri, Sep 19, 2025 at 03:14:05PM -0500, Alex Elder wrote:
>> On 9/15/25 3:14 AM, Manivannan Sadhasivam wrote:
>>> On Wed, Aug 13, 2025 at 01:46:57PM GMT, Alex Elder wrote:
>>>
>>> Subject should have 'pci' prefix, not 'phy'.
>>
>> OK I'll update that in the next version.

I have a new version of this code ready, but I'll delay sending
it until the end of the merge window.

>>>> Add the Device Tree binding for the PCIe root complex found on the
>>>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>>>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>>>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>>>> typically used to support a USB 3 port.
>>>>
>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>> ---
>>>>    .../bindings/pci/spacemit,k1-pcie-rc.yaml     | 141 ++++++++++++++++++
>>>>    1 file changed, 141 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
>>>> new file mode 100644
>>>> index 0000000000000..6bcca2f91a6fd
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-rc.yaml
>>>> @@ -0,0 +1,141 @@

. . .

>>>> +  interrupts-extended:
>>>> +    maxItems: 1
>>>
>>> What is the purpose of this property? Is it for MSI or INTx?
>>
>> It is for MSIs, which are translated into this interrupt.
>> I'll add a short description indicating this.
>>
>> Is there a better way to represent this?
>>
> 
> For external MSI controllers, it is recommended to use 'msi-map' property as the
> client often need to pass RID, RID length and other sideband data to the MSI
> controller.

This implementation is using the DWC built-in MSI controller, not an
external controller.  It implements 256 MSIs, and they're handled by
dw_handle_msi_irq().  The interrupt will be given name "msi" in the
next version and I hope that at least helps clarify things.

> 
>>>> +
>>>> +  spacemit,syscon-pmu:
>>>> +    description:
>>>> +      PHandle that refers to the APMU system controller, whose
>>>> +      regmap is used in managing resets and link state.
>>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>>> +
>>>> +  device_type:
>>>> +    const: pci
>>>> +
>>>> +  max-link-speed:
>>>> +    const: 2
>>>
>>> Why do you need to limit it to 5 GT/s always?
>>
>> It's what the hardware overview says is the speed
>> of the ports.
>>      PCIE PortA Gen2x1
>>      PCIE PortB Gen2x2
>>      PCIE PortC Gen2x2
>>
>> But I think what you're asking might be "why do you
>> need to specify in DT that the link speed is limited".
>> And in that case, I realize now that it is not needed.
>> I will specify dw_pcie->max_link_speed to 2 before
>> calling dw_pcie_host_init().
>>
> 
> You only need to specify this property if you want to limit the link speed to a
> certain data rate by the controller driver than what is supported by the
> hardware.

Yes, this makes sense.

> Looks like your hardware supports 5 GT/s by default for all ports. So you can
> omit this property and also no need to set 'dw_pcie->max_link_speed'. In the
> absence of this property, 'dw_pcie->max_link_speed' will be populated with the
> hardware default value, which will be 2 in your case.

You are correct, and I verified this.  I won't specify the link
speed "manually," and the hardware default (which is 2) will be
used.

>> If that's not what you meant, please let me know.
>>
>>>> +  num-viewport:
>>>> +    const: 8
>>>> +
>>>> +required:
>>>> +  - compatible
>>>> +  - reg
>>>> +  - clocks
>>>> +  - clock-names
>>>> +  - resets
>>>> +  - reset-names
>>>> +  - spacemit,syscon-pmu
>>>> +  - "#address-cells"
>>>> +  - "#size-cells"
>>>> +  - device_type
>>>> +  - max-link-speed
>>>
>>> Same comment as above.
>>>
>>>> +  - bus-range
>>>> +  - num-viewport
>>>> +
>>>> +additionalProperties: false
>>>> +
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/clock/spacemit,k1-syscon.h>
>>>> +    pcie0: pcie@ca000000 {
>>>> +        compatible = "spacemit,k1-pcie-rc";
>>>> +        reg = <0x0 0xca000000 0x0 0x00001000>,
>>>> +              <0x0 0xca300000 0x0 0x0001ff24>,
>>>> +              <0x0 0x8f000000 0x0 0x00002000>,
>>>> +              <0x0 0xc0b20000 0x0 0x00001000>;
>>>> +        reg-names = "dbi",
>>>> +                    "atu",
>>>> +                    "config",
>>>> +                    "link";
>>>> +
>>>> +        ranges = <0x01000000 0x8f002000 0x0 0x8f002000 0x0 0x100000>,
>>>
>>> I/O port CPU address starts from 0.
>>
>> First, I'm not sure what this comment means.
>>
> 
> Sorry, I meant to say 'PCI address' not 'CPU address'. The second element in
> your 'ranges' example corresponds to the PCI start address of the I/O port and
> it should always start from 0. Also, the encoding for both tuples are wrong. It
> should be:
> 
> 	ranges = <0x01000000 0x0 0x00000000 0x8f002000 0x0 0x100000>,
> 		 <0x02000000 0x0 0x80000000 0x80000000 0x0 0x0f000000>;

Simply switching to what you show works just fine.  PCI
addresses show up being zero-based, as they should be.
What I don't fully understand is why it worked before.
Maybe because this is simply defining bounds in the
mapping?

In any case, I am using ranges properties like what you show.

Thanks Mani.

					-Alex

> - Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
