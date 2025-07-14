Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7FC8C83F17
	for <linux-phy@archiver.kernel.org>; Mon, 14 Jul 2025 17:29:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRx28NWvYTMjGxz2J+tWrjcJB3vKjF6lp1kq/mXk4Fw=; b=gMcVQ91qRiuuMR
	RMMnae1lqhkmfvSjGnxi3rKoYHvG5pkjs5jDimIC+QSfc3fFo98nDgXjkGGjO+a5yll79Rxvd00NH
	rXVz26dpJ0H8T1pKb1MVkIBog6eGIhLMXFBhrUzgozRJ/R5kbDMVMAr9vZTerohLgrDgQylaBIFtp
	jkWuMFrIArS/S8UuA/PF2yTwkS4ulf4lcw2qCEupe7O9sfeQ4Zd1OrJy9u7oobgjeD5XHCSS1u5ed
	oDHJ04nT0NBLj+6ePrWWv3VOmI1pJtBExsz+Xbdt7rP2zZSW3084TIZN5al1TRcLUFz6Ie/8kS2T1
	vz0P4lrV7zTo1gk/j+6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubMzw-00000002xoK-2TMM;
	Mon, 14 Jul 2025 17:29:52 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubL8n-00000002gKe-3f4S
	for linux-phy@lists.infradead.org;
	Mon, 14 Jul 2025 15:30:55 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-553b7a3af9aso284254e87.2
        for <linux-phy@lists.infradead.org>; Mon, 14 Jul 2025 08:30:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752507052; x=1753111852; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GhPM3WYx0FxLSMjDVhXzRCwSNY+8UAUHTyFHv1jdzFE=;
        b=mp6gVflmRKcxn+NV9K7zwpyGDneeuTNpc3luJOm+/L3Vya9W1WYLvcZpEhaFyujmGb
         AJMNZaB+K0eN9S2swuGpxVNoOHUjidYCcIgFoNTX5eZ9sErLyUpryDAv2RnNY+mV6O8X
         2CMWxM/Lk5wEgMdp10uhywQydH5PkIuYNsxwn8wyJprmpFZTGIz4qekhBuNtKjhtDfkj
         hTIubl0knUOjBdZjhWjTBWRhVX60xloutabkujqP8t2c0Xx+sXq73m2TQe8fpv1Vjjq0
         JIqFC+NCCLJtLXEQ5tUSg7iIIjn+BeL/GpgUiuA4193HQxhqciq6Uakk+4r3qN7ALR7q
         51kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752507052; x=1753111852;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GhPM3WYx0FxLSMjDVhXzRCwSNY+8UAUHTyFHv1jdzFE=;
        b=sVo0QaAKBsZtP/b+3GTdOIhXuOPkEDJ4aSn38M5Pb1DbOc/lTlnTRJ5KVtrsn6Hbax
         KAA7LvddA24v+Mgovrs65UUjqSKhB0TRYZelp5dhHA4djHmDUnJFqOjUuKJeG4iliqnJ
         nEK4pKLNtU9qyzP8tQh3GpjVrM0a5lIkLK/VuNrefMoMcmMxVpMRf5HdwZA22cJ+bxnh
         q4EG1Ql3FJSyAtXZfMBLqaVQ3/R8+v5s6Huw6oMKN8hBtLmPW1yAcRW/KV0AT9mbx6L9
         rP7OpT+KtCMjYCtiM+AafPfOAg1BU5Ww+mA/GPBAD8pKN4hLkW7lOm+nVy4wc5os2jlc
         yaXw==
X-Forwarded-Encrypted: i=1; AJvYcCWYuovo1Oi4FcnV372d323CJISuWiGi1nUeOB7s26Y+vBjJoQljjvvG72m8exQqsPMg4rZj8Q3OoKM=@lists.infradead.org
X-Gm-Message-State: AOJu0Yyh2EP5qA4TL24ySeap+s522cyeATOxSSywg4Bb3L66YhOaxrMU
	EdFdX4lKDYQidJFDLN/EdaJvzqMGEFd3B0bVd0wMQnJzh6yQP/zbqJqIR6j/D45hQW0=
X-Gm-Gg: ASbGnct95jQ+QEr6iktExrgwXSy54qdymM5AWT7frDj4ZLfnp0wH4w6h4yrY0VYBOa3
	7J5KRjXgtXmOs817ziR7i1DTYw9IjVegDJ5ZPCfblW/4vevp//i4NKe89J/SnrZ+29QmYNMEmqm
	23tiUG95ShkHx5kL8TkjTIDVUOfY+l+K2Srw/P/g8IVtb9wmvCl+JQZFv19J0sVS9qGlrLWf84n
	xYN9VekuCq9eEDzGOiLd2bLiD496IS5DaIZ8FsLY1nDER2Q/sZZ6xwofjcQf//W956rc2btD3qD
	+cOpyW4UG8cYb5Rrh1q89uNw7szbne/CnxAl/M+JR/reMo5vJzFWigCCtWyumFWFcpr2jz5J6ad
	w3nyzCrgUQmIVjbD3i0mipoXb+FTI8wLh0MOAElsOO8EjQUjdlJZDpYYpnT6qpDRJB53z8C9Zvh
	kQ
X-Google-Smtp-Source: AGHT+IHfIWtfLwmI4o3tG95if0xJBRcWewfBclWlcePGlLyhwHi1HTCoA+WOs0ItuEmU884D+uo5xw==
X-Received: by 2002:a05:6512:2388:b0:554:f76a:bab8 with SMTP id 2adb3069b0e04-55a049b4b48mr1393417e87.15.1752507051897;
        Mon, 14 Jul 2025 08:30:51 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5593c9d0f35sm1985120e87.108.2025.07.14.08.30.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 08:30:51 -0700 (PDT)
Message-ID: <eac3a877-a4aa-4789-9013-ab8b6c91e0f3@linaro.org>
Date: Mon, 14 Jul 2025 18:30:50 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI D-PHY driver
Content-Language: ru-RU
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bod@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250710-x1e-csi2-phy-v1-0-74acbb5b162b@linaro.org>
 <20250710-x1e-csi2-phy-v1-2-74acbb5b162b@linaro.org>
 <11b573d5-ce4d-476c-b94c-216d427cd838@linaro.org>
 <08261aa4-689b-4d6b-bfd2-221c1976d254@linaro.org>
 <a7f64b31-4767-4281-b452-a2bc5351d745@mleia.com>
 <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <c93624bb-ee7b-45ac-8b53-b5391f11c9c9@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_083053_920382_AEFC0AD3 
X-CRM114-Status: GOOD (  10.69  )
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

On 7/14/25 18:17, Bryan O'Donoghue wrote:
> On 14/07/2025 15:58, Vladimir Zapolskiy wrote:
>>
>> This proposed device node scheme does not solve the known and already
>> discussed technical issue expectedly, namely there is no given way
>> to describe a combo mode hardware configuration, when two independant
>> sensors are wired to the same CSIPHY. This is an unsolvable problem
>> with this design.
> 
> I think that is genuinely something we should handle in camss-csid.c
> maybe with some meta-data inside of the ports/endpoints..
> 

This is a CSIPHY property, a CSIPHY hardware configuration and a wiring
of sensors to a CSIPHY. Where is the relation to CSID here? There is no.

Please share at least a device tree node description, which supports
a connection of two sensors to a single CSIPHY, like it shall be done
expectedly.

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
