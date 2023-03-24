Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 326ABC6FD1C
	for <linux-phy@archiver.kernel.org>; Fri, 24 Mar 2023 08:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lg4fzlxLRe3tLY89KIkxtZolYegEsYkCL/OMd/SkS5Q=; b=X9Yf6wnm0uYliW
	gIV7Xj8Ml+9KghTgGq7Vj8ztLpGQ+TOwxDvTYjMElAg/rxLjpMHW3y+6KQ0fIQ+AZbyhAAbCPlsvA
	P3ZgLxD7arT7iA8XT0+8dokMhVn9sJUBVv4Kibt0mnHEhUY3QQI6U0DX6OnXEkPgffFeGLbRPLm0D
	Axw7YRXV0q584B6jt/1SoNXZaiOz4D50mBD3tm7uJDTc57cxI7BVmZE5Gv8+7fJ8MGjja1DziAgq6
	IImQwQCsruPLUOzhDy1o5k58sG77+oveT277nl9Gh/NRxrdqSSGK+KKeRZ0dIsJ4mf3oCKugo+q6Z
	DpUisH48gfuMBAVsCYCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd7e-003uw6-2i;
	Fri, 24 Mar 2023 08:50:06 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfd7Z-003uuz-20
	for linux-phy@lists.infradead.org;
	Fri, 24 Mar 2023 08:50:02 +0000
Received: by mail-ed1-x52a.google.com with SMTP id x3so4860823edb.10
        for <linux-phy@lists.infradead.org>; Fri, 24 Mar 2023 01:49:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679647797;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DjhqcYRQohKWjL8txB/9vIdc1uHfeuQUOI0lOTwNUNg=;
        b=J2SXK8WAFr9syAWNxzP9UEGgumD280cRNlVZyCO+9N7iFHr1B73zA9cUvLewnou//P
         gFsyTvm6qUhFJTtw+qbOB1cHscEMO1v9t4G0+yKeeDToJgYJ4fh49v39Jk9xnLZpqT9p
         vf9EqCHsSIkqeDAf57+YAE+LLg0Cmdb20JvAyFGj/nalNvz5L9C+sWaMfsi2s8FKC6Kt
         nxJhLSPdvHUoftvneqrjoaXmwpx5heHOu3xIwGQU64r4iLVlpv7DIPZnVk7tiUX1Ht41
         QCygOrlMj4BlB4Fo5/vsr95M8ICYt+t8SaBkjR9Hvu7tXUPoFWXW8uv41rxN8Ew1k1Uy
         /N3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679647797;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DjhqcYRQohKWjL8txB/9vIdc1uHfeuQUOI0lOTwNUNg=;
        b=uxhfucAXw1GnsRGoAC4bwEhaR3wHsRr4E3BboktwkBwmwXdAUoNfmt4Ly+Fa3zQTe6
         m7p/fqqEtFMT1Fnog4EVxB3Ev6ECF3ngph5gHq+F7pspy2bBXTfpmMs5RmTpf39f0niN
         sSvdrP2P0grwTqiMM/7x5+5v4p2BDfeKHJyRi5j0wwNYlY01XPS7aK8J8iAeIKzY3EBO
         uNY+SQjaoTRIcH3wSMY6+CawpLKXEAJ2NXS3PYKSt2FmVtG+Qa/tGCNL+U/7nRnvbJ71
         JN0Zro+x9tvaC5S2l2cvDa0jkchKT/UatAHosj1/UtcWGcMcmnuvXRdW5j29588tBYn0
         uhrQ==
X-Gm-Message-State: AAQBX9csN0XzsAgkdnFDYAknU8wo+V5WCvCgrZB/dP+Ei84BMK0FptBS
	o3994lv07MViYSVnKYbKLGXWOw==
X-Google-Smtp-Source: AKy350Y+LY978FHmR3PiWftX2mZjZLU8WMQ1HS43y2EM2peLkGLhVhwK0ndpXL1vW0ugIcOfXsNRJw==
X-Received: by 2002:a05:6402:10d8:b0:4fb:2296:30b3 with SMTP id p24-20020a05640210d800b004fb229630b3mr2327474edu.15.1679647797427;
        Fri, 24 Mar 2023 01:49:57 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ce50:243f:54cc:5373? ([2a02:810d:15c0:828:ce50:243f:54cc:5373])
        by smtp.gmail.com with ESMTPSA id x2-20020a50ba82000000b004fb30fc1dabsm10186429ede.96.2023.03.24.01.49.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Mar 2023 01:49:57 -0700 (PDT)
Message-ID: <cc26c4a6-a498-ebb8-1fe2-548b6a9ca58e@linaro.org>
Date: Fri, 24 Mar 2023 09:49:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v7 1/6] dt-bindings: ufs: qcom: Add SM6125 compatible
 string
Content-Language: en-US
To: Lux Aliaga <they@mint.lgbt>, agross@kernel.org, andersson@kernel.org,
 konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
 keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com
Cc: ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
References: <20230306170817.3806-1-they@mint.lgbt>
 <20230306170817.3806-2-they@mint.lgbt>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230306170817.3806-2-they@mint.lgbt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_015001_666203_C01A590C 
X-CRM114-Status: UNSURE (   7.95  )
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

On 06/03/2023 18:08, Lux Aliaga wrote:
> Document the compatible for UFS found on the SM6125.
> 
> Signed-off-by: Lux Aliaga <they@mint.lgbt>
> Reviewed-by: Martin Botka <martin.botka@somainline.org>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

I have trouble understanding why this patch was not applied... I don't
know, maybe it should not be send with other patches.

Or maybe Rob can pick it up?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
