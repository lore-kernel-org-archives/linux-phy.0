Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8B1BC77B75
	for <linux-phy@archiver.kernel.org>; Tue,  9 May 2023 14:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5knTqfDR8Ju/UgkgvNW6dYqp42qNTvE+1X0BWr1TmVQ=; b=0vH0bdJ6D4EbKP
	tNWhiykKwzP/ys98Afsd26MQoFARlq526jKkW3yt6ISiY5watUbxTx72qqQJpL/YhFd7ntLfK0mbG
	VCIErmAL56NQexRGA203Hfhflu3lhyHTw/c1DTEqdtITfBCqrW6XBhKHoTMncBoqdy8viad4Zqpgg
	HLmdKIZM4kyS2tqaJyLcq8YaHUX7rXH+L33A4yalce+gCTVio1QwxA95vIB5FPrte2uADCEqLTt9T
	ZtQK7g949KbI6Q9Pvt0GPiXoTMCXTlPAKsbjWG0QwOHpENRWx/0JKaaH/cWOs7wMQlNxWq4rELa5B
	TSF4xhHJ2WZcRdZ/eF9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOWj-003aeJ-1O;
	Tue, 09 May 2023 14:41:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOWf-003abW-1Z
	for linux-phy@bombadil.infradead.org;
	Tue, 09 May 2023 14:41:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Cc:To:Subject:Message-ID:
	Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=BCtzZTuG/ubCVd5eZD+aWJhOUl7gLSVq0SL8hnKaURM=; b=FgpZxwTWQtOlbPEvPAwR9a3iwz
	dgf1ZqvB0Ou6/a+M5O3aBdYRH+S3gTD1712mV99pcbFr/BRF2cpWXkii5JRYqGJ9KGEKGQrb3hlnT
	D/IP6MKS89FsTsLfUwVjAAGD8qontAfr1jw+h/S2X/1HTwHMBHO0Omht8tmHb56MQibTrW4T+QMx3
	jqNHqCFYCp0q2bl+esyGCjDuQNyut9UHxYlKV4k5JIhPfIsry9jw/vRoCcpFQWe4jo/UqV8/Czx9x
	IB63LE8odvyOX6l5NUnXVkI7krkOAN/N03xrXy3w2OknSQmVqh9Zvv/l2gKrS2dP7ps4r1tE17UWT
	8YLtts8A==;
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwN5c-0068o6-2O
	for linux-phy@lists.infradead.org;
	Tue, 09 May 2023 13:09:14 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-b99efd7c335so7530392276.0
        for <linux-phy@lists.infradead.org>; Tue, 09 May 2023 06:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683637750; x=1686229750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BCtzZTuG/ubCVd5eZD+aWJhOUl7gLSVq0SL8hnKaURM=;
        b=U1Oaci7XUseeGD+Wok1wXG4iauIkT+6aTGk/omu3Ysihz6DSba5SEDgNQ7DxClYlOl
         tbmiRVSNVBBk6T3jW0WO7CHHyOJNHUtRvOfjGnwrb7uaN0H8g4vBS7fVEyUtDQBP8n4A
         EB08hw8EK5daZRfYgPGIfLSFY9TzK2iwqF86Yc4BWXyz7ZPEnuIVFv33SeWb2RMKkLgP
         PuoPXbRv7v0rlUCs5V792tHKnk45TIErFyoIgqrp9rP/atpmwFx/QzNc9BWIOH4WkGzv
         PIxyQXxEZIBsRIR1SBOIqEG+nIBVyczHxEOMbslojwYZ8ze71HUfDzVHbnhJhcfO+AC/
         lCoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683637750; x=1686229750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BCtzZTuG/ubCVd5eZD+aWJhOUl7gLSVq0SL8hnKaURM=;
        b=fmcU8PeFZVVhaQG0TiBeCXQFRrlKNm+1Jve+dUX48VgbGm4FT4RxmXxjAmElSZl1bY
         hTAuqhC+4I6pdxe6IlWGzwWUa8+XoPrGNMlsGMG9NXGAx1HOUHEEXIhr8gEM9j1GkQ1K
         Dz0A+Pawgga9fLFIzlyKImQZcO0lruBMoI441bwItfx6fm+0dF9yJddYjRk9cg7tdvth
         1K/7MSjm1piGOLfua8z3aShQ1uLlzx2iarMLEnvtP/9x9MZuWsDrF4x+ukFlp+TzTM+4
         6fkZ0JpMmwxUfsjRc0zNz/ci+Pd159IuYUky+7oh6vtaX8l8K5IOcT8sVvKCoxv4xuNy
         avwg==
X-Gm-Message-State: AC+VfDw/e7R+h7w1Qttv8FQTA8SadX7TOPC2ZrI55Q1N5UOuaQ72eEYW
	sS5xyJ1s8DGo3DqbNv98klu3ls4Um1SibjZlJQBorw==
X-Google-Smtp-Source: ACHHUZ7/yu6cqvyEWbtDreV9v1hRaJB1cajmF/a1j4cDHrTbHxxkh+DVkek1PSbhqPTIfv3fdxjc+SZL0rScFLp/QkI=
X-Received: by 2002:a25:addf:0:b0:b99:6c12:74ff with SMTP id
 d31-20020a25addf000000b00b996c1274ffmr15248139ybe.15.1683637750625; Tue, 09
 May 2023 06:09:10 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1683630932.git.quic_varada@quicinc.com> <42bf6244582d6208f51db1a9299fe1c8afab4e14.1683630932.git.quic_varada@quicinc.com>
In-Reply-To: <42bf6244582d6208f51db1a9299fe1c8afab4e14.1683630932.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 9 May 2023 16:08:59 +0300
Message-ID: <CAA8EJpqkSNzx=73JS1Csw+ivVovhrFeM0R5j2tpruEfNqvT48Q@mail.gmail.com>
Subject: Re: [PATCH v11 8/9] arm64: dts: qcom: ipq9574: Add LDO regulator node
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
	vkoul@kernel.org, kishon@kernel.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	gregkh@linuxfoundation.org, mturquette@baylibre.com, sboyd@kernel.org, 
	quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-clk@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_140912_965076_0F1714EF 
X-CRM114-Status: GOOD (  14.30  )
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

On Tue, 9 May 2023 at 14:56, Varadarajan Narayanan
<quic_varada@quicinc.com> wrote:
>
> Add LDO regulator node
>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>  Changes in v10:
>         - Add LDO regulator node
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts | 7 +++++++
>  1 file changed, 7 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Minor question below:

>
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index bdc1434..1f5d14f 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -60,6 +60,13 @@
>                         regulator-min-microvolt = <725000>;
>                         regulator-max-microvolt = <1075000>;
>                 };
> +
> +               mp5496_l2: l2 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1800000>;
> +                       regulator-boot-on;
> +                       regulator-always-on;

This usually points out that there are other users which are not yet
enabled/properly specified. What users are there for this supply which
demand it to be always on?

> +               };
>         };
>  };
>
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
