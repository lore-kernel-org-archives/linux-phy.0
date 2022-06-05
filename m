Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B6ABC433EF
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 16:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LvOpD/MLBdPSxLz95g5DXSG+/CU1gpFSw2EucBOCzw=; b=UPzlu2XoIgKPeh
	g+u3k9l5y5uHDwG6lAso/Hj51M5PFu7D5rAuSW6JJoyRGGzZG9Qkl4JURLTjzwu2ZQ30+dpMvPs6u
	FpwUnDzpp0n2offs5C2xFLSrUx0Ii6z5PZ4kBdvMm/1n6Q6yvOBlwY8iF+V9jYF3XzZvx8T3Zavb6
	74yNtYLzDp3iaqVpT4curQrcX2U7jfaTvi8qDMLQymHVGQA+RgXHPOGpnR8l47gJbcE67JQRftara
	d9eLJIbwg7U35BLw/iYsmW8hQg43cCEoDe1qjGDOg/8O733+6h/3K86+spGpiz1AN20WXicutQ+Tg
	gmvqgFgDfvAmnFBei+Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxstQ-00EsUW-EE; Sun, 05 Jun 2022 16:14:20 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxssz-00EsM6-O3
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 16:13:55 +0000
Received: by mail-ej1-x62c.google.com with SMTP id y19so24737971ejq.6
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 09:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lLHJF8itDbCGt5pN7A8NEdfZyjPyqD4Q2iUB6Pm/cZI=;
        b=gCYvF/1H1j+deX0Y/2/FaDJPBMTqvx99p9n/PNmRiwrh9IFGFd1IzqHL47KaRa/6ju
         dEhJrdk5RhtB52l6qON8qGwcXsblI7XwBZeblHyYOvCWcZIJmdvCQHRRUJCdwAHZaedc
         X08gX8FPdL1ZkcJJ8dfMZtqE0dkT+cycYnw6GpEi3huju9obp9JYDkA6PStBJ3qHeVeb
         L0f8vi8yqyJEj9i+adbDIulAW5SJcwacUeifWMD1vDG2R3DarFbJYAVFeF++ObFXeasA
         9HTyq4YfG6ysQMDEL9SqDK0gpmn69OTDgbgM1bQrU8fVFbUvcG1Z/KhdXeEQrPcCHXsG
         /xZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lLHJF8itDbCGt5pN7A8NEdfZyjPyqD4Q2iUB6Pm/cZI=;
        b=be/OLB3cbfSXWRb4g9GHUEUIztZUIVrHiT9vI0aZLyLOKd196T5LD43CuzhKqKGuPE
         YzETmGJ7Mf5ZmgAoJdX1Aql08a6B9mdw74R5WPND+LX8xpMnLfdKLoE64MGJahu1qV1k
         tXtBCT0ziK90LqyJKD7sgidKy/jTsfv6kHqonihrK/ITy7IPiN9zY7G8s9d7bnj9Bn47
         VOFXSJgblFeqAEEk4CaHxwEUdKUKNXPH2DwWx2nElk5fDyhLXgKovy7cUYPnGzTgatxE
         olof79TU+MamSITw0dNjk4jqRRqq2TacPGPwq0t6+z5nz+6/IM2od6rfhrOUHM0Opp3K
         1ieA==
X-Gm-Message-State: AOAM5331OGgkYbaRzU5/a+zI2LaxYF1XkCtzj7+Om6O6/PRLaDPvYpi1
	GKv2J/GhIUi0RZPv20yzCUPBeQ==
X-Google-Smtp-Source: ABdhPJwwQYWTE5gohxGjKVA+yFqOkqxemhBBY3bbZX1d8bQy/ZXhYxTyuC3zFWFIOKQAAd4IZI/qXw==
X-Received: by 2002:a17:906:2001:b0:6f3:bd7f:d878 with SMTP id 1-20020a170906200100b006f3bd7fd878mr18306906ejo.133.1654445632295;
        Sun, 05 Jun 2022 09:13:52 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id e20-20020a056402149400b0042bd75c53casm7095695edv.83.2022.06.05.09.13.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:13:51 -0700 (PDT)
Message-ID: <8c125973-0221-6610-79ad-df1587cc70fd@linaro.org>
Date: Sun, 5 Jun 2022 18:13:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 4/5] phy: samsung: ufs: remove drvdata from struct
 samsung_ufs_phy
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p43c70afe414dc36f3abb18cbdb1d450a4@epcas2p4.samsung.com>
 <20220603020410.2976-5-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-5-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_091353_880014_21E5CE36 
X-CRM114-Status: UNSURE (   7.45  )
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

On 03/06/2022 04:04, Chanho Park wrote:
> To change an offset of pmu_isol, we need to store its data instead of
> having drvdata's pointer. The definition of the pmu_isol structure
> should be extracted from samsung_ufs_phy_drvdata and rename the name
> with samsung_ufs_phy_ prefix.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
