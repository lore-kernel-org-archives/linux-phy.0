Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3991CC4450A
	for <linux-phy@archiver.kernel.org>; Thu, 16 Jul 2026 12:52:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vdzWhPfT58iCZYOXCVhNFc87odRdqn9QDDsNDSLuqpg=; b=AKhgziG8GJfmIp
	HDlMeu4xtGo6IjMrJYwz9/VuwxgjNT2PjUE68iHfbBo99eirr9HYGp0xjAeN/LfuvHmPIO97cv0yM
	NFvntYPOILiZugxpyiFw14aXLM3fgxU7d9/6Z58xbraPTcIjd4uYHXUQtsuNG+eWLXzWc+MXPu40T
	I4kN9ALFkzSqWotDkD66zYFHuKHBI3oruHce8bnTnHtUyEigI/GYUNQpxtA16ngGaCix2T3Vgmd4z
	P59WC3gSOxChCeRrVF3Q9V8RZLGMExIf+5d3PyeYLyJsQqBkCULv57yjyuguFLYe4YIGAOZnH16jW
	MPMqb3mjfoyD6QhVwcKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLZX-0000000HLmC-3JWt;
	Thu, 16 Jul 2026 12:52:15 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkLZV-0000000HLlu-1sm7
	for linux-phy@lists.infradead.org;
	Thu, 16 Jul 2026 12:52:14 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-47f365afc5aso2741846f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 16 Jul 2026 05:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1784206331; x=1784811131; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=CL1+h+Sv7ciDTM5rA1EiT5WxOx+c/keG9qg756/bbt0=;
        b=AsXcTIKayYAdz7HhpNAaeyIAoTtrzvnNeLhT4xHj1x4fjT1Yz4MyWNQien9xk79Cka
         rgyE+bfzbo72jQXVaM5kJxC4zskx0WqV3MKbdUKQ+hYuXRctnnzptBpB9oprwfif4ZzA
         UJ6eYwdAdU2uwZkrwX4RBvgRzE4WZjoqDsglaNx54ozqvO50gfbNmlBBOykxirnt00IB
         Y9eAWrdhlnQnoqNnpDt2bncjLdPzL+FRy3pxoH5vm20V8q74xkgKt1J/xcSfUwKTqEOS
         Y2Pib3boOUBzHaxwWYRrEmq0wfwJEBQPmP5L1Pyv5k/1panOw8Kopf8+NMfoH8e+u9my
         VYCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784206331; x=1784811131;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CL1+h+Sv7ciDTM5rA1EiT5WxOx+c/keG9qg756/bbt0=;
        b=W7/a+D4t9q0xpwZpMwxT4pE9oDy6pJQc59Svr6aABpvAYUvivzXFckrAALLDt0ukZp
         nrUnTxvKSgOmLKpg7P8dhGUmixfnyTxhMCLFHDY/bC5H0VM+fJyOkLJKJM9Rktg+M+3Z
         bQSMa+cBM5z/vs3k4s5rm9DyLgXTJxAyNr2RzFg68Wom7FY28CjjoSLc6qrJEMZs/4+V
         YqoReK4mwiq7qV5jrv+ZfnwjWfwCUlwem0hC9hrck8hrDEfDeyZb3FYwadhUn4xXKMVe
         Nmb5vkGQSCyRt2ZdS9KhEsuv7fM6wKnlU53YSR4c/RwQyB8eS9A0HuoxRDncaaTivp+5
         2CWw==
X-Forwarded-Encrypted: i=1; AHgh+Rp/vW134XvbtOcoaVSqh3qtDOlfxvP9QRz8J95ytrHHZVCIVKk/AmA1QbuZMqGLeWwuxK9n/6NacxA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz1++dcU3t+o3iVvUBtxupdtftBPFOEm8RU3ry2VrWDoF6y+AmP
	vXz0gJkuwjVv0mIoD0h/BPsSOHp2XiRkTyAaHgwwTSw4qCWqiJcbZe5fdk2xWIYCV8I=
