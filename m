Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BC51CCD183
	for <linux-phy@archiver.kernel.org>; Tue, 14 Oct 2025 01:57:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MHjxDTFlz3pC3xXYl6ZOX28R1psMF3OoJp6UMhsxjqA=; b=mlmjqNyRSTG/8U
	LCdvu1wFQu2C3SZE1OOxL8cSkoQ+KpXZMPzpic/BLYs6zkYkEb2viqQBs4E3g5Fl/90GQDkG/riX7
	RqHjYFQE+/IXNboPsamLNnF0LuSpCTMRnyeZhM0eYCCWkXA13VujQcxz3kORrskLqZ/H3stTMcrzf
	E8QGJTK6TzmnyCRpcFy/c+N6PLkwa8ZsBseew2PVScQg7aEwcwlVMFLcvBlxOp3gHnpwhvouOjwfB
	r8JISlUrCiJwZ8dTrp73p1/gqrrYY9UK4sm49o0L5jdchkhF/r3Ndo/tPzyXkbA7X8sk7wl0/x+Lk
	1Svy/E5T4wIRCOQ+blgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8UHw-0000000Evq3-3uRu;
	Tue, 14 Oct 2025 01:57:20 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8UHu-0000000Evou-00HQ
	for linux-phy@lists.infradead.org;
	Tue, 14 Oct 2025 01:57:19 +0000
Received: by mail-io1-xd41.google.com with SMTP id ca18e2360f4ac-91179e3fe34so254359739f.1
        for <linux-phy@lists.infradead.org>; Mon, 13 Oct 2025 18:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1760407037; x=1761011837; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DRqpVkhMILdGgOXoNXOKPLRF82QFKKsH1zKrfan+k9o=;
        b=BVEBbaetHPEjkykMcMt+bmOVcP1OgaHkpjcKVM6Deq0Rfc5f6ivQ9Yghn4PKjvhz68
         okYZ0EM+ib2EP0hRtlJfXX0KAFBcJPH2RHqBqOerbVbRsgLI2ZTmaNA+1fPiLUSMBBo4
         Ei5Hv1ZmS3GhKdLVtNypI2gYi2l8Zgmza/BYSWWXYiTuskmB4DIqq02/7z6ssuUDxbGi
         7wVJOeyhrjGvKH/KHLoQ6yoPbbVMUr+AusnsTZ3u2GNo7woKZy0q8QfbonR0fK7r37oT
         espO8vjn4Ovvxexnf5H4a2ekNJeihluOkzm//JW6xszZAUmOuY66joVYzWMbba4+4zvv
         P+Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760407037; x=1761011837;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DRqpVkhMILdGgOXoNXOKPLRF82QFKKsH1zKrfan+k9o=;
        b=MMpgKIC9FJaw5l4X8HFo71+EJyaJrzi+uH/boKrs6AJqnVGgx2nENQdoEnQAIDb0rw
         lmBQH9CG4kJL+HScbwvYe34eFiduGupa2IDwxrT4yoz+mszsIPchnbaUHdJlRfCx304R
         cNF+b9nr+IB/WIBgoRq2jhobUQt18qVZSJbwEo5Xsv/4oJbRR4QBo2c3eqKya9p1V3P0
         IoTkRmDfMqUwl5gALcYwqKollDeQRmFBaEHGJwtiGznbvgqlBzy3JXffM1EzzZfb++M3
         9bIh8L7zfSCte1LqVQDZhme/SEAAVobcn7yd6wnfw7lfuJY92yEA3x9/s1F/kwV8cJE8
         ExWA==
X-Forwarded-Encrypted: i=1; AJvYcCWCSwctUVFzGbBy6p5n+qAHbQ4bODri7W86pPJe9/matUxCi5qx5gslhkRvwyJh3D+ucHoedsgaArs=@lists.infradead.org
X-Gm-Message-State: AOJu0YwS+tkOWNzHiisNe8fAGwwc6pmCGP6yvslMiOCiBfO48FkmqysX
	yvhjnZ6TPZTBSs7viVADnz7Ai1F4FW6+vyDLqkvKKW9lT97GgtjDUdETt7rz0eNq+Z4=
X-Gm-Gg: ASbGnctsHyX41muSk7LYGvrT/QzfKYYPBasKlW+MIb/qLX8cznGZAVAB0o1db6/cBPB
	9LXORzH1y8KXK8hCJuKNmCk2ib/dgEWx87tYzxP+D9C0L2RiWhp2yOEuzfxg6YsTdU6Y4zRvITi
	RDLv4QImy7Yta/XL/XsX8qmxXF5WHjmF1uOtrRGL5E6eGSKGqH1ZaNEJYH830W9pURVY1zwe8Gp
	kVnJnlIdA74gCGI2CtZQ28MA2uWerllZgkwi9JRUUtm5MKNaqNO4aiPKDDbFFC2ApSJ+KC4zmxN
	2NINGUteZPyrASdsuTFzrfEcxwmXKrEb5CMu+g2G6dxj2bngb+xihkx6eOcJQHU6xGvF0x6fGb5
	lMHfySeHh1hViP6bYPKkv0d9MjmrQCeHPcvDQZZ3BK9wDUWwv8BcuXuOe6I+CMUtcwdBSQQz/F+
	nXEHZj90R+Zay+Kw==
X-Google-Smtp-Source: AGHT+IFz+6u4FT7mXO0HjOe5eXpI34wWI1ZFKrY/cjEseejOQH/7Ctss1Fp2rB13acyyKvsMsu5OOA==
X-Received: by 2002:a05:6602:811:b0:87c:2a76:4cf9 with SMTP id ca18e2360f4ac-93bc4074509mr2599466339f.1.1760407037052;
        Mon, 13 Oct 2025 18:57:17 -0700 (PDT)
Received: from [10.211.55.5] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id ca18e2360f4ac-93e25a659a0sm455091539f.17.2025.10.13.18.57.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 18:57:16 -0700 (PDT)
Message-ID: <860df9d7-9791-40de-903d-0f62d34533e7@riscstar.com>
Date: Mon, 13 Oct 2025 20:57:14 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dt-bindings: pci: spacemit: introduce PCIe host
 controller
To: Yao Zi <ziyao@disroot.org>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, bhelgaas@google.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, vkoul@kernel.org, kishon@kernel.org
Cc: dlan@gentoo.org, guodong@riscstar.com, pjw@kernel.org,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr,
 p.zabel@pengutronix.de, christian.bruel@foss.st.com, shradha.t@samsung.com,
 krishna.chundru@oss.qualcomm.com, qiang.yu@oss.qualcomm.com,
 namcao@linutronix.de, thippeswamy.havalige@amd.com, inochiama@gmail.com,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-phy@lists.infradead.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251013153526.2276556-1-elder@riscstar.com>
 <20251013153526.2276556-4-elder@riscstar.com> <aO2tkGSUTYssSaVf@pie>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <aO2tkGSUTYssSaVf@pie>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251013_185718_282771_225A36BE 
X-CRM114-Status: GOOD (  19.85  )
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

On 10/13/25 8:55 PM, Yao Zi wrote:
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
> 
> ...
> 
>> +  num-viewport:
>> +    const: 8
> 
> This property has been deprecated for a long time, and the driver now
> detects viewports at runtime since commit 281f1f99cf3a (PCI: dwc: Detect
> number of iATU windows, 2020-11-05), IOW, it makes no effect with the
> current mainline DWC PCIe driver. Is it really necessary?

Based on what you say, the answer is "no" and I'll gladly remove it.

Thanks.

					-Alex

> Best regards,
> Yao Zi


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
