Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09084CCA47B
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EyJuDZUeKmv09rwlSG/b8CkgQlF99dicg0p+iV6ZxbY=; b=aaQ7EyzYpid0s/
	v6/p+/MGQ+kyli+G7pbqkiG+p15uyhKyqF2p4wN4aiW+6LJmEEHxIrs9WcV5y0uES/v++v1Y3NHaZ
	1dhQZvpkQCcoOPakrD4fX5CeNI7Hm3hknj3sYCWX3cB+9sbYCCYE//GJAy6TTL3DjEvu2iillkSzI
	AKXr8PDZBwVjCtNe+tyBy93x0RWHIfiXU0uKNayczZO8gXKu9op2QTwJCJfyY+vNEKl8d4Q2JY5Nw
	XSYs2evTFOxzxy+TRcDIwKbewYKVeMBDf9GWL3+XzK5cRr/ySHc3cKFoeQEysQhH32Yf266BgkqnY
	wtfELDFuK/OdJT6JEbkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fZH-00H6Kh-EK; Tue, 05 Jul 2022 10:14:07 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fZE-00H6Ju-FT
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:14:05 +0000
Received: by mail-lj1-x236.google.com with SMTP id l7so13152347ljj.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=YExG+e7a0Sa7NJEj+5xnmdh+Unak83hrCasOVIHdEy0=;
        b=tC5uSfTj4Fy60naqPgp97OwT5AkHHkfee+8eLp9FoH20tHMHMBXKU6LRfhi1UyHp6r
         tfak6nHwHQpcDAFT1DyLkYQ+e5CZbeOkExJKZ4TuDAddCQvMqNr6HQc+GEguOi8Ew0Am
         Yvy1+wrD71g2WKI5CSDwKbAdQgl7eh/YIRg0rMbRzj3JU8yuAWVuJuaC2UhSRwr3efyF
         9yHEBsyT7rfs/QYHGn/hBkeoG5oV6AuFloT5fCSHcyTqSJ520bWvAQPDYC8R+YAUXFhC
         1fV1YnanYXK92pbnwVwkloKN/pOmmiPim0RA/ArsFxmj4AAhEF2U1LeGDx8DfCefa+Hc
         +KOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=YExG+e7a0Sa7NJEj+5xnmdh+Unak83hrCasOVIHdEy0=;
        b=T0VX02Qy17mKyZ9wr7V3zp8DKpzRiBoMbXAASPWsEI2YKcAhadNTNv9G0Jz2eR/C4l
         54XOscbEqQ1yQ4LPAd/MkSip9Yhw6AttxybtEsz7/g4Tkv7muxV/HbZBxi6+9MchTqZa
         m+wGkwzlwcH2KE566ZLIuc1ekvfrxiBpnRCqjW30TzAPawKf3fRec5b3J3GJYu37rDso
         uniZPQsQjYe5aH5M/myrDglBDTDJY6/aF5WlvRMM+YSn5pomF3vPu2TGjftSi63KpahN
         ahZyZ0SuklEaq84OdKf45FccisTN0mwFo42bqWGiKz9eXFlDqFpDgBWpyPP2yS250Atb
         w9Xg==
X-Gm-Message-State: AJIora+u/nL1jUH/xvGsn9PqC+hGVE6IwpvqiWAd70zHjwXJ0mk6TbDh
	u6o/sV0prGm3negygNcIoWr1Og==
X-Google-Smtp-Source: AGRyM1vW5Lmj5rXm5hrCoWS2Wi54jz7pYqa6w/8RzgATIbyj3LK6r4kZKzxJzLIg4Aujo3fpMmE2ww==
X-Received: by 2002:a05:651c:244:b0:253:ecad:a4ee with SMTP id x4-20020a05651c024400b00253ecada4eemr18710012ljn.21.1657016042713;
        Tue, 05 Jul 2022 03:14:02 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id i16-20020a2ea370000000b0025d0fbe3e46sm2004851ljn.13.2022.07.05.03.14.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:14:02 -0700 (PDT)
Message-ID: <9b3864e7-b6d9-8601-989a-50ac4db32f7c@linaro.org>
Date: Tue, 5 Jul 2022 12:14:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 14/43] dt-bindings: phy: qcom,qmp-pcie: clean up clock
 constraints
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-15-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-15-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031404_566422_8C018549 
X-CRM114-Status: UNSURE (   8.83  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> The PCIe PHY binding requires two, three or four clocks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Squash it.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
