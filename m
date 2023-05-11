Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38892C77B7C
	for <linux-phy@archiver.kernel.org>; Thu, 11 May 2023 09:24:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E6hyWlRQEAbnUWbCUFX0GJNHHUHZpWXp9Qev6VnjlCI=; b=q9SZW1iAlkeQew
	1YHElgdLkHXnuWn0ONN3ski1ol1gtFSZrQcfgP97Fxneqnh/V+/Am/xnLihofWme+U9OlAesFQ8cG
	yoGJrj6ZX4a6jqh0ysdfgftt+qUr5XNW4rGkE5BKjmYQ27cTFoUhEKZn9lDeL80jypOH7ropNMp9C
	4qwLbQZlavvAICfsuCAlG3JvgXALiK+f53X9MGwdA1lb3XjcMt354pKhfFt1ZeUqo92UIPuE2/Efj
	HzwMgxLABiXimUi7XX6eoltvlpiF1EGCOR9tROqk2dRPpAF6ynWHGhz4mDFnCq5QIimrmN2BJ//qv
	xAk3MVZZqE4j/8XesDbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px2Ww-008LHc-2s;
	Thu, 11 May 2023 09:24:10 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px2Wu-008LGk-2e
	for linux-phy@lists.infradead.org;
	Thu, 11 May 2023 09:24:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-959a3e2dd27so1480396566b.3
        for <linux-phy@lists.infradead.org>; Thu, 11 May 2023 02:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683797040; x=1686389040;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JA5xPjeOoojypgcBqSFOVnz99GxgTTj01ItFi8GBvTU=;
        b=unHqB+68GfcbdTRlwsrD1KXnBOl3FzBk7YWKN3UPV9JxOPofTMog/lPUg+w0AC0zcV
         u6HIfsNXkuptihF0Xn9jTfGEaiKZqPZypWJ6Rs8nIbEAXrNL5QJ9cRWvAtit8341mZyq
         sJ/gm6mjb43TELC7kbwE8rgn42U4htFccqnnu+zEy1vre70l0u5lUKP2mX4vWSuoh2Br
         7m847tcEFgHUx0KaeUATnTTQ/g5e0Dp88nL4ZSSN7z/XigiQsGHwZaCjGPV+tAilnNu6
         QC6kWjHE/TEko46XZY3xMjE3ZyvS9hVRHfjUqrBuJg94kSc5JmYcXM219FkQM1457HHG
         0g+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683797040; x=1686389040;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JA5xPjeOoojypgcBqSFOVnz99GxgTTj01ItFi8GBvTU=;
        b=OpuFr5icV9BafLumQZ6EQOfugvtZCqFkcol9A3d8E2ms/+1GHzkDBpWa0bQv7+Dt8g
         d2Xea7qRCPsvqnz9y8E3slamZJLPuRE9/CI3281HF/4Eibv3a8B7XNS81+UrFt9Kkqi9
         ZYhYQf8piY0PfubzNHjsf1bDcT5BUIZvg11SoDF9+Ir8qpIBRRQx4rwQSuq4v2owDc7d
         9R8eQE/dGQKkMB0+1ylvTj5Sxak1GFPLKDEMgeDUJ0wy8KAypSaX4lomcUDorTJCTqAz
         4cZVki2Ld/srj8KBVNHobFtQ7kT2NS3GhriPrKNunLPxz1O7X+Z6JCl0C3PoeWQUmTeC
         n6ZQ==
X-Gm-Message-State: AC+VfDzrNHepuePtOhAaDYxx216ADWFpWcQlWKQCijX972hceEQZ1sPu
	QTOwVQ61BN8v+x9yQC5Jpz5HVg==
X-Google-Smtp-Source: ACHHUZ6DpuG1Gh4nYwnUB6gFrZ70a2Esdrm6hR5ekuhcVRREIF6jJkfGUci/IR/Zuw7WtQmw5Q76xg==
X-Received: by 2002:a17:907:7fa7:b0:94f:553:6fd6 with SMTP id qk39-20020a1709077fa700b0094f05536fd6mr21304211ejc.24.1683797040026;
        Thu, 11 May 2023 02:24:00 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7e61:f14a:c3a4:809e? ([2a02:810d:15c0:828:7e61:f14a:c3a4:809e])
        by smtp.gmail.com with ESMTPSA id ia21-20020a170907a07500b00966392de4easm3781089ejc.14.2023.05.11.02.23.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 May 2023 02:23:59 -0700 (PDT)
Message-ID: <7cf19b98-6de4-c576-4fe9-a123da298d75@linaro.org>
Date: Thu, 11 May 2023 11:23:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: cdns,salvo: add property
 cdns,usb2-disconnect-threshold-microvolt
Content-Language: en-US
To: Frank Li <Frank.Li@nxp.com>, vkoul@kernel.org, kishon@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 imx@lists.linux.dev, fushi.peng@nxp.com
References: <20230510140504.2164565-1-Frank.Li@nxp.com>
 <20230510140504.2164565-2-Frank.Li@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230510140504.2164565-2-Frank.Li@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_022408_873892_B02BEC43 
X-CRM114-Status: UNSURE (   6.68  )
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

On 10/05/2023 16:05, Frank Li wrote:
> Add cdns,usb2-disconnect-threshold-microvolt property to address fake USB
> disconnection issue during enumeration or suspend state for difference
> platform.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
