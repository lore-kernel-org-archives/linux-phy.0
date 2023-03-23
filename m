Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD0C5C76196
	for <linux-phy@archiver.kernel.org>; Thu, 23 Mar 2023 14:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZW/LygwfBQHqw0E9grpRZoz81PBYNjC9hMM1Whfpv+w=; b=UpQmfwI7Bpmz4K
	5ytegxNqUNoxKqiq+Oo0bOPN2bxh7qyDGz4TEJts2Tv+77HGYqT6InhNZP0xQ2iNh/D3ikA4Rpv5c
	a+CbwHelkqrEX55/iGsvAs5tq7fYIAlNxPJjyFvuJ97RyByiuu/PmawhK0R0IZ46m9Xr22mlHvs4X
	dX7A7L1OoTFmEEYoYd4+zTJQd5fAjExN0qgxSubqjMWBbwMlSaxW/vtJhBjmcv4Qy9wsK7Vj7SqP1
	0jmX4HrDpBa3SIL4j3RbMbO3UL/gVAmXAhc5K2ys0l7m6sSi3QArQyPEIGcZo0PDbSuaFjEiD605I
	3LRyRbrERAqusKr93sAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfMME-002Ftu-1Z;
	Thu, 23 Mar 2023 14:56:02 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfMMA-002FsK-1X
	for linux-phy@lists.infradead.org;
	Thu, 23 Mar 2023 14:55:59 +0000
Received: by mail-wr1-x429.google.com with SMTP id h17so20823337wrt.8
        for <linux-phy@lists.infradead.org>; Thu, 23 Mar 2023 07:55:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679583357;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LzETtzKjA52BY2tOEq8n5Gv6UHBx5mZPe+HOURETy24=;
        b=zWEG69va3z5HzrKEOVtpCjgx0IdZJo57qMHX16YrTHYKjewVw7XOGEA1fc8obEKLvm
         nQxOgc6TI00ARtrgHL6gL0pjeS8S5ZpkJ6j1d5zqKcuq0wBwwzlJtiO/P56TGio7BWyq
         onTXZn7146mLFA8AnGs0Ccz1Z6tb2/0KqrNJEz35tQWxMMo1wwCOvJ+23ec7rKDd48px
         1is+uPYgjGiZl/m5U7ziA9WqOLKyb4WcGjsa8xizW149omZuwcwtUqVfIwnCzbUtUk0d
         tXTIfzY1uTvIHtiuq+mRMAUrFjmI8/Ktdc51/DKEbGd4EKrQmp7+y3f2/+ug9F6b0QUL
         HeGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679583357;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LzETtzKjA52BY2tOEq8n5Gv6UHBx5mZPe+HOURETy24=;
        b=fMonNrInseol9m9djxnbi0xqoF6r5Pm75ceuARTS9JclApjjGtOK6H0P1S/5yTmwmJ
         foyxJutD5yv0mEv7xqBpGhoYzWMdzNrrrBQpZYap0grlJ2mw8y2/86VGlsxU82abrucs
         2besOZcRIIYFa6FWvORKOCVhoN4zVZ3aCtHvttmdkB7Unnl17PHzhNWdVGTFWBbYLAAv
         +hxMx/zfR0+rtjSohXpl0g8MnX5WkIcsEIHhtFZboo6ByTf9gm8r8JSNmlvAUkE9JyMn
         ebmdlf38qYoeR0T4no7N7jXivF8kdFu2UuR2yjRUwEgYJSlkatRzN2kEMYbgWuBimcNx
         i9Xg==
X-Gm-Message-State: AAQBX9cS5qwqMA7m8tqorhVeUyzO/gR9nfOqWCgRs40ETnmN7ttybhC4
	7tzLhPVCKaikrX1b2GMMRgrncQ==
X-Google-Smtp-Source: AKy350bJjoABAFMUAHsHK1YuOg+sTamfi8WpjmjWgK95DEEO2x0H0mddICAJdWc1GC+TFFByguAn7A==
X-Received: by 2002:adf:f30b:0:b0:2d0:58f9:a6a with SMTP id i11-20020adff30b000000b002d058f90a6amr2624019wro.57.1679583356943;
        Thu, 23 Mar 2023 07:55:56 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e25a:65de:379a:3899? ([2a01:e0a:982:cbb0:e25a:65de:379a:3899])
        by smtp.gmail.com with ESMTPSA id u4-20020a5d4344000000b002c5526234d2sm16542284wrr.8.2023.03.23.07.55.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Mar 2023 07:55:56 -0700 (PDT)
Message-ID: <f02c6ac0-4c6e-a0e8-8f32-06f45eb2ffe2@linaro.org>
Date: Thu, 23 Mar 2023 15:55:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 2/2] phy: qcom-qmp-combo: use qmp_combo_offsets_v3 instead
 of _v6
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org
References: <20230323144726.1614344-1-dmitry.baryshkov@linaro.org>
 <20230323144726.1614344-2-dmitry.baryshkov@linaro.org>
From: Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230323144726.1614344-2-dmitry.baryshkov@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_075558_513456_B276E0F9 
X-CRM114-Status: GOOD (  13.95  )
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

On 23/03/2023 15:47, Dmitry Baryshkov wrote:
> The qmp_combo_offsets_v3 table is already used for v3 and v4 PHYs. Reuse
> it for v6 too, dropping the separate qmp_combo_offsets_v6.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 18 +-----------------
>   1 file changed, 1 insertion(+), 17 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 3b488d12c933..6850e04c329b 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1417,22 +1417,6 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   	.dp_dp_phy	= 0x2200,
>   };
>   
> -static const struct qmp_combo_offsets qmp_combo_offsets_v6 = {
> -	.com		= 0x0000,
> -	.txa		= 0x1200,
> -	.rxa		= 0x1400,
> -	.txb		= 0x1600,
> -	.rxb		= 0x1800,
> -	.usb3_serdes	= 0x1000,
> -	.usb3_pcs_misc	= 0x1a00,
> -	.usb3_pcs	= 0x1c00,
> -	.usb3_pcs_usb	= 0x1f00,
> -	.dp_serdes	= 0x2000,
> -	.dp_txa		= 0x2200,
> -	.dp_txb		= 0x2600,
> -	.dp_dp_phy	= 0x2a00,
> -};
> -
>   static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
> @@ -1759,7 +1743,7 @@ static const struct qmp_phy_cfg sm8350_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8550_usb3dpphy_cfg = {
> -	.offsets		= &qmp_combo_offsets_v6,
> +	.offsets		= &qmp_combo_offsets_v3,
>   
>   	.serdes_tbl		= sm8550_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
