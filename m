Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BAF6DC47DB3
	for <linux-phy@archiver.kernel.org>; Thu, 18 Jan 2024 18:00:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nfDo0uOEQCXLzHklFRxJlP1yIdL7g1KBK5PyqXN2isA=; b=scFJ/yxqwlGvO8
	qTQO44POMlzmSnpvfzvMFdRGOU40qRnq6QipU95UvRWw9HunpRR54gcMVm8kQSM8zcZ00xnYQUBzS
	/2loN7x+tOYHnthDlhLDCD8GyQWeX6f5V78KCscoi6mNIWjxJ3EdG00nVqDqDDzjY2jbmIiwSYe+U
	Cl+VSLAgIdzQ/uJHTp6sYfYpV10vdkwHRRtmF8xWKmMytvsdmnY0qTFV2ob9G1vH4+gdCkL89qPY5
	RQTt7WGXMXy40GthuRRQrygoKJBipXPq0zVIKdCAjqu41bg3BJuXXxtsR96+F+sHgxd3mhO/qdL1T
	CFweMhzGg5Cw1b6CzeRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQWgc-003S5l-16;
	Thu, 18 Jan 2024 18:00:18 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQWgZ-003S5P-0W
	for linux-phy@lists.infradead.org;
	Thu, 18 Jan 2024 18:00:16 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-50e7abe4be4so17101719e87.2
        for <linux-phy@lists.infradead.org>; Thu, 18 Jan 2024 10:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705600812; x=1706205612; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iBqwoxlx4gnnWqnFvaKADZ4JLIY+I21s4gGLYsTualc=;
        b=vM+HuXthSYJPnYhFJzhTKIsI5lhWFe5xx3rs7ZZCGji42xRVPng3l6llMskB7MCc79
         j6XQxm8k9U7eDOFDmEBAd2xrwMoZ6okcLPaAiVRb5zvMVpVLWdMLCVhlllAhd+HPhE1k
         Y5OThVRfJDS7ECgT2GRdFAZTzkpfuZ6hO3nDTArat4HJWUQxq79+Lzba2M6OXuPHRGj6
         7HSP9Zs+DOrGcGM/EpYHgo5fY3L8qTgmv/0VO0R8/2xFLRCpuS2MzBkP2LgSUwDVEPCW
         otqgl465UbwgX24UhktcGdqbPhgD3164nFBbNCBs3U/8A8HWdDxPQ72g/smHXPMgdSQs
         mXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705600812; x=1706205612;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iBqwoxlx4gnnWqnFvaKADZ4JLIY+I21s4gGLYsTualc=;
        b=emFG7Dn1o5qYMdIwIuB92w+P3IpqyV5DoENKrpSqcdFXkoCPV55e3AcyEvB5i9R/+8
         rQfFSgwwC94VhK1HsHVN6qbrHq3j7uWmxxr4B+8wJvc6c9RmIEBB2i/aKJpzYN1K1OGa
         HtKSE1i8niXPMFIai6GR3VXd6NIrpVNF1KPlerNerddRxgXoGtsKKt8IlYDugzXOkxq6
         dWERbvAv2RU4QNlqeylB+TUVMzSTEkf/ohhkbLgvTiv/svahcIgFd1yPgaVqIDKjrCi7
         tHN8Rb5uz5njhEUi9tocWNJc8Cwz0D5TsOBLq79BbNMOcdww9sDDYvcmWWBRJjX9nent
         fnIA==
X-Gm-Message-State: AOJu0Yz+cOKGTli5Tea8QvenVpvZUGz2K6KPBsGwmI1WuV0+3tjh8wK3
	r9zVFq7TmWTPRKgwpeWhs8JhBVANmURMfHp6XW47mvlA6OWKaAMJ9FtL0i3cBKU=
X-Google-Smtp-Source: AGHT+IEGPOjGHD9Ar9cWEdm17o6nO+I+JA4OZLTIl8Z2GO2P+L5AcbMBNN/pBByZ4phpxTWIBwA2mQ==
X-Received: by 2002:a05:6512:11c9:b0:50e:6b45:c915 with SMTP id h9-20020a05651211c900b0050e6b45c915mr16575lfr.7.1705600812396;
        Thu, 18 Jan 2024 10:00:12 -0800 (PST)
Received: from [172.30.205.26] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n6-20020ac242c6000000b0050f0d944b3esm656797lfl.140.2024.01.18.10.00.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jan 2024 10:00:11 -0800 (PST)
Message-ID: <e1c6053e-d26d-4eb4-84ba-b16403fd0ad1@linaro.org>
Date: Thu, 18 Jan 2024 19:00:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm630: add USB QMP PHY support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20240116-sdm660-usb3-support-v1-0-2fbd683aea77@linaro.org>
 <20240116-sdm660-usb3-support-v1-3-2fbd683aea77@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240116-sdm660-usb3-support-v1-3-2fbd683aea77@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240118_100015_203154_92D7F5E8 
X-CRM114-Status: UNSURE (   6.81  )
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



On 1/16/24 02:10, Dmitry Baryshkov wrote:
> Define USB3 QMP PHY presend on the SDM630 / SDM660 platforms. Enable it by
> default in the USB3 host, but (for compatibility), force USB 2.0 mode
> for all defined boards. The boards should opt-in to enable USB 3.0
> support.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

wonder if we can make this dynamic, somehow..

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
