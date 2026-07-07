Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E5E7C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VVLZZtpBvfO2xl6el4tQXDImtAl0GzTrdAnurs2RFso=; b=4p88csB0DiXk8c
	85VXcg1817PxB2vblPz15vV3VMQlVLN8cvUg5SU541UkujTqo18yOvyvJofs3WTKVWanGEvu+YgBW
	+PeM0x3OjjKhaNvnABWYhml0GxkNz+g6OrPJERg9bosQqZUlamj2179nLLsqN/MRzmKZp2ZBT61zi
	MIQHsr2BuUKODasFqGx8pZ6fCPy5Pyz5CaIUiFdRUaEKjtSouPfa/x+T5nbmdoS4f49UOYdZbAMd0
	itXjxp9CNYylZ+WQD3zgptxNHk4YFHHJJuDlvrQFAAFBEhrES7oSjM7TSlf9HOVk+ABttVsdaVev1
	/It5PSmGEdfQijim45Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyZ7-0000000E8nc-3nJ5;
	Tue, 07 Jul 2026 05:41:53 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyZ5-0000000E8nD-1zjP
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:41:52 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66748mlm2649162
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:41:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ow/eYL8dueLqt/B+l/aviyIZSIeIrdYbf3Z3NhMMHok=; b=ZHhxHNv3oNKYdllQ
	HccPBJl83ODUJG7oL7Kx2LsFfGE5GuDSMP6LgfHNgnxLzfUtVuj1V32G7gHx1pAk
	y0TKnf6j7RkHtdxQVal94OSBWhHZc9llnTlrkltz0+dE7GcY+Gv9yfsrYXY0uuCo
	uC/T+eZ5yDlQHgquP6cTsihcMV2VQo+IOPLgYlr/ISrEJwNsYouQRZFnFr9Hy0pC
	Jqzyr5jwN+pBbnb8ZRorxlOktNjIH7bD5lgMVUsUGJF4CDnhgOZfxV27jo6zBkh6
	0Yaw6nUkwSANqapnogCMEdFFKVzefTjl7lZlq/4KchuaEbRz89/M9R0+e9R5IFCU
	1vl4oQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8fdw2ptu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:41:50 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-845e3ede1f9so4436254b3a.0
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:41:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402910; x=1784007710; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ow/eYL8dueLqt/B+l/aviyIZSIeIrdYbf3Z3NhMMHok=;
        b=BPt0XafPJ8jZAX0xaZUHtzx9kFlUwc/58K1b2MnMeXGWCv5BvhQxJo9GXNKeqPx3t9
         Wdg5D6TX+vMrP9vMbFmXY0bL2NY4gttCVHJFRbi1NC+N+r5BBlhjzlUyYj+o4jI3iiKM
         9dCzFf0Z8TwzYA3e9C95S3LiisP3RI1ThFlT/8wU903ToSzQTbwmCWVIBs2DOd3wwLXz
         sdokhyIJjV+jcifsRez8a3tcbVzxgacAWbW6KXt1t+tQ6LtCic52tTjWnnmDwiNVo6T+
         BxTsfKvCCP94HUHvQYwXpVBMWHjPLM6ZhVeqyUsJkQm5E7yGpKfq6adBArehVo7tSXf2
         K2Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402910; x=1784007710;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ow/eYL8dueLqt/B+l/aviyIZSIeIrdYbf3Z3NhMMHok=;
        b=KHUoaAu3a5kt7N5IrsN+lhvC3kj0SEuw3qxd2uSkm/sgEJmK11CKYKn8bppgVzzZCa
         /D58hPRRm9NIBFhSNs9C8Snhevf2qncl3kXpMQ0ZWVtMkA/WHKOyocddObvxe4+280e6
         ea70Mq962FhVL11KsVAkK6QJr07U/kTmsYv1fVoPXXDuf5IUKfAWWCqIZG+aTwc2kKJ2
         EOcoXrWPOrVUDx2bu4wNF63HppwSh5/5nVBJtPM4ah4aOsbT5JBTL9puJYNpL7x08ZHe
         wQ1D0TPlXnf0t9lwhyce8JwNe+gR2BSvagiF/d2p8zcbHlT/m7X8fnRgf4DNdI327EeO
         EdXw==
