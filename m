Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93F6BC35274
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 20:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzUsIuBw/CpOlhW3HRLpYfFod2cNItTWZGRxRWOGXGo=; b=zpj+wqB7xQxNrP
	IkTamfOp8R7OYIo0ZPu6AFem4d2HU5EUNzSMKH56VFaceDu5AsN/S5GF+NNm2DC/zryppIv6/SOKG
	ja5vA2p29m23gvENCCJpvYAuPiuilFlAy5LXj+w7zoPKFpIcCI0ckzjDmdrSPPmovW9bGkOElVoJy
	5iwXVIZA0r/4+6XqY6oyApt4IsRgZxnD1WG7SRJS8Kggsm82ZRYtSC3dYdTzAeEmSjvRwrlhoVwSC
	R5IOXZ73DX11wkbVXmZEKfteO4oCUZqqbCFFFa3VlKWndw/NmRQbH/vTey7bgYAGqGX/aiSuqH5fM
	sWUxMSPm/w6qayJMn7Aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGPlC-0042TF-12;
	Thu, 21 Dec 2023 20:35:14 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGPl9-0042SH-30
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 20:35:13 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-54cd2281ccbso1421350a12.2
        for <linux-phy@lists.infradead.org>; Thu, 21 Dec 2023 12:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703190909; x=1703795709; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3+bnCfuqypwFonnfISUOS9qyfCdx/0Td8/OjPLUaArk=;
        b=zs5Ue0kR68OpMQxhZTeH+EMRyWQoQTvEftfZgNEzxzxPuC8njhOBVgUEhMCfEvmnuQ
         d/CyYUAttjhEinwGeO2Nh7h2IlvQ7H+piVsxTwF2f6F0rKSbeesX2LEhu+CpjFpy2uyQ
         BWTGmKzCpx2zv1MlrBFUOpWBJ1Vr40Pw4renJYkwglEgnPrv03aKiY4yMz2G2KemvJpN
         RN1hdFmA3Bs/CiOSXSJOhv5NK2vwFHzcJMOzs3h9vOvYRF1Z9AZikSJM+dzUP9GO+o46
         L0WDlRcSDTUzymv2skpjM8hiG744MJ8u7tHuqDZHIGJMsvdNaBZrZKVc+IDkRPN8XDu+
         k9bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703190909; x=1703795709;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3+bnCfuqypwFonnfISUOS9qyfCdx/0Td8/OjPLUaArk=;
        b=SJvP70Ql6pxaZWaGRJOHG+g9/LUHNQ5+3ZFu3aK4xF4WUn8XoQ971/rR5Rw+WCPksZ
         EZYSAcAkMPbSFVxCToiITvR6I6LlZWf5gvxjoFJ61PX33A1rSgDz+8PSyBaHbVd8ywi8
         r2Zttf4Zx+2uUjKg9yZ9/TkX7l+XHqZ3udCIMQPFE7mtB1xiLXSF/oGvU8x0ZgSLEfjU
         deAcDyJPyokGLSPo/jGyeRH2lkCgcONGeBGTF0U+Ksukwqm53X2sNxQo1YEK5UtAn3G2
         k+qPcRpyX3S5NIkxWHQbKR+RtLMgvgTQCqlgpdPS9fcoCmGkqsGmP2K1t0F0H31QTEWd
         m50Q==
X-Gm-Message-State: AOJu0Yz3GCygXV1vKj03smrJcZq0rrjn6DY9AcRTy5XrHRWzC9hJhE3K
	WdR1biGbgAeSk4ojZRU/0BY8l2SDNbH13ku8HLj+Y4CbP9o=
X-Google-Smtp-Source: AGHT+IF1+XIgEDWCs8rjHGs0cOBiCtU2/PeEl/J3hSteSXmbdj6lcwTXI9Ap0rtNHUCLh7nuL5X1Ug==
X-Received: by 2002:a05:6402:b0f:b0:553:886e:9896 with SMTP id bm15-20020a0564020b0f00b00553886e9896mr87365edb.70.1703190909607;
        Thu, 21 Dec 2023 12:35:09 -0800 (PST)
Received: from [192.168.0.22] ([78.10.206.178])
        by smtp.gmail.com with ESMTPSA id bf25-20020a0564021a5900b0055286b1bfc2sm1620741edb.25.2023.12.21.12.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Dec 2023 12:35:09 -0800 (PST)
Message-ID: <e2a4b1dd-1975-4b7a-a432-2b5b06ecf653@linaro.org>
Date: Thu, 21 Dec 2023 21:35:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: cadence-torrent: Add optional
 input reference clock for PLL1
Content-Language: en-US
To: Swapnil Jakhade <sjakhade@cadence.com>, vkoul@kernel.org,
 kishon@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: mparab@cadence.com, rogerq@kernel.org, s-vadapalli@ti.com
References: <20231221162051.2131202-1-sjakhade@cadence.com>
 <20231221162051.2131202-2-sjakhade@cadence.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231221162051.2131202-2-sjakhade@cadence.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_123511_974024_7B0AE991 
X-CRM114-Status: UNSURE (   4.31  )
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

On 21/12/2023 17:20, Swapnil Jakhade wrote:
> Add a new optional input reference clock (pll1_refclk) for PLL1.
> Update bindings to support dual reference clock multilink configurations.
> 
> Signed-off-by: Swapnil Jakhade <sjakhade@cadence.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
