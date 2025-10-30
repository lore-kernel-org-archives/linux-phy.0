Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9BBD4CCF9EE
	for <linux-phy@archiver.kernel.org>; Thu, 30 Oct 2025 00:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrPKdwN9eeKcacusYclB2aunaj6Y2sgyjVprbq19B5w=; b=TewuERC+3ZYuor
	nP9MjuN2e8Uka729InZIIfsmSeSDE8P2h+s8yMJfNHtJwerfU9WGNjC2ezgiHLESbPYKPUMZFaM4d
	lXCuoqDVReGFd7p809Iop4B8MQPuVTkMeygdL4B3RNfS1WVDOdnFzSSVV+zkG2VztFyyzl5yi9qGg
	uZK5RMNW7z5jqF2pMFdmBciFf/Bm99rfsM5LY42oGv6FEAOR9UdhhRzKBWKN2e3FYqLFQ8p5kK/f6
	/k8qWA3MMdH3H76IJVCuWJ3gjLF0pq7NZyMRLt+QFIAq2OIcXllWMSP8vceLs8iNPF6QCzcEwr62e
	6wBYCJ5S3hC3yPEJEDjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEGF4-00000003HEu-0rq7;
	Thu, 30 Oct 2025 00:10:14 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEGF0-00000003HDd-3RPZ
	for linux-phy@lists.infradead.org;
	Thu, 30 Oct 2025 00:10:13 +0000
Received: by mail-il1-x144.google.com with SMTP id e9e14a558f8ab-432fb3a05d1so3416235ab.3
        for <linux-phy@lists.infradead.org>; Wed, 29 Oct 2025 17:10:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1761783009; x=1762387809; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OxyxNUOgrblEElGmyEA4sep5LlBoVO7BBRw8igevJ6s=;
        b=zeHktBfBYrUQMM8c4ByMWqJsrFdnIb/ekzHZQRitsZP66vSDvWIWvi3OIyJdsd13Wh
         wiHwuHR0XL5M3msTIrGVlBrlrEm07XOZ8mLEjh3o/ySUs0xTvBeL/R7Kufc8mEIyAN8M
         I66HPF5NVwD/D0dswXP76JktPsT8JiBW0NdW4BQRjvncEKAkv4DY4rFwDbqO70sqgDjM
         cTpc8BHV51lbDd070bRRGHxJge+Ng6HgFvYv9+5tKGwSLJM78E464+mQRZR4tJH4IOFV
         R73Cw7vt1dk+RtLisYdlHhi8TDKDcjzjaUQTCmfpSyOJ6ieqWhRzWgmF44OTW7z/AxXx
         Q2FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761783009; x=1762387809;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OxyxNUOgrblEElGmyEA4sep5LlBoVO7BBRw8igevJ6s=;
        b=mOfvJDNBfAjnQeSSVXTalvvhVYW3hkg7ljEduHcOfrw6za80yU0uXMam2JCU/ctNb4
         iZg1euGhuqZD4TRDLpPQc446+yS9dJ9p3COLdW8gHy3gw+vxLKMkedsw2sc9xmo9ysJE
         1j6xkznHtSEV1UygSaVLjtgRbvK4fw5eyOgJltWJNvLNVrdypCsyOMrxIjUuTJ6H+vN6
         6/Rc75SYX5LW5Ap19+mSCP2H6lBAEp6TMlP1IOFntX9TJf0wjOKWg+7hVwD6UUSLCPsw
         MREMXFB+WJccihxJDUtl8wN54NipHdcdcz6qeP7mqkM9yKgK9++VD7/osNNZqkFwBj0Y
         4/kQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3U4CQZiFuqB6brcgOdGDabNWfB9/ZiXk5sJ0LzxEHKnq4/r5bfHrlm/DBuz8g8wSn6lx44+gqSi8=@lists.infradead.org
X-Gm-Message-State: AOJu0YxIiC2mJpxOUq8bL8lxZPE95hl3iDDIccXLvVMl4KqFAZIhpCzU
	TpQG9xKDie7vS0vCJmasUSQmRm9Jqw4TxwY86vzlYXhAW5jR8ceqGcpW+OiV7OMdnTg=
X-Gm-Gg: ASbGncubLZeO2q+7d1RrVJaVFyLaM1k5xYMxv4gGqQ7q/czSE+IMiPaaR6ku+rZgqus
	iClea7D6uOSWYb/a+MpBRpY5AD776XbuTQlLvHverZr5Djx98J7UL7L9ITuSib9nXGY2ugjvzh8
	5yYkyXT+RVJC/2pox6K3OmzwH77I+VyKoaR6ffPlsgCTMKZ7mlRthB5aU4zluIRDYVrC5KHlzYF
	I2ngXwV0CMaXZTymcyaQuS1GUlP3L7oxMDL7IYLxoGT7pe6HrBY+SfB/wRrLZ9joQUyhCwvxaIm
	3T+h0vcs9grFnZCMMV2lMcoUnC2PpY7ruiMhd2GXydY8K6e+SNiMZ4XX7rfyzQ1apS8NmIDzg2k
	iGsfI/BPFCrDFPpDChvIPNxCVjPVdjJGuiTVjym7zeEgoPdTOUbfIQTsFzdlWGSmuujsQNc9UjG
	AnQz5IkRyzg7rhEeP4220OjjDGwAjD0g2mB9EaIOKu
