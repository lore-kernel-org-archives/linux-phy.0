Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B32C433EF
	for <linux-phy@archiver.kernel.org>; Thu, 14 Jul 2022 09:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vGx9ZoeGI47QiuKeyRqNsaKQ9CKf8W2RJ8q8FP1lUb8=; b=kGDWzQHerJFMYQ
	d1gKZ+qnmKjJbkrcHTrStP9dxOPQpC0x2GUluAaKbNvpcshze9aDmmNQOqIeFK7Om9rJCww4JEtLc
	enXYPO4MpEIYhBZgLRyBahc0PHn56QMKch+sCc9HflH8pjrW+OnBsS57WuudRYIvKUFKYD5VKCbFE
	V+L8d8HH1vLDA9i/OvgRSqy3tUHXn4lgPtRo3ukXpQ+KtKsY7zWlJ7V51vQNo/jsBo6PgOsIfXA/C
	8896Etgxrobl93itZi8wnvS+Adl1X7xgZBW46mWHLXX+Q9xBarfQQyb6+uB9iiyexvfXlWLzt79cz
	S9R+g0aEjLOu+GCY06Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvDZ-00CtOP-0Q; Thu, 14 Jul 2022 09:33:09 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBvCV-00CsSI-Un
	for linux-phy@lists.infradead.org; Thu, 14 Jul 2022 09:32:05 +0000
Received: by mail-lf1-x12c.google.com with SMTP id bu42so1912273lfb.0
        for <linux-phy@lists.infradead.org>; Thu, 14 Jul 2022 02:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=qqv8VRNxws6KBp3n3JqlUE94PaWsQnNPeJTcW/Zk7KymYZX7T7kzAGVhLc59C3qlh/
         qulRUDcoyjV10n2ah8TyFSr2vEXvjiN3x8/RyNmP8z0G3blX//ngjPZQ7Yj5JeVcp5FN
         Ldlqh03s7WTVuguG2fVxH4JFARBX6Y5B16CsCvgLK1vGMM3URMXAC1rZ/1+aApfS49cM
         hbPwKuQz++OeyJcZhaRdnycCqWgBjERj9nfqySGAix7X1oxJuZL17naBCWNdL4vYNniD
         iu6dvXxReYpHt22xT+z5OUvg3zlOtLBx6TlDZK1vq9OKaf4fITbpDzIUM+r0W8Zrm3St
         IwHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qLoqEanmHmcOVGRPRRT+aRCQvQ8+n03ZqH5LbbY6VbQ=;
        b=zRJj2zCnjeTLvPw40eZVHpHVO2XspJ+a4Ko2E/8W815yimOhYBMMdoJYmQzitutMgj
         FpaDZR24+ydeozY725++RnUnNts3v9081vDy+RS60UlXeGpEJtxg+E83ziYUkR6T0Iiw
         lL5TrLVRryBAIfLWK1SADOWRIIwyApltFbVkWdjdK+ZuDe4L6dMMvYeFNMcgA3Td9qv0
         NSqKbgifQr6nKAMkgjJTzqeCpLuYzXQ6rWt2Ar3PPh1mPPpWpOgRKWdOs9bFB2QI6kxM
         xizjbcl780XFTkoOXgIpefOo57sy75a4LMZRBOc2Zwhdtga1IEwb6JNw3Sm4lhkAQAdi
         igMQ==
X-Gm-Message-State: AJIora8pI2UK7xqJiBhcwIqBfXzf8VS6B4h137z++u/lGsWEMi6kc2rD
	a6Ha7Mf1s6X7FSYIQRQSZ6tSAxxtybcsZA==
X-Google-Smtp-Source: AGRyM1tQqgmtfH0+ObvZ9P9WicC7fls3gdqpTXkF74E4fFHf2mZS8SoD7oxLCgJUT0sZDQDXxkXz7Q==
X-Received: by 2002:a05:6512:238a:b0:489:e6f6:c13f with SMTP id c10-20020a056512238a00b00489e6f6c13fmr4982398lfv.673.1657791122376;
        Thu, 14 Jul 2022 02:32:02 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f5-20020a05651c03c500b0025a724f2935sm184502ljp.137.2022.07.14.02.32.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:32:01 -0700 (PDT)
Message-ID: <2a7c5cb3-f7a6-8953-e16b-5675e62562e1@linaro.org>
Date: Thu, 14 Jul 2022 11:31:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 30/30] phy: qcom-qmp-usb: drop pipe clock lane suffix
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
 <20220707134725.3512-31-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-31-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_023204_076060_B44FF80B 
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
