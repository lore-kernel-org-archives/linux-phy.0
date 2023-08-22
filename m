Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE826EE4996
	for <linux-phy@archiver.kernel.org>; Tue, 22 Aug 2023 11:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PDLUbKXJniGfSFA51QB7udZwniT1OVHeCNQV7Y9PTy8=; b=UokAKuL1+lkKOK6DkhP5JxWdXD
	ZqfMRKPAJGIZXYLhSM+ydWMLdzGx82WThW2qj5c9M98XYkxF/Ehhr/NhYS+WCL9fK7isv1XutGYcz
	a9pS4Dtt7POephg4AFFySZdIO6Kc+sFVP4Xashu/HS8uLXfFxoHMphhFSptSC3c9VXBvG/6wsxRDI
	T1B/eMsRdiSjr0bBNxmACWdgUgkao0UtOmid03XDuv2L/OXXVStfICGfzNrCarz97CWzTmLdriJdX
	VDO4pS6/UjGZYdSuJMekV9vpCgT/GCLtF4zmg5vyT1e1dtGB0ghxbAjgzz80xbM5HRPvJ5g1G9YmX
	GL5oPlGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPdi-00FpRl-2E;
	Tue, 22 Aug 2023 11:33:38 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYPdg-00FpPc-1f
	for linux-phy@lists.infradead.org;
	Tue, 22 Aug 2023 11:33:37 +0000
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4fe15bfb1adso6548183e87.0
        for <linux-phy@lists.infradead.org>; Tue, 22 Aug 2023 04:33:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692704013; x=1693308813;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JCBvk371BaC/CqcWFFFnQudenCUg5vZ6gW5WDAr8SpY=;
        b=Pif/SQoFvNrFuD9YVYJPu4qwZsX+ZEzoBm6kudRVUw78X3TyXWxu4Zivgd1mNbylJM
         H3oFUtm78Kr8HtSPxCCEuX1V0NO3CDdvBt9BtgAu+3RuZ1d94GGmjOt8GmHdZi5mnzWe
         0XIfRIWsMISksrD7tT73TIxf1SsRhpiB5B74XMmygQ8GR/UvMhH83cIIWRwZKP/Dl1zR
         0JGRG4ElF90aRpOiI7VhyTHZ7dpFeSrLw9Ds6vaxT3xoMQgDtVqEiXo27A7SLUNFWGSc
         gTtetmwdoC9LBhqaB12PlR/As1+WHEZWaZiokqRgE+SQMaIYm58eA45CeHsaLyZAkpu0
         BEKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692704013; x=1693308813;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JCBvk371BaC/CqcWFFFnQudenCUg5vZ6gW5WDAr8SpY=;
        b=awnUiA12a3+FGOsWDOIli5eVMflLyCXXM8yrxfAOa0VxrZf1TlcVZi78+tCDTzmy3V
         HRv0ABiWa9dO6GZZciwVmJ8Oo2bgolDczlWLj8meiGb9W/QndX6JOs1edxpy4dwWAwqn
         NSCIj3ZaI7ITdAYS5j4CR9YHetwSA27PLaYkC4UBnyghQAann09Axb90IyOi126nozBN
         Wt5R6TZcIXMbJn1VU/Yql5sy2aB+QqF4bTw0uvkc9F0LyGja/KiDQijjrnXQ6wQOI5Uh
         DXbCxGEYZ/VGTL4surXWb1N5NVzpiYYsKIhP1etrWvKfoyCKuLKWJCTl9P7YEIcSjoyx
         7+6A==
X-Gm-Message-State: AOJu0YwhfTXhKoKqAkwPkHiUceXaDwT7aozMcmgjGbPmtOd1haUsAO0v
	unE0mELu7YNECNFCEleXjuNLig==
X-Google-Smtp-Source: AGHT+IHWkX8XSEGFwdN8ZkJ9MnJoo409O/jNsb4AfA9thIhwfIruwQp3gob+M0sfv/CUuajOeBc7JA==
X-Received: by 2002:ac2:55a7:0:b0:500:8fcd:c3b5 with SMTP id y7-20020ac255a7000000b005008fcdc3b5mr714192lfg.12.1692704013395;
        Tue, 22 Aug 2023 04:33:33 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id t11-20020ac24c0b000000b004ffa28ef3a4sm1202792lfq.100.2023.08.22.04.33.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Aug 2023 04:33:32 -0700 (PDT)
Message-ID: <510d00e2-65f5-40c5-bd6a-5b5e34fa9e8c@linaro.org>
Date: Tue, 22 Aug 2023 14:33:32 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 4/4] arm64: defconfig: Enable M31 USB phy driver
Content-Language: en-GB
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, vkoul@kernel.org,
 kishon@kernel.org, arnd@arndb.de, geert+renesas@glider.be,
 nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org
References: <cover.1692699472.git.quic_varada@quicinc.com>
 <84162d7d21d6bf45c4cf670000dae3f03b05ad93.1692699472.git.quic_varada@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <84162d7d21d6bf45c4cf670000dae3f03b05ad93.1692699472.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_043336_563652_17C3E08B 
X-CRM114-Status: UNSURE (   7.57  )
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

On 22/08/2023 13:29, Varadarajan Narayanan wrote:
> Enable M31 USB phy driver present in IPQ5332.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v2:
> 	Add full stop to commit log.
> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
