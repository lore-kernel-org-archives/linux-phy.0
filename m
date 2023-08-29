Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19057C83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nTw0ZR0EfrseH6uESg1lD+da7s3B1yCslqvuM+BV5QQ=; b=KMxrqMiqViEe4N
	n7NzExtVTXD2rWk0F70NLrHo40EhiY9dBDMSI/kptNet3frDWW37ammBYwG+qpyJyqwOCfs/6cuxN
	2FrAMZVyiyj574l4HkuB2iXI6DMy5+eOKw3DbC4STjvgVHkROixD1rdA/7wsW0XTCgCTzW1ddKVXR
	tIw02+1g0Ipy+I9xjpUx9kPs1D4bTuhLTkox7FB7TVP+z3A5LJzmvttfxt6XT+GQG62oY1w+pAX2Q
	QYH/NXvQnDW0Rdh5l7qmOjvluIoG+cQgZaX5yM+7qZwllazgp4/CHG/O6fBbcBjOCp8nIYMKL5pKJ
	DH9RUQjfSY6vWlbhfwmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Pe-00ByiC-2g;
	Tue, 29 Aug 2023 17:21:58 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2PS-00Bye6-18
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:21:49 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so93214a12.0
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:21:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693329705; x=1693934505; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ONMdNT0qe15nFMdXWcs/Q8c5HCoTBwiBJLGrnRV1nw0=;
        b=PlyRQZ7/JrlmMXKygshjH51Nx1Dz8BfxGdlKBC/VKDZ9saVM5F4JFjKAM+tTRmTa3E
         WTHXHhCQGY+bU+q+zkyVJebx2D/Ll1Ls4ZNvvLl4EhZMlnpwHdQoub6iGpwcpPms96kP
         PikB7c+GCG1i/14hdFGctePD8/dO82jNzaH17WjsahTX1bbEUuxFSrj5NWxBNuooz0gQ
         cxUiCu/SRcnD6zYCD8h71CuC9qxR8KasSSYy04jDuHc8NDIWFeU2+HJd/qK9sFq6Bqn6
         OfcJQh2rpFlTB1MkQBAqcZoLXJCKtuBZlyvA/0eh/nMvCcpT0LGa1SI11qmhNOYnRn6m
         XxJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329705; x=1693934505;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ONMdNT0qe15nFMdXWcs/Q8c5HCoTBwiBJLGrnRV1nw0=;
        b=UYaiAAhpqOih16l5MvbiUYCNyblGHAr1c0WGYU6WB4egXqDA7ZQY1gkXB+ufYVyFtQ
         PO/C1A+MCHkCDcNVAS/YZNy6Ktm/4SKPdU6MxUNhYQEv6K8AyfTCgc8FotRtmQeCQ8eN
         07Eu2GUZpFe9O4BPILv+b5+ZG8FcJ75OdB+3SKthHr3gbHWqgm+Dkz2n+XbWIVF3RLwE
         /oIA+5y0oUGNauQ7EqDtkXja+XyfSe8PPxfMdmiAy55cD0/v44C/6fUvPspfDzI29bbu
         ol/VONpCj8hYhp1GDflrrN66UeByOo+1TiuNXZmipDgVrpWg9ZK5dNlmwU652gTDcQJI
         H9Eg==
X-Gm-Message-State: AOJu0YwN51OEkQgv37EMna/fA89VZLRjMKb5cLlbX+bHPurgcg99BhjS
	CiX9PaFMAiohAGdkpFduc0FrPg==
X-Google-Smtp-Source: AGHT+IEC28zmPiIgJmKgcQJmlnUeRmPValFdXqSMVRYqh4YR7AT6QaS02hhHQPZGW4brxIj/NspEyA==
X-Received: by 2002:a17:907:1614:b0:9a5:c2c0:1d0f with SMTP id hb20-20020a170907161400b009a5c2c01d0fmr3407559ejc.12.1693329704763;
        Tue, 29 Aug 2023 10:21:44 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id x18-20020a170906805200b0097073f1ed84sm6161481ejw.4.2023.08.29.10.21.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:21:44 -0700 (PDT)
Message-ID: <ea386a28-841d-0e76-cb1b-735b630001ba@linaro.org>
Date: Tue, 29 Aug 2023 19:21:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 03/31] dt-bindings: ASoC: rockchip: Add compatible for
 RK3128 spdif
Content-Language: en-US
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lee Jones <lee@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Johan Jonker
 <jbx6244@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 alsa-devel@alsa-project.org, linux-clk@vger.kernel.org,
 linux-phy@lists.infradead.org
References: <20230829171647.187787-1-knaerzche@gmail.com>
 <20230829171647.187787-4-knaerzche@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829171647.187787-4-knaerzche@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_102146_441708_F8AEF0C6 
X-CRM114-Status: GOOD (  12.15  )
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

On 29/08/2023 19:16, Alex Bee wrote:
> Add compatible for RK3128's S/PDIF.
> 

Subject: ASoC: dt-bindings: rockchip,spdif:

> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


---

This is an automated instruction, just in case, because many review tags
are being ignored. If you know the process, you can skip it (please do
not feel offended by me posting it here - no bad intentions intended).
If you do not know the process, here is a short explanation:

Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
