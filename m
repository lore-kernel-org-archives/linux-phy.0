Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BA5ACCD195
	for <linux-phy@archiver.kernel.org>; Fri, 17 Oct 2025 16:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6GIl/nnKLmM58ZBZ/XtOClupxBDPqDKCVFCaAptt2g=; b=WzLFPA+007BwhV
	ZhW6ge8fyRZwdMyutCWbGoOevhFr0riuUVMOWdF8GRbldzUs/LvtM1zHh7wmEDiinXfopvQCtK3LS
	vVMM1wFiCofZmgGI/SEWcE436GiYPbw6MWj4dR6SsdR75kmZqMZTgVdRGRXXRx/xFGgeoZA40xnv2
	krYxCRW3UeeExsVNve8Fvlm72aTE+7B1BdKXlXs7qCS1UjrUDD1PBPd9OF0Vn0W58cEmyZdOt5OHs
	ux3seAvWm83SUpOsg45cgGFNg5zmw9Q7yRgoLuKeKAHNi2akyaq2M0YE8rw619qnsfFoCdMfAF1HL
	zhb7bmcqz0RqiQ1s95zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nCO-00000008Q6G-0kiq;
	Fri, 17 Oct 2025 16:21:00 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9nCK-00000008Q2v-3TzR
	for linux-phy@lists.infradead.org;
	Fri, 17 Oct 2025 16:20:58 +0000
Received: by mail-il1-x143.google.com with SMTP id e9e14a558f8ab-42d857dcf92so9097955ab.1
        for <linux-phy@lists.infradead.org>; Fri, 17 Oct 2025 09:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760718056; x=1761322856; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kq4xC/ePley+c3+EpvbCqMrUnY6wr0uXkN8/DbkCipg=;
        b=KoYpgYqE953gb8DPiKOKRJLbSY+dCJX/Cla59VYaLw6ELIXZNbZNKFJEOzPogKZrhf
         O//GphM1t0CvPXOUao6bjgAMPHBHIe9NJWIWeiL4uVxMoNaKgg0bYWUw26woeYlVClb3
         1qZo3heCVx+FOgdjJP8AGtC+xeeHZXiLT+XYFF//oziV3MUWFOER74bYr9xGXWiTK1F3
         giRRDwXiC6Ur7Fjkat4V1Lldll631BtOTPVJlio02AQh4Jqe3nT4OKLnFWZBKr9zoyhI
         0HRVn3Y29452PNJ78jUAcwjGhHQXECmAkyTsP87SLSIU5tz1GJtegDHwyS5T6qMeawz6
         JXdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760718056; x=1761322856;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kq4xC/ePley+c3+EpvbCqMrUnY6wr0uXkN8/DbkCipg=;
        b=vjosbrDVshUloHmHDRe/iUJCNoPxsvtOQmUmhG6MfL4cv2iNCEi5BiTMhksFz8UvuB
         KnvgD+4ZUj+lSRWYuYCMFm1IsDvwliVxGI5ye2i+4cO9uiGFp+UcmntYDcyPmrn1mZJo
         7b3ZuKYvzltLlw4BRGnOLF9ChmsJRQ+ZbMJ3Mv9nacxWlfq/OFe7aVYvubpAK5XG6stY
         2nm4/gAbRCOgvZfLjSWtMlBV/6Krt7R4SCslQDgZNB0RwZOlJPtMEqEsM/9+YbXEb2Fo
         DEuiAQFxe0rG27KeB0nHt7CUb+GZtQLxXMMTVZfTVQtaJwwnGKZHkpzBXxwDItIcTk9k
         dSrw==
X-Forwarded-Encrypted: i=1; AJvYcCXYnF6C+gj3+fN67B1ywKmCMsPB4kJqlhgXJlPjn2PSAtDi4lhjnFG5V+EznvKbOtvzNjadc4sAUbM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yydh6Ap+EjKSHlyqK+Ep/LUeJlM6MLvtF63oUYMTydV5jZ8c4iJ
	5SQmu6uqa+H6RL41k+xaNJMFNwd1/W4qliBpsQVizkmuiY4sBZgqkkkKIKopU7Szqn4=
X-Gm-Gg: ASbGncuuc7QO1/TEsjGPCMvITp5HC7ZBbik2BHLSCB+JUXFx2sc4n75oJayHZTuPtAm
	9niQAkRb+hD/ReroAbuST4q2wMlGI1x+fYMF0saPof3eyLrr+VSwturroKm7XZ7MtANV2TDvlDa
	aXCq28vDy1m8+l6JV6CuCYlKi2ZE+LUCKKlcbhfarER4Od44Rzbgo2PmKTlNFarAir8+LF+CaLu
	ury6WqWa7HmPPCSlehLz13R4nYXNJpkpfcBXralAqGyQXdThDghTd/8n2EIhDq0rhK4vOjje1Ov
	z5S9nWeo5edVBGafyj9Lftw8D9UXkZY4JuwIKVoRkbanOAEPZP0MgqvGZ4CvjKfw1zgD38veb/t
	QIkBDtCH4qvKfaGACqTWAGfi3SWH/28XLC5x6nhNtCRjKKpscHUQrl4tp/qAir+M8MKwte/sQav
	c7oSQAI/UPERv87deKypVOO5R0zR/NlVc3K/iXe5zljyT11swmdw==
