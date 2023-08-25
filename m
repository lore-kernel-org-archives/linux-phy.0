Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A7C2C71133
	for <linux-phy@archiver.kernel.org>; Fri, 25 Aug 2023 06:38:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGfZGYmItEM2y3a7mafhnoXh0VG9iZ1AlJEzKT5KZdw=; b=t9efUKuAKR52bo
	APv6iM4JBBcjGahkI/WElBwZODtD2droGuQAxXckzJzcRN7Cb/sIASqeORgQNLYGvcQ+KtiRc4zb3
	ME5r69FFnbIxc4Ls1E5rJVbRxe/iZ4kyGdqy7ga90rAsDflMCQd4JPms4GwtBXr79vdLFW4rrxz5S
	hhDsDxs1O6vvM4VDaAkxXhrqTRwjOAp+6bugiigYjB7/xT3pc8YfNoaz6AoFw1qG7zD9wNK0q/iHB
	pl+Y/b+WTz8rjc+n03sNsRVpVp9baItI1PBDWvSP0+R7is0qnc7kf46yUo7xwHJZyIISn0AQdCqJi
	wTM0AyabW+4KB7XV99Cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQSG-004TgD-2n;
	Fri, 25 Aug 2023 06:38:00 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZQSD-004Tfd-2V
	for linux-phy@lists.infradead.org;
	Fri, 25 Aug 2023 06:37:58 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52a4b62c2f5so834113a12.1
        for <linux-phy@lists.infradead.org>; Thu, 24 Aug 2023 23:37:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692945475; x=1693550275;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5+0GSay6taxycoZO6OBj1m5ETfkXUUoJMPJ0/kOmu9w=;
        b=fbgaqHCOPQ9G60i+iwMr9mzCZhZANvvhX/VAcVRVlYoK3HTFs7mIvgMHuse2DD3845
         Zcyl7SmVY772U3pT02yQ/hAxenx1AyDgtmJqq/Zv0k6fQW49otImf8/mjyYplk+12Ghz
         t5XDFLFFFoGuy8Xfp7lYhNEMinmswlEAVLjbEh2sF/Wo0moxzQfa69enb39ZfPbigQ2R
         +bYmhNiJyIPWpXinmAGYyfVNvgFsz02/uI9ark2nQfrNAkVlj49HwLMKwbXzPtFxR1dS
         aihIUh80NEzZNhohGcoigA2lumLB/4/5wHuvSVyFJKg0tzR3CNOOSg/kkTa/dvIRZEwt
         CHaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692945475; x=1693550275;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5+0GSay6taxycoZO6OBj1m5ETfkXUUoJMPJ0/kOmu9w=;
        b=A1VYw86obkwifedhl6Lr+0f33uzrYJUjTFyHlX9RwDSATk0JQ1fgjUCl13Dya7Rw/C
         x+KNG/RN6kgHnA14/Fpv8JkKJT/c5JkzBq+oCy13Ww+m2wapUp+CLNavqsP9HBDBgpka
         BEWkOfhsZmXvDkpLb5rOs3lLb/N2BrA+vfG+e/h67A1Ibi5jbDqa9mP/N20VAyZtf7zT
         S6Y1HMDNeXITPaeEz6H3zCkGUH7B2SSUXs0lUXtoWuoQxSeoAna9t5S5JOrSn8CFnl5x
         COZzrRvCbxz/P7nRcvAKrTlVe4GZzerJi81wpt0clLnCHe6VVjH9iDKCZOEt9L4ES0Ny
         z11g==
X-Gm-Message-State: AOJu0YwD5lFo589li0NFFjSEcnhSwbAeRMWLupoE6hosS7GiaJA5utdg
	a1O5c+ASoBaFThTt0i3uwI3m3Q==
X-Google-Smtp-Source: AGHT+IEypP8YwF3zoacWp0xHNurKmkvB3OGpiijSl3m27OY1zGiRUfgfDWioUJnwQYSII3jRGVN2mQ==
X-Received: by 2002:a17:907:788d:b0:977:befe:d888 with SMTP id ku13-20020a170907788d00b00977befed888mr13159727ejc.13.1692945475666;
        Thu, 24 Aug 2023 23:37:55 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id i9-20020a1709061cc900b0098e42bef736sm596537ejh.176.2023.08.24.23.37.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Aug 2023 23:37:55 -0700 (PDT)
Message-ID: <18fbfb35-fc8f-5062-859c-152d3ef933d8@linaro.org>
Date: Fri, 25 Aug 2023 08:37:53 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v3 01/16] dt-bindings: phy: migrate QMP USB PHY bindings
 to qcom,sc8280xp-qmp-usb3-uni-phy.yaml
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Johan Hovold <johan@kernel.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org
References: <20230824211952.1397699-1-dmitry.baryshkov@linaro.org>
 <20230824211952.1397699-2-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230824211952.1397699-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_233757_818523_5370F20E 
X-CRM114-Status: UNSURE (   7.28  )
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

On 24/08/2023 23:19, Dmitry Baryshkov wrote:
> Migrate legacy bindings (described in qcom,msm8996-qmp-usb3-phy.yaml)
> to qcom,sc8280xp-qmp-usb3-uni-phy.yaml. This removes a need to declare
> the child PHY node or split resource regions.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
