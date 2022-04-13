Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E3B9C433F5
	for <linux-phy@archiver.kernel.org>; Wed, 13 Apr 2022 09:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quzgG9YbAqeC65r1drINRKn6lS9KdhBielWIXNTbYkU=; b=mDuod+1bepYq9Y
	IJPmael2vZ4HCFa4cfBi/1gQ7fzlbBfF7kEjViGbGoPG/TB5h0SV95VOVXmfzqMIADav/22LWFToh
	TPbtsEoezPNsB+/9cv9jqCZ9ulaY280qigj/hB5sDywvr62UwYFNKl1dw54vkq80PCka5QOHsbSTJ
	D+DLAm+MHgsxDd05vH8rFM+eP6W8nfwv2dnk+chy7XCaNjooaoVZ6gqctriY2R+ac+dZ24Xh2eulF
	PIMF26+/yvZmtHLJs+LLucXfF3MyjeoI7+7lJvF/aDhUAsWDZZ0BDTe9sEOqDCLe+B3hbGAz9X2Wj
	7T87cFODyr4fkyAKNULQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neZkf-000SVG-Ja; Wed, 13 Apr 2022 09:57:29 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neZkU-000SRf-DG
 for linux-phy@lists.infradead.org; Wed, 13 Apr 2022 09:57:20 +0000
Received: by mail-ej1-x635.google.com with SMTP id r13so2839136ejd.5
 for <linux-phy@lists.infradead.org>; Wed, 13 Apr 2022 02:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=BoRyXJyiezioU86Sm/aljGreuf33ZfT6BJLzBNsYxXg=;
 b=omhuFPP17o7WmTkQEZ/ey1v3Go+8BL8tjJxT4U351QG/ra9Bryv3m3VIz9SPeHTJ17
 jCw/SE//G3phX7o7tXLoRgKcoX4BSJ9PABjI9xQCFfe6W3G4swybnV3G/h9LsnOdLbwT
 5fagV3p66C2I+jC4xwGmJolqwcFge+Ye4XnAndQ37sv6VLhVJSNCl9h8uNrA5FsAHPPa
 FHzmSsT6IsXqjyoO/7HBo4+CLfRCzPbqWXRse5r+JNQlmAGCgbB2E35s3laF1+fuCL82
 tkCC1kZSg/JtVprV+SxonH1pDFjrmnVdxcygBf88gFWybmaonjF9JtnH6Rq8hQS9fQ6F
 v/UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=BoRyXJyiezioU86Sm/aljGreuf33ZfT6BJLzBNsYxXg=;
 b=ES1lNTIl+A4IaUyzDy54e+Loag0bruwXBUW2/QPAOa2OB8/JYB5u+l3AsLg3wn2KkL
 SRt9hsqo1xMN7wDSRX16qDbRKZUKkOw6AuLbsLur4jAcKo+tksnDRkSoP+s188gc9NnQ
 TDWedV0OqVQ2Qo/MkgYL+TEDC82fYqEB9RmVpCQf3DDxYoekhC0vKdyU9MZ5P7rOI1vw
 QF84+2b2Eubfhu8zPaqYP5+37e6G+TEvwnw6ulOzWu2plMMZ8m1kIQF2+sqIi3Knkh9b
 mEollnyipIImrxcxwMV9D9Nfs6Ahs+DgkR+M8vcOJBLGssSaY+fiAJjC5AA3V0WPQPxc
 jglA==
X-Gm-Message-State: AOAM532AamgEJQprWAqBZ0egSuxT6NSBp6bdhqEkN7uRFtPtniN14kGb
 czGbVpJIwUyjfYf02iZ4mHvFtA==
X-Google-Smtp-Source: ABdhPJy2fHjgfklx0Z5VlYqV/vz9vbavseCTQTpvw3q5LckX8zitbG3juuiHqZrfjR9BZ7vSaecpgw==
X-Received: by 2002:a17:906:19c6:b0:6ce:98a4:5ee6 with SMTP id
 h6-20020a17090619c600b006ce98a45ee6mr37493225ejd.567.1649843834448; 
 Wed, 13 Apr 2022 02:57:14 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 w6-20020a170906d20600b006ca00cb99e0sm13883293ejz.34.2022.04.13.02.57.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 02:57:14 -0700 (PDT)
Message-ID: <1a12abfa-3459-18d8-5214-221f5184a9cd@linaro.org>
Date: Wed, 13 Apr 2022 11:57:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] phy: samsung: exynos5250-sata: fix missing device put in
 probe error paths
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
 Alim Akhtar <alim.akhtar@samsung.com>, Miaoqian Lin <linmq006@gmail.com>,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220309170028.51913-1-krzysztof.kozlowski@canonical.com>
 <YladK4z//z1hmTRX@matsya>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YladK4z//z1hmTRX@matsya>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_025718_470586_4FB86515 
X-CRM114-Status: UNSURE (   6.99  )
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

On 13/04/2022 11:51, Vinod Koul wrote:
> On 09-03-22, 18:00, Krzysztof Kozlowski wrote:
>> The actions of of_find_i2c_device_by_node() in probe function should be
>> reversed in error paths by putting the reference to obtained device.
> 
> This fails to apply on phy-fixes, pls rebase

You applied resent version, so you can ignore this one.

https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/commit/?h=fixes&id=5c8402c4db45dd55c2c93c8d730f5dfa7c78a702


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
