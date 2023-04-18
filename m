Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE512C6FD18
	for <linux-phy@archiver.kernel.org>; Tue, 18 Apr 2023 11:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n4V4xqKzZaqJui90LO8NKY6xiBEVkuuLneb4niy/p40=; b=eUQzNt6nBvKNXK2iDnozC4JsiV
	kQWeJAnOPGf0Kv3dgRLdvC9wPeR8JXf8kvU8BIIUJsMcBdE+lUHcyJ9C6vpxjCFme2desiKx8S57x
	wIkDCML1mBZC8iF+d/bPoaJ/IPISHrmn/pEgl0SKHBpgAd0SXBfARO0FzrtgCZtZFgDr7kSv4W+bL
	bGcpu0Ta3n/9tPw4sFdKCopMKVMMIkYzAzkdgfvYzd2Rr+OvL1n68wtEnRQYxREkaKQsOf90l4vwQ
	V6qqIZwCu6HpcSa4EuhK+M2bnJDLAk7GG7RF/5TD73Oz1ZOyhLA/LfMdu1CM7fG1CmLA4WLsHaSy1
	y9fwj+ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pojjD-001zf7-1y;
	Tue, 18 Apr 2023 11:42:31 +0000
Received: from mail-wm1-x32d.google.com ([2a00:1450:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pojjB-001zdp-2J
	for linux-phy@lists.infradead.org;
	Tue, 18 Apr 2023 11:42:31 +0000
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-3f1763eea08so11686335e9.2
        for <linux-phy@lists.infradead.org>; Tue, 18 Apr 2023 04:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681818147; x=1684410147;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=VJhrrZF5F7exwMqfs2F/DYr7C0jvoevmcUqXzH/feoc=;
        b=jzOxsEqTJ/vE+PNHw+7MNs45SrWRcRdILs3o1jpljWGpevnUNsNzBP/Hne7QfimK1N
         5DY3mrppe8X+jaKRQ/IbtfjvpPf0q1020JOjEX1gd+PJibeizTsiuvO1XMk66ZORWC5j
         lktslAieZyrktZZaXs1VOo2OOCgxt87ehbK80gCy9qUt7TMKk/oMtNdCpNzsBRcHtUHv
         pdIYAJyMglfkqtZfx3wGsJZhLPh/cD+9cMXyQcewLh2XXi8p4vxi1ohxB/1/S2ROicgZ
         L0tbdVXl1JS4tDWSNKnrMrEgWR+inwerTf5sMqNXCyLiSgJyyWx9sNlODMPpzC76QPwC
         a4zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681818147; x=1684410147;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJhrrZF5F7exwMqfs2F/DYr7C0jvoevmcUqXzH/feoc=;
        b=Puzt6V+LOAJqbK9ynz5ucsj4e4MiDa3kFE6OQnk1ILVKXS8ZmnMUFbhPbopXx3ZFHw
         QVSLcbnQ3JYYKH2tXMXsgcpj2SOakU6Rwce87OPTh16h7k+eC8VKLUbTDQFFxraX5Jo5
         T56chE7erI0sr3LRnFPB1au13dvICU9rpldcQ5fND54BbMlyRBFYVDvKi81S9HQpd1ot
         6f/yZJEtDrN8pxO2PEt0fKNLsF8GlgLcNUwyGBzuF6OfHODabReutv+wkNnv7ewZFoyS
         1dUUyInTvnb9b5hcFuUZxk2CychB7gZS0/bKAbHg75n0LEiqEdiL4sPMQ09pXA0Idhp7
         Vj+Q==
X-Gm-Message-State: AAQBX9eaOOi158qLgPJJja9wL7zW0d2Vj9kp0P6wdUQdrwxLEwp8AVKn
	LjdJZw1lol/kOYjqLBOQYrU+DQ==
X-Google-Smtp-Source: AKy350aDCnbeQs57GbmYsqxCTQZFjV3+gfLDfWNsHSqoL5o8sOpUjfnH5UipDVxMtKi6RxmnWS+aFA==
X-Received: by 2002:a5d:698e:0:b0:2d2:f3e3:115d with SMTP id g14-20020a5d698e000000b002d2f3e3115dmr1702788wru.59.1681818146993;
        Tue, 18 Apr 2023 04:42:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:7a02:f867:7c56:79a0? ([2a01:e0a:982:cbb0:7a02:f867:7c56:79a0])
        by smtp.gmail.com with ESMTPSA id h12-20020adffa8c000000b002d322b9a7f5sm12934813wrr.88.2023.04.18.04.42.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Apr 2023 04:42:26 -0700 (PDT)
Message-ID: <e4540877-5874-92a0-f15f-bdefc8dc5f8b@linaro.org>
Date: Tue, 18 Apr 2023 13:42:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
From: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 2/5] usb: dwc2: support dwc2 IP for Amlogic A1 SoC
 family
Content-Language: en-US
To: Dmitry Rokosov <ddrokosov@sberdevices.ru>, gregkh@linuxfoundation.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
 mturquette@baylibre.com, vkoul@kernel.org, kishon@kernel.org,
 hminas@synopsys.com, Thinh.Nguyen@synopsys.com
Cc: yue.wang@amlogic.com, hanjie.lin@amlogic.com, kernel@sberdevices.ru,
 rockosov@gmail.com, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-phy@lists.infradead.org
References: <20230418111612.19479-1-ddrokosov@sberdevices.ru>
 <20230418111612.19479-3-ddrokosov@sberdevices.ru>
Organization: Linaro Developer Services
In-Reply-To: <20230418111612.19479-3-ddrokosov@sberdevices.ru>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_044229_758506_06FB91F5 
X-CRM114-Status: GOOD (  14.61  )
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
Reply-To: neil.armstrong@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 18/04/2023 13:16, Dmitry Rokosov wrote:
> The Amlogic A1 uses dwc2 Synopsys IP as its USB peripheral (gadget)
> endpoint, with different DWC2 parameters when compared to previous
> Amlogic SoCs.
> 
> Signed-off-by: Dmitry Rokosov <ddrokosov@sberdevices.ru>
> ---
>   drivers/usb/dwc2/params.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/usb/dwc2/params.c b/drivers/usb/dwc2/params.c
> index 9ed9fd956940..098fbfc774ab 100644
> --- a/drivers/usb/dwc2/params.c
> +++ b/drivers/usb/dwc2/params.c
> @@ -161,6 +161,25 @@ static void dwc2_set_amlogic_g12a_params(struct dwc2_hsotg *hsotg)
>   	p->hird_threshold_en = false;
>   }
>   
> +static void dwc2_set_amlogic_a1_params(struct dwc2_hsotg *hsotg)
> +{
> +	struct dwc2_core_params *p = &hsotg->params;
> +
> +	p->otg_caps.hnp_support = false;
> +	p->otg_caps.srp_support = false;
> +	p->speed = DWC2_SPEED_PARAM_HIGH;
> +	p->host_rx_fifo_size = 192;
> +	p->host_nperio_tx_fifo_size = 128;
> +	p->host_perio_tx_fifo_size = 128;
> +	p->phy_type = DWC2_PHY_TYPE_PARAM_UTMI;
> +	p->phy_utmi_width = 8;
> +	p->ahbcfg = GAHBCFG_HBSTLEN_INCR8 << GAHBCFG_HBSTLEN_SHIFT;
> +	p->lpm = false;
> +	p->lpm_clock_gating = false;
> +	p->besl = false;
> +	p->hird_threshold_en = false;
> +}
> +
>   static void dwc2_set_amcc_params(struct dwc2_hsotg *hsotg)
>   {
>   	struct dwc2_core_params *p = &hsotg->params;
> @@ -258,6 +277,8 @@ const struct of_device_id dwc2_of_match_table[] = {
>   	  .data = dwc2_set_amlogic_params },
>   	{ .compatible = "amlogic,meson-g12a-usb",
>   	  .data = dwc2_set_amlogic_g12a_params },
> +	{ .compatible = "amlogic,meson-a1-usb",
> +	  .data = dwc2_set_amlogic_a1_params },
>   	{ .compatible = "amcc,dwc-otg", .data = dwc2_set_amcc_params },
>   	{ .compatible = "apm,apm82181-dwc-otg", .data = dwc2_set_amcc_params },
>   	{ .compatible = "st,stm32f4x9-fsotg",

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
