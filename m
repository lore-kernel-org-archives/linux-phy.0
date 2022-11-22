Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46D67C4332F
	for <linux-phy@archiver.kernel.org>; Tue, 22 Nov 2022 10:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZnlkpbvGvg4VuihtVEOeZQIfa43NwWsIg4PRKkWHXA=; b=RzZR1D1GVd5Vpu
	INeRO3peoI2BxSw8TjprnqvKRf1LIePqf+GzahsBW1+54zMj5E6aFskYuj34hVOKf8h1iJWdU1krP
	bQPyG5yWnPEUmkJEr7g+Z81MdLZMEvbCzjFpJeofAIl3Qu3KMdzAmQzav/oDHOqeavlOmxFNj01A1
	GGTZu+dIBTc7JAFQP1U93keuHlOOnSlv79A0ZygcPvMXfDBqa2Rt7U32sJv7pA2MjHyjDV+MGYgYM
	SR72P8Kl6TPBlBlisJuSMD5xT06T7MZA0BFe/vEuLqEB9ps1g3T2LQm7tT/ppOKzKQGfDm97vNNwh
	tQ5M0mN8/P8tk51IiR5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxQQq-007low-G1; Tue, 22 Nov 2022 10:23:12 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxQN0-007jrj-Lz
	for linux-phy@lists.infradead.org; Tue, 22 Nov 2022 10:19:16 +0000
Received: by mail-lf1-x12d.google.com with SMTP id f13so1353179lfa.6
        for <linux-phy@lists.infradead.org>; Tue, 22 Nov 2022 02:19:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JfLIpkOTN7mnH1pqkEcUyKs3y8dy0IMYzeie/rgKHMQ=;
        b=jnlqjhLudUc6ZW0+QJnNeONAY3SPc6ywVgAxCssWrw5bFnoqo1RSzRqExLKKA++v7H
         DM/ChKhWdAi7fi6K4kD5f8LwR5RjqHsDgT4CtjQlUDllG9PAe6hAUabjNYS9VZfI+/xB
         RJe2IN0kHOkRVJ61wHvm3GeiA0sVTFRwFwj4pFALtrq3X7RXEgeBzbLGUP54dlNfdUyK
         ggnXS7n3hgWZKWrMPQJpJ5ENbI7KAS00J3nVTYLi0YreQfQ/nj8iEwdHsH6jZdJ44ADV
         60QUHwfQObNe6zYOvDAmKfJJz6LSdPEAwZz3x7YyzTK5Lz/03cxAdWA53ZP1fxtKAfVu
         VObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JfLIpkOTN7mnH1pqkEcUyKs3y8dy0IMYzeie/rgKHMQ=;
        b=vzYbHSkuWb9pCuAVXZkR3ZOYlCiQ9qDbGf5Phg7Q0oHUKDIBnhTHs+sVs7EL4kJr6D
         Z4lXRZnGR2i9do7PIKRxWnONrz5dQyO0IImiPdVTDegvUaLHtyC9vkExXiI2VJJi7x/F
         AIvD4HP/d1tit6R466Oq2NC3kQbHAUi0J1QL3in8py9P8rks4Lxdsjz0WS9GaaM17Q3y
         R5CQN2HCunECic7fSXVACL1LBcPUcCcXGt+yFU0lSA95VuwqTNSGj9msFOZX4ebyUQHO
         VgmfzvR6XKbLHh8zaIKVGNzaMajRqqK1HExW2swumLWuTJ6UK8pPSb1u2FDIemVmzHFK
         G8gQ==
X-Gm-Message-State: ANoB5pnNzxJwTfwLZ5lwDvQkI2l4zliKi0EK92pf5Vsk59/p86/cZC+T
	nQ/tSBX7DWbS3FO9ljomjBFWaQ==
X-Google-Smtp-Source: AA0mqf7uvNwaFNT5aVok49cOQrvlBp+Mf8/NctCjOga1BXBHs3KEoUjBhmzaRyCxc2l02l0HmCOk7A==
X-Received: by 2002:a05:6512:3282:b0:4a2:4b1b:6ad9 with SMTP id p2-20020a056512328200b004a24b1b6ad9mr8549363lfe.296.1669112352299;
        Tue, 22 Nov 2022 02:19:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c26-20020ac2415a000000b0048a8c907fe9sm2432513lfi.167.2022.11.22.02.19.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Nov 2022 02:19:11 -0800 (PST)
Message-ID: <3160a4dd-f8c0-5cce-8c15-c9a4c173ef1e@linaro.org>
Date: Tue, 22 Nov 2022 11:19:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Content-Language: en-US
To: Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com,
 rogerq@kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20221122092203.762308-1-mranostay@ti.com>
 <20221122092203.762308-2-mranostay@ti.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221122092203.762308-2-mranostay@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221122_021914_768231_BDAE0559 
X-CRM114-Status: GOOD (  10.94  )
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

On 22/11/2022 10:22, Matt Ranostay wrote:
> Add ti,j721s2-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> index a9e38739c010..b837748f33d1 100644
> --- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> +++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
> @@ -18,6 +18,7 @@ properties:
>        - ti,am64-wiz-10g
>        - ti,j7200-wiz-10g
>        - ti,j784s4-wiz-10g
> +      - ti,j721s2-wiz-10g
>  
Keep items sorted.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