X-Forwarded-Encrypted: i=1; AHgh+RrmLrO/M7XN0sbHWhYuwxXCjNTSxb0pMxNXBbmfC64SFKn3aKY+4+hLaR9Igair6A+jaw2Kqevlz+c=@lists.infradead.org
X-Gm-Message-State: AOJu0YykfpQW9ZmZX7Ec8hQTMt5fKsvbelTzHsTXkLqWcTbGHKBIFK4+
	U6htK2TdM4mR6bGdAi+K7gbDF6YBQc3ySETtE81Ah0sSVrCElm7/X9rb/riS3+Vly3O/Nu1ca4S
	sZWRq7LAkcH7t9MEUeisCruzD1tbx5TGTL8xUXGvdi2zcPVNmT1kSKxD/kLx4vd5bhcQR
X-Gm-Gg: AfdE7ckzbrkBy9uOtnZXJrXw0M7QUWZPpTlEB6PHYsPQXKrbn9VJ5DdN/Y09Gckb6/4
	AxxFbUXSPUER1fzN1moUFoDoKD+bFGv3V7To/0HSagUa/BYIUAtdLdEP6Hkof/GxBxGF8T6E6hB
	GyLEr/kaT1KvynvhXVhsGlJgZ9hpJbB0X81d0trD9WEkeTyRkIU5CTz7ks5CHOL9JSY63UBY9R/
	UqdcLKSovAV67UNSKY68R1W9TshFYNZa1l7veo0u0bbW/YiOoCsj0fPZJTUZOAETbIFQ6qKrS0f
	a3OINV7iby64gvco8K8446lKX6EJxQ+KOUqJGqCUyJN5H+CVcC8TasHSQ4xe2mm8ZWjgR2cIUza
	LQpLYTi2apFUsW7K9MeM4Q69PrLMqYKmtqkjgBDn8F4XDTFYFC5qhgE2i3sjxuhFsiojGB82vgL
	3w7g58
X-Received: by 2002:a05:6a00:4fc1:b0:847:9c06:2bef with SMTP id d2e1a72fcca58-84826d3e5fbmr3666425b3a.29.1783402910007;
        Mon, 06 Jul 2026 22:41:50 -0700 (PDT)
X-Received: by 2002:a05:6a00:4fc1:b0:847:9c06:2bef with SMTP id d2e1a72fcca58-84826d3e5fbmr3666389b3a.29.1783402909456;
        Mon, 06 Jul 2026 22:41:49 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6d7a96fsm4763011b3a.46.2026.07.06.22.41.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:41:49 -0700 (PDT)
Message-ID: <eafba447-1b25-4c78-be17-d0a90fafc8fb@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:11:42 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: PCI: qcom: Document the Shikra PCIe
 Controller
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bjorn Helgaas <bhelgaas@google.com>, devicetree@vger.kernel.org,
        Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>, linux-pci@vger.kernel.org,
        Bartosz Golaszewski <brgl@kernel.org>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com>
 <178285172593.288348.3890129606237873483.robh@kernel.org>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <178285172593.288348.3890129606237873483.robh@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX15qSs9RE2QMu
 emTQ2h4Zcz+LUbFDY7yu9rGdl0mvPALK/ZKPCLHlCTV3WnVNWjqvgFUtiXMjCZSqDJeUGkGhv8/
 Gt0QHkcLGobzAOcjpuI0+kgkRYuTtmI=
