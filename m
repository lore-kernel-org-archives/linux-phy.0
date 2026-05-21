Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E982BCD5BA4
	for <linux-phy@archiver.kernel.org>; Thu, 21 May 2026 12:00:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C6O95xwJUtZYbQEFupE6S72ODU0edKSLx//vMe5dDFs=; b=WYfs81sbhXkE50
	7PH/ZFLCaZCuhrQD8fyrBJsoBgbNN7+VLKAIchsUedaEKnzRG38PHL0IWUR0k80yAo7wgsoKVROX9
	X0043qB9tIRwsAC0dT+oO3XsNvbarL/aWYfd+aHjbkF7bkWMlADpUfgq+RHHI5rEFPOGxYQi3cWku
	CP/zQFsjBE1VKUUwIn4jbKm7G/Q0VeqTHsaRKwu+9p77wJPSQUVnIq+vtvRhoZNnbrOvixVgf0MhH
	xefRo+c0YVY8c79pTNJDsFT/5JO7Iah0jN/iQbH1ad1q5WqXKx0s0ImrPl7Xab/hJpykTzLvFlWSV
	2g79jW/yq4QmjKrdffJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ24e-00000007fay-2RB1;
	Thu, 21 May 2026 12:00:24 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQ24b-00000007faK-1Qs6
	for linux-phy@lists.infradead.org;
	Thu, 21 May 2026 12:00:22 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-44ce78ab5feso5102900f8f.0
        for <linux-phy@lists.infradead.org>; Thu, 21 May 2026 05:00:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779364819; x=1779969619; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CyUjlgC7rWY0SffOj02D7tXJ5nKvMClnXbMF17mpGVU=;
        b=SZPoW2PyYoCV+YmaQZXvgTc3G5NXyg9I87EbFv4llOP8qAfvfv5B/QSjty8JnDLpCq
         ULZmXHmF9TuZIRD1XW7v9I6WBaq3iptHdCrmOiQqqS+q8SXf4fkWsHQNYBU+yxlEU69z
         yp2OytWQ4zX2BQsRF0aVFJGa/Bk/d7yKvPTJSQCrtoCo1HsQQ0nk6U/h/xrungdm/vXX
         1YIf1L3/lJQaODx4+ozZztN4Je8z+6VgDeswqhUM5mhKaKMFTUWqyZlwPUF+SDa74/Ke
         Xw2UOB7oeNg5Bruru6OSqAq9pHQbOo60bqUrEx1p9ySVhdSl5UhEqCVr/UoUY29RsdiJ
         tteg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779364819; x=1779969619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CyUjlgC7rWY0SffOj02D7tXJ5nKvMClnXbMF17mpGVU=;
        b=MRORc5yIiEB+mlFmCtaM8hi1F6g8NKSPmIivhgdaMIky44kXjAEbEZbVcATPVqI4pN
         Yo/WCTovmZ2/ObiCn4crhySL/B1eTeFdJCdtjsg1tvHzrb/54XevxklpYlp787TfyHx6
         SwBUSv62Iz8arPLUr/x8hmip1l+FGoHY2trOFdspkYd5JW45ZQGDrzpcRsESILqaOG0X
         Z8wF2YgqEtuSH6gxva4vtvuuKrbb5DFfDdr7MYDfXKF64QCI0cFBqzeomPp1iN17LAwQ
         Cw4MKYtgATTypYsz7R2EgO80hmEPph6WZKBV4PQkLslqeq0Ao8CY/anm6b3A9gH6CzUX
         Uxqw==
X-Forwarded-Encrypted: i=1; AFNElJ/iKQtEzX3CfZClmirugN542GiomlWdoJMoxciyt45b9LiSBT0+i/7Ax+rdPZalw+Jn0zq756nb6yk=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx22eiB+wMt8sSioU72w7fedo5cbCwaOpeq+yuerW7sW6yu6vUv
	FaLe41jNJTe21OjSFIVJMd9Y47W8USSqU4PPUXK8Dohlu1cFdN/Tl8dHAQZdltgZKeE=
X-Gm-Gg: Acq92OGSmDZ/0aXmDt6fpRzEqYPhT1iLxm2jUMwhwu75kpYKbG9IZdMZ2/9zpiF8EgO
	WBc1aOzHR/BJZIIsr1hgkd9Z7V2865BvED6JIH+MW2+FcuKBBlc/udusdJneKU+Lwr6paoVsGLw
	3pD40Vi5+AT+tdwJucqoyhpb5tP4Kuk+Am6iX9Ob8QpBc8w8zOqNWd/lkNXs1DFmdLGqqNTPac3
	d9eVXLKTuvpXsWwzN5MGVm/2Nd7CIHX4Sup28gOxsKZ7PKjaje6l3k5i4GIyHMWiARYRp23R3tL
	oYtxWA8cYBbR9mcDNKNNj0TBin8c3Ndv0N71d1Z0Za2TEDnk72w3+uA5xhdnUclr30Z3unCMMs1
	HVNcwZZIzJw38t2y71c4pFuG4DnY5cAMqoeiMlvTvqzAG4brRab9t4HdTwWANFLxGk4iFwtm8FO
	UkChpzLjSRkYb46OQ6R5+AQdY8SD8pluiJMYUtBnvx4FLO
X-Received: by 2002:a05:600c:4fc7:b0:48a:66a8:9981 with SMTP id 5b1f17b1804b1-490360ddce0mr34321265e9.27.1779364819051;
        Thu, 21 May 2026 05:00:19 -0700 (PDT)
