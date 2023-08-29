Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 425FAC83F12
	for <linux-phy@archiver.kernel.org>; Tue, 29 Aug 2023 17:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uda7f78wZgNSN6FlHaw3PaBznDcQiqcq6ELaIXIMnUc=; b=eQpsQgt1MF4wCh
	M35iV1R+w7U0GJy2zhydyHiYkz2sj60K6Lhm8og6YmPhXhz2PAJAU4S7NXxDp1FrBm1paSJ9PqU1I
	43/nsLYDQ6mLDXHkaBM3WQU6vzYGTeQGTKhNFcG7plyrb2a9+nHrn5dAMux4iXrMqPvHDvxSNFT0E
	g6GWjKVS91SgfQ34ZzuWp3qbZ/LDh+WEqWou0qdOUQ5JmumutLJFdF0lG1EdveN8zteEgSGLydJnH
	07gACwtc0xi3/Fg3UbsOZe5ssW8B9mbRD79T1c3wcYpMMwWxvlskjo1ddC7J1uq1TlaGi9sUD82IS
	3LnaZijYJ4MqUO7eJ8Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2AT-00BuFs-3B;
	Tue, 29 Aug 2023 17:06:17 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2AR-00BuEt-27
	for linux-phy@lists.infradead.org;
	Tue, 29 Aug 2023 17:06:17 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-500b6456c7eso4229794e87.2
        for <linux-phy@lists.infradead.org>; Tue, 29 Aug 2023 10:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693328773; x=1693933573;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0o7Mr831Nej9FWv2bx2EhMzCwHiFVCqVynGDq67M+Fk=;
        b=HhPJUBP41PMjhbmDGMzh3+t2f38Bv168mCi/sG5tFsMgRYn5jbtO3BmgiRmgCr9poj
         IjfWsOtyd3zMFtNkVeRsqaGEtY+CFSI/Vvb20AXVH5zeFqnep2HNA4Jao0zCuPchPMg0
         ltzWawE6Z0oWD/7KlY7t8WmGZ9qkmeP8JMlWTD+rP40IPC4+e6lDCkRpBJEtecScZciZ
         uowsfByz5WdSD/aXuFK3Flx6N3IAKFMRH7N6/yLg4z4XLuHCfAmA/+oiFiPXaAZ3fXPs
         CY4pvMwdVHJ+rp2mQPkL1gEeXYgb72FI+7+RbJm2TOk812Q+w7/N90eBSRb28MealViN
         Lmwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693328773; x=1693933573;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0o7Mr831Nej9FWv2bx2EhMzCwHiFVCqVynGDq67M+Fk=;
        b=JGw1BHAvx7/MtL+xX4TQuf09wKQAKBzA2mRDf47c3wJM7sZUioQqeYMmtcqSNMLFcY
         t/hA5n2SkpjF9U/z/rlxHSFIGojuRcZi4VLnSzqhaKYxsl4eY1Yjvs5i84eKwM2fPv8x
         grSMB25VHyQEBgk5kMhLmRLjRNe3FMyVL80QhdpsWLP7+C+TYq9JmLV0lOgf/5RyX0+Y
         QHC6SUkbpUG0JEFRyvtHtfHInyZNEflnykx4cDg+8bWgnGHGjxAYD2UwOloJZvWSlIQo
         vZ5yAb3iVCpn2zEoWqKu7oZg0bqKtNbOv7pC6T22aMMwFeJ5s154XXWAbGFofLkXZhBw
         1blA==
X-Gm-Message-State: AOJu0Yy0hwJ0D8CA14mhEdGSHBIOw5tRubfs02+ZgeR1RUuigNnQ2EP+
	HJzXqJlvLnoy0p97rl3350qTCw==
X-Google-Smtp-Source: AGHT+IHDVaqqoGBbn+2ZIUMx1R/FTnYRpx9OPIJdXNfCDCm9rndnP0L3pxBfF44J7EddVs7LBmG7oQ==
X-Received: by 2002:ac2:5e7a:0:b0:500:7fc1:414b with SMTP id a26-20020ac25e7a000000b005007fc1414bmr16439268lfr.25.1693328773205;
        Tue, 29 Aug 2023 10:06:13 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.196])
        by smtp.gmail.com with ESMTPSA id dk24-20020a170906f0d800b0099ddc81903asm6185081ejb.221.2023.08.29.10.06.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Aug 2023 10:06:12 -0700 (PDT)
Message-ID: <395d044b-73cd-d790-5fc6-98e8930acf8e@linaro.org>
Date: Tue, 29 Aug 2023 19:06:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 9/9] arm64: defconfig: Enable UNIPHY driver
Content-Language: en-US
To: Praveenkumar I <quic_ipkumar@quicinc.com>, robert.marko@sartura.hr,
 luka.perkov@sartura.hr, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 gregkh@linuxfoundation.org, catalin.marinas@arm.com, will@kernel.org,
 p.zabel@pengutronix.de, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Cc: quic_varada@quicinc.com
References: <20230829135818.2219438-1-quic_ipkumar@quicinc.com>
 <20230829135818.2219438-10-quic_ipkumar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230829135818.2219438-10-quic_ipkumar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_100615_691202_1BEE6C74 
X-CRM114-Status: GOOD (  11.91  )
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

On 29/08/2023 15:58, Praveenkumar I wrote:
> Enable UNIPHY driver for IPQ5322.

This we see from the diff. You *must* say *why*, not *what*.

Samsung IPQ5322 or NXP IPQ5322? Which boards need it?

> 
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> ---
> This patch depends on the below series which adds support for USB2 in
> IPQ5332
> https://lore.kernel.org/all/cover.1692699472.git.quic_varada@quicinc.com/
> 

How does it depend? Obviously it is part of the series, but what is
depending here?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
