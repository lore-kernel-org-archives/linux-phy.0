Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAFD3C47089
	for <linux-phy@archiver.kernel.org>; Thu,  1 Dec 2022 16:27:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYXcgHYb18Gg8pwoVnitS3SDBW5TASSNo47tnFUV4aQ=; b=i1KDiZKPPAFI/a
	DBM0AAdk7QTVkU1N82OkNKBedu1hkbY2KhWqq9hR/M4i+rBWwFIE0GbUFM3jNXWgq+qCTP3uWAKy7
	lLMjMWtHEwB2HgIog+Ms6vWWFGTVA2NM9AFn22AR36Oz9upT0aFUr3WUt3HTMpUqPbH85jsif9agW
	jCvk6uBIU619kjdZ9R+XWPDi74UTn32GuEUeVQThFiE5wl+zj9SqkN8Ms1Q+l5QbgEXAspGiwsP42
	JJyE5aKi4donS1O0JOF3sdnE9dcU/GNlHGohzMikI/1dQ/zopRL8+edX+ymoE72turgxFF+eq2c7k
	AAwHGCW8xgYPOUoQ92Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0mP9-008YKy-6Q; Thu, 01 Dec 2022 16:27:19 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0mP6-008YJ3-NL
	for linux-phy@lists.infradead.org; Thu, 01 Dec 2022 16:27:17 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j16so3247772lfe.12
        for <linux-phy@lists.infradead.org>; Thu, 01 Dec 2022 08:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ioDN+pQOq5HgtdlEf9mzg0ol1oWyOo4wG8Vd6+93HFU=;
        b=DcPJ/+ro4LTVRBqT5fBcbYkOTmqVTNe/CEugS6D/beI6xfBxbs78ENrgSxClvaMHcf
         RkbIdl7gtHfOWwI7vMXWHhX3/ZQJeTmu6dmNEE9l+s7/JEKxMpaKnirFvkUKKDnsR6jx
         L1MSIZ/lnV08pyOMAh+9dQPAme6uv1CtegPV9HmyAnBJp+wpSBA3UaM+weZbXxut9o39
         ByIve5BWXDhp765OWpbJ6zeXzaR0ZoPf+5HezQBGY/u0jgUdnTuZA2W6Obo6IM5ajJyK
         hLpoSl+NddeROjGsWeZjbzHBYqzf/+UCxy4xp9TE3sE07m3HM/2L4X1wD2zpQgYSdMvh
         m46g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ioDN+pQOq5HgtdlEf9mzg0ol1oWyOo4wG8Vd6+93HFU=;
        b=ndBXBW9Sbe280AgY1x5z5Fx/QlIk2Ay09eM9AkPRbBgH3Ie0/xfkXRNGCs3rlWTm6A
         1ysMT0e7z8jIgbCQbx/E8kwhdS5LNgLGVi0uHy3u2rGRpjMK07FD8lct10tZKOt2ZbAE
         3kJ66mBI+fpLriaAqT+O6RKelMUWkfYcFTlk0bdwm0KE0zvjohghVg4cTXpZIW6yZufm
         sHhBUtL3gmX2axCmbkdJUUsOB5tjJ6Kf6RenuW9eE1bFEjt9rdvbVYSOMd9Ezb5tN6zo
         C57xERohrFQU2+U2UQ8mwBOBWp0dFIVF5cer2DQmAQ/ENIFrVkXAzJbAn+cy7sTL1HV9
         +sqw==
X-Gm-Message-State: ANoB5pmaVIT9awfNbbBZiB3pfaZpDKTlGZCX2TQVc8oyzinGXv0srh5m
	ItGTagfGL+AAnDCQuiI5jjcTuA==
X-Google-Smtp-Source: AA0mqf7SXeJYAFY40xLBV+mv7rmI1226pH4qxPkT72pkjWhQqM7mclAyG6E0AGksRTezv8lCWk5gNA==
X-Received: by 2002:a05:6512:3a7:b0:4a4:77a8:5ba1 with SMTP id v7-20020a05651203a700b004a477a85ba1mr20981287lfp.569.1669912033890;
        Thu, 01 Dec 2022 08:27:13 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id p21-20020a2eba15000000b002796fb63dbdsm439396lja.13.2022.12.01.08.27.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Dec 2022 08:27:12 -0800 (PST)
Message-ID: <9ea881a6-5786-2e3b-7341-60180359d2b0@linaro.org>
Date: Thu, 1 Dec 2022 17:27:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350
 compatible
Content-Language: en-US
To: Luca Weiss <luca.weiss@fairphone.com>, linux-arm-msm@vger.kernel.org,
 Johan Hovold <johan@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221130081430.67831-1-luca.weiss@fairphone.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221130081430.67831-1-luca.weiss@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_082716_797878_1FB88C9B 
X-CRM114-Status: UNSURE (   6.69  )
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

On 30/11/2022 09:14, Luca Weiss wrote:
> Add the compatible describing the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
> Changes since v2:
> * Drop misc schema changes again since same schema applies to sm6350


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
