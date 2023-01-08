Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 973CCC677F1
	for <linux-phy@archiver.kernel.org>; Sun,  8 Jan 2023 15:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vEGpDCjhxPtfFzh1exMgswPjY4tWUdJ7vTg8yfv+QoY=; b=BBHQxipj+0a15j
	i9sfQTuz7xx34cLhvGaNa7E7DLHX46mYLZR9ih0xhDjvOg5B28GpHBvVkQ3tpwvzK87yfeNuE8ZOc
	SIkd8xCfKYduei8siiPV2S1aeXwW7Zn6SHeuc4xiipVzt3Ttuh/wTRlMrmQ0zX7Wu2cOFrC0T40z/
	W9vptxSnpjBiXEKJMEhJ3U03fvClHotggWOVH4I/d55sxAEGiNOyyW+1NeECeih+cZddhRN79USIo
	KbQXkNkpQuks9MXpIuKha9GslAt/pJZC5F+sl9521jXFsPzv4nbLwP5vCR54N6LfWtPfwywlUOF/o
	gIWPMNxUa4mpWSe3LoVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEXUp-00E9tB-Tn; Sun, 08 Jan 2023 15:22:03 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEXUm-00E9qs-JP
	for linux-phy@lists.infradead.org; Sun, 08 Jan 2023 15:22:01 +0000
Received: by mail-wm1-x329.google.com with SMTP id m3so4543942wmq.0
        for <linux-phy@lists.infradead.org>; Sun, 08 Jan 2023 07:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UmqnWhGVnGXf4z5iUyR0gaF/db/IFFmf8a/NQk8Ec0w=;
        b=DRlWD25KJYqLPuqeKNdVsd7XGtJF3VfMjWbYz8tdqLmYHX/0NzlDsTOBwPMKBZd/AH
         V0EHbzIPEYNmc8qPCV/X0DWW3guW3HlZ6IGcqMlTeclifRVYnlkci5HuC1XjwzvCV4Wg
         UjUXduv6FHtchHldTgKUVkLm5P8csXw3kfR58z1cMQ8QBp4DmeTLKQ9y7ZTpyvYn/Yhy
         +i+/fyy6t9JDKn77sRE4uobwXVQvkfwQr0k2lsiar/+Zpw36zJGtOzJgen/I17u+aCTP
         S0ridvr9BmjwM4R8IRM+dnWiOaK8pKpQ1jNyRQCJSidnXh55XNZrlZJf+Ge6UrH0+BeO
         jmCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UmqnWhGVnGXf4z5iUyR0gaF/db/IFFmf8a/NQk8Ec0w=;
        b=ZQ8Ov53SREO2TeSg69InZQDgXwL5t25QTzyEDDlXouvAl01oHBLatTPVvcttKw6ksW
         DpQ9zwPX3N2rOfi3rZRUUEsYV0X5lr80mqh1r87ufDkfqnZMNk1JiHCfVbt1QEWbrnVG
         J193AdYWJapoOoZnys/mS5c5dF3pnqWHtDVStVtrZbq+/dRYLuACpJ6RANigAYF/gewH
         yuQ4sdb/zn1JVeXCrmkstVyLol3x5lEUOGB3z268alUNyn0Z+4MG04bShupuP/19fudk
         157THiewVUW7ooVBits34RO0hiZQyEV/rpmae4OTWu6lTkPobPhTRJ/wtGupmpmbQM3X
         GxMA==
X-Gm-Message-State: AFqh2ko6re9ACy2zB+AXC1sBIfPnPJYnQ9eAq8xigs7dmQRUhcCBLnCc
	pB5X79L+ws6QbFUpsJqzHsj08g==
X-Google-Smtp-Source: AMrXdXtuZRg/gBm0bgy2aUR8V6wgJ5IygC3CHsw7sL4lbwAqP0DPH6RsEVWXcOa19rjzOcEZzMPKkQ==
X-Received: by 2002:a05:600c:54c2:b0:3d3:3c74:dbd0 with SMTP id iw2-20020a05600c54c200b003d33c74dbd0mr43779703wmb.13.1673191317055;
        Sun, 08 Jan 2023 07:21:57 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id p16-20020a05600c469000b003d9b87296a9sm14129935wmo.25.2023.01.08.07.21.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jan 2023 07:21:56 -0800 (PST)
Message-ID: <d333c404-01df-22f1-8532-6081cb0a6d55@linaro.org>
Date: Sun, 8 Jan 2023 16:21:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH V5 2/6] dt-bindings: phy: tegra-xusb: Add support for
 Tegra234
Content-Language: en-US
To: Jon Hunter <jonathanh@nvidia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-tegra@vger.kernel.org, linux-phy@lists.infradead.org, waynec@nvidia.com
References: <20230106152858.49574-1-jonathanh@nvidia.com>
 <20230106152858.49574-3-jonathanh@nvidia.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230106152858.49574-3-jonathanh@nvidia.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230108_072200_666460_DEA79247 
X-CRM114-Status: UNSURE (   6.72  )
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

On 06/01/2023 16:28, Jon Hunter wrote:
> Add the compatible string for the Tegra234 XUSB PHY.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---
> V3 -> V5: Fixed compatible string


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
