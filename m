Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3877EB64DB
	for <linux-phy@archiver.kernel.org>; Sat, 17 Jun 2023 08:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q44dhbg/Z/tXWMNzF1vdRm7OS2km0eB/pY26lWtIvb0=; b=qd4cG8S2HRVLaJ
	AQ7dCeKP2cAUvHYjnZd56MWmjsTpCVHuDuZoQMrhH7cTmzKYSX2gDazp/LGhd9KpCodZoIR6bPyDF
	OkVKmRKreJ5MoVLxt+e0YXjVWcooWM5Uq/oNu6KS9X6eeQqZj11RLprsRPq0dWUr0+Bkwh0tgNV3U
	WuIcgOAkyJoDVCYxiETELuxCuFnbBJiazlIVqjvu6jdSTE5B1G4vE/zCE8d2eWrIjKTvCDJwEbM4p
	FLpI3HBxHzeZ1hQLhMR2RExg5VB8OotYrAT5SppfRrh4/HttkOA1P1Yek3RYep57QcLBgRjwps7CY
	E/P+pmenSzGhazr3Vatw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAROr-00365t-1s;
	Sat, 17 Jun 2023 08:35:13 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAROp-00364u-0t
	for linux-phy@lists.infradead.org;
	Sat, 17 Jun 2023 08:35:12 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-98802908fedso8859366b.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Jun 2023 01:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686990909; x=1689582909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aWXLjBItIxILy1XStDOYB08gaTJzlRZbsLN5VVFRoX8=;
        b=jhhvse71MG/DeuTLt69otBTQYgyZ6cWT7DZ12lCcGKLGTV5WjPBdP34Ba3hm2sWXxc
         OMrglk13Mo1e+KL9vmWcXNR7OUPTwcgXCR1SOMzTThuyPRvw7xQ8w+d0OUqe6Gslh3g8
         W9jJCrA2N5bzEjl32hnxr8hKnzsMZ/KXMa/uiiyZGgQi4xi29GW+LnOrJ4lXDD9lNzXj
         7AtlZCWwUs67pZbVQaC7FbkyVkffYIu+1Km/KMhF94CPgM5NxCScMbKX0nTY5hUCqHIr
         aXKsVcQ8C1W7n3pImJvJjuveVBYGVrShpO3pgd9VHiPsX6T0H4l0Ebt9Kfwu+FE8LYqf
         I2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686990909; x=1689582909;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aWXLjBItIxILy1XStDOYB08gaTJzlRZbsLN5VVFRoX8=;
        b=ZCsxmlBGJSZsEiIVjywpmxWvGx+0DwDMN/N6QBGmKU7vXDBCqRvGNig7BPeeXkigAE
         lB7e9YKLmyikUNMHlWK4JHjsyGisMc96w7xTYtReKEKb9ual2XeUaJsytschjMmLPiFm
         4Ro/6yOHQjG3jyUuKdQz4DbJuKBsfJd5XZ5/PGk7DoyTa0Ysj22i6f5NoMhaBKTh3Ez8
         U+eLznR9njoBER5kN06cTmg7kmhAgeMRDbmln6yFQmBqqVdapi0wDcslGucTgHA1Y/iD
         /yL5LE2yidaoJsV463KOoFvOOEohKSDFTAg+AOr+RIV/XCiSpkOCBmGsEtGomq7hvyBb
         LsKQ==
X-Gm-Message-State: AC+VfDyQZYxByxF+avzK9ZngE+kKB5veFIzdhrLX0ZDDl7UdnIOvMBFR
	UFJyS9WPApuLmvbOeXSogVb4PQ==
X-Google-Smtp-Source: ACHHUZ7EuZmRLIhSc1xJnDpOryKOSOMLJ0NVcyVyY3GQe4isg+Pwfq8u5/LxdN/+PTt3RoRos4OVxQ==
X-Received: by 2002:a17:906:58c5:b0:977:e99c:c958 with SMTP id e5-20020a17090658c500b00977e99cc958mr3803843ejs.10.1686990909194;
        Sat, 17 Jun 2023 01:35:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id k22-20020a1709067ad600b00973ca837a68sm11767227ejo.217.2023.06.17.01.35.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Jun 2023 01:35:08 -0700 (PDT)
Message-ID: <2341d5c2-1865-b7fa-b0a1-b281563490d5@linaro.org>
Date: Sat, 17 Jun 2023 10:35:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 3/5] phy: realtek: usb: Add driver for the Realtek SoC
 USB 3.0 PHY
Content-Language: en-US
To: Stanley Chang <stanley_chang@realtek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Bagas Sanjaya <bagasdotme@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, Flavio Suligoi
 <f.suligoi@asem.it>, Ray Chi <raychi@google.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20230614092850.21460-1-stanley_chang@realtek.com>
 <20230614092850.21460-3-stanley_chang@realtek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230614092850.21460-3-stanley_chang@realtek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_013511_320297_C6E987FD 
X-CRM114-Status: UNSURE (   7.36  )
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

On 14/06/2023 11:28, Stanley Chang wrote:
> Realtek DHC (digital home center) RTD SoCs support DWC3 XHCI USB
> controller. Added the driver to drive the USB 3.0 PHY transceivers.
> 
> Signed-off-by: Stanley Chang <stanley_chang@realtek.com>
> ---

All my comments apply here as well.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
