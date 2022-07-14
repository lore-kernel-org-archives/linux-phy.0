Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50240C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 10:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGx9ZoeGI47QiuKeyRqNsaKQ9CKf8W2RJ8q8FP1lUb8=; b=VcW4DS7Rp7kUzn
	M0VTgI1v1pK0BioXmRRVE17BpOSM32ejh4VDpDQu/FQcZOwHy+THariSx6rQiD8PhtvomdEmwNR9D
	FT6zvHdawhZxIBns+aAw0Xjmlk4ZMkv+6CET/73c29B3n5LlmjGPQPr9VQXWLMkKEAK8ukbhxQbjp
	T6oOwn83/pLiHdI96vmcB0bywxLdMHlcSbo5jezPxohNJfFFfv7/tguzOaRVtnWKN/0DNYtlXtMFl
	fdrVc2Rmy0hLd1Pjk7C5kDYqLm8Hrgjn750MHUcdbAHKTMa8BPSJ668n1Yv3ZO5n8iOVKp3WD9Ggl
	J3yXScVLOLbZT0yLY8Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBw7I-00DMYN-OF; Thu, 14 Jul 2022 10:30:44 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv9K-00CqEX-FL
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:28:47 +0000
Received: by mail-lf1-x132.google.com with SMTP id u13so1837292lfn.5
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=MfaebuyV5vYu410V6OGgUu+pkpTyIAIoQgwqR/osYj9jXc5FjthQ5403nRIKo3lz1e
         X4jqlvRUNsnm4yjrijpaqjcPHcdUKkQ5f31kenhpjwRRC6d24WnItCmVOP4/neSXdzdf
         WNPxb0gXKNNTKnNBkDvrVL75XMeuMEn2M1d72R3K62Bu3JVPPyOvwt5xMDJ+twlpW2+g
         tkQ22/ErloE48NPDosl/YAZ743/xFeTaeJ6bZO8f5gKAcm8kEiBI/mrmegGMj/c8NL9X
         umn6uBCkex8XawnIhlgAwZyQ+VMbZ142e/p7Kgpq2CpLeroCngkKkBECen6feKfGQ2Rc
         Xpgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=15buN5OMhjXAXf45GiGfmO36FQiOD7vgGTcx2gKhqieBaHyIsJEQXYWer1QR8onu45
         KAYI44PFfBt5+UMB7UmMB6BgXSfVJQdWU31bHVBwoLxprTV4dHLCyp5EkQ6hPdb+OlZk
         MkVN0g39nE9xSGMIvvhKMhDSWsTNCMtHCE/mmxqRYlFS2uVgCxzXDkNq29u0JRBE0Aca
         Mo6/fQzCwuLuV9VMj2i805Zzf3DI+SxfhfGYO3Z5dWvADZlwiabwAhhOs5TTefr3ZToh
         C0LvNHWBPOEJk5JmzY/Y5VeYGPV2aWXLSHCFVQMj8XERc/AZlnn/5dSpkfwJQldyTuuE
         4lrw==
X-Gm-Message-State: AJIora/Sbeciko+oaWjzKV47lsjOaLdUyizkmu9/2smYsVGLnPdrdqMv
	ldScHOltcjTT4RnDb6aGy4Ekyg==
X-Google-Smtp-Source: AGRyM1ue0q5+XuXiTzfYSUiX449xIjFdhkSs2tKAL4E+660PlYeAIswdiWE96dhZt93N9/mQvs0IjA==
X-Received: by 2002:a05:6512:31cf:b0:489:da0d:df52 with SMTP id j15-20020a05651231cf00b00489da0ddf52mr4646024lfe.221.1657790925082;
        Thu, 14 Jul 2022 02:28:45 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y13-20020a19640d000000b00489ed49d243sm255490lfb.260.2022.07.14.02.28.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:28:44 -0700 (PDT)
Message-ID: <cc5245a7-f1d8-c465-4dce-fd21aca27000@linaro.org>
Date: Thu, 14 Jul 2022 11:28:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 25/30] phy: qcom-qmp-pcie: drop pipe clock lane suffix
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-26-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-26-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022846_574849_FA018662 
X-CRM114-Status: GOOD (  10.58  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
