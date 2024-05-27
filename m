Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A12C25B7C
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 09:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCq2LBxiIzwmm2949qkZsJ0Yr3LRvcp7OoV7iKqvaow=; b=s1to1qPVMr00VC
	xrHd1jb1tKqVZhONa1YpFaGfjqxZwQ8uo68nBfJmvr3Vn2dclZXnNXgbazFz4iCHg+GmzueKcCXme
	k5PBTRlqcAoVMni2oy9rl7SfD4jpMes+QVcTX0tdDEhFBQg9BNP7I2+zyuaQYoYUuZCJxo/QUOTzF
	EjTWrQKjkbWADUD+LcHQVjTJORyXT/D7KH/hcNQY7pt9dmvRNZTBc8/1u3R+6ozdnHAc4Hd/6EDFo
	hcLT1RPhWocr/HNS6XrxFQ4ggI9XU1jTCjHLVu980JPUXSgPXKNbWMQPpIY0ZILk15+Q+ntwbTB3g
	J++n9YgO1PaEv23zx5Cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWGw-0000000ELTn-2RHx;
	Mon, 27 May 2024 09:04:02 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBWGt-0000000ELSl-1Ibj
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 09:04:00 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so57256171fa.0
        for <linux-phy@lists.infradead.org>; Mon, 27 May 2024 02:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716800636; x=1717405436; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+P9IQVeAKU8YP5Umu3/OB5rNdrOaLbrSfDANTzH/n4w=;
        b=XFKEcYUoBt3he7yjoHn8L+40c8KnMA5PBbj1XyiKRkOoIQEzZjPYvJdww7yfyWMd8+
         lnDYlTyPvfp8Epf7qhQ0YDwuB2qUV/Z1VrwWYU7xnq/rPXEG2hiQokiI08K8rc6d9fXS
         IiCXtrEZWAVznp6IVl3FY1D/g3lIh6YUl+RnkYjZz9aY1DipEXem1CBteFhuIPFk5kVq
         o+S0SdHT3DGy31aZ1W7n2kSBwmKzdU/bHasUYbgPXGoRyEnBN21wBFpl1xJeo/HR8x0e
         +2d4KnMYJ7B33v2wvb2K/HuxdiJ8qsaEYCevWB6bCLZaqeKb4wJKCDajOxXqlT+NDXaH
         wWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716800636; x=1717405436;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+P9IQVeAKU8YP5Umu3/OB5rNdrOaLbrSfDANTzH/n4w=;
        b=m0MzXa57/0/D70tgc/T2aFV8ciD6YVyMqYWz8RlbPTus1bKMlyI/chCOP3trHiXHe3
         VwGsxRCWriDrPRklw/irAabcLbeYPR0eyFRvIKicJO4LPoEHH7S458cUgLUMv/iYB1Tm
         MCX6tDB/qS/K5KeZcxvOx1lyxNpEgz8qzLGWVp2dTXn135amQ04VSum6s2gh6hnYxwxY
         LIpRHHHz09sQ8bSoNh0VX+QSZjId8qIaPRrfxp8lx8yfL5f59trIQlfrAP2fzzZymgIA
         BTTHZOwbqjyu6OvCnZ+v2i94u4RBRpegE/ZfiqtHmWkvidsj4xHrnnDpBcrifaKoCGHn
         CQIg==
X-Forwarded-Encrypted: i=1; AJvYcCVMyuYmXmGQf3qiKqwHSt3sVBtiJjkm0D4FeDMSEIJvUKJ7mNcdVkCn2bS35CFy8NGUwRpew6JU/4fNwrUIAsa9g5gN0kMl1+dwGkm1ug==
X-Gm-Message-State: AOJu0YxpIC9VJcdLau3akphrE4c8bhcu/FlmKauVilC4QIMJmcrrz6y5
	9F/NRbyn9syWNHPNwJnc43UEty84HBkW/aV5R2vZ0BFroPPx3WRPbtlAlpQ3lcg=
X-Google-Smtp-Source: AGHT+IFSIRBZY5UUvVqC7AbRXTn4/cnPe0/rkpDn4INXGjR1SuB2c6YmfJXPM8TzGBvFS7pme2o2JA==
X-Received: by 2002:a2e:a304:0:b0:2e1:a504:f9ec with SMTP id 38308e7fff4ca-2e95b0c1546mr70702991fa.23.1716800635921;
        Mon, 27 May 2024 02:03:55 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcd7c20sm18945631fa.33.2024.05.27.02.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 May 2024 02:03:55 -0700 (PDT)
Date: Mon, 27 May 2024 12:03:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 6/7] arm64: dts: qcom-sm8650: allow 4 lanes for
 DisplayPort and enable QMP PHY mode-switch
Message-ID: <jpuafbuz7apsdcgscgvcvupnmeav7hvmsezsbxh7asbhxyb73c@nrafhki5vgnu>
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
 <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-6-a03e68d7b8fc@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-6-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_020359_369250_0308CEE8 
X-CRM114-Status: GOOD (  10.81  )
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

On Mon, May 27, 2024 at 10:42:38AM +0200, Neil Armstrong wrote:
> Allow up to 4 lanes for the DisplayPort link from the PHY to the Controller
> and allow mode-switch events to the QMP Combo PHY.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts | 3 ++-
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 

After rebase,


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
