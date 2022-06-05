Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD56FC433EF
	for <linux-phy@archiver.kernel.org>; Sun,  5 Jun 2022 16:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbDHN7sqFWo1UbZ2QxARASftcYnay6KchZeeVXzotP0=; b=41R+F95NGf9Ngd
	yLMxpjfGmWQc9z4bUevbDv+O5nr8Ka5CPepb6OMbUWEwKRNQstesJNpXJ6da4DCC0jSB2CfxhHphA
	5IHYp+w8py67W4xdaHHVcI8qx5Nc4DmnUoq9owjoc4CZl0IgHDf5hGGRrqPpeM1KVe0opdVeZsz12
	PkL770AOe9FyfkPFLwnFMfjNU920her96GYLmQOqiKkEGeSccsNkxVGS7vjpLPgSiA13qzCDvPoiu
	r9Ip77xoH7Uddkg/iKS3S4W6QlUeBz24cJFuRKOGYp0OXTVF42prYNo0eFGqjYa0KLpau3YIkuSC7
	aF/aKbSBlFpLpjyR4iZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsvY-00EtDJ-4U; Sun, 05 Jun 2022 16:16:32 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxsuv-00Et09-0j
	for linux-phy@lists.infradead.org; Sun, 05 Jun 2022 16:15:54 +0000
Received: by mail-ej1-x636.google.com with SMTP id y19so24743291ejq.6
        for <linux-phy@lists.infradead.org>; Sun, 05 Jun 2022 09:15:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=q4xvebV0XpbZSZUkLXPf7W0/7Coc/c8ZBxn+5C67nfo=;
        b=ToZ5kP9Kz/Gl10P/HKmRpWlKQkXqmNdeTM+LNVC9njW6AT0pH0xVZjrKOFMF9f3Mez
         AcF/EXzFS58WnSELEpFPVPByzmW2A97Z80IRjtKOGQtD287SCpazq6TM0+NDayFP0Hzh
         p6wU6Dieof4JIaLDgkaBi1bM+pQagMygZFU2FJBur0Gv4O1k/0oiTvvkzT2eDdgAbbr4
         E/ADr96nj771HkAQ8M3tsXz3SRGod5gtIPSo7d138A7JJoBnLThPqxp8HYVvzC6GtkU0
         rppQermXFhcX51h1rqSJPu6KLJ3YCLozwHZYQ0k2ek3SJRr+2VP8xGpeSbqluAiZ+Xug
         qvsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=q4xvebV0XpbZSZUkLXPf7W0/7Coc/c8ZBxn+5C67nfo=;
        b=bpV99pJjeW9bKzY4QGhCHTnzXTgWtJh5nMLkan+3XLEwnhF0vXPUqtd4RguS+/YSKK
         kKvGvHKnCkYVBfA6L5n9Roir9ltHt31ruY7Z47YmQQeaWkfG9CaGmkNt330+7GEsPrHa
         IyG0/W7iXwwVrEIt8EIGm59TZlHvYROnOBczLk/DW+bCrfwCrnhk5pKXTlPP1tidGgZ1
         Yq5y14rxr2acIlrIAAw4RUuPdvz5QNCOpB2K50GfCs2V5kNYTTM1wgOdmM+1zBooac4y
         2VD57d89c6m8nY1qnca1IzFJxqpzIIp3hcYM33imOlccU38QQJUq/FQd96ZF290y6rPX
         SMXw==
X-Gm-Message-State: AOAM530WINBjnFZujXqXgXtK7kmxjeR1ehlcRhPAVRTIw8lheXGs0c0g
	ZDePIGYt96rxSYuJGTjGDECFqA==
X-Google-Smtp-Source: ABdhPJxSk6GbCqAjHVAFLDzd36/7DDWGhmcFeX1F2x1nAxkiNHAdgw8zDJgf/YKTF/YzV0jFi2Krxw==
X-Received: by 2002:a17:906:b18e:b0:710:26db:7a53 with SMTP id w14-20020a170906b18e00b0071026db7a53mr9222702ejy.290.1654445751496;
        Sun, 05 Jun 2022 09:15:51 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u21-20020a1709064ad500b006f3ef214e14sm5196258ejt.122.2022.06.05.09.15.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Jun 2022 09:15:50 -0700 (PDT)
Message-ID: <56ef9076-3dae-31c1-defd-c3c24d55b82e@linaro.org>
Date: Sun, 5 Jun 2022 18:15:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 5/5] phy: samsung: ufs: support secondary ufs phy
Content-Language: en-US
To: Chanho Park <chanho61.park@samsung.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220603020410.2976-1-chanho61.park@samsung.com>
 <CGME20220603020426epcas2p3f50ebe570e01c7f10972a857659a5625@epcas2p3.samsung.com>
 <20220603020410.2976-6-chanho61.park@samsung.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220603020410.2976-6-chanho61.park@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220605_091553_183756_D50C2704 
X-CRM114-Status: UNSURE (   7.91  )
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
> To support secondary ufs phy device, we need to get an offset for phy
> isolation from the syscon DT node. If the first index argument of the
> node is existing, we can read the offset value and set it as isol->offset.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
