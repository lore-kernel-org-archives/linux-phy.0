Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C89C7114A
	for <linux-phy@archiver.kernel.org>; Tue, 17 Jun 2025 06:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6QnVJvoJY2hBlkLUruBjgQ0C6ToZLD7fiYPUqm9hBQ=; b=ZobRW2KWJwB8x5
	t8dsCZeH1pVvmUbZ+B+JhJ4htCduA36HR2mT25Mirt7ikdttDm1I3rwxSS1IiuosbsIlQKQz3AV4h
	SzsG49hoxV7qJQFb2iwlN+hEhUJN1xIH6VqcAfNk9MzF7I7JwiMUfQECsIPT/9MDwxJjIeE7FcPOK
	9DAJrwalj+HjkgxWcu/1hnJBmdK6aWtfPWOnjJUc/k9QN2IyeiRr8ZcYN7RIaBPHbjfaZWhHmlnpL
	CjX5R8cwz9e3tWKgUhvDcybScxH4Dsuu2XlV1o2PBVdm6l4fLxNpfVYGa1JK5CK1d0tyLMevMEpux
	BbYCex0hHTVBMn3Op2Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRPNZ-00000006JHr-1ogh;
	Tue, 17 Jun 2025 06:01:05 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRPNV-00000006JGF-2KVF
	for linux-phy@lists.infradead.org;
	Tue, 17 Jun 2025 06:01:03 +0000
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3a4ebbfb18fso592725f8f.3
        for <linux-phy@lists.infradead.org>; Mon, 16 Jun 2025 23:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750140060; x=1750744860; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=3amWnYYOsSXKV1aGWt/S6iSzIIDj1ujFQXJkK0yqFPs=;
        b=Owr+fvpFfBdcmnIGKXzwbHl3fhtzBClfYGh9KHDxKUtzRgIzBwmoS98vf+fjLdB+V/
         OcyheoaxGgrHD+Jq3QP4FyTGakKzXHt7BJetbq4h7dTJ/xkJjPdTwljwLWA+OHppo4k1
         QZwFNdaw5E/y/qWK/NHOD5Iny/AtaePB0wx1LyYF/P0ZYFJguiLfGYpo66lGTM8mI9g8
         WPo8RsKc/3X7+hOntQY0Pf3CQSxJF54y+2S4eNSxuqq4qEUs4YN3OzluMj9PA74bIuF/
         S7yclcM1+gqgDp7JvFgHrnrybAe6p75zMCdpu5zJ6Ife0lhp4slGAig+J0y8/FoewtCM
         fVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750140060; x=1750744860;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3amWnYYOsSXKV1aGWt/S6iSzIIDj1ujFQXJkK0yqFPs=;
        b=LPdhR11vxq4kUsCUvEDPraRoOVlhc8BcDEsMYy24jneoNIvQAZnLOtaxGdovCpGh5L
         yNso15MSVHDhTHwkmpWtsC2O5zeffcPvhbt+XWvXqC6Pbu+7YMf0UN8jWspjlY8s2UQC
         LN4O/ziY6rDz2Oi3uYbmjKiURpNegXJGSBd7ZvPVOsmfnAt9Jrod71+GO5yGzgCefLEz
         uYgCj7cWTZdfZ9c1/dTwdEruYX4bURB+AXIqJWHWzvCyHrq0t4YV5M1QJDMkRyZznIy5
         1t4TPe1jwsKTYqPl4tDpmvVF7CeRknOpt6HJ2zEHIWeyhdSw6p73iwaNex1+hsQxCZpy
         lPfw==
X-Forwarded-Encrypted: i=1; AJvYcCUoJ7lO/7U7e9qZ3uzA1Q4/QXhSURzflAxrX++4AqlVUtv2r8ln5nunNx0tgAePo2in8/tzrOdS4as=@lists.infradead.org
X-Gm-Message-State: AOJu0YwvB4fSnAGu3XlOicDxIU3DYPMvWrSxr+jJSHygdBhtSfuqO67s
	qwe6gr/SHSddvCOM/fJ3PLD71hXSEaiJwGB6U4kV/ltBwEFOQfS6tZLqbW9iMUhESvo=
X-Gm-Gg: ASbGncs41M50YSJGLvTOO9KbunVJfI1vf/E8imH3irpTGX2NFYwYyx6Gagd4OVIgd5U
	z7dWRn+jMzlJMSo7u6C0J+6C5A7ujW697MHln7i+mH7xr39Ts+HOYiFxUm0leA6bMrgY/zjamrk
	A0ZtqPtyjhNEc/Rr4w/XH9SQ1fNidFkEAN5QL0WQyBMxki2cJawhm3LdukBni1DZQAoeKdzWyaf
	hMy+EohqTHLGfnTFLkk8W/KcbLKHmlxhndwZQBXKh+1JpXiPAkoGWOWTongdLwM1jo4s4rqhu9a
	+FUuLdeM12rnYnzDO0r1Gyp9WQTnd2wunoN1JEdaRnSU7ZHWWbmSMSWVY4XXADo1fiNdJJnf6y8
	eqSEpFmE=
X-Google-Smtp-Source: AGHT+IE6/ujC8RvWh5QEdjZlVKo5xpSWeWU7pqeFIYtGV6IlnzxpN1wOBsHwS+VTpsb7nAoRLJMnOw==
X-Received: by 2002:a05:6000:2701:b0:3a5:7991:fee with SMTP id ffacd0b85a97d-3a579911341mr1949524f8f.14.1750140059996;
        Mon, 16 Jun 2025 23:00:59 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.223.125])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568b4ba58sm12860919f8f.84.2025.06.16.23.00.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 23:00:59 -0700 (PDT)
Message-ID: <f8222e9e-0c0a-477a-be10-a340fb5fa4dd@linaro.org>
Date: Tue, 17 Jun 2025 08:00:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] phy: qcom: qmp-combo: Add missing PLL (VCO) configuration
 on SM8750
To: Vinod Koul <vkoul@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Melody Olvera <melody.olvera@oss.qualcomm.com>,
 Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250616062541.7167-2-krzysztof.kozlowski@linaro.org>
 <aFBNxvggJXYKQ4d1@vaman>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <aFBNxvggJXYKQ4d1@vaman>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250616_230101_663619_91EFA963 
X-CRM114-Status: UNSURE (   9.21  )
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

On 16/06/2025 19:00, Vinod Koul wrote:
> On 16-06-25, 08:25, Krzysztof Kozlowski wrote:
>> Add missing DP PHY status and VCO clock configuration registers to fix
>> configuring the VCO rate on SM8750.  Without proper VCO rate setting, it
>> works on after-reset half of rate which is not enough for DP over USB to
>> work as seen on logs:
>>
>>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* max v_level reached
>>   [drm:msm_dp_ctrl_link_train_1_2] *ERROR* link training #1 on phy 0 failed. ret=-11
> 
> Hey,
> 
> This does not apply for on phy/fixes
> 
> Can you please rebase

That's not a phy/fixes. It is a patch for next, as pointed out by fixed
commit.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
