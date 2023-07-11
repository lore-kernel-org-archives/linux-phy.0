Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB0A3EB64DD
	for <linux-phy@archiver.kernel.org>; Tue, 11 Jul 2023 09:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ayWku0oSDwS+tdui0sKyrI6nG80UbdDAS/gQtmMUVek=; b=XMc1AdOOMSXa5o
	bs8+RStWMMIldAqUl1IM4YahUqSJMcKtovfXi9WKiB9qact362mosVyOquNySdLG0eHR5KJ+MEYG6
	HcSGnGKktVpsxxGjya4/pWwekdnDN2yCKi4J6AD00W9lYFKcoEiMOfov2CYumJcb4Sk1SkGc41+tF
	1QFfLMNH9Svcx/HOqKd5oSRhG49sWBxhI8qv6XI5JeTPzzEPX1C6UIS8otcGDFvZbw1SOOSgQCYGP
	Y8G7GJNvGxXw5fwlC0DI8h6q/iw+jEIWPD6oKrlATKoEAXINsnvjGIcIf2gb0ahl0C1MrHzyswQ19
	gl6jaK5w2iEq6PzZaZpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9GG-00EDM2-1R;
	Tue, 11 Jul 2023 09:02:20 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJ9GC-00EDJW-2w
	for linux-phy@lists.infradead.org;
	Tue, 11 Jul 2023 09:02:18 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-98e011f45ffso625454166b.3
        for <linux-phy@lists.infradead.org>; Tue, 11 Jul 2023 02:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689066135; x=1691658135;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5FA+/QEntU0LG5SCj9kJTqmfkcpSYPKv5C0T3kXVRCI=;
        b=dEhY4MX19hr4ctPkpyO9K/PgHdzXEhVjIhuc4856r8d3s5Lf3/56+LFzEIuTDJabqC
         DNNDnH0kWM/HmZPd+REBhBgaV63KSCv+JEg7GUoe/31XRn0x2/83Z1ym/DM2jEmTJhd+
         tgpp7rpXjxahMYtTSm6zGpUo9RO8HGX2JcP/illZQqYdzupl1s3gJlvDFynRa0HIX94P
         x5DVHlGGqpbrxXDomGX+ix+TT3ZfOgGBzAdNGCfh9q7mJTS9w+pFKpigHvyfOEC+8NjV
         qyLj4E0Y7u64lLOMf7lnzj45zahzukcmzMg4HgdMFwUceYu9rsrhY9YAWAJEne11mf5J
         xdRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689066135; x=1691658135;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5FA+/QEntU0LG5SCj9kJTqmfkcpSYPKv5C0T3kXVRCI=;
        b=NbotbHgtChr1K4d4u4k6gTX/n4mKM4fPprKisHpBM+nZxgFVA3OFr8zIVmu/tIi220
         kqXESbRsC7Lqq0VZ7AWglygtK5hL/7OK71ty9mViytdz9rMaoIMrmjRXo3ddPJmQ+W2b
         h1UveFTzFmkvWdcWwaDaa1JzR8Oev8aKX0ETGwVze2Ww07G00GaDmBnG9JCPm+jPEoJ1
         /8j8QrIzdrgbzs0LBMrzR0NfT0IT6TjZ6XYYfZn8qPt5oAXl+Sx7aF9fQXK1A6Ag5upZ
         WHDkKk0WA6kQC1eOWhmvcaL66lIp/cOAUG6abbf9wv1s2L69323H/KHramtByRxsU/Gw
         SZXw==
X-Gm-Message-State: ABy/qLY5Tb/ga5ZPW/Q52q03Xky7EyNlCTeGapxEDjAZBJyGNLiUJgP9
	6VosXuoSiCB0RHoTHkufDaI01g==
X-Google-Smtp-Source: APBJJlG37y8uEFiTXGPVZXECGPfO8QctpW441f9tYtuSYBfOP80+BrY4WwF7MOu48j9LhGXuAjBN1w==
X-Received: by 2002:a17:906:6491:b0:993:d7f3:f055 with SMTP id e17-20020a170906649100b00993d7f3f055mr10863110ejm.11.1689066135075;
        Tue, 11 Jul 2023 02:02:15 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id rk21-20020a170907215500b00993150e5325sm880513ejb.60.2023.07.11.02.02.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Jul 2023 02:02:14 -0700 (PDT)
Message-ID: <3b81541d-e9b0-7617-f9c7-ab8ed053c422@linaro.org>
Date: Tue, 11 Jul 2023 11:02:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 1/6] dt-bindings: usb: dwc3: Add IPQ5332 compatible
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 broonie@kernel.org, rafal@milecki.pl, quic_srichara@quicinc.com,
 quic_varada@quicinc.org, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <cover.1689065318.git.quic_varada@quicinc.com>
 <c1173429e75b493a8290ac5af6fa566f7f9ebfb8.1689065318.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c1173429e75b493a8290ac5af6fa566f7f9ebfb8.1689065318.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_020216_947841_4F8F7788 
X-CRM114-Status: UNSURE (   6.66  )
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

On 11/07/2023 10:51, Varadarajan Narayanan wrote:
> Document the IPQ5332 dwc3 compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v1:
> 	Add ipq5332 to interrupts sections

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
