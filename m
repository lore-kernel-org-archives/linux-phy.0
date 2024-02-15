Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 440CEC4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 10:36:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8RVkIbd3Qi70DCs4ABfO53COjyrjoAea201jZHA1vI=; b=gQ578nL8Q8dhYG
	ZxNwpqeqTnyi3X5WvlxfwQzpPiim2DW+7Csp5ze0UGoNkBMz82LZo+ZEUVZbn8EjLq542rfXR2+Uq
	O89CFDy3ZnLITWnj07vY+Xj6W1I39Urtb29PYSFBHuRaWUdId6upYaje7g7SKckor3PE9QznFvQ6w
	fmV7/UGOda4TPVfrSJ1s+Tj/DdY5ezrkTE2e7xK5CklYdQLLTqGw/0Jc/3doSxqcui3dTyPevw7zy
	4bofav9J0H5RFxKhGIoNkWqU7RBfHKZtYxM1axV0E6CMnyn4Ct+5l+ifj396eshBOACb3YN1Vsc76
	pR3mkRsvzxS4QKGnx4QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ6G-0000000FnxZ-3tdI;
	Thu, 15 Feb 2024 10:36:16 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raZ6E-0000000Fnw5-12oM
	for linux-phy@lists.infradead.org;
	Thu, 15 Feb 2024 10:36:15 +0000
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-a271a28aeb4so85767766b.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Feb 2024 02:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707993372; x=1708598172; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=STa2oLZBFBMUPR8Jzc0nI7GOTVmKblKkt7T7A8BOCxc=;
        b=Sh4LsKyYK4yx8UhvavxcbsbM9UuDerq/60AYLucAehm0NIgXdSrftaBSHyjiwTaDRm
         DphjzxbPSC1owPrw9IPg/EsLRv21rBqFTLOyDyRbTEc8uaMMEg3Q66SyY5XolmIMq2SW
         GHV1Ic+KTzDhUaF2YXW55sJWterCK4tzqJS1q0ap1qJrrFmS9qS00zQPNYgJmbHzeH8F
         A5BD7j039nB1zlJgXpiXUZcOEAZCn/WpmgwOx1yX5SK8+bYDgtPR0ZNNLXnPft3d/2vr
         fDYafN5T5GdoZksQRjhdqrtuXc8aO0XtYaJ8yjfMnqSDzEV6LzZFfcu44ZNRSBjsUqXK
         Vg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707993372; x=1708598172;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=STa2oLZBFBMUPR8Jzc0nI7GOTVmKblKkt7T7A8BOCxc=;
        b=sDIxtepmsd+8vSbFBMCKG4wj6WpOf0igMTiTV3D6qugUQoW5edlO0junXypxPoL+/B
         mrrMqIocmDKzMPUAWTPCAo+45hntYcOZRToIjKgrP8XZVrABB+qS+bRmInCFkeECjzqd
         Lxp3f2Y2N4vBN+Zs6dLrArCFB0ga6gj3KwAX6rd6OBMfP4gbqVswlfVki1mHP6g9DBCw
         Eozvj5PBCCfQpMsu7iMEwyCHjaQhJzc2GB2c9wggg3FfhcbEuwfkgV5pI2WTICS5cdJI
         4Cnd9cYLrtkGFxptyfbZPhIgVAwxGR6wcGHLPVAuHqZVSCYpcVVgDwdhdvM8sht+P3Og
         WL7w==
X-Forwarded-Encrypted: i=1; AJvYcCWu36Tn0mp/CVms/Efi8K0gCQ2VYknEJ99tmbOpE9lSVHjyXKYXnNF9yCKnuDkyVxcBIvvMmasxREYB+gNCOznXqeXVnudErKJTK2umlw==
X-Gm-Message-State: AOJu0Yz6P6BCk9reFUU7b9KuUUyLSBEK/AAwp+0XsbZwzA0pRT7hT4zP
	Z8MWsmgwR6TDMLJgw4X5JFYFTnyIvj2JrohcqfDd6jZIo8LUGSWvz+3uAz/hMdg=
X-Google-Smtp-Source: AGHT+IH9ipuKJXciacYhkuCO6cSAEbNFjzPJ0N4bPDVYrWpn1P9JnTeL2DZeFALfWkY+jzFZnmJ7RA==
X-Received: by 2002:a17:906:fa94:b0:a3c:a15c:407d with SMTP id lt20-20020a170906fa9400b00a3ca15c407dmr1078337ejb.72.1707993372446;
        Thu, 15 Feb 2024 02:36:12 -0800 (PST)
Received: from [192.168.192.135] (078088045141.garwolin.vectranet.pl. [78.88.45.141])
        by smtp.gmail.com with ESMTPSA id oq25-20020a170906cc9900b00a3cd41b3c19sm400567ejb.199.2024.02.15.02.36.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 02:36:12 -0800 (PST)
Message-ID: <5f6e505b-78c7-4bb3-ba57-fb7601c80a10@linaro.org>
Date: Thu, 15 Feb 2024 11:36:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
Content-Language: en-US
To: Abel Vesa <abel.vesa@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
 <20240129-x1e80100-phy-edp-compatible-refactor-v3-2-e71f3359c535@linaro.org>
 <CAA8EJpr5Ci7M92ibsCMec3wcQTVqFkaVgRQUhKUSdhg66YhW1Q@mail.gmail.com>
 <Zbdcao0emQyBodCK@linaro.org>
 <CAA8EJppkEksTL90KLcaw0adg73K=ngoYp8semB_u5YFk6rChhA@mail.gmail.com>
 <Zc3o32p1i0GtmmQj@linaro.org>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <Zc3o32p1i0GtmmQj@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_023614_368832_6DF681E7 