Received: from [192.168.0.35] ([109.76.55.220])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-45eaa7dd9e6sm2386503f8f.16.2026.05.21.05.00.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 May 2026 05:00:18 -0700 (PDT)
Message-ID: <5cb46913-9aa5-4a12-b18f-5eccb6ca861b@linaro.org>
Date: Thu, 21 May 2026 13:00:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] phy: qcom: qmp-combo: track whether the cached
 typec_mux mode was committed to hardware
To: Michael Scott <mike.scott@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org
Cc: vkoul@kernel.org, neil.armstrong@linaro.org,
 dmitry.baryshkov@oss.qualcomm.com, wesley.cheng@oss.qualcomm.com,
 abelvesa@kernel.org, faisal.hassan@oss.qualcomm.com,
 linux-phy@lists.infradead.org, andersson@kernel.org, konradybcio@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, val@packett.cool, laurentiu.tudor1@dell.com,
 alex.vinarskis@gmail.com, linux-kernel@vger.kernel.org
References: <20260521010935.1333494-1-mike.scott@oss.qualcomm.com>
 <20260521010935.1333494-3-mike.scott@oss.qualcomm.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20260521010935.1333494-3-mike.scott@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_050021_417058_BE46AC1F 
X-CRM114-Status: GOOD (  31.29  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 21/05/2026 02:09, Michael Scott wrote:
> qmp_combo_typec_mux_set() updates qmp->qmpphy_mode (the cached state)
> unconditionally, but only reprograms hardware when qmp->init_count is
> non-zero. If pmic_glink_altmode (or any other typec_mux consumer)
> calls into the PHY before DWC3 has performed phy_init() -- a real
> ordering observed during testing of USB-C role-switch enablement on
> Snapdragon X (X1E80100) -- the cache transitions away from the
> probe default QMPPHY_MODE_USB3DP but the hardware is never touched.
> 
> Subsequent calls (for example on partner detach, where TYPEC_STATE_SAFE
> also resolves to QMPPHY_MODE_USB3_ONLY in the !DP-SVID branch) then
> match the cached mode and the function bails out early with:
> 
>    qcom-qmp-combo-phy faXX000.phy: typec_mux_set: same qmpphy mode, bail out
> 
> leaving the lane mux in whatever configuration it powered up in. On
> the Dell Latitude 7455 this manifests as the SS lanes being left in
> the default state when the first altmode notification arrives during
> DWC3 probe, with the function bailing out on every subsequent attach.
> 
> Track separately whether the cached mode has actually been committed
> to hardware. The bail-out optimization is only safe when the cache
> truly reflects the hardware:
> 
>    - qmp_combo_typec_mux_set(): bail only when the cached mode matches
>      and was committed; clear the committed flag whenever the cache is
>      updated, set it again after a successful reprogram inside the
>      init_count-guarded block.
> 
>    - qmp_combo_com_init(): set the committed flag at the end of a
>      successful init, since com_init() programs registers from the
>      cached qmpphy_mode.
> 
> No behavioural change on platforms where typec_mux_set never fires
> before phy_init -- committed remains true through normal operation.
> 
> Signed-off-by: Michael Scott <mike.scott@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 25 +++++++++++++++++++++--
>   1 file changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 0db200292642..e28bc1cc7a78 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -2295,6 +2295,7 @@ struct qmp_combo {
>   	struct mutex phy_mutex;
>   	int init_count;
>   	enum qmpphy_mode qmpphy_mode;
> +	bool qmpphy_mode_committed;
>   
>   	struct phy *usb_phy;
>   	enum phy_mode phy_mode;
> @@ -3754,6 +3755,9 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
>   	qphy_setbits(qmp->pcs, cfg->regs[QPHY_PCS_POWER_DOWN_CONTROL],
>   			SW_PWRDN);
>   
> +	/* com_init() just programmed registers from qmp->qmpphy_mode. */
> +	qmp->qmpphy_mode_committed = true;
> +
>   	return 0;
>   
>   err_disable_clocks:
> @@ -4509,9 +4513,22 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
>   		new_mode = QMPPHY_MODE_USB3_ONLY;
>   	}
>   
> +	/*
> +	 * Fast-path bail only when the cached mode is also known to be
> +	 * committed to hardware. The cache may be ahead of the hardware
> +	 * if a typec_mux_set arrived while the PHY had not yet been
> +	 * initialised (init_count == 0); in that case the cache update
> +	 * below was the only thing that ran, and we still need to drive
> +	 * the registers when the PHY does come up.
> +	 */
>   	if (new_mode == qmp->qmpphy_mode) {
> -		dev_dbg(qmp->dev, "typec_mux_set: same qmpphy mode, bail out\n");
> -		return 0;
> +		if (qmp->qmpphy_mode_committed) {
> +			dev_dbg(qmp->dev,
> +				"typec_mux_set: same qmpphy mode (committed), bail out\n");
> +			return 0;
> +		}
> +		dev_dbg(qmp->dev,
> +			"typec_mux_set: same qmpphy mode but uncommitted; reprogramming\n");
>   	}
>   
>   	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
> @@ -4523,6 +4540,7 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
>   		qmp->qmpphy_mode, new_mode);
>   
>   	qmp->qmpphy_mode = new_mode;
> +	qmp->qmpphy_mode_committed = false;
>   
>   	if (qmp->init_count) {
>   		if (qmp->usb_init_count)
> @@ -4551,6 +4569,9 @@ static int qmp_combo_typec_mux_set(struct typec_mux_dev *mux, struct typec_mux_s
>   			if (qmp->dp_init_count)
>   				cfg->dp_aux_init(qmp);
>   		}
> +
> +		/* Reprogram complete; cache now reflects hardware. */
> +		qmp->qmpphy_mode_committed = true;
>   	}
>   
>   	return 0;

Can we not make the commit to hardware atomic from the perspective of 
the caller ?

i.e. use a workqueue and a completion timeout when setting ?

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
