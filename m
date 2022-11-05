Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46B5AC43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 21:14:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sGpyomY1PSUBtH/qYLni8ma960DPoWsrAxzEECvPw9A=; b=4h4mrfVSE8Med4
	YoHYYuTDDq4zQq3LGusjSQ4tAd1Lx2qYLMSPdU4FEXqTNE35+eFS70fF14YHG9dhoxAZmmUiHg9a0
	ZMncy7bH/3dh8hwp8WbiLoa1p4fi6iZLGLR0pdN+Bos+niwf2XZv88PCedRAMWiCwdw9hkoVlErG0
	+uMT8/BAk8AUbYhvrxVzHff/rJEC5T43/0hFnH1StQuyX7OcKcw22ydLfY0rTmv3cNWmU1ekNYZWR
	Jwvs8GysGWgaHlpkXB1iLlUWtZA9qo3GOp4vgLfBcAWsKx24Ujh2ksmpeTHqUY1D3r38FOLoDglDV
	yauHecuId1MbNNi86KHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQUS-007Gcp-ND; Sat, 05 Nov 2022 21:14:08 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orQUQ-007Gc2-E2; Sat, 05 Nov 2022 21:14:07 +0000
Received: by mail-ed1-x52a.google.com with SMTP id a5so12215525edb.11;
        Sat, 05 Nov 2022 14:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i4NP9yupkpzBRyQpmDT8lYy2UWrONdv5iBY3bNlIxTE=;
        b=fCiW8BnrNQDhBG/jBne3EdTh6WbpaMBZr0F+ItEpV+9o7LtESAX2aCcb+qyicB3bn8
         +FaoQd4zmCu+TlYQHJ2H2xdkCtVzvPtpvOwBhjdjzhKVgExK6JdmAKdkznuvKbepHrno
         2NdOKVdyCHeyq2DxSa4fgVDTENLg3+BkhY7FPazBwTUhDuCppyy8GUzuW3HIFsMs9b5p
         MN98D0CttT2kxUXk5byk6dAiowgXhoKFFIs6HE6Xe6YSWfZLL6b/+7BoaKt0VQ1JXVq+
         8gli8a/2wpo9zaqpgDilmHe91hlF/v1Hsr3wi2qfUMkTV4HpQ9a/bNr+5TNpb5kVJA7M
         7EBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i4NP9yupkpzBRyQpmDT8lYy2UWrONdv5iBY3bNlIxTE=;
        b=vNXnT8W9vSPJS1x5tsue5exgLjYGfQptdIIvHe600ZyCK8EcMX6mYpnMMyCD6Qqkji
         UPnsyGjsMIaBseNV1I+6ucJjT2GN4Q20uv+VssUJz2w+NEwcwrpJbPMblQ74pMGuPaPr
         HWZjy9dW1FSF7lVcE5BuqUZr6/Cwhod74rHdaBT9XTIwQ2LdcC2BQiuph4rdtn8hxp34
         KM+WaDPXCwVdFC+k+feSAJLuhYMlA6Q/CkT0Qncfg6s7dm/Zg3MVy1Qz8rHjb5AWKkUb
         WYrq/87nxa2Sr6AQpBuoUK/TUIa17w9Y0hyy+4DJHgR0QTxskwJPbRZgk8p0KUG+z9Vi
         53/Q==
X-Gm-Message-State: ACrzQf0+me6cwQoWvUC5QGl/dQfWSQh7Ks/6vg5B1jvDLHehH32+O4d5
	bN0wUE6Mq6+SBZuxkZMcfBk=
X-Google-Smtp-Source: AMsMyM58qlmgkIdlBAoBbOk1+UZVOpUM/uCQW/HCKTww4S/Feij3fS3NWbeHWkIPIyrAr2a613tvFg==
X-Received: by 2002:a05:6402:90b:b0:45c:16a0:ec1e with SMTP id g11-20020a056402090b00b0045c16a0ec1emr43671146edz.427.1667682844639;
        Sat, 05 Nov 2022 14:14:04 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-118-115.static.t-2.net. [89.212.118.115])
        by smtp.gmail.com with ESMTPSA id h6-20020a170906828600b00731803d4d04sm1330633ejx.82.2022.11.05.14.14.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Nov 2022 14:14:04 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, Karl Kurbjun <karl.os@veroson.com>, Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v2 7/7] arm64: dts: allwinner: h616: X96 Mate: Add USB nodes
Date: Sat, 05 Nov 2022 22:14:03 +0100
Message-ID: <8136023.T7Z3S40VBb@jernej-laptop>
In-Reply-To: <20221031111358.3387297-8-andre.przywara@arm.com>
References: <20221031111358.3387297-1-andre.przywara@arm.com> <20221031111358.3387297-8-andre.przywara@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_141406_498236_30BB37A5 
X-CRM114-Status: UNSURE (   8.31  )
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

Dne ponedeljek, 31. oktober 2022 ob 12:13:58 CET je Andre Przywara napisal(a):
> The X96 Mate TV box has two USB-A ports, VBUS is always on and connected
> to the DC input.
> Since USB port 0 is connected to an USB-A receptable, we configure it
> as a host port. Using it as a peripheral is dangerous, because VBUS is
> always on.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Jernej Skrabec <jernej.skrabec@gmail.com>

Best regards,
Jernej



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