X-Proofpoint-ORIG-GUID: 4efeyP7feXVFFh0NUNRKhvNymbHk4_Uq
X-Authority-Analysis: v=2.4 cv=EtziaycA c=1 sm=1 tr=0 ts=6a4c919e cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=g4xDkRcHy8dAf5eKVigA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX4vpiznzGa+4T
 PeDjKJKRz818JMkBJcfgib0wuTXpysdzerKDK+gJV14at9pRUVmSYU1PuxV4dq3P2tTRDHefUjK
 5DfAxyxVSUve6xk2rV4DcxcujhN8RsF4ezRqtJ/YmmZwDXihZnJRuRVWMyqIDqYRP3aESIvPIOr
 V24xAtdcdtSaAOD3/0m32UAqobykEBSNylloaX+MEPkbPbKY9p1JOlGjd9rtua+KLwJHfr+LBm1
 LtmDPLnlSTG4lhzMfaaa+lrMppL6ekzC+Hnf0nJNY+Vt0JSip+2ZUGPdN52yE+6D7jDFZTM82Cq
 MfRPZ03/sAfpNfJANaVvGj9nhcf5Wk7zlpILHYC64YpZJu6MgT0K9C8BQU1udG9cOAECVLyV37F
 gLnEsx/GuiCfIVdH97Y3TmSK9HWsy0rhvdR3MA0Zs9EPUcG4spX5xN62f/siBNBHlIh03S9zOrd
 6NOxjU+FY2ccrgInf3A==
X-Proofpoint-GUID: 4efeyP7feXVFFh0NUNRKhvNymbHk4_Uq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_224151_550608_8FACC17B 
X-CRM114-Status: GOOD (  17.64  )
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


On 7/1/2026 2:05 AM, Rob Herring (Arm) wrote:
> On Wed, 01 Jul 2026 00:32:44 +0530, Sushrut Shree Trivedi wrote:
>> Add a dedicated schema for the PCIe controller found on the Shikra
>> platform.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/pci/qcom,shikra-pcie.yaml  | 211 +++++++++++++++++++++
>>   1 file changed, 211 insertions(+)
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:57.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:57.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:58.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:58.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:59.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:59.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:60.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:60.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:61.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:61.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:62.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:62.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:63.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:63.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:64.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:64.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:65.29-36 Unexpected 'GIC_SPI'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:65.41-60 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:76.56-75 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:77.56-75 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:78.56-75 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:79.56-75 Unexpected 'IRQ_TYPE_LEVEL_HIGH'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:83.30-46 Unexpected 'GCC_PCIE_AUX_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:84.30-50 Unexpected 'GCC_PCIE_CFG_AHB_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:85.30-51 Unexpected 'GCC_PCIE_MSTR_AXI_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:86.30-50 Unexpected 'GCC_PCIE_SLV_AXI_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:87.30-54 Unexpected 'GCC_PCIE_SLV_Q2A_AXI_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:88.30-58 Unexpected 'GCC_DDRSS_MEMNOC_PCIE_SF_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:89.30-59 Unexpected 'GCC_PCIE_TILE_AXI_SYS_NOC_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:90.30-55 Unexpected 'GCC_QMIP_PCIE_CFG_AHB_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:100.39-55 Unexpected 'GCC_PCIE_AUX_CLK'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:103.44-58 Unexpected 'MASTER_PCIE2_0'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:103.59-73 Unexpected 'RPM_ALWAYS_TAG'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:104.40-53 Unexpected 'SLAVE_EBI_CH0'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:104.54-68 Unexpected 'RPM_ALWAYS_TAG'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:105.41-56 Unexpected 'MASTER_AMPSS_M0'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:105.57-71 Unexpected 'RPM_ACTIVE_TAG'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:106.43-56 Unexpected 'SLAVE_PCIE2_0'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:106.57-71 Unexpected 'RPM_ACTIVE_TAG'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:114.30-42 Unexpected 'GCC_PCIE_BCR'
> Lexical error: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dts:117.37-50 Unexpected 'GCC_PCIE_GDSC'
> FATAL ERROR: Syntax error parsing input tree
> make[2]: *** [scripts/Makefile.dtbs:140: Documentation/devicetree/bindings/pci/qcom,shikra-pcie.example.dtb] Error 1
> make[2]: *** Waiting for unfinished jobs....
> make[1]: *** [/builds/robherring/dt-review-ci/linux/Makefile:1669: dt_binding_check] Error 2
> make: *** [Makefile:248: __sub-make] Error 2
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.kernel.org/project/devicetree/patch/20260701-shikra-upstream-v1-2-e1a721eb8943@oss.qualcomm.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

ACK'd.

Sushrut

>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
