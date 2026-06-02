Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 889AFCD6E5D
	for <linux-phy@archiver.kernel.org>; Tue,  2 Jun 2026 21:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0kdN8yi8lFOQmxZODqLuC68vXp9bzFs/5aDwMXrPsA=; b=fj1UDfDQlHEQb0
	EwAd1sH5/ypeuqEaMtHnDZNA4jwPA7ybj6Lfa6b2cIbq4VkpDdmfew9O/jYz2YTpoujagicN7iLX2
	bx4SwUElDrh3iSSnQFZ3osabMWbTAYwupOGr1m/C8wn8JgAqzBpokzIRc6k9lxKPjI3aOUnjYAHBD
	VQZaHTxzU04WeBClWx/61w2nNmkFgiwf5wATolRXsEdQLMkRzI4kklu8dWlq8Q30cirjgNihg0gQY
	4Sx9TrttPo6UZPIGFYGZ0pyQ5MkApH3uV2qefqCWFEDlS7/fBi8AmzlJ6yGCGv0fsrNb8fqrzK556
	h4+n4WSobH1WMq1m29jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWDw-0000000DnAQ-1Lto;
	Tue, 02 Jun 2026 21:00:32 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWDu-0000000Dn9M-2jhN
	for linux-phy@lists.infradead.org;
	Tue, 02 Jun 2026 21:00:31 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-490ac10e337so15448065e9.3
        for <linux-phy@lists.infradead.org>; Tue, 02 Jun 2026 14:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1780434029; x=1781038829; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3xo5dhddNfd1GteqLJrkhqAoPlpEA1sqWA6MOtGTrE=;
        b=KtlHj1qan3YHtSa7UWLMcIG20LBO02tE4bmHePZqau/OOpsk5onAgUTSdtsrDixxEq
         tpjg0blU40k/dZDcLLaIpBzcS9RsnadGucUdj0RHDEN3aN8NNK9RVz30rosE26FE7/9y
         5rQnMpA0PwoYzS3QIqS2SvVm/yc9yUA8bD8BkYnQxgs5YNdwCEU6NgHp/m8r1BacbCZS
         B2rOsEeRkNJAAAIFEOFWz0uPj6V6PYvJllshBUse1xv/CXTeQY7XMhIhSTlFfN7gykpx
         ZT+JR/kbum3DnWbJGKG7ArlSFslXJyNXw/lFpLcPSgCAYToRG97PNrOSpWG0L8bSRDjK
         asfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780434029; x=1781038829;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o3xo5dhddNfd1GteqLJrkhqAoPlpEA1sqWA6MOtGTrE=;
        b=KIbRV4/NP1dQy4eJrB+fCU7r/LMOwsW5lOcFiBwgQijjdqu4TSjZm9q7KstIe1wkXg
         gJkCrfRW7R6AHXkbyvjMn3L4SJ3yHepNfc8c5/buMfvA8sYlTw9IhMajGgRohcB0PiOK
         ysXWAy0TsjE7oscCg+jQd39wcDmtHdlRvkZoMs7xHf0yYfGtpMyO2J99aNeUVN1jjjZ2
         zqKTobg6cc6f1zwz4iIdxZkWvKwFhLHvJvdi7125YUn4L2ttbhSDt8edlbKrpb7QIYA1
         LlDenBXqVNVP67w8gcqW6eZVEAewPXfMy/2yz2T0gnQcFW05e7KsahZq6FVLYh1ZwlF7
         Amww==
X-Forwarded-Encrypted: i=1; AFNElJ+lCg3pQAPsiGaLbvBpkVmOFf02h1XpI9wN0fXZiB5ofFPwJnEDQjnNEZiSmRsis3tNSB+ZHnG9YSU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyTInCC5sYmLZ2kC6vovLSP15CC0dVHsZcrOIiCPyYb+5dQMqTk
	RDmhLoCVvUS6mzTbOcd/pDg5LeLhDVk/V2cdjohSvHgAtkEM+L79//E4n27UEVX0OtFJx7eL0C9
	EFU6HcAY=
X-Gm-Gg: Acq92OFn9wA/9OqnflCtknDNBLSEKgiIG0sHksAoBoThyEbOlV2Wq+/8yS8lPCg6ZzO
	rt4xViaNgws9vdqi13CGhIqIsNa64OPq3PR3QgFL86/mtHT7HfKQrFii16efvudjyKl7ZLlH8Qe
	iQIuXxwT3KkjDR8WgOPTgURok3/qNCI8OgKMvIh8irLTsNbBkzKLu86EogDFOEl9dlLBPAygLDP
	hJ5eS9+vaJpQ9TOy9vCM0mFVqSrGMzlGswdqg+v1tA29wJfWLXkK0nQtSddnCRZOxcoKIVsGEPh
	FutuMmxliJAdCWk0g23Da2CUEh+c9AwAAbBLyt/4px1jvMtSspn2VB7xEuwtQFkh5X1d1SZuFPU
	lEwYnt1pCubUxywykcoM+q9yzBimAFgZVcIJOELU5q+bVCXm8mM88H1S76MtBUt2hwhfbbFZMmG
	LiF+VCkjc/ISBlPa5Cn9LzlV/o00SbAZYYBQzvcLR/uNng
X-Received: by 2002:a05:600c:4513:b0:48e:7854:1608 with SMTP id 5b1f17b1804b1-490b5fe9bd8mr6349125e9.25.1780434028575;
        Tue, 02 Jun 2026 14:00:28 -0700 (PDT)
Received: from [192.168.0.35] ([109.77.42.178])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b6d16f0csm1316135e9.15.2026.06.02.14.00.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Jun 2026 14:00:27 -0700 (PDT)
Message-ID: <d45f3000-35e7-4f65-b9fe-5348105abb0f@linaro.org>
Date: Tue, 2 Jun 2026 22:00:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Frank Li <Frank.li@nxp.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260523-x1e-csi2-phy-v8-0-a85668459521@linaro.org>
 <20260523-x1e-csi2-phy-v8-1-a85668459521@linaro.org>
 <ah9DMPcKUaTm324I@lizhi-Precision-Tower-5810>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <ah9DMPcKUaTm324I@lizhi-Precision-Tower-5810>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_140030_711871_E2A300DE 
X-CRM114-Status: UNSURE (   6.50  )
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

On 02/06/2026 21:55, Frank Li wrote:
> phy {
> 	...
> }
> 
> csi2 {
> 	phy=<&phy>;
> 
> 	port@0: {
> 	}
> 	...
> }

Agreed.

However, we also want to support "split-mode" which is a special mode of 
this PHY where two sensors can be connected to one CSIPHY.

After a lot of debate adding ports/endpoints to the CSIPHY itself has 
been pretty much settled on.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
