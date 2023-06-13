Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E84C5EB64D8
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 19:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EvKe9S5rsSMiFEPYAs9H3fR9iWLY9xidUEQYn3lkjKw=; b=p+WE/LuAmfpYmU
	xijwM96/GG4/7duyu66HQA2NOz1bENbXFuyze67if1LOAW7PyC9ggu8Q8vz3kd0XiG8BMHAOYBTSn
	msjiY+VYvkPbzmEDOJrEQqSqUGOBKbAJp8QQmiym0LUJMDs9gPdF/xscVicYxZoCYrHat18j61GD/
	0i0plXYa8cNBbUjYYshNA2PUfglXvXssrpdVNtq1Z7cp9AMEkL9lGTIzRSLkdT4pJdgzfDf74rN6A
	9kLm0zlHvkOZSh8fXmFwdQwSIL4N5ij1oAPcacF5w2d0ejmvbu1C2o54rvVkW0fV+ERfVDuRk/gdt
	PTzmw2NLUGPXJn15ffKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99Vw-008xRC-1Z;
	Tue, 13 Jun 2023 19:17:12 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99Vp-008xN0-16
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 19:17:10 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9788554a8c9so1018906966b.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:16:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683816; x=1689275816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QiIVN2qmRu0RlVv/nR9+1R3uiMi6fTBhf5g6TXOa9O8=;
        b=U6fGe/M2omiDprOWpv12kKu3/6ZFSlsbPlbVX9KwaJlLOpltC3YsdUr/KdBlSv2f16
         OAmzgOlbMRnGR6mXsoDsuaZRaX53NZLrxulbYg315KX9yMOyf0BEFN3u5y2gHt74MAX8
         l/W7nPzdEizeD3f1qXT+eWge0s8cQnJejR+7pEmYSdtYq7Ka3+/zHBD6GOEMnhBGGh6N
         f7U3+OOtutEAAu8LAo1nmwtyC1T7KDApC72cIYU1NKpOH3eBUTSBys4l4UIXyz6p8m3C
         YUvzA2KQoohs/3R6Z/RayXwdulTjHt/uTigttzrT6h3QuHAwgap+SKkcu4qsb6s9UXEw
         Wktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683816; x=1689275816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QiIVN2qmRu0RlVv/nR9+1R3uiMi6fTBhf5g6TXOa9O8=;
        b=aGiHR79W/KMSfT583qxUY0HUb1FIiEVMpEXFIo7R1uQXwDul7MLWzmwsG5Zrnrb89I
         0b5PItQMU7GrkDvz5UgXnAo8+M5S7WAgSUEpwIurifjG2pkAMn5qKLUQBq9x4iOkw73S
         z7thMqyK8D/JBJyaJS6i8yp9TlDdzVELfxhxLY2hM6lLY0odCfsGDFArox8kX2i1qcA3
         L2v5MiYYlWXji29NHKA+3pCVCyirCSiqu+O8/rAsJdgOzL3wmqFMRpsK7MSWY7od2IJn
         6u2d2VCPjGztLOnwbWHNJQwDv1yFJZnHmFfoZXTs/mT3tTvS49RHpLlQUlyBMfGKV3Qi
         4sNw==
X-Gm-Message-State: AC+VfDzo5rwHXeS1ZC1vlbYdZx799H32+56zIWB44uv8C6clawC+vP7L
	x+zFUhqYq7DUeBSpZGUnD0hyww==
X-Google-Smtp-Source: ACHHUZ5Xqkw6q8HvW4/ZuOo8wI/2E0FwC9XIJ3UNObKhGpgNEJA3xUKvTO2npkHCPJPOUQSSzoNhxA==
X-Received: by 2002:a17:907:26c5:b0:974:4f34:b043 with SMTP id bp5-20020a17090726c500b009744f34b043mr14352963ejc.1.1686683816693;
        Tue, 13 Jun 2023 12:16:56 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id ce14-20020a170906b24e00b00977cc3d37a2sm6978685ejb.133.2023.06.13.12.16.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:16:56 -0700 (PDT)
Message-ID: <f4c229d1-5dea-68f3-ca1a-28638f49d4a5@linaro.org>
Date: Tue, 13 Jun 2023 21:16:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: mxs-usb-phy: convert to DT
 schema format
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230613083445.1129137-1-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230613083445.1129137-1-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_121705_398837_B7A78B39 
X-CRM114-Status: UNSURE (   7.59  )
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

On 13/06/2023 10:34, Xu Yang wrote:
> Convert the binding to DT schema format. Besides, this also add clocks,
> '#phy-cells', phy-3p0-supply and power-domains properties which are not
> contained in txt file due to txt file lack updates.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
