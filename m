Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3546FD6EC0D
	for <linux-phy@archiver.kernel.org>; Fri, 29 Nov 2024 13:46:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ujvm1Wf6QGopBzxUSPFULMfkMwV1rGMQu8hRHQLDiQs=; b=Calc18xHMEqRCG
	yfN8zZszEZg+s2JoLbLiYfNP8YJmO7You9PhH+TA1Hh6cqCBGFEpgBwlGlXLrbmXiRUbPnkeSVEwF
	N5Qkb3+PSbSwgacV5ybBPVQgpiVG8fgDD0OqojLFPrmJD1wcTmeLtp4rNVfekPnVa4kiAOpk+I6pW
	4crh2gJc3RrgePbl9GhtSLf1Dx6plSzRhAMzYFKPPt60Ni7MQkqd4mOVj98A/iW/M0Syn4yQ988X7
	nlgn4t6Za9hoQ0lfEoZABmIBTHjXpEzCTVaC5M5pQ6+j9/0IbdKKoIhdWCkcTTF1aBu6P9eSfYjOC
	n5SEzbr/lXc5gQYdkpCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1KP-00000000F3b-0WKk;
	Fri, 29 Nov 2024 13:46:37 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tH1JQ-00000000Eqv-2Ayi
	for linux-phy@lists.infradead.org;
	Fri, 29 Nov 2024 13:45:37 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6ee676b4e20so21658357b3.3
        for <linux-phy@lists.infradead.org>; Fri, 29 Nov 2024 05:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732887935; x=1733492735; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jnuFPvHlqF2+V5h7gDxD9QoNqnoE7Ul8whcq/eg7E7s=;
        b=CKQO+dOeoYfrcraeAlUz8Ej/I4OnO6LdHBQPqZbrVf/FAcdnbjPJrWvEW8o9G65NdT
         OtG11Lj/osRy5NMUEfJDjHXZ+bKh5po/EU87M+ignmJ0SwhK4piJE4BgynGr2MRkiLE/
         YZ+z/3JtCVfbImID4nuslyefD5X7ZD4eBaBuQu0nWO/2keTS7W3bUNGIGgSq/OhdTtUM
         fhMxVPy/Qva6fHQ3PEEzwENuFUMKwXtsrvaVZkCQpSo2zi0z8j3Bm9sRfI9AwXWUYwZm
         qUbvFEr38zxrsdZuxpCi6sRBMYYRQ6b61EzXkWrjyIw+3KrIvIvBtSgPsxnZx8ae1/jF
         cNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732887935; x=1733492735;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jnuFPvHlqF2+V5h7gDxD9QoNqnoE7Ul8whcq/eg7E7s=;
        b=xQA2DbvYWCMR2FQB7P5C6S0XKB57to1tZqtcK4betUCKrLcxPDMFX/sEucLu3bbfxL
         NYjPhzvNdglpnFpFcnxq0W1lkxHI03oGIPLOTYaB3hoASQ38e4kHY+ffCINRjkdVWQAk
         v5s/pRHpZwkzo2a4koG2bA3Zo03ZgxB8EeKX/kSLqYcNZtIkaP6q6xj2Jdws8jdRB6w5
         L5+AJiukUzDFLyB42V12/5g3wO24qLl6px5Sx2no7R0eF0CT0jq1N+tlmx1ul486Mb7d
         0L4bZ1jmz8WOUkeHbcJYpNFTbZLpDMY3pAjBhpb1qX3r1dV0WfWYyLuV3hMq/xceFEoC
         UlUA==
X-Forwarded-Encrypted: i=1; AJvYcCXMO+GwpmsSPFt2cL+7oYRREpSjjoaD+V6FOoi/mPy08y8ja4NnBimXD8H0eTrnzfcDMLFRE/acPq8=@lists.infradead.org
X-Gm-Message-State: AOJu0YwZ2az6ZJYTckR52RRCXoB1Vope0IZRoyTCha7syjNEC3pl10vH
	pBj/X+H+06ZOUVW7/oJj0kTtoeDwVMQq50vN6Ilwt9arlaLBP1K7NQDyPzMzuMjhcTY4bjZbNBR
	eSk7Zpizh51RiW5LypRM86qfzFcV2NTp0pIH09w==
X-Gm-Gg: ASbGnctz3BAW4gOn5+raiYeiBf7HKQx8Y7ni0mYuEsn3e1E9POgBjI/I6M4EokvOwYN
	E2tsoY1GQF8KebVQc7M4FERcsXF+QTyU=
X-Google-Smtp-Source: AGHT+IFcdw16JjCHhf6pyyNofTqnqJtbeYn35N5Sw7fR5PMwJk8S0Dust9v7sJdcUjiPz0hKcc++q+mU90RLLwYFzZk=
X-Received: by 2002:a05:690c:9c08:b0:6ef:4ed2:7dfe with SMTP id
 00721157ae682-6ef4ed381ecmr63286207b3.31.1732887934964; Fri, 29 Nov 2024
 05:45:34 -0800 (PST)
MIME-Version: 1.0
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
In-Reply-To: <20241129-add-displayport-support-for-qcs615-platform-v1-8-09a4338d93ef@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 29 Nov 2024 15:45:29 +0200
Message-ID: <CAA8EJpqMug4u1YPxBGfDUT8Cf8F5XckxnJdau-Gm6swyU5VT=w@mail.gmail.com>
Subject: Re: [PATCH 8/8] drm/msm/dp: Support external GPIO HPD with 3rd
 pinctrl chip
To: Xiangxu Yin <quic_xiangxuy@quicinc.com>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com, quic_fangez@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241129_054536_563955_9622502F 
X-CRM114-Status: GOOD (  10.18  )
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

On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
>
> Add support for handling HPD (Hot Plug Detect) signals via external
> GPIOs connected through pinctrl chips (e.g., Semtech SX1509Q). This
> involves reinitializing the relevant GPIO and binding an interrupt
> handler to process hot plug events. Since external GPIOs only support
> edge interrupts (rising or falling) rather than state interrupts, the
> GPIO state must be read during the first DP bridge HPD enablement. This
> ensures the current connection state is determined and a hot plug event
> is reported accordingly.

NAK, use dp-connector instead.

>
> Signed-off-by: Xiangxu Yin <quic_xiangxuy@quicinc.com>
> ---
>  drivers/gpu/drm/msm/dp/dp_display.c | 83 +++++++++++++++++++++++++++++++++++++
>  1 file changed, 83 insertions(+)


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
