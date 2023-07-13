Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33E45EB64DD
	for <linux-phy@archiver.kernel.org>; Thu, 13 Jul 2023 11:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WojT0j6QTZpzHBldqxtzQktAIBhdVtCSaP/9DX8qIFk=; b=Vv3VoDp55Q/NgO
	O6jJNpO6TQlS2FYGm+PCbu9FAGfzkWaUHKk4znyBCN5fdNKLhWeTO9KF44iWdYsOitiyr11cCKzWI
	cnmgzlPFn4hSguF7c2GKH9/uxpJyNNKby54GacN16TW2mSudsiu9VJDr8T+Kx/PLJ3v0pFmZJCTe9
	f3YAdq/bO1t1S2KaB3RoGtYT3OiWftAymQdy5wB8ohWY21Vcujffr1867r5u8R/PFQTLKHrDXGwIN
	YeggdAC9F2/FBL1LStX8DPfFMIu2i+DxkzCfETV+6LX/mtT1qepR3vX8+H5Cs5HioIUDy9vyyi45X
	5VbWDj5TAPvSSgeaX1Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJudm-0036HU-30;
	Thu, 13 Jul 2023 11:37:46 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJudj-0036FR-2Y
	for linux-phy@lists.infradead.org;
	Thu, 13 Jul 2023 11:37:45 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-307d20548adso712885f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 13 Jul 2023 04:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689248260; x=1691840260;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3afv1tSDU+ds9Iq1atb1848uSvv71WrQkCzCJYr8Bqs=;
        b=tSq8h2z1jv2RYQQbrpUcMJPfWS6sp/lKir2DVDt9mM9qskZiWfnPgd7oSiNUBKfyYy
         YLuRtG9KkSzbuQzOEkv1lcPTMPmGuwVvkAqjHV6Cdm90Jsyfu2yIjZGg/Rs+fokaK+kY
         S7Zw/J4pHwJH3nArFvtTEpZSQZhlEfurqlTUlBu0s0LgWaxkVO4t5zBn/z9sAhQWS8du
         6WcyHesVmsA4n5p4DeiywZmHk503oxOeIYWKIOorrmKgJ1NWQqiX7Z5jUyBIOfo+lrxQ
         BW0ulKZ2Og58U4e+2oz3C04uWD/z6cngbW/nDFdk9myFW+DagCED0iSrAolVJqWRg6YQ
         dQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689248260; x=1691840260;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3afv1tSDU+ds9Iq1atb1848uSvv71WrQkCzCJYr8Bqs=;
        b=WgKAh86mZn8GfnsONMgMaibvcUMw5hd3oHKtjjaHr9efedTds4TPhPijriBfO6Nw27
         eHUBfxJXo6DBXevR0Vm8jq4WxQboFhZILU8V14DKhL7eKD0BYJ6PY5L7B+zpjKQ5pEvy
         GrLNPrXehZqKZoKFi0u1w4fBZfFaGjv9dqIIrVmwLAWNigUpRpjH5bcB90rPyQevhNue
         ZX+AfyNznfuDHW9HL8Yq6X5vdlFK7u6fFQBaMGVMpxZUhGr2WqFnuZCi/P4m5uGiCqUe
         +mbi8P0wXdGGys1bCuMPma6y6LsEPgBg+qr6CC8heL8yEo3T7H1+kLelgJOm/rXmCHve
         Wd7Q==
X-Gm-Message-State: ABy/qLbRJJrv9dhnFxu1D3t0HnW8rG3Ef9UqnSSe2aJwHTCqgmY8af/X
	umvJZJzh42RJ852Cyi08TXEJ5A==
X-Google-Smtp-Source: APBJJlGSdUl2/024KdAAcm1SL/4eEW6C1Ed46QDF+qd36ywSCEPwDoG8NweOZ+ffKG0UE87W0Lom6w==
X-Received: by 2002:a05:6000:87:b0:314:449e:8536 with SMTP id m7-20020a056000008700b00314449e8536mr1287763wrx.10.1689248260130;
        Thu, 13 Jul 2023 04:37:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id k2-20020a5d5182000000b003143aa0ca8asm7748394wrv.13.2023.07.13.04.37.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jul 2023 04:37:39 -0700 (PDT)
Message-ID: <da502dd4-2718-ae9c-51c2-7c9da5c3208f@linaro.org>
Date: Thu, 13 Jul 2023 13:37:36 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 2/6] dt-bindings: phy: qcom,m31: Document qcom,m31 USB
 phy
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, catalin.marinas@arm.com,
 will@kernel.org, p.zabel@pengutronix.de, arnd@arndb.de,
 geert+renesas@glider.be, neil.armstrong@linaro.org, nfraprado@collabora.com,
 rafal@milecki.pl, quic_srichara@quicinc.com, quic_varada@quicinc.org,
 quic_wcheng@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <cover.1689160067.git.quic_varada@quicinc.com>
 <e3a6e5cf68d67637fa541f6dc690dbcabd5e3fec.1689160067.git.quic_varada@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e3a6e5cf68d67637fa541f6dc690dbcabd5e3fec.1689160067.git.quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_043743_828580_7DAA0F83 
X-CRM114-Status: UNSURE (   7.21  )
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

On 12/07/2023 13:38, Varadarajan Narayanan wrote:
> +++ b/Documentation/devicetree/bindings/phy/qcom,ipq5332-usb-hsphy.yaml
> @@ -0,0 +1,48 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,ipq5332-usb-hsphy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: M31 USB PHY
> +
> +maintainers:
> +  - Sricharan Ramabadhran <quic_srichara@quicinc.com>
> +  - Varadarajan Narayanan <quic_varada@quicinc.org>

Still wrong email. You should also receive the bounces, didn't you?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
