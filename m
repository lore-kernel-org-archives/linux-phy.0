Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 879A3C52D7C
	for <linux-phy@archiver.kernel.org>; Fri, 23 Aug 2024 08:08:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cigOjTaoDUCOyR+I3vWRfT/5AWqjPULfLAMHRL7Cfxg=; b=YFPRQ5A8Whjn61
	o04zXH9/HrqmthClTXZkul62hZJ5BbjwxzYnL9klGh5Uro05WbkpS8/n4QuAETXwOuSEyWHTBL3h7
	wnDu/GZ7FcemcjR+VJxlM7bl0tpkbTwWPc5mXMZzYPSEPbYtb952WBcRYQK57VuBhcUzRZDJSBgpM
	sjxdEOegkLjX6KG71zdJO7vVlXpFV2paudWFs3Ek+06DQhXAd6H8WhjktcXjoLyOc+KuhXmLxGd1G
	qoGyMFuDYg3rOaTwUzMIQFgb2dhb3/QwS5aQ8CnE+rWRFgy12XitkkvuYJEF7lPAdC/isU7404u8m
	i7++kJibCwqVbeICk6ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPL6-0000000FmCm-3SY8;
	Fri, 23 Aug 2024 08:08:08 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shPII-0000000Fl0l-453A
	for linux-phy@lists.infradead.org;
	Fri, 23 Aug 2024 08:05:18 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5bf009cf4c0so1988343a12.1
        for <linux-phy@lists.infradead.org>; Fri, 23 Aug 2024 01:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724400313; x=1725005113; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Sa2OTpQrBESkhM7AyFlojoPsyzzboKrANMMd0+jjBPI=;
        b=bf1d/plvO/qQ0atkqHrxNxpULJMki2brSD0OPWeDGJD3V+xc7Rx281dH1NYhAgzwaz
         3kpm305AMWXyDrvRe2re3QLSSI7PMama2GGCnf1vfczAOchhOZiayT7LfNOPBdQmGY1d
         xMyG0bdGZMT8/EoiYCqtymAij0HMsa/aZkugaSD8ZrVN60CKe592oFFKdWDDbBBu0BHF
         XUVcEMFET+cJhbwJb1S48cJv0sTWfN+RwXsvYtwHCTzeuyjQuQbkHnDSnPwV7TECnFsO
         +hwWhX2eOyKuAd5WVodHBINaRfLi7ePZVQj0pcw6xlGiBCjgO3MiurqSAXt7sTgCs/g+
         Zpew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724400313; x=1725005113;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sa2OTpQrBESkhM7AyFlojoPsyzzboKrANMMd0+jjBPI=;
        b=l0BDx4OtP5WD3EJ63z3ZDmC913HVFtVGShKaWfnCdGRAZ4sGb9vjvZ57B0LjlFUeJH
         Kv2tsamyOwl3bYCqk07ZV0+s5orPHJYpDPX6ujlZxtmflkuuc7BaEilGYRPML/SFjvTy
         TgaswJKi/GcMvxxtnDGQ18+QW3fNZzFK8qk2fqb3fg/4kHYi5oHDPlc+bpwKi93MSdFj
         pXE925yqwOW7pRk+DHmHFqGAmbxMeHfdv0F3g8is+n44JWYtp858dfhEKmoyERzHVe0j
         eBYhxv00fZybmG/w3m1aeNCQPH5nmMqkqObsj84CX/7CXLji+GX7ynhSVqSC4bGXU1hn
         jHzQ==
X-Gm-Message-State: AOJu0YzQBL3fsjsi/TP+r6FVZDJqeLADHUzxhHVeUxD5cPgwuHbOtrXc
	cxDQJwMAPSSH675p/hAJ4zcAGOH82XzFzB2TuEi5TgYGxFjz/OKfcIjg2eCahdQ=
X-Google-Smtp-Source: AGHT+IFLA0foch1GjV3sZ6TDbZaP3PbxJBTxdcJ9LvOUf0bBMIcrMOGIxsjxdcDtskzYa8CA/ntjuA==
X-Received: by 2002:a05:6402:d06:b0:5be:df28:f6e3 with SMTP id 4fb4d7f45d1cf-5c08916a8aamr730964a12.13.1724400312895;
        Fri, 23 Aug 2024 01:05:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0515ab2f1sm1756491a12.97.2024.08.23.01.05.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Aug 2024 01:05:12 -0700 (PDT)
