Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 299B2C71133
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 10:37:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9K0VNy5vqrhuBKji/6QG7Rk9Wk9uTaJ34Prc5qhd/c=; b=2bnm+FyLv1Hvbi
	0gTZOqMMnrLxhipHu++Wgh+K0JbLhqE081kT1+qNEe4uzjyQeIbMrnDHe7leIgYV+S/zNCgvP0SBJ
	ZyAXcDVI/TgRy2oygGujKfbRwTY/Yvsbu/rCa6Xd0Lg2WXVW/tjHOVxyfBgwjkV4iQipRiAlUv30/
	w7xy0O7mOy6MMVtVtuR7gkGLlgzqaXpvmC6j1UP9arqNFADR9V3tQsTGvmEcaCBjaMRQ7bPp3azrR
	NPnJ+Vx5NNRpDusFGwVR/qqF3W4XQT/m3dKACqlyhb+2e3JAQndgIKnsAyGITfO/en9l1bRQcGkqK
	dENVF07MfL8Qi6oJTXdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUCR-004pfm-2k;
	Fri, 25 Aug 2023 10:37:55 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZUCQ-004pfF-06
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 10:37:55 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9a2185bd83cso93523166b.0
        for <linux-phy@lists.infradead.org>; Fri, 25 Aug 2023 03:37:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692959868; x=1693564668;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D/icMYJmMi2L15W4uUrSEH8FD47/NFImhAmKCvK4bdo=;
        b=TAzvHyvdUdcvqCo8cdCRlYdM5cuCX0l+ZNQuzlLUdA3aNEPLdFW23Ag5niJlpWJbqb
         qwdbnWSsi6sfO/z5+AkzRTUiBBr5YZ7Eb5ge3BH8B6CsZOO6Jib/pzXJmwWNsjiCgI/+
         0Ro+8JohCvklHnTu2Q9O6iF/X4Xte878jP8D/wdoEOTuJD4Kqze6lkOlGgtxXlgssePr
         9M0/pUVr5cEDTukrlhDsPO2IigeMpmDAe5ESLb2dNnXhN5d1u8gq/f7iAnMRQhjigel3
         kG8iAn6tuggt4B02VdQtwCtSgqQXBUjiDVt6ovPzfyWbNNKbo3E6jqypYnOHHU21lpzD
         TjAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692959868; x=1693564668;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D/icMYJmMi2L15W4uUrSEH8FD47/NFImhAmKCvK4bdo=;
        b=NmrmmHaJ7e2ZWnAs4RsnifwvfHu/fz+NMswkWNsQbP8+lthxQ5l9sI9vzI0A/68ptU
         n2gy8vQYUwMo13pWy57x9TF9wVgES/QliBUiY4cqg1bYw4x0admi/IBXOxQyoMDkxgGb
         e2iuD1NRsC0TKDXW4lv3/oq3pReKlwLcTCFy/EDDALWZFjcdU5aTVv5IGFQCnRbuMY70
         +TC9iOW/cj8a0Gqc7wZqYUJa3KGInuQGxMpFJlYL3QkV4IGt2sdJKOekJzPyMPlNbqpT
         RPbY7rICulKqL4lr69acewe5MlA4tWgOUVTMU3Tbb6yQZ/cbWB5hBeM9X51BeWk4/8Qk
         kW0w==
X-Gm-Message-State: AOJu0YwKeY+Ktg8wZws/m7JacZj8C1yYEfZsHDfj4I2nmrnBi8ku0J31
	1WHpnkxbLf2j0WHRUWxmCbuTgQ==
X-Google-Smtp-Source: AGHT+IEKZISkdoI13Phz3FVeQUPDC2cLcqdNLr/eNlx1Js35MIHxmbeXSDuxAfaQAE8WJZno/i4YHw==
X-Received: by 2002:a17:906:2009:b0:994:54ff:10f6 with SMTP id 9-20020a170906200900b0099454ff10f6mr13630107ejo.30.1692959868327;
        Fri, 25 Aug 2023 03:37:48 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id pk18-20020a170906d7b200b00997e00e78e6sm815961ejb.112.2023.08.25.03.37.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 03:37:47 -0700 (PDT)
Message-ID: <3e4e03b6-380c-ce61-dd93-30669e6f9b5c@linaro.org>
Date: Fri, 25 Aug 2023 12:37:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 2/5] dt-bindings: usb: dwc3: Add IPQ5018 compatible
Content-Language: en-US
To: Nitheesh Sekar <quic_nsekar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, quic_srichara@quicinc.com,
 quic_varada@quicinc.com, quic_wcheng@quicinc.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20230825093531.7399-1-quic_nsekar@quicinc.com>
 <20230825093531.7399-3-quic_nsekar@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825093531.7399-3-quic_nsekar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_033754_074352_07D95F65 
X-CRM114-Status: UNSURE (   5.67  )
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

On 25/08/2023 11:35, Nitheesh Sekar wrote:
> Document the IPQ5018 dwc3 compatible.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>

Split the series per subsystem. You are making applying process
unnecessarily more cumbersome for the maintainers and as result - delay
your patchset without any single reason.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
