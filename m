Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE07FE77199
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 07:29:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=phPMoe6r3VI+BeK5aCdr/gnKb86w5voYo2NTPNECDI8=; b=grulj6JrQGW3FT
	lAVP6cnDbIb/DB+U4zTfvXM2zAcolCB+YxP+9HkHwIvHCDRrCBE3TyT5oXRvIjsL8Faf6f4K0iezP
	hMKkpz6vgNyx6Rz3BTX/UpS4OLO3jMx+QE7ScDYZGjHxrs9oL6zPPONvopiFKjBKwlV+JnzpqrGqu
	rvbGeqhhf7ah4VXk/YO172I+mtTmdJw0pctRgI8FVh9P+a5BqTiEQD8ezg1dcO7yLxJh73WRBhB6k
	IuzwV5MG9Wg8HdznZa3Kz4y8A2LrunhsnXVZOmaBHyp5JE2onfqmcUV0ZtLNzpK1ZrLTBvoFWoc3o
	CsllfxxrpiOtz+ppqVnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQUx-00000007Qr6-2Dau;
	Wed, 08 Jan 2025 07:29:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQLl-00000007PFT-25pb
	for linux-phy@bombadil.infradead.org;
	Wed, 08 Jan 2025 07:19:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=fkdB7Nekg9asItC+9AUsSypCC3YpJHftpJ04vF6dQwI=; b=biK4Cv6q3LKb3FFvz/JEF2soQQ
	fEYHxWF2PHg4JECdDYOVP8u5+qJemdj0j6WKnxVWAfLoX8+lhMqs27qY4tVSDJZ5S4kpXM23noEcm
	24cf2Tmt6qgNdwSvm4O5eTyTkYyFEtFhF/pbAdHWI+Qpp2QyeChRwfPK9P37VmecDTp6uPwavF0IA
	dr5i3hY7k+zFAFtJyW+SGGGY7dQuxHu2NWvMnKPWga7adXNklihFNJyydRQEaPANbJpt9vCTWkTKu
	p8si+IDAYSInMcoVt4dwoemHRJNCPEeTQ9YO4rscyL79oYc2ip/lYO1Y5fCjMEg2UDJLk82ZVwcMX
	WsuWetaQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQLi-00000009I4K-1xmy
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 07:19:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AD3335C43B0;
	Wed,  8 Jan 2025 07:18:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17374C4CEE4;
	Wed,  8 Jan 2025 07:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736320768;
	bh=NOjxFjPiFxT527PiGFoNNkAPVLdtxQhUm1eAB4jinV4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tJG9+hRnGDNq+vhWALx7FsdTKpnNlnHL6tXXxbCg72zHQpe02Ebidj2hWgEP/54uA
	 yrxW/BLctFhgtLzjQyOu786+WvYImwCfyaIuOoxmK6pj983neNQwgINtRs618X3/T4
	 zBt6KW0G4hlPGvILcImAYGz0+5u7ykNd0PBuqx9NFx90PFI5uFX/GX0MCHlYGuwvqx
	 bhdh4WxHzjp2smOhATJXnMUhDu8SqF3EHswuQr9w33/yT5bxou+1zNGZymRSu20Y3j
	 SQOrcYPhZB3k5pcQTe+ezzM8COGKbmVIcwcLKm0g2JdWyPNBcbAFv0LJvvlhs2w2ci
	 mX0TwgtKfu3Cw==
Message-ID: <50b03189-bf2c-46c8-b7c2-4aa5eed97c35@kernel.org>
Date: Wed, 8 Jan 2025 08:19:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
 manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
 andersson@kernel.org, konradybcio@kernel.org, p.zabel@pengutronix.de,
 quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-4-quic_varada@quicinc.com>
 <4hwclzotaowog6rzfejiixqvvg7iumg4udbvq3h72mmh42dbki@piphsf37vhpv>
 <Z30KZM1RGdFvB1dy@hu-varada-blr.qualcomm.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <Z30KZM1RGdFvB1dy@hu-varada-blr.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_071930_998443_9E16E2CB 
X-CRM114-Status: GOOD (  12.01  )
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

On 07/01/2025 12:05, Varadarajan Narayanan wrote:
>>> ---
>>>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 10 ++++++++--
>>>  1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> index bd87f6b49d68..9f37eca1ce0d 100644
>>> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
>>> @@ -26,7 +26,6 @@ properties:
>>>            - qcom,pcie-ipq8064-v2
>>>            - qcom,pcie-ipq8074
>>>            - qcom,pcie-ipq8074-gen3
>>> -          - qcom,pcie-ipq9574
>>
>> I don't understand this change at all and your commit msg explains
>> here nothing.
> 
> All DT entries except "reg" is similar between ipq5332 and
> ipq9574. ipq9574 has 5 registers while ipq5332 has 6. MHI is the
> additional (i.e. sixth) entry for ipq5332.
> 
> If ipq9574 is not removed from here, dt_binding_check gives the
> following errors
> 
> 1.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg: [[557056, 12288], [402653184, 3869], [402657056, 168], [402657280, 4096], [403701760, 4096], [569344, 4096]] is too long
> 
> 	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg']:
> 	    {'maxItems': 5, 'minItems': 5}
> 
> 2.	/local/mnt/workspace/varada/upstream/pci-v6/arch/arm64/boot/dts/qcom/ipq5332-rdp474.dtb: pcie@18000000: reg-names: ['parf', 'dbi', 'elbi', 'atu', 'config', 'mhi'] is too long
> 
> 	Failed validating 'maxItems' in schema['allOf'][2]['then']['properties']['reg-names']:
> 	    {'items': [{'const': 'dbi'},
> 		       {'const': 'elbi'},
> 		       {'const': 'atu'},
> 		       {'const': 'parf'},
> 		       {'const': 'config'}],
> 	     'maxItems': 5,
> 	     'minItems': 5,
> 	     'type': 'array'}
> 
> Hence had to remove it from here and add it to the sdx55 reg
> definition.

So you entirely dropped constrain for regs. No. This has to be fixed,
not dropped.
Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
