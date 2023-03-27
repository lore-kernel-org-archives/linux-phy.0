Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30FA9C761A6
	for <linux-phy@archiver.kernel.org>; Mon, 27 Mar 2023 07:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52qeryy5Wf5bnYNl4MF0xeriPiqI97/14XM2HnCQ4zo=; b=rLLDUOueNzsoz8
	qRN1iFzZGvlXc1hVE0Z9FvI7IN++f3iw2YwvA69/GdAf610xkWJnfCjfVSZPXfywYl2JrjybyntAW
	fRZvrhX67+r7Q2c3MWifhzK8MIie1AaQ+vBFnWYb/nw9zJixmUhbpGuksZyYOGQXWe14NEYCrumUB
	Cex0d3Y4eayEbcvaOkwMxLpioH1EhYmxVGUEJHVJVSCGl8LABhkxHr/ggKeP3qr1hVPLZKAhDPjF1
	qO7gAdOI0DoAgS5doNJ0Pk8Kw+dJCYJI3AC4hZYg7lMaYeaS5xj0+JYbCdsGB938AASmfAPco0aPm
	i0vCdlN3P+4lwfVdGrDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghgS-00A7pE-2n;
	Mon, 27 Mar 2023 07:54:28 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghgP-00A7o5-3A
	for linux-phy@lists.infradead.org;
	Mon, 27 Mar 2023 07:54:27 +0000
Received: by mail-ed1-x52c.google.com with SMTP id y4so32182880edo.2
        for <linux-phy@lists.infradead.org>; Mon, 27 Mar 2023 00:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679903662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G0t3ruGYNkMf76KNcTUJPq9yBYl9XCBc+D2thkRyK74=;
        b=yIGRWZzb1a0x2vaMpxaEXhh9fvn8mSNO3iibgj/iasgabDhJBeUnpUkrjD3Y7QeKz8
         9jQo1x0ep2fQyLqNSqK1TyobPmPIIHIsbmQ/7a62BeTgNede+XrtNa22wenOXCniR2pO
         aFLRXJ4X6mmWadBwXU/0zNhO/QLPYaz1qpyMQb+bV/sEko09gfHR+7MHHceQG9qhkygN
         z4pOJ6vZALIsrE8CpV69C4nIVmfZPVZ0CejZ3lWeG+HpO+i7r1KGBXSI7BpVnAM8SnKY
         PXfdzS8pim3KJy0YmIW6KASUMy8jkCAViwAMl/IBtqgrLy6Hb1HaJpJxAYAZyqtSvQfE
         HWAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679903662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G0t3ruGYNkMf76KNcTUJPq9yBYl9XCBc+D2thkRyK74=;
        b=7wkiWJ3jil6QFfqAmpBsvn4nMG2y2CiTBouUP/fE762SCuBw8jOxPzRt7kPQpYoNQF
         gzh2AgOsnTJI9VBPr9VfEu4JXFPbxiJJEmIaVNB0eeOrj56qj47ZRM85LAYoWBp4gwa+
         9lb79ZeJRk71h+3MRkyIyYVGv3dFF2UHwc2+iCruGSlL2qjul9iGV/695NSLm7+qypku
         vAOgYmVuot9a5+ERdRLMBvsCObfB0H1cSzL7gb17F7Saa+/AGF2JXooy8s3YQzMVdHq5
         HB+6E/pdiMVff5sihnCZ05Y0pq3itC6Kmd/havyEUdro2GYg4ROYqFymK3J6nNN0tUfT
         oRZw==
X-Gm-Message-State: AO0yUKUjVfHupfF/jUXRNEVOCtZCg3d8XH4Ss72EkGZWf46IH/G+vbfn
	bm2WMmoG7BNblEJiGVKZe0ne5A==
X-Google-Smtp-Source: AK7set8BX1ahhN81AgayGWjVpXDh3cPG8DY8Fs/MTLHdB7ZdkxDvBNYUAmbMfeEeNBfqsd+JpdMQ6g==
X-Received: by 2002:a17:906:79c7:b0:931:54:f24d with SMTP id m7-20020a17090679c700b009310054f24dmr16136837ejo.22.1679903662319;
        Mon, 27 Mar 2023 00:54:22 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:198e:c1a5:309b:d678? ([2a02:810d:15c0:828:198e:c1a5:309b:d678])
        by smtp.gmail.com with ESMTPSA id q18-20020a50c352000000b00501d39f1d2dsm9868277edb.41.2023.03.27.00.54.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:54:21 -0700 (PDT)
Message-ID: <4ade1709-1310-a556-b9b4-2cdbcef02e94@linaro.org>
Date: Mon, 27 Mar 2023 09:54:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 03/12] dt-bindings: phy: qcom,qmp-pcie: fix the sc8180x
 regs
Content-Language: en-US
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230325122444.249507-1-vkoul@kernel.org>
 <20230325122444.249507-4-vkoul@kernel.org>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230325122444.249507-4-vkoul@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_005426_021254_D6B05F54 
X-CRM114-Status: UNSURE (   6.57  )
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

On 25/03/2023 13:24, Vinod Koul wrote:
> sc8180x pcie phy requires to describe six reg areas for the phy to work,
> so move the description to the correct place documenting tx, rx lane 1,
> 2 and pcs and pcs misc.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
