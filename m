Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 047F2C43334
	for <linux-phy@archiver.kernel.org>; Thu,  2 Jun 2022 09:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sR+fr1Jdjk7W7pKPpUr2Q9MEi8M6aFtUet6E3CGW05o=; b=WrG+xDYjGvn6jv
	kPbLOGXrztgjpKiup4bdqLOXShsPEZ68Nvwr4t9kM7XpHYZQY1JOm46btr1OIguroBnKEbpdKWnof
	9dX4wpcBeq/dvT45HWt5VZMc1J/1AeND8hBgGoKHnYA2Z+LSohXoW5WrKJvf0YpCih6NB5yZtJiOV
	PlUw+IRMD2s2D5rwBxEoKHn5HACw7+n+bB6poFJu2JOPXzNDVMWXfoOz1TdiRcQdpjlgus1yFU0oy
	iJ3MSe3orEEDQeeNtqesWsjFMtV3lBfBAgciXrH1uFCWRKCkGX5B3HEXQI2fR5Hiz/lmGA3k0+gQZ
	2/OsQ2dEZHzXxsVyUcPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhSx-002Zgi-Bn; Thu, 02 Jun 2022 09:50:07 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwhSl-002ZZW-MS
	for linux-phy@lists.infradead.org; Thu, 02 Jun 2022 09:49:57 +0000
Received: by mail-ej1-x635.google.com with SMTP id q21so8932536ejm.1
        for <linux-phy@lists.infradead.org>; Thu, 02 Jun 2022 02:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=p0yz5l9S1tSy2buhTZElzgLvRGRoFCpmLIWAz9pUW9k=;
        b=C6MsfkKx33wlafzB5jS3x2gGWVyt6Cz/qpDQSNH3FFZ/GnK54Mh5raDSBusyir/hQT
         ByWPUXeXBOV9q75B0sDuWf0P5y6/Uvendqkc3nR05fpC6dJNKhR6bCbZVj1kHwZ0tLAk
         DOemjBB1nNzuf+UOO8BqnP+rt4v7Ez02PNHUdoASALPN8P3ou1X9zmL+xwJkctt58Uia
         5dc++psB3H9PS/vOUOiNsnf+xuRjCzBrV5czbGnwZF41oInIiMx4bvUR0GbDmSx38Y+n
         E7fMRWYBUxJpH8sTEvgeSZ3vruAFqo4DXayLODFIC4tIjJWD1KXv2Z12BK0v81HRU5cM
         Ymaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=p0yz5l9S1tSy2buhTZElzgLvRGRoFCpmLIWAz9pUW9k=;
        b=YMnXpT6rerP95sBzjf3gtdWMB2y+cAz1Ijt5U4098LiBquMeKYoHO6VSWSUbNJLimO
         cBnfRd9gCHS18TjRoeEZ5c7mNSMCWCsdBo4ED4hKVem0jGto8ZebWKXOvdK8EjpcDZrM
         2WaohqGFinYWll3EaP221AuXhDhia2UgfllBJTQ+KWqylBvksjDhOrgaY5k2P8TcyU+y
         F8zPxwPdV4iKHeT04R88sA6cu6Kp6m4IeEBFAuF62UEUpovNo84H9rfXHqj2nyhhgxso
         Jp9Cx/k+Lu8nF4pmawvOZcDW1MQSAsEg7SORtTc3+UPyZiiz/oXNl1nq4XYUPbDEFp1i
         2jgQ==
X-Gm-Message-State: AOAM533umoBJu3IQGHGxDrQG4gu++ebh9RzkEi8rm45VfsoBXHRioEAM
	8OOYxP8ijHP0dgFVhMWiCNlPQG/8aMaH25BK
X-Google-Smtp-Source: ABdhPJwtA7IDRXjyprOMFtXFDEdlRst60x1P9bif0uKmU1TeReEoBqoWfIo1dS/Qd5LHhawMWbQOvA==
X-Received: by 2002:a17:907:6286:b0:6da:6e24:5e43 with SMTP id nd6-20020a170907628600b006da6e245e43mr3368001ejc.449.1654163394255;
        Thu, 02 Jun 2022 02:49:54 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c16-20020a170906171000b006fed85c1a72sm1565086eje.223.2022.06.02.02.49.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 02:49:53 -0700 (PDT)
Message-ID: <7fa34789-c0da-17fe-a560-e61084d16fea@linaro.org>
Date: Thu, 2 Jun 2022 11:49:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 4/6] arm64: dts: exynosautov9: adjust DT style of ufs
 nodes
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220602053250.62593-1-chanho61.park@samsung.com>
 <CGME20220602053329epcas2p407039a6087b6c460d6687b1cc1f3872a@epcas2p4.samsung.com>
 <20220602053250.62593-5-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602053250.62593-5-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220602_024955_789793_526E0040 
X-CRM114-Status: UNSURE (   8.89  )
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

On 02/06/2022 07:32, Chanho Park wrote:
> Drop "ufs0-" label name usage of ufs phy and hci nodes.
> Regarding the comments of reg properties, we don't need to illustrate here
> because we can find the description from the dt-binding doc.
> 
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
> ---

Thanks, DTS look ok, I'll take the last three patches after merge window.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
