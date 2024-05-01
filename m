Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F058EC4345F
	for <linux-phy@archiver.kernel.org>; Wed,  1 May 2024 23:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L3/ObqK5SjveXX9JBgDOikAjYzs+rhNsXrJWSXpcoVc=; b=1a14RUav+lX+cA
	lk0wViDChKSiH6UaDSuKKBotadHuMQr7I3RmQzmopTJ8XHBEcIzyfXGIVFpEWAefMX0v6kQTz3DGY
	9gAgA2zryXsrrNO0Xzrjk1/oHcmFGrlzG3Lg7PIB1XZM+DT+2+RtyFV4+mJwXtkpuXdxEs/hLDpmF
	X8clQvMDwLldRx505urcLlSN8+htV9GGueVhvw3kUH/PC3q9EnXeE8PUBxma2h2IO1yMa/18aZ1TT
	U3IF1nwzYICWbjrNL5be4i+m5kZSQm6tLDYYLi8r029xd8LbmWm7Ipux0Hjt+WiaYrcsvS/MEQKYc
	0peCYPXQoTCEAuIFXG5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J5C-0000000Asvb-2j8V;
	Wed, 01 May 2024 23:09:50 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2J59-0000000Asuy-0yS2
	for linux-phy@lists.infradead.org;
	Wed, 01 May 2024 23:09:48 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-572669fd9f9so7021009a12.0
        for <linux-phy@lists.infradead.org>; Wed, 01 May 2024 16:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714604985; x=1715209785; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Ln2+Mmy8VaymdjnFL/fgiDjJTgNF1VdG6JJXTp+4zzE=;
        b=a99UD9ZtiQ0xuhyjZrKnu4Go3gbcLXIrUMbHrC6J+EjNkTW+JI+BTgza58++fKQLTi
         rP36qfyMLEvUNWa+2QmBKTYRs9XNsdzCFqxGgyAB7fEJaQaEuOZ4JnJvkYC3wWKYNERt
         umxfpkCEHFM09jeX/oH//LmNnwQj37PAsaXxjqu3yZah/d3k3sFm5XKrlbaTU96n6W1r
         l6HU35Ib6TfoqgA7wvED53+28ok2Snym4gCN+1cngZyChzBAJyIN3AUfSrzfJL0b4Tvw
         01hXeSSYGuBrO8W1a8+G3g/R0D7PXizK2ljPWdGiJjo4RlAqDVE5bl9SgTHOZuLjxili
         THCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714604985; x=1715209785;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ln2+Mmy8VaymdjnFL/fgiDjJTgNF1VdG6JJXTp+4zzE=;
        b=i62j1doPAnb9Vj2xTsiFzFAGXEkH03Ln6RTZEiyCyH1GVgxyYpybNIQxh5g8VWBXYl
         BLEdD5EOb3WlrhSqGG9iAoLN2D+91grdj14dHHxp/vebpHdVHRw/9FTsjtWug4+0TfH4
         aLFZoFJ6FiE2UpZuQVu3aBk/IL5tlTps5ckh+A5l2IE4hHTE/cgQdyuqFV9Pn7J8lXIq
         IWmnK3qMSO7Yf5dmqr1rA6fCHi3YqB3ENJbB3iRrUwn6gyUzWMbRH40Ak7OWPBDStYa/
         PShzZifw2mKUP5N2MferjJC2CBTHhadIwM86hY+rGB9o9v6Ty7v5xb5338Z1fMAynVbo
         naWg==
X-Forwarded-Encrypted: i=1; AJvYcCWcDMbZ5LSn08SyzaJISL4/VMyEjx3kG/81q1Nqjv9N9wH3LUamaJBdXZDeC48wzrwnY01rF++OOoUGy90zlM4zHWjpxqcitVjQ12cJFA==
X-Gm-Message-State: AOJu0YwiwRkhfvDD214plx/LkAcJLHd04wE/8075nKOfFVAKBgG7HCCF
	87ccZwiKji16XhNcQrH6bMYX5MYh1APFSczouokNi7WqzsHjOPp2cxmthRxBHhc=
X-Google-Smtp-Source: AGHT+IGhmJ6xRw9tpsZoGuCTPpNlTqdr3tNh5XK1JiQK/jbGN9PXiobHamkKf/fh1wVabkLiI8mPHg==
X-Received: by 2002:a50:d7c2:0:b0:572:9dbf:1538 with SMTP id m2-20020a50d7c2000000b005729dbf1538mr2514457edj.31.1714604984572;
        Wed, 01 May 2024 16:09:44 -0700 (PDT)
Received: from [192.168.114.15] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id w7-20020aa7dcc7000000b005726dceb2easm725352edu.20.2024.05.01.16.09.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 May 2024 16:09:44 -0700 (PDT)
Message-ID: <a4b10098-ecb0-4fd4-940e-a8400e53a6e4@linaro.org>
Date: Thu, 2 May 2024 01:09:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] arm64: dts: sda660-ifc6560: document missing USB
 PHY supplies
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
 Wesley Cheng <quic_wcheng@quicinc.com>, cros-qcom-dts-watchers@chromium.org,
 Bjorn Andersson <andersson@kernel.org>, David Wronek
 <davidwronek@gmail.com>, Andy Gross <andy.gross@linaro.org>,
 Evan Green <evgreen@chromium.org>, Douglas Anderson <dianders@chromium.org>,
 Iskren Chernev <me@iskren.info>, Luca Weiss <luca.weiss@fairphone.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Yassine Oudjana <y.oudjana@protonmail.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
 <20240501-qcom-phy-fixes-v1-12-f1fd15c33fb3@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20240501-qcom-phy-fixes-v1-12-f1fd15c33fb3@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_160947_317314_9C578362 
X-CRM114-Status: GOOD (  16.14  )
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

On 1.05.2024 6:19 PM, Dmitry Baryshkov wrote:
> On the IFC6560 one of the USB PHY supplies is the L10A power supply.
> However this regulator also supplies VDDA_APC1_CS, VDD_PLL2 and VDD_P11
> consumers. Touching the supply causes the board to be reset. Document
> the supply as a fixed always-on regulator.

how not to design your power rails 101

> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> index 702ab49bbc59..60412281ab27 100644
> --- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> +++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
> @@ -96,6 +96,18 @@ v5p0_boost: v5p0-boost-regulator {
>  
>  		vin-supply = <&vph_pwr>;
>  	};
> +
> +	/*
> +	 * this is also used for APC1 CPU power, touching it resets the board
> +	 */

/* This... */

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
