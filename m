Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C353CCA47F
	for <linux-phy@archiver.kernel.org>; Tue,  5 Jul 2022 10:16:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyTirAwgAx/XjVvkLNvQDVQJ4T+DcoQuNtpDGliVXVg=; b=1Ysv9e/USTfnbl
	KXQCbqq2gx8o/nEdQUfitJtHWMeXx5uOl9j60sXG4kvOxXA5qNuy/q2T4S7BMnWc90apOd0/w4vwA
	/n1N0GwYpDrZliChOQqoXIv/WoIP9lqkZhb0dgH+1vJjZzzwnIdbulYwOIf5skD72YUcoFC3cPwYt
	CyxkWQUc3j6FpSK2c355pkItB/aoEii5sbkKtWeZHGbt5SS6nGZqM6hXSkRai4CUjALZInug8hz6e
	SsRfDyNhpy4BLC9TcU2zlnP+fOkB5Qoqm+rPCaMUvsxSYCFKwthRsvs6KHsSmQojvL/0o/6L3AeGa
	vQGqBiARHhkqrp8YL/DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fbk-00H6jS-Tm; Tue, 05 Jul 2022 10:16:40 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8fbh-00H6iJ-TK
	for linux-phy@lists.infradead.org; Tue, 05 Jul 2022 10:16:39 +0000
Received: by mail-lf1-x12c.google.com with SMTP id t24so19759994lfr.4
        for <linux-phy@lists.infradead.org>; Tue, 05 Jul 2022 03:16:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=b+6rgPwFe0tNl/NgxJ4pfhsoXmLTVZo2+aHYzP/37tA=;
        b=HrPe8TcKTH37Go/o2X9x8G18AE8aCa8pQANYkhincCYfHWu9j2+stwjpFIGVXvNgtk
         WgKkrI1+MRRRYcsRyX/uwMs91tpa9mbFKHoElk2NjLSgxti1yeCz8lp/2jEt2v3EOKeQ
         xHht6qCHzdzXxnv571QycFaxMGvAN+8xbdCWMJWy1M+mMAr0/6xEye45xTcfJIUJFQz+
         3lVib2MQMsyZJRNlT2tL94vGr7tLagzLuxHlW/qj8UuOMm4pqI+9rn1uckwMj7jP/7as
         1M1vLxfpbmMir+8hMFoyMKNK0V/E0PLltBOcCp+KwAM6GUvVh/oBPqtrvzezsbaSdOa9
         LZ4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=b+6rgPwFe0tNl/NgxJ4pfhsoXmLTVZo2+aHYzP/37tA=;
        b=RoD44X53crnygGTlTSZoUsFK1vdUwVtF7VXrBgIodMBZXwC5dV1GbE86ag2upjtUOT
         N9KeoT+uRe/NkV/7CMeICLy21ye07kDijAQ278XYjN5TeMwF/AwoEdWPF2n3tXFDpa3w
         IwV4wu1TFN0hml+7YCNoEuZTotF78Ef6XPtjgXt8pi+E+8j1fjWMmXH8Ii8hCjEuVs2S
         QLGGHbwzs2XjnwSucfOZtqUs/7M9CmIFiW/V4a4kMnLBgrhpanHOq5e4mx+u4jql6N0u
         8H3j0lwYOIUNb6TSMqkrWHfow0U10jB3qZ7h+CrUoZOC+oOFMTURH3Kx8nTh3EGoLy+3
         4iag==
X-Gm-Message-State: AJIora/dd5vwMrucMMjrg2ZnQbSB03aHKe74lU9L/aHqNET/HI40vcg1
	LcBX4e8qTEBkEJ5IErm0C9Ihlg==
X-Google-Smtp-Source: AGRyM1u2b+yi68OrYN6oZPBOKqn1kUsf6PZrDo4vaj7TdvAbPYg3ZsB5o6Xploz+F/eIOLJA/b8vTw==
X-Received: by 2002:a19:ac09:0:b0:480:6a10:4c39 with SMTP id g9-20020a19ac09000000b004806a104c39mr23692141lfc.115.1657016196146;
        Tue, 05 Jul 2022 03:16:36 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id p6-20020a2ea4c6000000b0025be5d48ae7sm3617093ljm.79.2022.07.05.03.16.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 03:16:35 -0700 (PDT)
Message-ID: <d3a49c05-0fd0-920e-bd0a-f821e8e27b8b@linaro.org>
Date: Tue, 5 Jul 2022 12:16:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 16/43] dt-bindings: phy: qcom,qmp-pcie: drop unused
 vddp-ref-clk supply
Content-Language: en-US
To: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220705094239.17174-1-johan+linaro@kernel.org>
 <20220705094239.17174-17-johan+linaro@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220705094239.17174-17-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_031637_997660_5F7131D9 
X-CRM114-Status: UNSURE (   8.47  )
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

On 05/07/2022 11:42, Johan Hovold wrote:
> Only UFS PHY nodes in mainline have a vddp-ref-clk supply. Drop it from
> the PCIe PHY binding.
> 

That's not really good reason. Either the hardware uses ref-clk supply
or not. Now it looks like you copied everything from common schema and
clean things up. That's not how it should be organize.

It's okay to copy existing bindings which are applicable and then in
separate patch deprecate things or remove pieces which are not correct.
But all this in assumption that the first copy already selected only
applicable parts.


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
