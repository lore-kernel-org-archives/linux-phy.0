Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6580EC88CB6
	for <linux-phy@archiver.kernel.org>; Tue, 13 Jun 2023 06:56:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6/BWiaOpqKmaaTc5ONM1Oul5skZ56gs7AdwX+Ydn7AE=; b=zAQuaPdmdxXLGj
	NSSjblhA8IdPDgNPOq9Y2XpoSCTZStpbu5x09crCsMwBwZ2eke4yLTE4ACBRn33oPv20K+SRTLRZ1
	I9cR+diIST17ZBCOoQATCc+iPmki2EQSFeAismnKX95Luoh1nJ/Zl2bgazXjipKdDZVYnM/8KMuM0
	fDZrRlCa3SQTClLkCtqcmL59NIyh3iZO00SgaApZhEjIPk0ui5zFekqkjE8jIpjgUjnldCgZGDBzg
	mUyWM4DBh8JEKxBU9ZywSD9L1Xi3hGy6CGHcgRg9hwJZHvknzl4kli0REkhgCsZU7Q28b3whzkbmb
	xhLJqNoXgxz0gMDglmxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xwq-0078ss-0A;
	Tue, 13 Jun 2023 06:56:12 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8xwm-0078s9-2C
	for linux-phy@lists.infradead.org;
	Tue, 13 Jun 2023 06:56:11 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51873e43986so529879a12.2
        for <linux-phy@lists.infradead.org>; Mon, 12 Jun 2023 23:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=o0kkKmW2vSbCVd0ghUZmQJ5Tp5ku/bqKN/w9kbxWX6OwWUAKdaBZWKGPtp62VFTaQM
         vE68/3HXtlb7Ipiaz7LoGRMD4JusW0hVgsM9EGct+SpGJcOMHvc+S7r4SzpKkRHeVNOk
         KEaw10ZFBcKCUQScWVdlzv7ApNKm1ZgyVjMogr1nZJqvjtW+20NWX7wkTuqL+sxhRX3/
         IrwZhuz6dKj9XLK1dNNZoKoIluZAqFhSwdbFqAzE1bsX+PSxTY/sFfjQyNM8sqMvsISv
         hAJUrcAdeMVgFS+ZYMTK0CmFP2UnHfTzh6Hl/6XrM0cdboobGbzjXQH/gjseyfpR3z7E
         4TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=iuxCdagh4gE+DboqftrVDqEpFkgQKbIVEOpl0FgY8dOTla8X6c2Q6xCjQ5xvIFSr9t
         LnFkKENicPeVRN36P2RoHbMT3kVX6CJ+U07LCsgEhoMPr55pAXGfxNC0TvjyuxSdgN9g
         PXu9Zp397qfZ2EuJEEkOjdtalIIA6PZpJ4Xkv/D3Nn1DQttbNQTDeY5krW914mKzecdq
         DGuCspQQyULSddJZbALkXGdlYjd7sqldzlhWaErwCeRkhpWGDqOI+9C5uNYqA2lmGYGW
         hlmMMAxPGSPmaQnwm5zaotLtRtmqWS0HesBqKG22mGxm5RPyzFBd19GVOnMp8Iu7rzNJ
         frNw==
X-Gm-Message-State: AC+VfDxDkIGuaeGKy6hdPE9EYm6hP9jFSc5dmow6SYh9wOwxxB+A9wpq
	X7o4xuP8pYANR9NnomNa4+RcWuwhybzlWRFFeLo=
X-Google-Smtp-Source: ACHHUZ7KDHVjq84hd7jnAxZuW1GtZX7g9vEo3lmLlL3Z28G3faXdjwa6gLk/uRj3hbQBYDNJ/LiuiA==
X-Received: by 2002:a05:6402:1012:b0:518:72f1:8211 with SMTP id c18-20020a056402101200b0051872f18211mr856371edu.28.1686639367370;
        Mon, 12 Jun 2023 23:56:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u13-20020a50eacd000000b005149b6ec1bdsm5945038edp.29.2023.06.12.23.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 23:56:06 -0700 (PDT)
Message-ID: <b72569a2-c101-e686-ad7f-3eefd41951ef@linaro.org>
Date: Tue, 13 Jun 2023 08:56:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>,
 Serge Semin <fancer.lancer@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-ide@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-3-sebastian.reichel@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612171337.74576-3-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_235610_325911_BE3D111C 
X-CRM114-Status: UNSURE (   7.16  )
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

On 12/06/2023 19:13, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