X-CRM114-Status: GOOD (  21.18  )
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

On 15.02.2024 11:35, Abel Vesa wrote:
> On 24-01-29 11:40:24, Dmitry Baryshkov wrote:
>> On Mon, 29 Jan 2024 at 10:06, Abel Vesa <abel.vesa@linaro.org> wrote:
>>>
>>> On 24-01-29 06:05:09, Dmitry Baryshkov wrote:
>>>> On Mon, 29 Jan 2024 at 02:26, Abel Vesa <abel.vesa@linaro.org> wrote:
>>>>>
>>>>> Future platforms should not use different compatibles to differentiate
>>>>> between eDP and DP mode. Instead, they should use a single compatible as the
>>>>> IP block is the same. It will be the job of the controller to set the submode
>>>>> of the PHY accordingly.
>>>>>
>>>>> The existing platforms will remain with separate compatibles for each mode.
>>>>>
>>>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>>>> ---
>>>>>  drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
>>>>>  1 file changed, 51 insertions(+), 20 deletions(-)
>>>>>
>>>>> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
>>>>> index 8e5078304646..af941d6c5588 100644
>>>>> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
>>>>> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
>>>>> @@ -14,6 +14,7 @@
>>>>>  #include <linux/module.h>
>>>>>  #include <linux/of.h>
>>>>>  #include <linux/phy/phy.h>
>>>>> +#include <linux/phy/phy-dp.h>
>>>>>  #include <linux/platform_device.h>
>>>>>  #include <linux/regulator/consumer.h>
>>>>>  #include <linux/reset.h>
>>>>> @@ -68,19 +69,21 @@
>>>>>
>>>>>  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
>>>>>
>>>>> -struct qcom_edp_cfg {
>>>>> -       bool is_dp;
>>>>> -
>>>>> -       /* DP PHY swing and pre_emphasis tables */
>>>>> +struct qcom_edp_swing_pre_emph_cfg {
>>>>>         const u8 (*swing_hbr_rbr)[4][4];
>>>>>         const u8 (*swing_hbr3_hbr2)[4][4];
>>>>>         const u8 (*pre_emphasis_hbr_rbr)[4][4];
>>>>>         const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
>>>>>  };
>>>>>
>>>>> +struct qcom_edp_phy_cfg {
>>>>> +       bool is_edp;
>>>>> +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
>>>>> +};
>>>>> +
>>>>>  struct qcom_edp {
>>>>>         struct device *dev;
>>>>> -       const struct qcom_edp_cfg *cfg;
>>>>> +       const struct qcom_edp_phy_cfg *cfg;
>>>>>
>>>>>         struct phy *phy;
>>>>>
>>>>> @@ -96,6 +99,8 @@ struct qcom_edp {
>>>>>
>>>>>         struct clk_bulk_data clks[2];
>>>>>         struct regulator_bulk_data supplies[2];
>>>>> +
>>>>> +       bool is_edp;
>>>>>  };
>>>>>
>>>>>  static const u8 dp_swing_hbr_rbr[4][4] = {
>>>>> @@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
>>>>>         { 0x04, 0xff, 0xff, 0xff }
>>>>>  };
>>>>>
>>>>> -static const struct qcom_edp_cfg dp_phy_cfg = {
>>>>> -       .is_dp = true,
>>>>> +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
>>>>>         .swing_hbr_rbr = &dp_swing_hbr_rbr,
>>>>>         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
>>>>>         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
>>>>> @@ -162,18 +166,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
>>>>>         { 0x00, 0xff, 0xff, 0xff }
>>>>>  };
>>>>>
>>>>> -static const struct qcom_edp_cfg edp_phy_cfg = {
>>>>> -       .is_dp = false,
>>>>> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
>>>>>         .swing_hbr_rbr = &edp_swing_hbr_rbr,
>>>>>         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
>>>>>         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
>>>>>         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
>>>>>  };
>>>>>
>>>>> +static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
>>>>> +};
>>>>> +
>>>>> +static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
>>>>> +       .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>>>>> +};
>>>>> +
>>>>> +static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
>>>>> +       .is_edp = true,
>>>>> +       .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>>>>> +};
>>>>> +
>>>>>  static int qcom_edp_phy_init(struct phy *phy)
>>>>>  {
>>>>>         struct qcom_edp *edp = phy_get_drvdata(phy);
>>>>> -       const struct qcom_edp_cfg *cfg = edp->cfg;
>>>>>         int ret;
>>>>>         u8 cfg8;
>>>>>
>>>>> @@ -200,7 +214,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>>>>>                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>>>>>                edp->edp + DP_PHY_PD_CTL);
>>>>>
>>>>> -       if (cfg && cfg->is_dp)
>>>>> +       if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
>>>>
>>>> I think (!edp->is_edp) should be enough here.
>>>
>>> Actually, in case of DP, the cfg8 needs to be 0xb7 for sc8280xp, while for sc7280 it should be 0x37.
>>>
>>> So to differentiate between first and second we check if the config
>>> provides a swing_pre_emph_cfg
>>
>> Using swing_pre_emph_cfg to distinguish between those two cases is a pure hack.
>> Is there any sensible meaning behind those bits? If not, just put
>> those values into the configuration data.
> 
> So the only thing that I was able to find is that this reg has to do
> with some TX and RX zero bits preamble. It seems it needs to be
> different between DP configurations (with or without swing and pre-emph).
> 
> But leaving that aside, unless we add another knob that actually depends
> on swing and pre-emph configuration being available, there is no other
> way around it, for now, at least.

Until we know better, I'd say this hack is fine, but please leave a comment
so that we don't fully forget about it.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
