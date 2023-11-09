Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BFFDC4332F
	for <linux-phy@archiver.kernel.org>; Thu,  9 Nov 2023 13:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NtwD8NogovGokwhx6M7ydN1cBclxt1elhE2+wAeqDWw=; b=CCrqHqg2cIhHBF
	/9D3+ZoqaSngnte3nsSrnDZL9r3/5M/LUEIe3bCEkUdWN0Ce5sxMYpodER9dnIBeKD6YTBRaVAfUo
	tC4h1fWeX5p+eI9iHttofmmh1PEkuFbytZ0aH/ul/2kv7ZslGrJ/xBFNbNEwA3WVDmocWA2ZAxTbl
	CZvBKReoqeWXSN/rlVs81kpyBPUBA5yvZuNRWATBVV6LwSWurXtnXiS7qz8AsNlVHKEnmVUDCPOT+
	IEpcDOJrFIxQF0cqMyPqyDkWjSYL21ctige9IF736qxWhKH3s8JTcgesLYpMFfPo3cpHrsFtjUeqA
	+e8R5D11dwsLUvrEeKNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r15Xx-006REq-0S;
	Thu, 09 Nov 2023 13:58:13 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r15Xt-006RDc-2t
	for linux-phy@lists.infradead.org;
	Thu, 09 Nov 2023 13:58:11 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40839807e82so5627215e9.0
        for <linux-phy@lists.infradead.org>; Thu, 09 Nov 2023 05:58:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699538283; x=1700143083; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KbosBewO6sn8YQ6qsTc+eHOzmL2IQ1+JtifimKJRbp8=;
        b=mihWzLYDyX1qxVo1i8PFltLlIBiCIe9x8gX0koT3vFhuvcKHENxDdJdE78vGEmX+1q
         DWDUBrvLmKrx/YRWaLlo01Ze9LE2UbHiHeV28OTzBPAykCSy9b4mdby7ZhSu4zW/UJGR
         pvaR3Lbn60RvOQuu4WrYgy2k717LFS6V2kL9oafOkd8bBmy9VJ6h7yA6eYJJUkO6v+H2
         JaSNQ4r2is347pe8nQFeOcRhCvbsN83QcBeKKbDsnGArQLmgh4YNT8mzgMHgA0fswhcv
         1FI6NQ4Pe9FalTkA4B/Fqra0IZRYUva/Bvkh+kCIt/sc6j3nq3WS02NvCZAcz66n3jtI
         afZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699538283; x=1700143083;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KbosBewO6sn8YQ6qsTc+eHOzmL2IQ1+JtifimKJRbp8=;
        b=q35MTcGgXPOu4GGTuMUMRqTG2xWiARKbE2J+SS8E5C1QkNu0DzZK95kaSYntdsB3Lx
         xYMpUDLqNvCe6fT6lPN6vxJktFj3a3f6d7YpI+eF/aa2BklmAQsVDduFFsYLaaozITzb
         fG2u/9usP+3jbRFhsdp98frRAZc09DS+DWoB86IrOn7n/jfyRbRVQwoNAFUesHvZBWBB
         uGKzH6VaZ5g58E3htw2+YDXIkYpGNvK2rnHb27HDhivcR5bYZIB79Q6yTPALXOcn4uFf
         oh52hxOcO+btUKBrx6fdb4Yy/M9ptnzz18Lh0SN/v5CHxPs4ZruJO1gHEJKqfIYyV/ZV
         09qA==
X-Gm-Message-State: AOJu0YzczcNdmHonRCAW2hVNgEsyrojDLLoqkOT2qDhC35y0sbx9sRZo
	keG3eOFiAR7wvGDOpzPDnBCx4g==
X-Google-Smtp-Source: AGHT+IF1UNg9lqHDFjFhxuqcIqTN1ABswd71CmIMUjOHWfOJBv+DeHRKi2Y/T8fea7smmbNiLIU8Dg==
X-Received: by 2002:a05:600c:5008:b0:405:358c:ba74 with SMTP id n8-20020a05600c500800b00405358cba74mr10749655wmr.0.1699538282673;
        Thu, 09 Nov 2023 05:58:02 -0800 (PST)
Received: from [10.66.66.2] (9.ip-51-91-159.eu. [51.91.159.9])
        by smtp.gmail.com with ESMTPSA id m6-20020a05600c3b0600b004077219aed5sm2225410wms.6.2023.11.09.05.57.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Nov 2023 05:58:02 -0800 (PST)
Message-ID: <fcf81479-6137-4290-8c71-5a72d7ff5398@linaro.org>
Date: Thu, 9 Nov 2023 14:57:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] phy: qcom-qmp-pcie: Add support to keep refclk
 always on
Content-Language: en-US
To: Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com,
 quic_nitegupt@quicinc.com, quic_skananth@quicinc.com,
 quic_vpernami@quicinc.com, quic_parass@quicinc.com
References: <20231107-refclk_always_on-v2-0-de23962fc4b3@quicinc.com>
 <8a12ccba-908d-405a-8fcb-411d50a66ebe@linaro.org>
 <65d2bba9-b04c-f91b-100a-ffb07e9b615a@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <65d2bba9-b04c-f91b-100a-ffb07e9b615a@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_055809_940344_0258702E 
X-CRM114-Status: GOOD (  14.00  )
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



On 11/9/23 10:32, Krishna Chaitanya Chundru wrote:
> 
> On 11/8/2023 3:27 AM, Konrad Dybcio wrote:
>>
>>
>> On 11/7/23 13:26, Krishna chaitanya chundru wrote:
>>> This series adds support to provide refclk to endpoint even in low
>>> power states.
>>>
>>> Due to some platform specific issues with CLKREQ signal, it is not being
>>> propagated to the host and as host doesn't know the clkreq signal host is
>>> not sending refclk. Due to this endpoint is seeing linkdown and going
>>> to bad state.
>>> To avoid those ref clk should be provided always to the endpoint. The
>>> issue is coming only when ep intiates the L1.1 or L1.2 exit and clkreq
>>> is not being propagated properly to the host.
>> I'm gonna sound like a broken record, but:
>>
>> How much power does this consume? Would it matter if we kept this
>> clock always-on for all platforms with this version of the phy?
>>
>> Konrad
> 
> We see about 22mw extra power consumption with refclk always on.
> 
> We can't keep this property always on as there is impact on power consumption.
Ooeheh, that's not far away from a low-clocked efficiency CPU core..

Thanks for checking!

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