X-Gm-Gg: AfdE7cmrBqh/d0OrxXHZ3OfdLO9JNmm7YeLF1C6a9TtccCZGW6j/wtCcWlDbkc5ZLiI
	eUivxx7BUQr1N6kJRQxQhG93tzZhE9FPB1bGoLcOwXQXDbsJ1sV5F9JT9yndwneksOSUG6NKh2U
	6l/FvyS4R0PuOidukTBACjy7+fz3qzMfkUkOjXCVMSgbhzevzZtJnWhSGj4QgU2XEEndHcbrEyi
	FkdWtCz0nZ9ycS8hzcFNip1o43f8aCdiRnyqusMpxxHnXiJqXOpKiku0I5RHVsb+gWS/pOW8web
	hiXzUjN3Bggf1odaVlQbrkuZN0PD+KL5zXMR4wy76SGA6TsoZ0jMeJ+tigZQskJDt9ujn4V2IBD
	8H6gJuGPczFFjvtQkmuQF+5JVCapw8aYZV9UnE99a7ZASn96ho0wm26o5CICcbqCDyTZVFtT/x1
	i6ilnn8cdqSlTI/A==
X-Received: by 2002:a05:6000:4b19:b0:47f:56f7:7a57 with SMTP id ffacd0b85a97d-47f56f77d04mr3955700f8f.28.1784206331245;
        Thu, 16 Jul 2026 05:52:11 -0700 (PDT)
Received: from [192.168.0.101] ([109.77.36.131])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47f464a9879sm25433837f8f.22.2026.07.16.05.52.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Jul 2026 05:52:10 -0700 (PDT)
Message-ID: <c6015615-278b-4840-a79a-9c7520141341@linaro.org>
Date: Thu, 16 Jul 2026 13:52:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260708-x1e-csi2-phy-v9-0-0210b90c04cf@linaro.org>
 <20260708-x1e-csi2-phy-v9-1-0210b90c04cf@linaro.org>
 <YSunV_lNJ8xW_y-Aa2psZavniF6mcHJlJipuj1RYWMB8Zb8yLC-gb7eEnk0XMjfwQOneMGsZM5foFKutCNhYqw==@protonmail.internalid>
 <b7baffda-b97c-4b83-8d9e-e381d0289682@linaro.org>
 <3ab676ac-919b-4a80-8dd6-71dd7f6fe06c@kernel.org>
 <-iN0mG5nS2joxEn49UrxFlORE3R6Ji3HRebfOMNMGnupMIobTBdRDvnwjRHAXHeLmGf6O4JJENVauduwZXwhiA==@protonmail.internalid>
 <b834e9a0-a61c-4912-b57c-36d571938b75@linaro.org>
 <4d7a0e59-7c34-4557-a475-8cd7fd2ad2d9@kernel.org>
 <CAFEp6-2J0WGF6g0K7s--PxciO+d9MR-SCVnrWJ3u=sgQNwA59A@mail.gmail.com>
 <c731b03e-b550-48af-b338-37ac53018247@linaro.org>
 <CAFEp6-3U66hvi0iZrtRbyY3B-uwEap6xDFHFkVoaEBwWhV74Uw@mail.gmail.com>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Content-Language: en-GB
In-Reply-To: <CAFEp6-3U66hvi0iZrtRbyY3B-uwEap6xDFHFkVoaEBwWhV74Uw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_055213_520102_B26C679E 
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 16/07/2026 12:28, Loic Poulain wrote:
>> I just wonder if there's any real upside to all that additional work and
>> delay/churn.
> There is no really need to support runtime configuration as of now
> since we only support D-PHY, so the delta for v10*should* be tiny,
> either a bus-type sanity read in parse_routing(), or even nothing at
> DT parse and a future configure() branch when C-PHY lands.

Right, well I tend to agree that a runtime configure() is out of scope, 
so, I'm going to stick to Rob's guidance.

If you look at other upstream stuff you will see phy-cells = 0 for 
single mode PHYs and phy-cells = 1 for PHYs that can be in any mode.

Consumer configures the mode in DT like every other upstream MIPI CSI2 PHY.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
