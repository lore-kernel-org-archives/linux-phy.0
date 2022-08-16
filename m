Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD083C2BB41
	for <linux-phy@archiver.kernel.org>; Tue, 16 Aug 2022 13:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YAzmxK5cHz+HP8UTD9ingWawQUUdoAuKF15SixfYKDI=; b=WiowD8okq25SUB
	G0iMYfvXAPLytx7o4Ht+eqMZ+3nLTZx0R8YE6thpCBqiTo+QYzFN/f6qgxXXe/Gnu5R4NZw6Ax79G
	5EOdozwpFP3edifvUJ1VjcqOVeldv0wh/lRxejmgZniczCZI5D79JYg/Jw7gdNR9apvBBGVh/hfTj
	zhUz7hfk5PUxvW1SeG93Y8p5GgvVIMeLgD3PLy91DdHL9JTxJlplFkYB06WZAYaM7yaOPoDJp/OvG
	x2O7pxSYOZOCUUMspQSLsRsnXblfSItv2HhrM3dZQ7oy5D/OlLSDjqBac5M/UckvUG9OB+C6tSBEB
	N0M63EsJ87GQyJIFXWTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwV4-002mry-GT; Tue, 16 Aug 2022 13:20:54 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNwQf-002kAa-7G
	for linux-phy@lists.infradead.org; Tue, 16 Aug 2022 13:16:22 +0000
Received: by mail-lf1-x130.google.com with SMTP id u3so14867073lfk.8
        for <linux-phy@lists.infradead.org>; Tue, 16 Aug 2022 06:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=WpveidhoH5bD/0MSr6APaKClQAGOik9LoKqKj6TsJ5M=;
        b=wlXhVABb6DuNOKMp2jJfTsQeCgWmlpjO9qhyw6ILpgP6KITF7+3ce6xYpIJ38wjz63
         DOw07+Ehyxq5EeY/KrbgtM/JfK1iY6Yydfsyjgngx9KFx2KLKOKPDhEjR4izgItAKeW4
         H5m3M2KjqATWIojX2h9IfMFgV9mV0Vzg2RJ1V6F48oiV50l9pZD+sHRUWZ154e5Yhy9D
         pESu0aK87HESTVXfXF+H/ZwJLvqz4VuEganMjk1MmiHWT5Ak6dbIWpH6SZurPArwolXI
         oZrxdh+tN3RqjvUFDT3cZnT2D9j8qu1XlxicqKHI9zYz/B/J6WVdhgJ+4rpIWuEBO/P8
         RjGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=WpveidhoH5bD/0MSr6APaKClQAGOik9LoKqKj6TsJ5M=;
        b=6w9xBx9DjLAtXNX3pHWgCVfjZ/R13mh0PRug6bs+3gUK/4OHBt/sUm7Y2JoduVyv8C
         SRi+3/U4p7pIvsHmO9bdz2uQgCk/dH+/Qd8EkCTpDrmnXorC9kTfOoFfyehrEwwfz05t
         NAy4ncY5w1WViEDpstz6357Cs6ahtkMlwOLfKPoznx5e5r9m1squ+ZCXX4lHkJU5aFjl
         IFPZmKBW8ADgCNXPDz2ETgu5u/6h7spgHeRKK72NY8oa+jGsAsImTjP62ElvEJaEknJ7
         4k1lEd7nXR8ARnN94UdA9Y8BdBR8vFILrhvHV0GeV+d5hT+Dl/4emopna9tY1i/QNrQ1
         hMnA==
X-Gm-Message-State: ACgBeo0N6xMtULMnlQQLEx7EGF6MeOxhDrhx5uwm/ugMe3RKcE7poMw1
	WioJHwFsiiJaE8VftdyuD4EnSQ==
X-Google-Smtp-Source: AA6agR5tgahZD6sKKJ5xtAu8W6AUYS8nvCvK9dPEE95gFwW8UrWV5Xo6lBCfR/k2wtwRxdZ0rNth2Q==
X-Received: by 2002:a05:6512:3d25:b0:48b:562:162d with SMTP id d37-20020a0565123d2500b0048b0562162dmr6575622lfv.684.1660655778779;
        Tue, 16 Aug 2022 06:16:18 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id q27-20020ac25a1b000000b0048bd7136ef3sm1386448lfn.221.2022.08.16.06.16.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 06:16:18 -0700 (PDT)
Message-ID: <478dc6a0-99b5-a3be-1358-d29fec28b3dd@linaro.org>
Date: Tue, 16 Aug 2022 16:16:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: phy: Drop Pratyush Yadav
Content-Language: en-US
To: Michael Walle <michael@walle.cc>, pratyush@kernel.org
Cc: devicetree@vger.kernel.org, kishon@ti.com,
 krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, robh+dt@kernel.org, vkoul@kernel.org
References: <20220811063840.7670-1-krzysztof.kozlowski@linaro.org>
 <20220816131041.1771872-1-michael@walle.cc>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816131041.1771872-1-michael@walle.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_061621_342220_21B5C4C1 
X-CRM114-Status: UNSURE (   7.74  )
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

On 16/08/2022 16:10, Michael Walle wrote:
> [+ Pratyush ]
> 
>> Emails to Pratyush Yadav bounce ("550 Invalid recipient").
> 
> FWIW, he updated his entry in MAINTAINERS in commit 92714596cdbe
> ("MAINTAINERS: Use my kernel.org email"). So I'm not sure if this was
> just an oversight.

Thanks, I'll update the patch to use his @kernel email.

Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
