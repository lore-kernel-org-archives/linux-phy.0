Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C3DFC43219
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/bDgaRJsggAA1ChQBOUvCtFWAOZ6CDgF/XISRhs2os=; b=zRhp0Wt661LMKV
	BDRLXodxgVwWDIy10OLaQiZbP+5VVqqjX2HOfEFxMowgu0+0xy3IyWtWucp34WxbittaCG15nv1TF
	zKZaBDy3LRREOevxmLbIiDUvzcoTlP7e9XFqLyEev2KRWb/ZeIVCvcVlsOjCveZRMJLAzvmkfoEpH
	/rzaLBZ5tUo6wX8oYYm1KiwUWQwB6FQbCmBMiJoIhzJI0DxAkpXepSkk38ms8/L8JrPd+Q0EwB0Yy
	moh6BfuUbYkj7G6J397sFOSiCq5k1tSNwcCas+OFQzaMJJ5RReHTifyFyOWU1bxWvOPrZBchH51ai
	RFpTp8RF7jJ0tf4KSgPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibFt-0082SR-BC; Wed, 12 Oct 2022 12:54:37 +0000
Received: from mail-qv1-xf2b.google.com ([2607:f8b0:4864:20::f2b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oibFq-0082Qn-BZ
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 12:54:35 +0000
Received: by mail-qv1-xf2b.google.com with SMTP id o67so10370186qvo.13
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 05:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dDmIyNGRZCjISh+av2/snzsmNkw+/RdEmnVjrV7qdwA=;
        b=MPt8Sk/IUIwny690NdwVOgLL8ZVfyEMs5S7kASEpJ0In9Gdnbbx0jOOJYpZNLSHAJo
         UfUkmaj53Nf+Im4E2ME/WdlgtJj3hBQQiX1OWtKYjjMfHkEESXqV/fgBr2Pl/3UFch3E
         FWPUHJKNAHTaKUM/rSQUfbgkZyVa+Pf2oed3toInT74UiVbtnEtAoIpcG0UZc6DuRyG0
         8EQdrRvfzf5oF6TLBX5zj4klmfrQJz/fEfbDmGQkVtynKSukdou7aaImPwkV96s/XUOe
         WG1IPG/SElDMNwaLPKGtmKdCca1giXbgufzI6gGj7vKWPIyLCCZWmta3T67n56h31ChI
         eb5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dDmIyNGRZCjISh+av2/snzsmNkw+/RdEmnVjrV7qdwA=;
        b=u/vfWgHUvlpKAPo1NhrFx8BsJ6Qh9DFgulH5UHpekbPJu6SzfQ+jofGEz3+j3tyaPd
         JpBq/5Z/cpijv/s+qiczWcS2bmncQ7CEb3lIdB7pnrAmcjJXN5y+8QPDm0LZ6qYx6jnh
         I7qJumIDFc33NoLDqUO46MdTI844GcIX9ZyqXmfdBYR+NvgfE7+deYD6m9iXlv/4Xf+6
         TZWqOZdA8JYiSsoz2GXF2cffbSbh3RAtSVgnyMC87xsSrTNXSDfQUZ32a2+rZFxWHJ2i
         U1kD/9wImHKs+K1JVgBxnZM3fT3EqD1/NlbI7kEQOCT0ZTRrUnSZ+9OxxqOHF4bGQcar
         yy2g==
X-Gm-Message-State: ACrzQf3KB0AQShfnDHbE3xqUAiJoS8lzNA25x/6fw7emnRQ3npK50rfH
	14kVN/PKFtC8mAgU6F7QjVyOpg==
X-Google-Smtp-Source: AMsMyM6gdRPBXPqKgDCvHQLk4l/duVu5uvWiHfioon8NxNJCdExWX+lxL8+xLCfwXlLgSfX6NNfQHQ==
X-Received: by 2002:a0c:b256:0:b0:4b1:9f77:91da with SMTP id k22-20020a0cb256000000b004b19f7791damr23055272qve.84.1665579270431;
        Wed, 12 Oct 2022 05:54:30 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id e18-20020ac84912000000b0039442ee69c5sm6103773qtq.91.2022.10.12.05.54.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 05:54:29 -0700 (PDT)
Message-ID: <35369a53-112d-8773-f612-a7d409f81b8c@linaro.org>
Date: Wed, 12 Oct 2022 08:52:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v9 08/12] dt-bindings: phy: mxs-usb-phy: Add i.MX8DXL
 compatible string
To: Peng Fan <peng.fan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Joakim Zhang <qiangqing.zhang@nxp.com>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Aisheng Dong <aisheng.dong@nxp.com>
References: <20220607111625.1845393-1-abel.vesa@nxp.com>
 <20220607111625.1845393-9-abel.vesa@nxp.com> <YqDM0umwk6QizT/b@matsya>
 <DU0PR04MB9417A516C062EA7E40C9349888229@DU0PR04MB9417.eurprd04.prod.outlook.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DU0PR04MB9417A516C062EA7E40C9349888229@DU0PR04MB9417.eurprd04.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_055434_518047_E1E98708 
X-CRM114-Status: UNSURE (   9.85  )
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

On 12/10/2022 07:45, Peng Fan wrote:
> Hi Vinod, Rob, Krzysztof
> 
>> Subject: Re: [PATCH v9 08/12] dt-bindings: phy: mxs-usb-phy: Add i.MX8DXL
>> compatible string
>>
>> On 07-06-22, 14:16, Abel Vesa wrote:
>>> Add compatible for i.MX8DXL USB PHY.
>>
>> Applied, thanks
> 
> I would like to know the rule that whether such new compatible string or new
> property added to txt binding doc still is still ok to be accepted?
> 
> Or only fixes are accepted for txt binding?

Adding only compatibles is .

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
