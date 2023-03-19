Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C678C6FD1F
	for <linux-phy@archiver.kernel.org>; Sun, 19 Mar 2023 12:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r4qtLobcaNWF/LYf+8HE3gMoRybr1MyLzXFS798W9s8=; b=tfRRyszHvzUgdW
	K3sWJiQ+zlbF3E4mU48gysgGguHRsU/uRFi0qvcYOlm+B/KTWOsIYLMLNpE0Qq+/66/3fEzmJ415g
	/3jkG/fGOnnHmDHSmCt3AZwDkwL3QCI+O2UoJ5fvDK6kQJ2ToAO9dwnpuM3oeJtkYTta6iBmnBzYG
	NxwVEb2qcGz55T7u0ayA0ZJGSOiCpzUWZrg1KBNWPR8pghOCT/RoCDZb/0JbSdgZGAZAeTitsm6b0
	h3b807EPFQLwwA1eISeR9r65H3/EtiH25xmeJRXIGp0ruOGF2EU7k9xPQ849k8PmcLHnXRn+dabo0
	+T02z99Fd+Tv4oCYBe9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pds34-006fi2-0U;
	Sun, 19 Mar 2023 12:22:06 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pds31-006ffR-0X
	for linux-phy@lists.infradead.org;
	Sun, 19 Mar 2023 12:22:04 +0000
Received: by mail-ed1-x52b.google.com with SMTP id cy23so36769889edb.12
        for <linux-phy@lists.infradead.org>; Sun, 19 Mar 2023 05:21:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679228516;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UA/RVseheg2Mc3aNDxrWXO0sH5wS3//KYOVz8WHnSys=;
        b=ro7/Aw85j2ohxJI5Th71eZODXAv7tXOyG3a5gSiHPGDCS8I1MyNsw4VzCN3LwKNlgo
         Z/gvIQKe7+xuuLp3ntdlVLxyMoO+VpFVWf3rdS6JlTsMJGoDMZroYfU9S/Zo0q9qNJZv
         7LzJ1kPPVji8vrAAE7ihaNvo0yqZ0NsMMseHd3Vdr+91O00YP3NNjZlgi9WHP/LeBJd6
         r2yMghWhfYLGZfoNVXYTcxOCTgADg9NqDNL4d8v6+rPb+0xXi1SgwDCL4DuEFJNXEpvr
         BTYpNPK4XDZPf7nLEFTr1P7ZJj9U+gq3LZaIDu7RpRhwWWmAt4tUoubKvp6ytxuHQsJG
         /zLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679228516;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UA/RVseheg2Mc3aNDxrWXO0sH5wS3//KYOVz8WHnSys=;
        b=DVBeswkX9+JRjP4FTSZSNi3meKeaNV0JY7HlPME3uxULdw9E7bJlWapc3hm72gPoHr
         EI8ew14hiN02Pjnh1ocf+btKKbXuvolUcJrdzpYPMuhNjimr/Ko9nJdDAj0qXvHzVG3W
         guEOEJAjcdxgH2wpp34EgheSpsgz/uzFFyuuLAfNMP2o/nNMOudqaYjlekhTZImYu08W
         DZtYPZEWPjLCn5L/BfzrVJWPhAcF3WKuXQsDO13NHTMx4Q2IQM7dFXu9sd93bk5XDQp6
         mf+lI4d2eSPKevjiGduuisc//CWIQB6Ah75B6hZzODIP96kgImrHtskW0awIvVhcHvNR
         zDEQ==
X-Gm-Message-State: AO0yUKVfAUNRBmOmZv3Vnf2gr8IsPj+Ab6ennqqEO3ouX6C4Mzygk541
	K/AqrNgluOI7yGG8ZkWTVo3jpQ==
X-Google-Smtp-Source: AK7set+E9ngdMGo3d0f03BlUazh4+7McUbDGjmEBkFAAeDIwW6xWmjiuP9WKSoc39PO9j3/TPR1elQ==
X-Received: by 2002:a17:906:d159:b0:932:8dc:5afe with SMTP id br25-20020a170906d15900b0093208dc5afemr4941050ejb.67.1679228516021;
        Sun, 19 Mar 2023 05:21:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id x93-20020a50bae6000000b004fbf6b35a56sm3458374ede.76.2023.03.19.05.21.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:21:55 -0700 (PDT)
Message-ID: <c6b562d7-8d88-18ea-31df-db1fd200c251@linaro.org>
Date: Sun, 19 Mar 2023 13:21:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 2/4] dt-bindings: mmc: Remove bindings for Intel
 Thunder Bay SoC"
Content-Language: en-US
To: rashmi.a@intel.com, ulf.hansson@linaro.org, michal.simek@xilinx.com,
 p.zabel@pengutronix.de, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org,
 yuancan@huawei.com, andriy.shevchenko@linux.intel.com,
 linux-phy@lists.infradead.org, mgross@linux.intel.com
Cc: kris.pan@linux.intel.com, adrian.hunter@intel.com,
 mahesh.r.vaidya@intel.com, nandhini.srikandan@intel.com,
 vasavi.v.itha@intel.com, kenchappa.demakkanavar@intel.com,
 furong.zhou@intel.com, mallikarjunappa.sangannavar@intel.com
References: <20230316120549.21486-1-rashmi.a@intel.com>
 <20230316120549.21486-3-rashmi.a@intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316120549.21486-3-rashmi.a@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230319_052203_204909_922127B3 
X-CRM114-Status: UNSURE (   7.42  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/03/2023 13:05, rashmi.a@intel.com wrote:
> From: "A, Rashmi" <rashmi.a@intel.com>
> 
> Remove Thunder Bay specific code as the product got cancelled
> and there are no end customers or users.
> 
> Signed-off-by: A, Rashmi <rashmi.a@intel.com>
> Reviewed-by: Hunter, Adrian <adrian.hunter@intel.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
