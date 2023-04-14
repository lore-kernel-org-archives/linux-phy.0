Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0036FC77B73
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 08:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PLvjjU6T3nQ0JEbrvox3B2R67kWgNwi36Jw/FnpnyXw=; b=j660ynDELnaAB/
	p49KT4WJmsqPDTWyFOL6vGHynEQ397MxWgYFPT9S/7yo1HL3T7TNd9P99LAr02tdcj1l9Dhm6q+Vx
	rQO9QjvPAeA7vRzS1SjO2yZge9CBo1f3uH0FHCtfhdZwLFjHsTdGvq1vdqf31QLBfzO1wm5zBu8b8
	0q5A1uUcFUimgYdWz97vNzumRsMjzrXv1CyTJvMdpL8H4GuyYc5mdnUJuuFKf6/8GuAFg0anMB2l1
	uzcQNM+dnd/CjFnhM/76MNjXyrN4kYLEdNg6/OPGuQBtax94FC3p5xhmH2GIL4hiBFtTQWkZSdwar
	deMtpe+EgYaSY6bwApWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEsc-008iwF-1n;
	Fri, 14 Apr 2023 08:34:02 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnEsY-008itF-1s
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 08:34:00 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-5066ce4f725so1281172a12.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 01:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681461236; x=1684053236;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NpwShvISTcTE3K551Ap7usqhXOxNcMryVkJfhLZoUUQ=;
        b=gsiPpWBp2wpRZMjngR/LlRcMXgtQhIJMpe1zxLflCmmCEgZt1OKJwCaaOuy1DRfeG4
         8Btrq6P7SzcRIEwS+LzlJZ7Xy8WKZllnDewpxsObInwk1yG9iMGXgLwLfVQrVvsmQ3l8
         GRnVASeSZv/aJAIJZcH2Tq5EIEKvmGeMwVpgmsKj2nG6SkyJk6BLzVeqL1fq/ClPJpAL
         D2HXXK5q+Sm/lZ+t6o/2LhFPgSoeb9zXxR7qfaDZKOqyccvzAfDms7EFm1rUOy0oT0pa
         S8ZqPM1ighYnFYjjvIwJuXJL4VsoiUOYj9wFcvl7d5v+aT2h15sOyAHO8r3o7TYGV/L8
         GreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681461236; x=1684053236;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NpwShvISTcTE3K551Ap7usqhXOxNcMryVkJfhLZoUUQ=;
        b=DbBhLd8VdJH4DJg8v9BFmgNo9IiAnqpDNoe1+Y8alcRig95FyyQ5TlGwHF/12GOTJw
         moL5SJweRqUlf5EYYcWRFP0nCUY41WyaNbYvO3J6uq3K7lg6zm9JVMNkXov89ujfT2Mz
         0Ry16VJkv4KARzdWe3ZRoRH3EFYFqDza6OpajhFSTBP9C2z/iGTKfP2kS81S4LEIhGqH
         5GS8noXIBrwXUyX7Y+8wZt/oHmqBfnLB3ogq4GIjaZQXHupD7MHg5SQ2GgaseG51jMEF
         qiVb/fOSc9OL6i9Q/G9tTu16nC/43MuyubylWIB83Gqs3Pq98ZHmtZsBz/43x7hzQrOI
         K2cg==
X-Gm-Message-State: AAQBX9e61mxjGe3SnVEHK5ijpfSXdoz+mfYL/Pf+36CyYNSclFgMi6LE
	oVvbZJXIEs+Ddu669gXj2qvazg==
X-Google-Smtp-Source: AKy350ak3cqtwXDorNJtScCLcUQuNv92fnfl8eFxO84dV/0O6W4+Gjg7xHm2TDj2lqckrpNVg9kccw==
X-Received: by 2002:aa7:c7d4:0:b0:506:8470:c323 with SMTP id o20-20020aa7c7d4000000b005068470c323mr823188eds.24.1681461236235;
        Fri, 14 Apr 2023 01:33:56 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id 15-20020a170906208f00b0094a511b9e6csm2117677ejq.139.2023.04.14.01.33.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:33:55 -0700 (PDT)
Message-ID: <b573ddb8-3909-998d-f051-6a3c4af1c629@linaro.org>
Date: Fri, 14 Apr 2023 10:33:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 11/27] dt-bindings: display: mediatek: merge: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 matthias.bgg@gmail.com
Cc: p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com, vkoul@kernel.org,
 kishon@kernel.org, thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
 chunkuang.hu@kernel.org, ck.hu@mediatek.com, jitao.shi@mediatek.com,
 xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-pwm@vger.kernel.org, kernel@collabora.com,
 phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-12-angelogioacchino.delregno@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-12-angelogioacchino.delregno@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_013358_616532_283E5104 
X-CRM114-Status: UNSURE (   6.28  )
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

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's MERGE block: this
> is the same as MT8173.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
