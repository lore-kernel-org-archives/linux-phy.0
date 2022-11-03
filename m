Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19DC8C4332F
	for <linux-phy@archiver.kernel.org>; Thu,  3 Nov 2022 15:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=enBa6vfSuC6L/Hz2wj1Ioqx32k0H+KjvQ01aSidzF+4=; b=d4h+9b18QoCcBr
	tXsj2LCT9yD6wqcNbXH8Nelz68u10NHywBJOTQK0h1IznYMHHtCSrSxnmZ1i0cwqEBvY+bbDBABZD
	J7SbYl9WrMI7vTIgUluVNalDd9Lj9q+QzJzKj48qgkWEka0VXf+wPRB19Fsq7qF0pTsBXdOEjlAMb
	Iuuzh7DjqOA6qyn1mRFNgpjicAX5W1X0VTUViWWdmWk9gh8gOl7KP2fYgZd47X8fJThF4Is53/iDR
	g+xw1hPFHU291XiXTo4u+CfjP9UoDPPebIkMsN9GcRjtfP17KCsXnUqE7mQWh1xMdTegNPVi/+IZg
	2O5oTZcHeU3KvFXWTq5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqcLN-000SiF-EJ; Thu, 03 Nov 2022 15:41:25 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqc5R-000Lj3-V6
	for linux-phy@lists.infradead.org; Thu, 03 Nov 2022 15:24:59 +0000
Received: by mail-qk1-x72c.google.com with SMTP id z30so1312104qkz.13
        for <linux-phy@lists.infradead.org>; Thu, 03 Nov 2022 08:24:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+GK+kN47VRDh5Rd9IAtghxyhLdbPgGlBTCLcifjdKfY=;
        b=CuVdKrpYE2rQRg37FPIg+JZrk4NzKKxt219BGe3CMQvQo8Lmp2ckSDbzhj0bEEUIDL
         fxTOSuzkB/5KrS//gXY6ySrTmRgRg8/Y7fvynh6m65Zh2OXxQ4VX2GSRl9UBvObPXaiB
         +vOZCa0xjXVbfTNBKAzOFM+Bk77Hb1sPLlBuXe4pMZ5UDc+2YdWojicrTPpwK/H61Iio
         yq7H5MfkITJRWQYoPFpDcBb9983wRkk5uycAbX1edw4j+1IfEOYvTWUb0TabE5T1YL68
         HomjjXu09Q9xuXt2iGFj5ybrYfCG6zH2HK1fcjAIOuAUFslSMbvF1EvI5XH6vconk6NT
         K1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+GK+kN47VRDh5Rd9IAtghxyhLdbPgGlBTCLcifjdKfY=;
        b=NnjyYfwxrvbOJanmZG6d8GWw4V6Hy5q7lu4aJS/m3Kf7tCUKo/UOAOq8JafP0VPYbn
         4MgqMosSGhP7QLyOXcQjjH0Qh/ByEVzg28VzGCcCF5POFVtNQimKwtYuvQAqJWWbzjkE
         z0/tp/Nt1NZTRV3BPvprxRdSNY9UUt2BcrVh/gnCqbdwu3Yj4kL48ajkSUCasPKdDBRw
         2iO5GsnmpnX0u59vXzNp8Rusydusl1v6B15xj3S65JJ/ZF6/Eu9BUXbURZNJuf7FW6CL
         39NPbU6zxcA/Oe05xgJyzqAW7/LynDLdeQy0/e0MGktQ3oyELjkodqcK+or8dIgNRCwN
         gk7g==
X-Gm-Message-State: ACrzQf2DQ8hDkWXuqIUTd3y167vjr/DTT0UnsHs9SlekTaf0DHj2Sxcj
	EpfOhcy1tb/Y6Y24XtkXZUPyVQ==
X-Google-Smtp-Source: AMsMyM4JfQZmP8W7rxOWSLWL8ATCWGxBIJQoz0Nkbogfi2BmdP8tf0y5Xg2ivz3gto0bPNF2tfnghQ==
X-Received: by 2002:a05:620a:1256:b0:6fa:4c67:4d9c with SMTP id a22-20020a05620a125600b006fa4c674d9cmr10696457qkl.713.1667489095268;
        Thu, 03 Nov 2022 08:24:55 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:a35d:9f85:e3f7:d9fb? ([2601:586:5000:570:a35d:9f85:e3f7:d9fb])
        by smtp.gmail.com with ESMTPSA id p20-20020a05620a15f400b006b953a7929csm907379qkm.73.2022.11.03.08.24.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Nov 2022 08:24:54 -0700 (PDT)
Message-ID: <a2b1ffe3-e2bc-25d5-f665-363db09bd959@linaro.org>
Date: Thu, 3 Nov 2022 11:24:53 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v2 02/12] dt-bindings: display: mediatek: add MT8195 hdmi
 bindings
Content-Language: en-US
To: Guillaume Ranquet <granquet@baylibre.com>, Daniel Vetter
 <daniel@ffwll.ch>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, David Airlie <airlied@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Jitao shi <jitao.shi@mediatek.com>,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Cc: stuart.lee@mediatek.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 linux-kernel@vger.kernel.org, mac.shen@mediatek.com,
 linux-mediatek@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20220919-v2-0-8419dcf4f09d@baylibre.com>
 <20220919-v2-2-8419dcf4f09d@baylibre.com>
 <c91ee3ce-3f30-a3ef-bb38-8571e488b6b6@linaro.org>
 <CABnWg9t3w4o4rmNosvYCpqG-h8DESerajH7OsXEYofRf2kr1Xg@mail.gmail.com>
 <6bb3ab49-1c12-6863-a49a-2fd1f34de561@linaro.org>
 <CABnWg9uDki0ZtkxU1BPZq0ZU1mi4zFjasw+e3pQYb+Nv1MThLA@mail.gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CABnWg9uDki0ZtkxU1BPZq0ZU1mi4zFjasw+e3pQYb+Nv1MThLA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221103_082458_032537_99690193 
X-CRM114-Status: GOOD (  11.20  )
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

On 03/11/2022 11:17, Guillaume Ranquet wrote:
> On Thu, 03 Nov 2022 13:45, Krzysztof Kozlowski
>>> This is an i2c adapter, not a device.
>>> And as it lives inside the HDMI hw block, I've omitted using an address here.
>>>
>>> Is this valid? or should this be expressed differently?
>>
>> What is an I2C adapter? Did you mean I2C controller (master)?
> 
> Yes, a controller.
> This is an I2C controller connected to the HDMI connector, it is used
> to exchange data on the Display Data Channel with
> the display (such as EDID).

OK, then the node name is "i2c".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
