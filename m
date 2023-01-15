Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43547C63797
	for <linux-phy@archiver.kernel.org>; Sun, 15 Jan 2023 14:53:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z98iJd1lkUHu5bjkTNJI5H0z/TxSqqX/ELfy5CUZsXA=; b=M1nRgGBEH43iwN
	DJf6CEzLgGckMCyemTp/+bOo7IYYnLcoJLKiiDV3y+zPmJ3y55AIHEfIX+1hiv3ibW0z9KXyUXAQ4
	YE23Bu+QmoteFTtlp2tRgjHmcIs64PlTnVFSx1Ay19S2Aho8zYOyWNIha2rp1CzODPwHGABKgKbyf
	stUZIBg1TrMBkce1Yq64cJpDreQ09lGGTm4zKC+KnpwhZpfU2rx2iylaxeE+fYgNO4mkLCBnGm75r
	1tyqD+DMyCoKzPAPW4zfnCN8/UkYI9QwMocme/zdfUAW5kRywdI3kh6ZdKHjqan7ONZWbKEL24ak0
	/KZOwkPPLNUUWy0WjvHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4OC-007VQ9-IT; Sun, 15 Jan 2023 14:53:40 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pH4O2-007VN1-8y
	for linux-phy@lists.infradead.org; Sun, 15 Jan 2023 14:53:31 +0000
Received: by mail-ed1-x52c.google.com with SMTP id v30so37581993edb.9
        for <linux-phy@lists.infradead.org>; Sun, 15 Jan 2023 06:53:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ctHhpu12ctF9VU5Hp3kTq+kulnKm0gztXgUkI0AnIuU=;
        b=UbBrBiQyYbSlgo3/2aqXF5HEsWEfVlR8dQt8GViI7F9syc0wJCVLSxh2qGhSeK9/7Q
         Kf2RZHFdpz6/YSkP7W/iuePFD0vAKAEWJQ1UGNR7/sSda0oHOlCzkDTMqJea2xpdLeyo
         LxeEakLUyZckmvXjcQMr8zkE7Cc0v1GI7kqpvpLj/UC0zRDuiT4PIayU2pVJJrJl5ktp
         jxGU4w5RABPYNd/U0f8U+iIOjd9ydt85xHKpXy1KdTxg2W7S57y4XzR1lN/RaJiFVuQD
         MBVlLF9IlZbTHL/HvMN9uZDq9V1uBuC3PxDe93PXuGDjnQNqebDhT4ZJa3dlhtfbhy/p
         VvIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ctHhpu12ctF9VU5Hp3kTq+kulnKm0gztXgUkI0AnIuU=;
        b=D8VRowcw/5xu42N/G0QvVl2ANTZg+S7AzO7a1ksqTGHsWKUvOqOOFmbETM/wWzWh0w
         PxeSxrvRd2b7QEt2LRjjvdpM09TXYVrz4qvZdd3LNwCTN+BpP8RX+2QGZFc4Sjw0XWg2
         gN+17T4IyymPivB74vtD6qHVt5IypULYTyKbAaSWPMw4JF6o74XBC8NalVUFqpmv6ZgT
         h0quXjY8r+E+Y+tNcyOHqpQV3ZrR94Nvirz7gGU4jJJzVE4+G8CAdZd3W1Z3yOCBF+uC
         h2KA7XTW9ASQwiftezflC6WdCeUMAA/hvfQJFjFsWrM0Ntk/RF5BHxBuvblNkedjMp4M
         aD5Q==
X-Gm-Message-State: AFqh2kpbe1GG2LTnCVKMa6MG6zFjC9+o0Z1BvRf3oWxwjbqswDS66ag6
	1kmZJY1J+NG9k1N+PIQ6CbuGmA==
X-Google-Smtp-Source: AMrXdXteb/nVwFk9p5p8D4qv1j7S3YBOS8KVu2iaB4Qif4hiYP/nQuN03C/zneXOU0TjGAN6P7aGrw==
X-Received: by 2002:a05:6402:2065:b0:499:bf1b:5de with SMTP id bd5-20020a056402206500b00499bf1b05demr20423208edb.37.1673794407741;
        Sun, 15 Jan 2023 06:53:27 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m20-20020aa7c2d4000000b00495f4535a33sm10502685edp.74.2023.01.15.06.53.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Jan 2023 06:53:27 -0800 (PST)
Message-ID: <ba8104e3-efb0-e092-573c-0e1ac57f1052@linaro.org>
Date: Sun, 15 Jan 2023 15:53:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] dt-bindings: phy: g12a-usb2-phy: fix compatible string
 documentation
Content-Language: en-US
To: Heiner Kallweit <hkallweit1@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-phy@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fae86fd4-40f0-ce6f-f3ab-d5e0cff019c4@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230115_065330_345032_1FB677CB 
X-CRM114-Status: UNSURE (   8.23  )
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

On 15/01/2023 15:19, Heiner Kallweit wrote:
> The compatible strings in the driver don't have the meson prefix.
> Fix this in the documentation and rename the file accordingly.
> 
> Fixes: da86d286cce8 ("dt-bindings: phy: meson-g12a-usb2-phy: convert to yaml")
> Cc: stable@vger.kernel.org
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
