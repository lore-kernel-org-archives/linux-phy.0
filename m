Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDE44C43334
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:25:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JrJBiSW+CRDv+OlpIxQ3aJxf+RCkk5zspBpR1gkIDMU=; b=ghWuw0/KEZTq02
	KS5mfP4xRLt1iAi/fkD1iqZgAK/jdfxwnU4P9aLOIsVQmRc3+CJnt3YTw163G1Z4K3Ntu5fvP0W1v
	IJAZfG/K0SeI3608ZWL5i2n5mZtiTMjQJGCol0uZc/OFOjB3c244G3C7HSvWlS0o0FOFrgC9lBthB
	uYayn8KPiGi72BMgNdsCXV/cg/Osw8vW4HqOr5WFSinA68/TbicZMTom35/jf9lPfJWUIr7nZpJD5
	0HEQMszFeqJDb/5EeRHNEdr4+yUQsMNo1aL9d/sTjls3KCraUS+4exKZnTSz4mi8nHSukIG51YgoO
	Du9eLqhqyOI7Pmag/BUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv6J-00CoZm-CA; Thu, 14 Jul 2022 09:25:39 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBv6H-00CoVb-6R
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:25:38 +0000
Received: by mail-lf1-x12f.google.com with SMTP id t1so1805861lft.8
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:25:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=G4SHg0v0UTb3/wETQ9utchWc9oSi737vagHnYZzNcEw=;
        b=UJosXSDIOCQA7CkfHPIk2bFFsaniJh806Rdc+4td/6efm/F2x6bc3R55hxcASp6xE3
         dssT7wZsAC7leRWDQccu9BJzy7qRRpTat5Yd0n57bc/IeHc2dY1eh/EYztXAyeQ4HJVb
         HG4t7yhI0gWLcZJzQf1fwWoubI+NisWFwBvJhzcdA49YL4WAN8nlqwFJftVqjrlW652O
         yovL8Bppc6/qJzzH/O6rzCntep+1VbeYhRWaKmjVWXRqLN5SjF5e/cwRMC31XZJKVWxE
         h17p0U+6GgnDHT/4EFr8TWcAu+4gFFePea91v55PVpyg0fgT95pHkUzAzQaWD8XjOLyB
         vogQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=G4SHg0v0UTb3/wETQ9utchWc9oSi737vagHnYZzNcEw=;
        b=GCYhyY9+XXNg5QMqnTLR1w2IRZ9YYgLQiYww4j3UwnQBT9pYUcE6EO2XsmFCnzak2c
         fShYtjOuLG6xealnP1554UVp2WY6wcS3T90LfNX9yzSSS2/bperr1M/zkiXTZy5nATQF
         PAWEuv6iW6+DJomGFgvWw1KtDJHi2xxPmQvmLG8wm903ALYpQGTB6O24f2kNy6nFlPQH
         zCOiFMhWp/yv4hj9wnZQuD2pRMd0t+7xRjb+GN4K5GYm4xI4zCJZ+3XpXZZhZyJ54D8N
         f16r+hlBsY459jp6VCEDCPcf2xwnKd65rQsjzUXgvhDZv8QFLQDFIGd5Fgi+mGmPhVJZ
         rAzA==
X-Gm-Message-State: AJIora88jkEkOtbWesqr3k8Oitcp0mbMCSBIu/m6Utv2tRF9LsvrKeGc
	DBjE3rfubnsOIaZRvPwYnCCsEA==
X-Google-Smtp-Source: AGRyM1ua6lLzYbEzTJQNV0u3KzfC8NiZH61p3CYrMfOwp61n3WD6zdS8uA7jQ6LgHPcEUmLg9bK8Bw==
X-Received: by 2002:ac2:5590:0:b0:489:f4a2:5526 with SMTP id v16-20020ac25590000000b00489f4a25526mr5095824lfg.116.1657790732574;
        Thu, 14 Jul 2022 02:25:32 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s10-20020a2e2c0a000000b0025d70efeaaasm184639ljs.75.2022.07.14.02.25.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:25:32 -0700 (PDT)
Message-ID: <8e564b29-50e2-aa83-7a21-f28d37b384d3@linaro.org>
Date: Thu, 14 Jul 2022 11:25:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 22/30] dt-bindings: phy: qcom,qmp-usb: add missing
 qcom,sc7180-qmp-usb3-phy schema
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
 <20220707134725.3512-23-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-23-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_022537_285004_72742EF3 
X-CRM114-Status: UNSURE (   8.62  )
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

On 07/07/2022 15:47, Johan Hovold wrote:
> The "qcom,sc7180-qmp-usb3-phy" compatible is apparently used to describe
> a combo PHY where only the USB part is used. Specifically, only a single
> reset is used.
> 
> 4ad7d7eeed3a ("dt-bindings: phy: qcom,qmp-usb3-dp: Add support for SC7180")
> 94c34600b617 ("dt-bindings: phy: qcom,qmp-usb3-dp-phy: move usb3 compatibles back to qcom,qmp-phy.yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
