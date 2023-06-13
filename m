Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8089EB64D7
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 19:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ObcpG3jQPhp8cOvfERA6slGUv3e8uuaDQeSPagm/06g=; b=dtdPjbW5fwLshT
	VwOYUufVrcpzJjwWdiE7RVwdCZxOyigPBLANrERctbVwhDkUPGLlsrOlFKcvkRUS0R2ABEsV4GHeD
	ZhAc3UxRVjufwjpd+1Md6SVkaSkQPatOdv+nJovp7LLf4fdA+9kbo6wuw8/NrCsYVCSgM/beFsZtJ
	oJUmx8CXf9PzEWbGrtgCrTESbXieNe63wgAp2Asm1xWQ4lZ0vnw5gTEdFlaxGZVnIwJ7yreIlOIaS
	kK1tVqQu3RWiAWXBzlO/WoKXIvdpX7BmZbawDKR2Ax+iRT6Wo88D0WUQ5TAHT0/4Rq9+ueKgcNUGL
	pNDlPD5L+pUJoQpaw7ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q99WP-008xW2-1k;
	Tue, 13 Jun 2023 19:17:41 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q99WM-008xV5-1K
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 19:17:40 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-977c89c47bdso1037296166b.2
        for <linux-phy@lists.infradead.org>; Tue, 13 Jun 2023 12:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683857; x=1689275857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=93qZriFSRFXKcWPzylxuUuCclKMCIydNYI0fQlylMiE=;
        b=YqPr33OceNzDlHmWcCZ8VZkcvJcZxD4IIpSNePFd3i00YG4JKWk2ppEy1QGpSYA/S9
         egAWndeJj+c9tOLbj5tbvrmfOw6nW1ap3AmizpUOpYoNGndDCaxkSBaoI9n/2HCyjJII
         SVONdOFjrqyE7g6QBSkhGMGZYv1CQnfsQ7KQRkZNW50vXv4BLQCB+Hi4ylZM1gZImhRX
         jZXUWl7Hp9uw0O0GBwYYeh1STCE+rG1jRRhnjo2w1VH3FKFzkB/GOt1WGGYo13+Mn5Ey
         +E13zylpUFU+yRsue6SpzZ7ikDle7IUsfGeqZcDNvFTrRUrH30Vt37Y3i4IezDRv3FM4
         jWAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683857; x=1689275857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=93qZriFSRFXKcWPzylxuUuCclKMCIydNYI0fQlylMiE=;
        b=axG/r9atj5stFPOLjFWxy/CBTuEKWaJh6RECAR1OtFfhDVZE+/sX+tOJMN+9/E8/UK
         fGAMgA7R10+LMXDJVjOr4VzZnWNYUw+lYl+Gw2lVC8MO+7FrITPlNdR2OjGL93u+n3db
         jt5B1iG8D9Fspvl8ydh54oitUBerzofJQsXV7sNAXrM6XZhOVvIUZxlGLpwPtmG9GIiS
         4grUd4GEBd99AVL6zWePTGs3w97itgcuY+SG05puujVGwNBi/1mUlep85kQQ0tRF/v9s
         VSaec58FoRHo9tueWToBbeu6cFELWY9wrY4xGxyct4nZS85rWzpLPEcVVDW/e1j9j/zP
         FVfw==
X-Gm-Message-State: AC+VfDzWXgo39+l1YBv7G3R/SSD36t1biEDJ2l1o8VkpQ+f/0TvwiT1L
	16tZFikonyloI7wMAyTFktGw4A==
X-Google-Smtp-Source: ACHHUZ4UY2DC8kT7+5aDoOESAH1A6ED4BE58jwrTzmeHd9E9SqXiJLo8ZrtWO1FYNdZBlkD5mZ5ovQ==
X-Received: by 2002:a17:907:986:b0:971:1717:207b with SMTP id bf6-20020a170907098600b009711717207bmr15907519ejc.35.1686683856689;
        Tue, 13 Jun 2023 12:17:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u1-20020a170906780100b00977cad140a8sm7006621ejm.218.2023.06.13.12.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:17:36 -0700 (PDT)
Message-ID: <224e69e6-ac1e-70c3-c0b3-4b72cc3cb0ad@linaro.org>
Date: Tue, 13 Jun 2023 21:17:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: mxs-usb-phy: add imx8ulp and
 imx8qm compatible
Content-Language: en-US
To: Xu Yang <xu.yang_2@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, linux-imx@nxp.com, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-usb@vger.kernel.org, jun.li@nxp.com
References: <20230608033642.4097956-1-xu.yang_2@nxp.com>
 <20230608033642.4097956-2-xu.yang_2@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230608033642.4097956-2-xu.yang_2@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230613_121738_445474_EC9C13F4 
X-CRM114-Status: GOOD (  15.07  )
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

On 08/06/2023 05:36, Xu Yang wrote:
> The imx8ulp and imx8qm are compatible with imx8dxl. This will add such
> compatible.
> 
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - no change
> ---
>  Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> index 1b6b19fdf491..1395a982c387 100644
> --- a/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/fsl,mxs-usbphy.yaml
> @@ -32,7 +32,10 @@ properties:
>            - const: fsl,imx7ulp-usbphy
>            - const: fsl,imx6ul-usbphy
>        - items:
> -          - const: fsl,imx8dxl-usbphy
> +          - enum:
> +              - fsl,imx8ulp-usbphy
> +              - fsl,imx8dxl-usbphy
> +              - fsl,imx8qm-usbphy

Keep the items sorted. Your previous patch also had wrongly ordered
imx6ul in enum.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