X-Google-Smtp-Source: AGHT+IGo5/UX7J0ClNKidKN2YOwDqgsyx0nxeraSSzCU9ZW8jr+AVU5FOLaQI0Rlsn9hweZUzGxIew==
X-Received: by 2002:a05:6e02:2162:b0:431:d83a:9ba with SMTP id e9e14a558f8ab-432f9045398mr62043485ab.26.1761783009512;
        Wed, 29 Oct 2025 17:10:09 -0700 (PDT)
Received: from [172.22.22.234] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-5aea946de57sm5939330173.34.2025.10.29.17.10.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 17:10:09 -0700 (PDT)
Message-ID: <6a8e8e43-c86f-4c46-851b-858e5deec8ac@riscstar.com>
Date: Wed, 29 Oct 2025 19:10:06 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/7] dt-bindings: pci: spacemit: introduce PCIe host
 controller
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 bhelgaas@google.com, lpieralisi@kernel.org, kwilczynski@kernel.org,
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
 <u53qfrubgrcamiz35ox6lcdpp5bbzfwcsic466z5r6yyx6xz3n@c64nw2pegtfe>
 <ae92d3f4-5131-46be-b9b1-e8ec437c9ae9@riscstar.com>
 <tjnc4wwpdwlziboonlmki6nm7t523k5atemygwyg7ck5knsde4@anjrtcf5gcq7>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <tjnc4wwpdwlziboonlmki6nm7t523k5atemygwyg7ck5knsde4@anjrtcf5gcq7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_171010_984368_5E6AA2F3 
X-CRM114-Status: GOOD (  24.89  )
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

On 10/28/25 12:58 AM, Manivannan Sadhasivam wrote:
> On Mon, Oct 27, 2025 at 05:24:33PM -0500, Alex Elder wrote:
>> On 10/26/25 11:38 AM, Manivannan Sadhasivam wrote:
>>> On Mon, Oct 13, 2025 at 10:35:20AM -0500, Alex Elder wrote:
>>>> Add the Device Tree binding for the PCIe root complex found on the
>>>> SpacemiT K1 SoC.  This device is derived from the Synopsys Designware
>>>> PCIe IP.  It supports up to three PCIe ports operating at PCIe gen 2
>>>> link speeds (5 GT/sec).  One of the ports uses a combo PHY, which is
>>>> typically used to support a USB 3 port.
>>>>
>>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>>> ---
>>>> v2: - Renamed the binding, using "host controller"
>>>>       - Added '>' to the description, and reworded it a bit
>>>>       - Added reference to /schemas/pci/snps,dw-pcie.yaml
>>>>       - Fixed and renamed the compatible string
>>>>       - Renamed the PMU property, and fixed its description
>>>>       - Consistently omit the period at the end of descriptions
>>>>       - Renamed the "global" clock to be "phy"
>>>>       - Use interrupts rather than interrupts-extended, and name the
>>>>         one interrupt "msi" to make clear its purpose
>>>>       - Added a vpcie3v3-supply property
>>>>       - Dropped the max-link-speed property
>>>>       - Changed additionalProperties to unevaluatedProperties
>>>>       - Dropped the label and status property from the example
>>>>
>>>>    .../bindings/pci/spacemit,k1-pcie-host.yaml   | 156 ++++++++++++++++++
>>>>    1 file changed, 156 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>>> new file mode 100644
>>>> index 0000000000000..87745d49c53a1
>>>> --- /dev/null
>>>> +++ b/Documentation/devicetree/bindings/pci/spacemit,k1-pcie-host.yaml
>>>> @@ -0,0 +1,156 @@
>>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>> +%YAML 1.2
>>>> +---
>>>> +$id: http://devicetree.org/schemas/pci/spacemit,k1-pcie-host.yaml#
>>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>>> +
>>>> +title: SpacemiT K1 PCI Express Host Controller

. . .

>>>> +  interrupt-names:
>>>> +    const: msi
>>>> +
>>>> +  phys:
>>>> +    maxItems: 1
>>>> +
>>>> +  vpcie3v3-supply:
>>>> +    description:
>>>> +      A phandle for 3.3v regulator to use for PCIe
>>>
>>> Could you please move these Root Port specific properties (phy, vpcie3v3-supply)
>>> to the Root Port node?
>>>
>>> Reference: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pci/st,stm32-pcie-host.yaml
>>
>> OK, I'll try to follow what that ST binding does (and the
>> matching driver).
>>
>>> For handling the 'vpcie3v3-supply', you can rely on PCI_PWRCTRL_SLOT driver.
>> I looked at the code under pci/pwrctrl.  But is there some other
>> documentation I should be looking at for this?
>>
> 
> Sorry, nothing available atm. But I will create one, once we fix some core
> issues with pwrctrl so that it becomes useable for all (more in the driver
> patch).

Sounds good, I think it's necessary.  I might not get it completely
right on the next try but I trust you'll help me understand what I
need to do.

>> It looks like it involves creating a new node compatible with
>> "pciclass,0604".  And that the purpose of that driver was to
>> ensure certain resources are enabled before the "real" PCI
>> device gets probed.
>>
>> I see two arm64 DTS files using it:  x1e80100.dtsi and r8a779g0.dtsi.
>> Both define this node inside the main PCIe controller node.
>>
>> Will this model (with the parent pwrctrl node and child PCI
>> controller node) be used for all PCI controllers from here on?
>>
> 
> The PCI controller (host bridge) node is the parent and the Root Port node
> (which gets bind to pwrctrl slot driver) will be the child.

That makes sense to me.

>> Or are you saying this properly represents the relationship of
>> the supply with the PCIe port in this SpacemiT case?
>>
> 
> We want to use this for all the new platforms and also try to convert the old
> ones too gradually.

OK, understood.

Thank you.

					-Alex

> 
> - Mani
> 


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
