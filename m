Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72C71C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0dsXv1i6r9dyC37UofKzEX3tvqEDUhCS0SPxUrtqrM=; b=REqrbUxaV6opog
	9SfQ4i6YuSKbSzYeGswpBus0nm7smI36V16aZH3jJl2VttuLqsbe3TXX5cf2Y9vUU+gGam5rob7LN
	BgPjeYZLhUUIk/N84hfqoT81zFzceuGkgRL+VLODDjKYqIuKxy3vNIUIrOtTUTwGJ0nRboLMCRgRt
	eyauO6LlcoVpOALxKiaiM/o+vyHq0S/nmati8WOZHVVRTWSJ3COHGOnjOV4fgcWXk1GqT8+TOlfxe
	RjHXfMSCyBQEf4kBQ1JwQy8sHpXzzCJS4kdJE0wm/vGJyyX7hOOqqFoE6AdWVhLhGq2M0Loy6P+vS
	RyRFU7GJhQNEIPQj7ayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxYD-001iZp-RX; Mon, 24 Oct 2022 13:31:33 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxYB-001iYq-C2
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:31:32 +0000
Received: by mail-lf1-x12b.google.com with SMTP id r14so16807595lfm.2
        for <linux-phy@lists.infradead.org>; Mon, 24 Oct 2022 06:31:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O+pnhwW99cTw7scNFOxjgNR2d5xs/7m7uEnUqhN6l+s=;
        b=jDOalpdueUOmeUwnu05qGLW/y828Wm+sQZXntgc7GyCmERl6bIu7J9N3+Q0pP0Y4LH
         lDcH8cFf8hmRTHgWxtMNU5PPoWhJc6/1A6O+J+yWIlhnvAmqlYJvIzME0XhaJKxwMV3+
         VhzejqBagdAit3133+yz9DS6ia/53neLcDW+z1wX0zv5HJUO7MQQaD3um5k25GWKgDEx
         kVDXbWl0cLqXXjnwZiMgCe6jxSJF8KE06RqF66/i73jVZbeRJe0FsHFE7lfyjYCYKDL+
         PcNXPaHgPW6gGOU6MjxLaj4QMafnyGUw6k/T1siKnfWq86023GwT1jBUpfVjLJdorMdS
         jDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O+pnhwW99cTw7scNFOxjgNR2d5xs/7m7uEnUqhN6l+s=;
        b=PgxpAvqXtCDcJfYzLUQHRK1ixW48U03xK3Ji1FVoKvucX+hZXAVO2961jwBAl6VMtW
         4eZ81hD1tohwm+j5LCZAJVfj7ax6XgtKrlyqEp8LVOZnTIF94kyWo0w1824AjuR2L3kX
         Xss+wWYISwQfMbOV4fwmuGx4ZaKudvsdLXEKqdIH99PEmbzNmcUp0uioToM+dTUPNB6X
         RV7AZ3AgSy10TsOGAb28RWEC0s0eASfumlQlAgOs8WbRtfxTbF2KGSd9IgTs4u3IA0NQ
         CY7WyikLhuv8IpmQHE289hPdVY05Rf5IifIlVGaa/7O/kAewR0dGpsQN2f4hpxq/chbv
         DJAw==
X-Gm-Message-State: ACrzQf2rDmwTgHbTu9mqFQbxgrOQzco+79qzmtzixpUHObYe18uFFlPL
	cyajEVSJ4qd6A4y0Qsfj0SeKrA==
X-Google-Smtp-Source: AMsMyM6ssdpW/5qZIEpdjhMs07kRdaLgDzCuGJsaVvkv5NJYgbzyQY/Bj+vUQy/fvFwJY4dckcj+9A==
X-Received: by 2002:a05:6512:3b10:b0:4a4:74c5:de39 with SMTP id f16-20020a0565123b1000b004a474c5de39mr11178530lfv.626.1666618289806;
        Mon, 24 Oct 2022 06:31:29 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id k22-20020a05651239d600b004994c190581sm1246769lfu.123.2022.10.24.06.31.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 06:31:29 -0700 (PDT)
Message-ID: <fc904679-d82c-7da7-5146-e964980551b0@linaro.org>
Date: Mon, 24 Oct 2022 16:31:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 06/10] phy: qcom-qmp-ufs: clean up PHY init
Content-Language: en-GB
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@somainline.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221024090041.19574-1-johan+linaro@kernel.org>
 <20221024090041.19574-7-johan+linaro@kernel.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221024090041.19574-7-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063131_437415_0EC13668 
X-CRM114-Status: UNSURE (   9.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 24/10/2022 12:00, Johan Hovold wrote:
> Clean up the PHY initialisation somewhat programming both tx and rx for
> the second lane after the first lane.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 8 +++-----
>   1 file changed, 3 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
