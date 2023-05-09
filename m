Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C183C77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 18:40:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hVl79CFRWKdqRGlVSCWw+ZNcc3OSjEFr4PBtzsNXVEY=; b=t2KneAnRtRD0gs
	oJK5nuV214wBn7XZwGkjexGrzOpHNon4GPDKeSazdkUHOu0C9xXRFRM8S032tbCOXiGtrPRbBxTaH
	WgnRe5GfW1AvtwzfcLdz5DHyx4iWEXj1jEa0Pl6JqN1BGamMeYqdiq8M+W7K+TsvRjbo7ElpQnB0+
	bz+PQDsT3MutlnOEZWAKhLc3CVzHlUuMVO7/wCjSgSbA4M2dCrULNeHDT+2Pwnr6ajT0oauGRLpK1
	8SfE5OuTA4dzOrYIEaXMGn6rDSKK7Bjd+Nq9BMEXhWfW/JzmIKH1uVQcQB5oPWopJpLRMQ3/LbXKb
	8CtuK7z7PejiI0ea84zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwSG3-0042dP-0M;
	Tue, 09 May 2023 18:40:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwSFw-0042bt-2i
	for linux-phy@bombadil.infradead.org;
	Tue, 09 May 2023 18:40:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=NtIwXP7XX6CNvX90xvzkTb++FzwrEZ6PL4sjQf/MAoI=; b=W/xb4fYJ+ILbLe5YCcZhisK/iu
	RyUcQxVixnDdjhNnWIW6kKyZc6xlS6Z6vQXrMHBrXcB7AMI501sXq5VHYJay5y2k76bCkd6qt71RR
	NnO12SESCk+ltAF406hFwnhwA/Ux3qn88kBoOefVqSnWJoT/0j0Nbf7EV8+Rf83/afFvY5LrWRhAX
	AXdSwAank9fR4Yvuj5Is8AgNdWWK7FYhADcRA4598H4JzDixbvXBPS0FL6KMlvR8GqdKfMcCyupaW
	ui2uX7kYNfoGyPN6e+6qvhwmmvRBCMQeetjwWH9ptwd3L99QBC1uhc+lr2O8xTKh4wX2vrBII+f8E
	lvbKRBgQ==;
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwRmj-006DkO-0X
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 18:10:03 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9660af2499dso808133866b.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 11:09:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683655798; x=1686247798;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NtIwXP7XX6CNvX90xvzkTb++FzwrEZ6PL4sjQf/MAoI=;
        b=MjcfYztGjslc2Nn0eLKw9epXhQfiBsr7oQT1euGYEJff/qnIHXuBsaUcLkpeqUazO+
         XFAyqJfdsa0kMtC50UBmyfLXsCxKCdaEVzrkWsMTPVHZzfhq/T9d+I8Dmk67bk3Wo2Kg
         o3AatLjZNitUC7ZfvA+znLfiOhfPUSeONqoEtLD7ZI7bHb64P4Ypg1MXPiTOUwseqO3a
         VoTioSogb+r1CzpKFx8eTeT8HPw8ws4tp9pscMgjIMLeVl/n02g4W0aphgoYjFXWUwtc
         xTPUW/rnwGYJjRKf4GWNpLuXdn2l5VCiAxCRUV20kgZiN0ebEnxdB3DHUkrDqbtsQSP6
         KmlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683655798; x=1686247798;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NtIwXP7XX6CNvX90xvzkTb++FzwrEZ6PL4sjQf/MAoI=;
        b=hDgwSQJ+14Ix2xQ/4aPRNvbQayw0HRqO2Ru0bb8rSl7yFH8bi4sy3nfIDoadu3nloq
         XgxI75XHsn55u1tFVevlYaQf5w8WQ2Cjp2oxo3RwNK2kuogtOFDPeRLaBbWpfEdVt/H/
         urLA4RUDZblMy585di9dY+HnnQBemARP/8F5r3Ftbv0l1cL/QgbNLvKMbykqAvTF/9+o
         lY0vRZiLMaQYp7R06dMZsBNEFo6IWnGX/WzCfKRvXPAcr3B3L5yfHVGdl2uV7KUrDW9N
         ZPLNHLZXJB1B3AuIMhAaOzCqgA0LizWRYojtXi7lguVQ4dQStU0CFRXWShdQ1HcDVS5g
         VwSg==
X-Gm-Message-State: AC+VfDwWLDjw7bb/XWAkxrG/nY9906NjLAy6IuhjaqJPemc3M5N971TM
	8m7W/Xru0vfKP5xi82bkuaAEuA==
X-Google-Smtp-Source: ACHHUZ6NF2Ql91suaaPN6PxHtMSdFZkdc+FSwOb64SB30td68JOV/MfNrqGsZjkOqMyccWiEb/SgHA==
X-Received: by 2002:a17:907:3f87:b0:969:bae5:fa3c with SMTP id hr7-20020a1709073f8700b00969bae5fa3cmr4428101ejc.63.1683655798395;
        Tue, 09 May 2023 11:09:58 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:d0d5:7818:2f46:5e76? ([2a02:810d:15c0:828:d0d5:7818:2f46:5e76])
        by smtp.gmail.com with ESMTPSA id kx5-20020a170907774500b0096776c39540sm1615493ejc.31.2023.05.09.11.09.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 May 2023 11:09:57 -0700 (PDT)
Message-ID: <5fe4a4c2-e65e-0ac9-25e7-7554d48d81d5@linaro.org>
Date: Tue, 9 May 2023 20:09:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 11/13] ARM: dts: exynos: Fix some typos in comments
Content-Language: en-US
To: Artur Weber <aweber.kernel@gmail.com>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Olof Johansson <olof@lixom.net>, soc@kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Kukjin Kim <kgene@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-media@vger.kernel.org, linux-phy@lists.infradead.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20230501195525.6268-1-aweber.kernel@gmail.com>
 <20230501195525.6268-12-aweber.kernel@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230501195525.6268-12-aweber.kernel@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_191001_544059_7CE6BA4D 
X-CRM114-Status: UNSURE (   9.93  )
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

On 01/05/2023 21:55, Artur Weber wrote:
> Change 'specfic' to 'specific', 'optiosn' to 'options' and remove
> duplicated 'are listed' in DTSI heading comments.
> 
> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
> ---

This needs rebasing.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
