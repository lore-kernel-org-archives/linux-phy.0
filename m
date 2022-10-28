Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94273FA373D
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 01:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q/cM8Fj6Tko8cRNa2PLr/ap/nv9UJOWyVph/5nCexWQ=; b=AcSZ7zGfQ+Dpj5
	wmttSRkuKmlkFSIM0eRWS/0XIy6yGj8qV1sk9t7JzPbFPdiAF9WhQJpZTZLZYftElMym2YfWVCz6j
	4C1lhr4kCtcYHKt0s0st0dMbQ+W0Olx9DEpIW4Y/I6Df0PLL08aytRftBh15y5KwJaCbomx9fjsWr
	vCQ44YM14gb/221a2MXqVlwPOggjpwotvmau+P3xCEDKQBwEwAL+j0aMVNkzKtW/M9CrcIvunfRym
	lgFHcnSgIkSOA3ZAKyHjjJOhb6Vc1C3ntsv24Kzarrygt71xFaijdnv23fBvAZ/bXcQOZS+bzHtP2
	/fWqzFTXEvyw8MXTcZxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooE61-00FNKy-Vm; Fri, 28 Oct 2022 01:23:41 +0000
Received: from mail-qv1-xf2a.google.com ([2607:f8b0:4864:20::f2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooE5x-00FNKO-Az
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 01:23:39 +0000
Received: by mail-qv1-xf2a.google.com with SMTP id j6so3131179qvn.12
        for <linux-phy@lists.infradead.org>; Thu, 27 Oct 2022 18:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ExaNe0+PHAZeptGCdv7nhjhnGueQivhSmqML2WumfiY=;
        b=FY91IEAccOF/X8e+Ry5ZCHAOxZAKItpkUVlmqfMGEN9WaKcOKqM9r08vVKPQC/rzZe
         Qg1YJ052WTNEELJn8KFQuChvD0VsdiEf+2Uxu7fatC0AEoqGalohhjYogKFqe2wntPDB
         8O5T7ymRULN9qj6OAz7EAQ+mThsnuFxDAGkOIP27jK8ND+op9gaYPKldLudPXuSof1l9
         +4dtvAUXFk6JgKeJMhcSElLdbnvYV1T3A4m7Y2nl138OGUXhmW3AV3a/Kh+w4BhN+aeT
         xT6ONe7SYgY4pTkoHGPlZS2CPHG9HVbi47UI6rXk7e6HkeOtz8RJNLxxvio2fqrTrpSB
         ffyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ExaNe0+PHAZeptGCdv7nhjhnGueQivhSmqML2WumfiY=;
        b=JzcmOcvwa/OYwlWTrLSFNO07nGUZRee9Eq2hvu1pe1DCGwq6I4WBVwdabDfRax0O19
         ch+FbX9+kMUS9VqVD1Ba0znnsUMJxBPxIXclA6Mgci2I5XfqBviheflLUUyBfJ6/YxtD
         5fvgMhgo1ozF2NIMXItJD5BjhsLhv9Rj9burA6WE6E4twIVvMr0BKTXztDAXfL5TVOMn
         vLz+h7I1QvS7RdkN+iL9SaXGWoz+wulm3Us4m4uRwI9+dIp4R9/KViZ8iE8JPHXJci7v
         EYtjxs+xheitGQx15sgA5zYbSiPRfYBioHHjVQok+xsxKIcFFow7uf09c8h5V8uiMAMl
         O1Fw==
X-Gm-Message-State: ACrzQf2mdKkeT++4AF5fkJUJzjmFjlEiZl+zCq4THM+9hPLqpK1nGENU
	67kVRqKmVucNFalAQ8/jfvWHYQ==
X-Google-Smtp-Source: AMsMyM59i8g2sKvo0v5DPB/P2cI6Ifwyum+sxSGT0d3frdGa5rKPJu7jleBGrSlrE7jzymWsKWq9zA==
X-Received: by 2002:a05:6214:c4a:b0:4b1:9831:f067 with SMTP id r10-20020a0562140c4a00b004b19831f067mr43033644qvj.39.1666920215909;
        Thu, 27 Oct 2022 18:23:35 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id r3-20020a05620a298300b006ee91ab3538sm2096703qkp.36.2022.10.27.18.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 18:23:35 -0700 (PDT)
Message-ID: <e5c25e9f-f081-8593-c61c-321cca3726a7@linaro.org>
Date: Thu, 27 Oct 2022 21:23:33 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [RESEND PATCH v3 1/2] dt-bindings: phy: renesas: Document Renesas
 Ethernet SERDES
Content-Language: en-US
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org
References: <20221027134006.2343164-1-yoshihiro.shimoda.uh@renesas.com>
 <20221027134006.2343164-2-yoshihiro.shimoda.uh@renesas.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027134006.2343164-2-yoshihiro.shimoda.uh@renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221027_182337_407877_159F3528 
X-CRM114-Status: UNSURE (   7.43  )
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

On 27/10/2022 09:40, Yoshihiro Shimoda wrote:
> Document Renesas Etherent SERDES for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../phy/renesas,r8a779f0-ether-serdes.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/renesas,r8a779f0-ether-serdes.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