X-Google-Smtp-Source: AGHT+IFTra9R68sarPEZ7JGiGUxqA+JBh5gKP1pY4jtUAbRv4g02dpfpSvuUEN/4DBcwJsgAfUmRPw==
X-Received: by 2002:a05:6e02:2307:b0:42f:a60a:8538 with SMTP id e9e14a558f8ab-430c52b5afemr49210015ab.16.1760718055789;
        Fri, 17 Oct 2025 09:20:55 -0700 (PDT)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5a8a962f04fsm22836173.21.2025.10.17.09.20.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Oct 2025 09:20:55 -0700 (PDT)
Message-ID: <72e30269-a7e1-4f34-81ad-9026ef95ddd4@riscstar.com>
Date: Fri, 17 Oct 2025 11:20:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dt-bindings: pci: spacemit: introduce PCIe host
 controller
To: Rob Herring <robh@kernel.org>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, bhelgaas@google.com,
 lpieralisi@kernel.org, kwilczynski@kernel.org, mani@kernel.org,
 vkoul@kernel.org, kishon@kernel.org, dlan@gentoo.org, guodong@riscstar.com,
 pjw@kernel.org, palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <20251013153526.2276556-4-elder@riscstar.com>
 <20251015164730.GA4032812-robh@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20251015164730.GA4032812-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_092056_882670_EDB0C214 
X-CRM114-Status: GOOD (  24.02  )
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

On 10/15/25 11:47 AM, Rob Herring wrote:
> On Mon, Oct 13, 2025 at 10:35:20AM -0500, Alex Elder wrote:
>> Add the Device Tree binding for the PCIe root complex found on the
>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>> typically used to support a USB 3 port.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>> v2: - Renamed the binding, using "host controller"
>>      - Added '>' to the description, and reworded it a bit
>>      - Added reference to /schemas/pci/snps,dw-pcie.yaml
>>      - Fixed and renamed the compatible string
>>      - Renamed the PMU property, and fixed its description
>>      - Consistently omit the period at the end of descriptions
>>      - Renamed the "global" clock to be "phy"
>>      - Use interrupts rather than interrupts-extended, and name the
>>        one interrupt "msi" to make clear its purpose
>>      - Added a vpcie3v3-supply property
>>      - Dropped the max-link-speed property
>>      - Changed additionalProperties to unevaluatedProperties
>>      - Dropped the label and status property from the example
>>
>>   .../bindings/pci/spacemit,k1-pcie-host.yaml   | 156 ++++++++++++++++++
>>   1 file changed, 156 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> new file mode 100644
>> index 0000000000000..87745d49c53a1
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>> @@ -0,0 +1,156 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: SpacemiT K1 PCI Express Host Controller
>> +
>> +maintainers:
>> +  - Alex Elder <elder@riscstar.com>
>> +
>> +description: >
>> +  The SpacemiT K1 SoC PCIe host controller is based on the Synopsys
>> +  DesignWare PCIe IP.  The controller uses the DesignWare built-in
>> +  MSI interrupt controller, and supports 256 MSIs.
>> +
>> +allOf:
>> +  - $ref: /schemas/pci/snps,dw-pcie.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: spacemit,k1-pcie
>> +
>> +  reg:
>> +    items:
>> +      - description: DesignWare PCIe registers
>> +      - description: ATU address space
>> +      - description: PCIe configuration space
>> +      - description: Link control registers
>> +
>> +  reg-names:
>> +    items:
>> +      - const: dbi
>> +      - const: atu
>> +      - const: config
>> +      - const: link
>> +
>> +  spacemit,apmu:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      A phandle that refers to the APMU system controller, whose
>> +      regmap is used in managing resets and link state, along with
>> +      and offset of its reset control register.
>> +    items:
>> +      - items:
>> +          - description: phandle to APMU system controller
>> +          - description: register offset
>> +
>> +  clocks:
>> +    items:
>> +      - description: DWC PCIe Data Bus Interface (DBI) clock
>> +      - description: DWC PCIe application AXI-bus master interface clock
>> +      - description: DWC PCIe application AXI-bus slave interface clock
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
>> +      - description: DWC PCIe application AXI-bus master interface reset
>> +      - description: DWC PCIe application AXI-bus slave interface reset
>> +      - description: Global reset; must be deasserted for PHY to function
>> +
>> +  reset-names:
>> +    items:
>> +      - const: dbi
>> +      - const: mstr
>> +      - const: slv
>> +      - const: phy
> 
> You expect/need the phy driver and PCIe driver to both reset the PHY?
> You should do that indirectly with the PHY API when you reset the
> controller.
This was previously called the "global" reset, and I renamed it
to align with one of the existing DWC "app" resets.

I put it here because I had the impression that it was required
to be deasserted for both PCIe and the PHY to function.  Currently
only the combo PHY gets and deasserts the PHY reset (for the
benefit of USB).

Instead, I'll require this global/phy reset for both the combo
PHY and the PCIe PHYs.  I will get it (deasserted) during probe
for all of them.  Then I'll remove it from the list of resets
required/managed for PCIe ports.

I'm going to keep your Reviewed-by on patch 2, even though I'll
be adding "reset" and "reset-names" as required properties.

Please tell me if you'd like me not to do that.

Thanks for the review.

					-Alex

> Rob


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