Message-ID: <5f14dc3a-edff-45f3-a162-3f6fd567777f@tuxon.dev>
Date: Fri, 23 Aug 2024 11:05:10 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
Content-Language: en-US
To: Biju Das <biju.das.jz@bp.renesas.com>, "vkoul@kernel.org"
 <vkoul@kernel.org>, "kishon@kernel.org" <kishon@kernel.org>,
 "robh@kernel.org" <robh@kernel.org>, "krzk+dt@kernel.org"
 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "magnus.damm@gmail.com" <magnus.damm@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>
Cc: "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240822152801.602318-1-claudiu.beznea.uj@bp.renesas.com>
 <20240822152801.602318-8-claudiu.beznea.uj@bp.renesas.com>
 <TY3PR01MB11346900BCCEB55580C2F912086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <TY3PR01MB11346900BCCEB55580C2F912086882@TY3PR01MB11346.jpnprd01.prod.outlook.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_010515_019057_8275636F 
X-CRM114-Status: GOOD (  25.55  )
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

Hi, Biju,

On 23.08.2024 10:25, Biju Das wrote:
> Hi Claudiu,
> 
>> -----Original Message-----
>> From: Claudiu <claudiu.beznea@tuxon.dev>
>> Sent: Thursday, August 22, 2024 4:28 PM
>> Subject: [PATCH 07/16] reset: rzg2l-usbphy-ctrl: Get reset control array
>>
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Before accessing the USB area of the RZ/G3S SoC the PWRRDY bit of the SYS_USB_PWRRDY register need to
>> be cleared. When USB area is not used the PWRRDY bit of the SYS_USB_PWRRDY register need to be set.
>> This register is in the SYSC controller address space and the assert/de-assert of the signal handled
>> by SYSC_USB_PWRRDY was implemented as a reset signal.
>>
>> The USB modules available on the RZ/G3S SoC that need this bit set are:
>> - USB ch0 (supporting host and peripheral mode)
>> - USB ch2 (supporting host mode)
>> - USBPHY control
>>
>> As the USBPHY control is the root device for all the other USB channels (USB ch0, USB ch1) add support
>> to set the PWRRDY for the USB area when initializing the USBPHY control. As this is done though reset
>> signals get the reset array in the USBPHY control driver.
>>
> 
> Comment applicable, if the USB PWRRDY signal is modelled as reset signal.
> 
> There is no user for this patch. The first user is RZ/G3S and is there is no support yet.
> I think you should merge this patch with next one so that there is a user(RZ/G3S)
> for this patch.

I have nothing against to squash it. I was seeing it differently:
- this patch prepares the ground for the addition of RZ/G3S
- the next patch just enables the support for RZ/G3S

It looks to me more modular like this, patches are simpler, easier for
review and each issue is described differently in patch description.

I can do it either ways.


Thank you,
Claudiu Beznea


> Cheers,
> Biju
> 
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/reset/reset-rzg2l-usbphy-ctrl.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/reset/reset-rzg2l-usbphy-ctrl.c b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> index 1cd157f4f03b..8b64c12f3bec 100644
>> --- a/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> +++ b/drivers/reset/reset-rzg2l-usbphy-ctrl.c
>> @@ -132,7 +132,7 @@ static int rzg2l_usbphy_ctrl_probe(struct platform_device *pdev)
>>  	if (IS_ERR(regmap))
>>  		return PTR_ERR(regmap);
>>
>> -	priv->rstc = devm_reset_control_get_exclusive(&pdev->dev, NULL);
>> +	priv->rstc = devm_reset_control_array_get_exclusive(&pdev->dev);
>>  	if (IS_ERR(priv->rstc))
>>  		return dev_err_probe(dev, PTR_ERR(priv->rstc),
>>  				     "failed to get reset\n");
>> --
>> 2.39.2
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
