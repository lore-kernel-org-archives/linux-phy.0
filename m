Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6C23C433EF
	for <linux-phy@archiver.kernel.org>; Wed, 30 Mar 2022 08:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQoVUHot9LZ4oef/yCcRfgqvvasPd1uCgWpHjkKZPf0=; b=wJLEcTQK42svHC
	HJHWnhnKdj+6yE3YBxh0ubHXJA0YdZcc8YWuw91sLve+rdeHX7/n7y1ZSzlZBVsn65VsxSDchaZRD
	uvXDz597OXCISCTZMaCRmg9co5V5RS3pksOi6EbLaWQzyr07bJN7w9mGAt9cAeF/QIu6N5X7Sp29U
	sIhT0hItjCq3qQhp4Q7ZFUHE5vzWHLkIQqAxtM6P23VqjDt8qIHeB+Ugxy/TIdAqvfuaJ2W9GV4ev
	XBw5M04SBbnfiHUOyIPvPykusxHJNV7WDbRgXa6U8Nc2j/BDnHoHJS6qfMOglgaZsnK2GTUzTN5oh
	7VNZJWz2vEKpqEluruRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZTO8-00EhZn-CQ; Wed, 30 Mar 2022 08:09:08 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZTNw-00EhVI-OJ
 for linux-phy@lists.infradead.org; Wed, 30 Mar 2022 08:08:58 +0000
Received: by mail-ed1-x535.google.com with SMTP id u26so23415098eda.12
 for <linux-phy@lists.infradead.org>; Wed, 30 Mar 2022 01:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=+bFDAM4i/mghEhHfOqiWM3FM1dQ0+91OvIs26MogX8A=;
 b=SFMAg8b/ke6ZRcvV67EvgWEeK7ykJWqswG5EpvT2o1xqTRtbd1mjTPL5mzf5NOpo/9
 sv67NlHrMwvo/5p5vpITcbO5StJOLdIQZ8q8/G/wp3y1gtWdZEOLFmv2NbSYceQpyRa0
 ldo4IR2Q157UiXXwsyC7r8Kf2c09VyZE4lXvVljWlsaN3v80w4JoeMBeiYJ2HhW/Ehk+
 PDahMEwBRntaazsVVLLCCzUgqoFBmD4kSBba+oUwAHu2GRNIjQXck1DP9F37lvXkMs8z
 +tN4bzuCtN2aRac/a1mlX/oUcM4V+34X7MyD/imRyplhlBI1inZ+uA7IJDY+1JBY95bM
 giOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=+bFDAM4i/mghEhHfOqiWM3FM1dQ0+91OvIs26MogX8A=;
 b=H114oc/sCe/i2rnb5ClOTqN1IqKb4IPNtqU39DjwvNXxufoR1y9WmXOy319QEHpUt5
 zjl/qWr8aBoLwcTxLNzDnIAFigOgSdZxHAQUqLv7yDtVbEaaKwZM4NeKXXRrxoY+MDr+
 5+saSLtOOfxdt9ghAAZnsG5aTsYLUBgJOh7GBFoCEPayIifMpug1hPGT/GPvBufkKBqM
 nOuEGuoIvR+jwX/S9I3cAEvG5hNK40p6bNSxYEXGcku1hi7s1vNcOxew8mjbGHyCF+GP
 oaqEk1xpbjegWcTiEduH2jBTBdnpLhX7aQRK1pcCC+gdKRS2IFE0wsXD6AA2CkNqb/bQ
 J7/Q==
X-Gm-Message-State: AOAM530vBvJCm3Gvop44CKrM4DmWFVjXDTD9FxxEpE84rdLCXLpQ9+op
 QxP9S3w8Tj1rg+Asls+SiOjtsQ==
X-Google-Smtp-Source: ABdhPJzpp8L+xtLq8L0IBcEiffxlbItbjgy88ADPX1RL1JQXUj/i60p49qaIu94HDmWs+yXlqBS6Xw==
X-Received: by 2002:a05:6402:350d:b0:419:5099:1f10 with SMTP id
 b13-20020a056402350d00b0041950991f10mr9295464edd.144.1648627733303; 
 Wed, 30 Mar 2022 01:08:53 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch.
 [188.155.201.27]) by smtp.gmail.com with ESMTPSA id
 d1-20020a17090694c100b006da91d57e93sm7852869ejy.207.2022.03.30.01.08.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 30 Mar 2022 01:08:52 -0700 (PDT)
Message-ID: <b787a640-f26b-5642-13d3-c9d013b48b18@linaro.org>
Date: Wed, 30 Mar 2022 10:08:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/5] dt-bindings: phy: uniphier-ahci: Fix missing
 reset-names
Content-Language: en-US
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Masami Hiramatsu <mhiramat@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <1648617651-9004-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1648617651-9004-4-git-send-email-hayashi.kunihiko@socionext.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648617651-9004-4-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_010856_810554_F1A20950 
X-CRM114-Status: UNSURE (   9.69  )
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

On 30/03/2022 07:20, Kunihiko Hayashi wrote:
> UniPhier AHCI PHY controller needs to specify 6 reset lines, so this adds
> missing "phy" to reset-names and increases maxItems of resets.
> 
> Fixes: 34f92b67621f ("dt-bindings: phy: uniphier-ahci: Add bindings for Pro4 SoC")
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/phy/socionext,uniphier-ahci-phy.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
