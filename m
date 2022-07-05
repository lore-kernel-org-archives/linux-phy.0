Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A848C43334
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:13:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxUyAnZVtOmbC/4Ril/IMDjkGJPXHB90sNY2cApMgSI=; b=ObmPQGzMWuUJ27
	qUJYFgzKn8it9d/CnFdGfVj0DDgMPv+A11wLMV2/DOwjDcc5QqU9G5l7mjmCA5Sy0IqlWde4mKf85
	W5bp1QMPqelvX2PVgjW291y3aJGhRYQv/BgfNng142Is+WtS77E9UklsEBR+3NsI4Pl1PRnAQ9RKM
	vVW3ybpuzUbGUYWTRcXK/JR1mNZupncAB36QPUEMrqd1SqoSctwKGlWV5yKGm5Prh5hX7oqv6oeIe
	rFXRsqwih7dibCWok2HAbJaAIfP6q9tv9npJuQ4r9gKmNmp49rWAq+ecXZolY5fLnG/67tToM+CYW
	Kgrugq6o8euKrv6V6koQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fZ1-00H6II-QD; Tue, 05 Jul 2022 10:13:51 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fYy-00H6HX-Id
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:13:49 +0000
Received: by mail-lf1-x12d.google.com with SMTP id a4so19802047lfm.0
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cLjhHLrbRBnYiVAOCNhcYbbg+1XpO08dGVEQiEigido=;
        b=NokVD5aeNj9stoX6SL9K7J5iP98z+qj56ikZljVqZfxNlvBdGGeYXxMh0F5JndN1FC
         GtOq9Ejxu35KdYEDvApSJA5U7E8l8jCd9wPmco0VlUftMK6OspoEKj0gsE3fkzJdKLRG
         Y5Lqu69MWowm2utmq73ikL5F63glMys4dDxIU4dVtr7VwlPhsq54UOrAyALxpu/izWK8
         KpX9f5FLxeVfLqcJ1U4k817QRBe/uxD1DUsNiyxsoy5QQuZmuWLG6Y/ccQS2jaKU/meQ
         +6NF0zGrSlSfPnlykGS1k0h/Y8yt1ptey2o4l/BFh8H17mwFekV/9ParMWFzH4gp2R/7
         CwVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cLjhHLrbRBnYiVAOCNhcYbbg+1XpO08dGVEQiEigido=;
        b=ExTpJ1lOStmg8nYryiBCvtVq1ZIKQXIT83yVH7XAZY8jmXSVBxdjypbE94Kf/nozXV
         B5ONb1s7e4msy1skgacnJx2xY6Z4smJ4IEcaHV/ffo8aVOJu2uRIhRMqy9H+ODeidEM8
         VNNmEabuiSX0W6K+3QTE9R3zB2932fFPnfutiLbvLOa4cSWGhI5tYJnbqD8+sTCHmib3
         +Wl4iqIDwARw327W5tRojgpPwDIOddVx/uhgY3i0xZztgtcSMTlHTSfJkkXs827Cvedm
         XwVjjv3S0CqWOgBlCwMM/1TGjK40QdJOqFu5EgYsLYYh3YONRNg0Wb6NyaYOmjeoF9nr
         NReg==
X-Gm-Message-State: AJIora8JqJk6W/R1KHdwQR/zg1RlnvmBHMSOOROkTIrn/pvuNkLWzYTn
	PUrNFa9WmpZmKiWJAHKB8/Kzxyewc9RNpA==
X-Google-Smtp-Source: AGRyM1uZsAzZdN771jYqFkZTGKGgnuxS95JZHOFMEG9qBWCRtFMChuq0B2wnLKhmNJ/+m+DoTVFchw==
X-Received: by 2002:a05:6512:128f:b0:47f:879b:dc9c with SMTP id u15-20020a056512128f00b0047f879bdc9cmr23369198lfs.478.1657016026738;
        Tue, 05 Jul 2022 03:13:46 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm5468127ljj.138.2022.07.05.03.13.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:13:45 -0700 (PDT)
Message-ID: <1db53d76-575f-53f2-d52d-1241e5053f59@linaro.org>
Date: Tue, 5 Jul 2022 12:13:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 13/43] dt-bindings: phy: qcom,qmp-pcie: clean up register
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
 <20220705094239.17174-14-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-14-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031348_662142_31724BA5 
X-CRM114-Status: UNSURE (   8.53  )
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
> Only some USB and combo PHYs have a second dp_com control block.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/phy/qcom,qmp-pcie-phy.yaml | 2 --
>  1 file changed, 2 deletions(-)

Squash it. This patch does not make any sense on its own.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
