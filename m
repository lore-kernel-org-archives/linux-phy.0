Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD81C6FA8B
	for <linux-phy@archiver.kernel.org>; Wed, 21 Sep 2022 07:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DQaGtwiLiTqDMBuPojfrOL/I9tQFosBhQUDpz5UmYTQ=; b=Uq5xpREbIc+N2q
	VmCT8iI026HEP1uWaI1wGIzXrlLQxxxK6jgC0YaiaFM/Wtw1dM3S55FYFBVBbFhx7iokT517q7mfk
	e4Azw1absE1GxXPocLQEoxjpv7WHbqOkqc0GciIOkmADfO3288yeEFcIhds6OFgildSk1zcYCBhh8
	wmew7kDpvFpjZ/dXO5pasEq6rWKnbStCTg5ZSeuFwfgltz6GqKUaH/brCDMJ4wZJJuIxIxxMWZ2wp
	+/k+7iHdIXeBd6fmxbvweS7k1Pk/erFv1sRuIEcBAEfIvS7vRZ9g5i2lgLkSROsjVbH6cM2R1rZn/
	zKdoAR+0acWQxVu5TdgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauDj-009cc6-99; Wed, 21 Sep 2022 07:32:35 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oauDf-009cZD-NG
	for linux-phy@lists.infradead.org; Wed, 21 Sep 2022 07:32:33 +0000
Received: by mail-lj1-x232.google.com with SMTP id z20so5929450ljq.3
        for <linux-phy@lists.infradead.org>; Wed, 21 Sep 2022 00:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=7JnyjGpATcgNnreZxcfkb+tq461mqhrMUKVJHIj5DbQ=;
        b=vLFU7P0JUVxQwOQIwPN3s8EzOvkEvnQUUIFTWMHjnKADIVVn4W1UGRHPn53b9fj8AK
         +0ouEq/nVkmiq5TrtOG2AIzkCUAJf9fTrxRTV+YrQC5C2FgRQhJNix7sVi7v7g73K9kj
         0ShtvgtF16s/6cwsT2jk9N5Xou7/qJ0holB0980EIpkHruaZEwvowJfAKfiNRs7g/4ae
         5nBuNMN5auKV9iNAW4G+pDySil1/Pf5qaxHp1nnycjMsoCwFCdWjnyW+kFMQs0YrCmHb
         VIy9ga2JQjHBWYjcZnIQzawK7wDwuxgfMAosmkAueEa1w7UWx+vff+eaub7Xcz5n7ifV
         Y8Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=7JnyjGpATcgNnreZxcfkb+tq461mqhrMUKVJHIj5DbQ=;
        b=PGzfBTObbfF3wzLy/+gjB+llUj4WDVfPPm0aWG0WuBlGfXS/3ExGax7zq27LwdxPGk
         d+QD/dVmGpu+iSmXKEfuBqljPMm5B66Ama++QRrEiEaxk33cXUaqe3r2Nmy4LgRJonlm
         LJHTMmWSRTiCXJh0CGpCRs1/ObmdrL4y1C3B2mfKKJVrRYxCgNv12NOfT7aHKdAHBWHF
         YjXuLbNT5oFE65PdQriK1J8jh9mHZy9LGhdA2hKm5V9Qxz9NfzPDWGh+1Ra3x9JiWJ2e
         BpTkY+Ub0tqkRgn3hrFA6vwPdBfvWAR6brEpxwKr8qMeh5nS7hWLo/40iYDCYtuZU3IB
         11uA==
X-Gm-Message-State: ACrzQf3f0p0c/UtAA82+Bk+lBnulgIqQJo3zlzKij4ZOM/c0DDvkmKeN
	qerw78Gz0Orts/+uMq5aFKzZDw==
X-Google-Smtp-Source: AMsMyM7pGy1YVzFvNrD56K13wYvuEXn7Yf2+HAavQCUFPDqZERqo62flx03xCE0JQukad7Ad5dV3Uw==
X-Received: by 2002:a2e:a448:0:b0:262:f7c4:31ad with SMTP id v8-20020a2ea448000000b00262f7c431admr8145408ljn.283.1663745549394;
        Wed, 21 Sep 2022 00:32:29 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f13-20020a2eb5ad000000b0026ab83298d6sm316063ljn.77.2022.09.21.00.32.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:32:28 -0700 (PDT)
Message-ID: <adc622c8-d2b4-5867-60eb-49eaf10cf701@linaro.org>
Date: Wed, 21 Sep 2022 09:32:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 2/3] dt-bindings: usb: dwc3: add sdm670 compatible
Content-Language: en-US
To: Richard Acayan <mailingradian@gmail.com>, linux-arm-msm@vger.kernel.org
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felipe Balbi <balbi@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org
References: <20220920224320.152127-1-mailingradian@gmail.com>
 <20220920224320.152127-3-mailingradian@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220920224320.152127-3-mailingradian@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220921_003231_782928_46C9A5D9 
X-CRM114-Status: UNSURE (   8.28  )
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

On 21/09/2022 00:43, Richard Acayan wrote:
> The Snapdragon 670 has DWC3 USB support. Add a compatible to reflect
> that.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Missing changes in allOf?


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
