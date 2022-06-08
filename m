Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0EF2C43334
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jun 2022 09:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ij42yhdeIg0JCAFWNZcs0Sy73zl0aqjGPHVaWr73js=; b=ndp9cfysiQHxcd
	iBRa/iwls6Bozv6IigQfWTCG2OXxoMgc0rTYnd74t7mdJe79Wn7+qkW2mNn7lijrIr0bo8v1kZE6z
	BY8m6T0uIzHmC7ikNAgDicyhHrUO/nKoTfu2p6SK9JDQJwpto7G77yXCMgK20W1fZjJSz48U/iSM+
	2JqvTqKAl8DnjiVFkaS+zjQbAa6hZ19i1zElkK2Da0V6+fdQuDN2UXfzYurloSW9/mVX6jtfCSuTg
	tjwhe/yXpjSocbbFVKuFM5l7/uLVR7NI0AQuxS1RES1ZG4aiT3phTCxREkj9YcX981B9fqmaiywbD
	5X9SYLhh/jShJ1u8lo8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nys7E-00CQB4-A9; Wed, 08 Jun 2022 09:36:40 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nys7C-00CQ9f-4F
	for linux-phy@lists.infradead.org; Wed, 08 Jun 2022 09:36:39 +0000
Received: by mail-ej1-x62f.google.com with SMTP id s12so33070272ejx.3
        for <linux-phy@lists.infradead.org>; Wed, 08 Jun 2022 02:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Kpmo7UeS2XJUltFXsYvK1cKEeY9o0dVRqp/sC/YL3Dk=;
        b=uKCZkhB1+8jxuH6AiQ4zRdCOXEvKaBt/5+UnRk6DkVIcXew4DnwU58d/d0dXot9Mam
         HkT1/ElgHOLf7a9J7rMz76/rtFSO5lHeq6jWMqeHkw4Q+lEm/2R9fAHE55x6UStDLGL9
         jGZ8tHlPhaQLe/A9KnCyVFhOlUDAfrUI4dBop2mfW9rrEFwORGGo1Om0RMA2QmGvA/ZA
         j2BsrALYRqbdlQBAIDMdGiOB/Qc84Np6DA1C7yTbAYdpj8pVHLEhUfSI8Jd1LrTWJfbk
         5k/8bLKvdaN+zEgK+i4ESUJ5QDLAUCH3Ad1zyWjB6CbEj1yjbTHaVQ4cXtyC9kLP5PJ/
         7t4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Kpmo7UeS2XJUltFXsYvK1cKEeY9o0dVRqp/sC/YL3Dk=;
        b=CPogUapDQ3X90MPun36sFsgl21wQp1ICeC/OB5x0K1gJaM4NvL3UMXfZDAPduQhLmC
         weKyOw1vSBLYqpByj213fOZvAUp8S3lKHAFTVD101wZlcQWm9YTOGfFOM1w0sJWLp6x0
         pCYww4B5vRiFDhjNxZDyx9tDd2rJNvDLuxjP1h8yE5teSMP0I0bTKcddGYnyyierlk/d
         P+GFgWgDrGqeV/QQla+4alqjbKwtikzEUs2yp3JMWG26AYE9TL/j/LLiEIyxA6ic3T5w
         eyC7mPZ3vUp0m14Qb/8N6d+TkdLawGmo3VEfSovo2WGY3gAs2ZbtQm0Ib3wEOUPo6UvN
         BYig==
X-Gm-Message-State: AOAM531wk0m4MM4TLWxZIkHFa/OgGPSaHkDEAaL7lraJn5CH8J5O9Azp
	IN8rH7imwR2Ndqv5ow869XDb8A==
X-Google-Smtp-Source: ABdhPJw8iZ4CGSvQ5CosOn5nP4C7ONH+zhaseW/eid1dlnzNMHrirG75Ha4zhHbFqrG/GvG9OMg60Q==
X-Received: by 2002:a17:906:7b82:b0:6f3:ee8d:b959 with SMTP id s2-20020a1709067b8200b006f3ee8db959mr31198083ejo.458.1654680996179;
        Wed, 08 Jun 2022 02:36:36 -0700 (PDT)
Received: from [192.168.0.191] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ck11-20020a0564021c0b00b0042de3d661d2sm11974599edb.1.2022.06.08.02.36.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 02:36:35 -0700 (PDT)
Message-ID: <0de4b78f-5ed1-efea-4b53-fe16ed9c7e42@linaro.org>
Date: Wed, 8 Jun 2022 11:36:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: sc7280: Update SNPS Phy params
 for SC7280 IDP device
Content-Language: en-US
To: Krishna Kurapati <quic_kriskura@quicinc.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <swboyd@chromium.org>, Doug Anderson <dianders@chromium.org>,
 Matthias Kaehlcke <mka@chromium.org>, Wesley Cheng <quic_wcheng@quicinc.com>
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, quic_pkondeti@quicinc.com,
 quic_ppratap@quicinc.com, quic_vpulyala@quicinc.com
References: <1654066564-20518-1-git-send-email-quic_kriskura@quicinc.com>
 <1654066564-20518-4-git-send-email-quic_kriskura@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1654066564-20518-4-git-send-email-quic_kriskura@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_023638_233879_785BA6E2 
X-CRM114-Status: UNSURE (   8.41  )
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

On 01/06/2022 08:56, Krishna Kurapati wrote:
> Overriding the SNPS Phy tuning parameters for SC7280 IDP device.
> 
> Signed-off-by: Krishna Kurapati <quic_kriskura@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
