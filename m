Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D63E1C77B61
	for <linux-phy@archiver.kernel.org>; Mon,  1 May 2023 07:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFrGMuiKB4x/cl/MIHc73qN0e+YZjZ71xJzaCDphcMQ=; b=gNIZvbV4bHFcBs
	yeBtBmdksVmg++K7w158u+31L+IJrc7K8mCFQQmhJ/OodyQaF5CT2zPv8E9sxAbTpiU0Fx7eidZRd
	sqycHuDgdIba8eXSs2xYrpPIRoCc9ZL9PVILHtQzkcVfy5f5UmcZvt84lV/xcgc1B5kFM3luY2v1L
	97piQmcMDHAdnyHQ48PMM7oESi2jZHLhB5hNMaknX8K4x+nXiE1Fm64uyg9CN/kRUneQP5zN6wHCo
	nHziVWMGyqBrqrk1JCAP8cMG8h4A5z9zrB/oNvtAWZ13XTxpnu1lPWLrbiNBUGI1mSNAry5lOc3Yy
	swh2PlOByy3UzrrAs4xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNcH-00FNo4-0d;
	Mon, 01 May 2023 07:06:33 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptNcE-00FNnW-2h
	for linux-phy@lists.infradead.org;
	Mon, 01 May 2023 07:06:32 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-50bc34b98edso1634887a12.3
        for <linux-phy@lists.infradead.org>; Mon, 01 May 2023 00:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682924785; x=1685516785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lbzi8KQ4ewDOl8/6+OjZmerGl8/Fh/n/WKcpF1UJuug=;
        b=aaOHqH0LGk6VIByEO9RGx59+hUQbAMeHNYJykED/CAFy0g91Sca0AuiuZC4Wy+r3SX
         Zv49g1IMWFbjO0oD9H0P9iy9nEoRMDCxymmAZbdKVehS3qAViZCmyYw8t/2EeqqdhoMd
         ciGOJmdvNIv45G0PHsOHy9VNz7X+4C718orj3+Y2mI9hwBiL1DRVQz+3JgRyKokNCddg
         +zmqfgKzWvWCY/3C4yVMYfUC6AtDYq0iaeIMJE7MiWGe1GSxqbiRVwI1p74LUYff0lKb
         6FiM33hTBV91YZn16qBOqfSN+4Ka/f6UiicMqbp+y0fNmk/qbhgMpu3UqiB9W9PEvdOU
         1JtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682924785; x=1685516785;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lbzi8KQ4ewDOl8/6+OjZmerGl8/Fh/n/WKcpF1UJuug=;
        b=TYWj111zfIA2bD4h23pbWgiCwb9+lqe3mQcvK6axSqhkWgSWSdb2P3gI5iHj3p1qyq
         kMu21PrufFJ2ruASDjLNZGgKUAXfFc2J+UVOHNQMef76XNbPkeAoCwlGSlPj90n3amxJ
         cLmCUwgCx0x7p3Z2xTocmIwdkHm+kEshI1nZl+fB2Af1HPD/1ygEhhAlC1olyBQTE3/e
         OWoAt8XcIaScUhGiJ/xEtaCiB7KljpsA956Kt3Pee0wBAL4QFk6ZAR+6yl1WBdv7gA2J
         ZTwrfUOH+HGlaEz4PCb2YekWezSsjtAssTuWPQ6s3P7GzymnstiHJIdHkEhYJiCK//eo
         UB9g==
X-Gm-Message-State: AC+VfDx/VV26NvnfQLitE8bGcNYYgJbXfJ3By0auBPDvDu+61rK/Ya7Q
	kYSUEcunQLDSxKYsc4VT4YDYbTY00YEmdTVkv69TKg==
X-Google-Smtp-Source: ACHHUZ7iSPkCwcv4sQgaF1lfLUTeLnVGU9VnUBKEqIukwsm/fahS20txrOcdq3QSyl2wnGIIzFNLnw==
X-Received: by 2002:aa7:c683:0:b0:50b:c48d:5d5b with SMTP id n3-20020aa7c683000000b0050bc48d5d5bmr2250487edq.24.1682924785343;
        Mon, 01 May 2023 00:06:25 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:637a:fd0c:58fd:9f00? ([2a02:810d:15c0:828:637a:fd0c:58fd:9f00])
        by smtp.gmail.com with ESMTPSA id b8-20020aa7c6c8000000b005068d7ccfb0sm11652041eds.83.2023.05.01.00.06.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 May 2023 00:06:24 -0700 (PDT)
Message-ID: <67f91b8c-b8d2-3484-b637-a631232cd18b@linaro.org>
Date: Mon, 1 May 2023 09:06:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH] dt-bindings: phy: brcm,kona-usb2-phy: convert to YAML
To: Stanislav Jakubek <stano.jakubek@gmail.com>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230427190725.GA7730@standask-GA-A55M-S2HP>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230427190725.GA7730@standask-GA-A55M-S2HP>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230501_000630_881139_BA101A58 
X-CRM114-Status: UNSURE (   6.87  )
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

On 27/04/2023 21:07, Stanislav Jakubek wrote:
> Convert Broadcom Kona family USB 2.0 PHY bindings to DT schema.
> 
> Signed-off-by: Stanislav Jakubek <stano.jakubek@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
