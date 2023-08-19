Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1B4EEE4981
	for <linux-phy@archiver.kernel.org>; Sat, 19 Aug 2023 07:12:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0ZmypmheJOpZPf31p0KZxnxL23AQRrS5OXi/in9qao=; b=Ik1Z8LXjAD/axb
	MsKzjY5OknycM0iIfUGRA5j1s9E7g2kJENv4RSrjlyaRI3E1zj8IHeGkQxP/xVqhhK+J11bFR7NRe
	Fbw6ZPXbddSO35CFN7/2wh4v3xC8oK6MBq5a5wwQ5U+2tWIXh+DOsCgkjmrtE882aKZxTAsby+OlA
	d//JT2lwCYmNaJx6/XnwHv5nfDSdH/hTP+sCDtDWQDmUgj6zyqXLE4X3mJuF9kAEwL1C0ywmHZN1V
	MAkmya9mrWCIB1BBAEYJOXpqBQ+7jN3pj5LuRgfGtbhrB6iclvziZ3NiHKqcpVSnBMgKBRAYe7iUR
	7dcMtmgu0whholAvREIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG8B-00AWe9-23;
	Sat, 19 Aug 2023 07:12:19 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qXG89-00AWc3-0N
	for linux-phy@lists.infradead.org;
	Sat, 19 Aug 2023 07:12:18 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-99bfcf4c814so209907666b.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Aug 2023 00:12:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692429132; x=1693033932;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cQY6WnQ/m8u0RegAANKfIYUYTzgv1vRq3DZ3ly5dbAc=;
        b=hoyQJLUnCFxiJgpShvNrpr7ON1krFRmjhH8yBjPrQYeXnhfCwvq2ihXqH+8ZSQ2W88
         oBp8WyPcfHljYOXM9Vq5iLSDOwh+nhDgCpw7X4uzIHP9oVcUA/INZ7KyT/iHNRu83mAO
         q/WnbV71o4ipAcMtOS0SLibL2o11CXsFbU84tQfUZZkdNXqlXKJC+q+o/aPIbL7bD/UA
         fAkdqoa0j/21HfqIUA0W8byKEJLYSLPclr2Kfv8GvX/3PWooQv2y+3g40CETnE/pF4rw
         rTfidFQRMws5BZD3pwnI2rsIAmjtmfvp9JOBNNi/EPpIazWLX7ebZ5k0KdJvR7rBHVuq
         6lVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692429132; x=1693033932;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cQY6WnQ/m8u0RegAANKfIYUYTzgv1vRq3DZ3ly5dbAc=;
        b=i0agclqxCzAXn4OCv9oo7BjWx8jBXRH4zkpfaRK+rSEXUDmWoAXRv8O0Zm6fa2AXyC
         RNnwwH7p/2YNPJr5EKaS4YVjc4rQkelczV0Nex5kGn34j0USIUnvJhh5SuzWvO8USkGp
         zQGbDYkxOVLveIzTQgEwi6RG95QKt7hDCF4IR7WS6mLkcc7Ri3QCb7orw7Q/R4xGHyEb
         Hj4BZcOQyU3KXI9B7a8FIPpa9BQFfn2AlIgYJMRzjQhlX89Oe7QC3s1Rzxqv2dfHzXdD
         iNU/tLhpgSxJlucXYJ8TCUC/nqt53mo3YfZULidtfT+vLP6SceVzA+0uTdyiRU2l3vJH
         jCKg==
X-Gm-Message-State: AOJu0YyQMT/Difb/1rmMqkMa6NI10MpIbcB7funzMFbpf0LURNgaIa0/
	SamJe784C16Vl4aH0lVId6izQw==
X-Google-Smtp-Source: AGHT+IHv0mbSafuvoUEE4REyPQRXbufTH55ANzGowPiFzcq9TWfOp9MryxUZZwsD+f0+37Z6YamLuQ==
X-Received: by 2002:a17:906:1dd:b0:9a0:9558:82a3 with SMTP id 29-20020a17090601dd00b009a0955882a3mr1137510ejj.58.1692429132476;
        Sat, 19 Aug 2023 00:12:12 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id rp6-20020a170906d96600b0098e2eaec395sm2195304ejb.130.2023.08.19.00.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:12:11 -0700 (PDT)
Message-ID: <2ba0ef30-3023-9184-db61-d5d5a64d02ca@linaro.org>
Date: Sat, 19 Aug 2023 09:12:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/8] phy: exynos5-usbdrd: Make it possible to pass custom
 phy ops
Content-Language: en-US
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc: JaeHun Jung <jh0801.jung@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Alim Akhtar <alim.akhtar@samsung.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-5-semen.protsenko@linaro.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-5-semen.protsenko@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230819_001217_153697_0CC0B503 
X-CRM114-Status: UNSURE (   9.95  )
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

On 19/08/2023 05:17, Sam Protsenko wrote:
> Provide a way to use different PHY ops for different chips. Right now
> all chips are using exynos5_usbdrd_phy_ops, but it won't always be the
> case. For example, Exynos850 has very different USB PHY block, so there
> will be another PHY ops implementation for that chip.
> 
> No functional change.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
