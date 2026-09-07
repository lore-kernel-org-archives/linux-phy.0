Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D436CC79FA0
	for <linux-phy@archiver.kernel.org>; Mon,  7 Sep 2026 16:35:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/cH7zX6kI7hUZQLiGf1KoTfQEdyY0D7RGw6Q1/Dz1P0=; b=QQkhqpqp8M3mBCVQXyUbiIZ3ky
	uAUKMME6UpJRwM2wAqbMI6VOuaXd7I/lpC7jDkLQKuQQb+AzdVYQJzAOY3s3rBG066W5PJidQAL2s
	Uzt4AMnalcgFb+1EcgtK/23cQ49mlKk0/YT3gR9ANM6tWLEJjQ9peD/vMckWW+kIBGJhaYAPXufso
	vOffqUZUdGE4N0dTzyyv11zSjd5GDIRnWG4bax1oEt6wM7a/E0onXFTBP6C2FN99kqi9JgdlDTsMu
	aAu5lQuBA53xjRYR/KgJbVeNn+ZxDpHXpGUDGTKLZppbo090EPHeK3BbtYJd2Z2M6D2trN+nSGycL
	Ayyeh1Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cJj-00000007JMq-2H2v;
	Mon, 07 Sep 2026 16:35:35 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x3cJc-00000007JL6-1t9m
	for linux-phy@lists.infradead.org;
	Mon, 07 Sep 2026 16:35:34 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-499ac87c92bso41669615e9.1
        for <linux-phy@lists.infradead.org>; Mon, 07 Sep 2026 09:35:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1788798926; x=1789403726; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AJ38KZrQ1VU0wHJvFYCofD4vSHW03RLbTPeGnMYRlCc=;
        b=ywvBoxJTMX1NchqW9Q8M28dGBU8CnVKLKuGyGQN1TntbF6WDQ654796PQWMBB+NwxC
         2rZh11HXlYxj9uwvQ8Qi97UR34A/Ciod5VPT43jhYAgON1oqoS04tReOSr5G2Tvz5Zjj
         2VFUOjGV9VlNPwpMc+s7oFIq+xhU1omhL5MsxuK1TAUv0LeVw8wBYkSx2BqeDv1ynxXL
         IomHBcYstNmJil8Cbodn9UcaZWkBpOdeCEgdw7Eaz3Jupoh2fkruAMZkTAJUyqxcQCIZ
         apWPwDzOvhM72K68szhxtvzjkNSGDIO90cqBJGkowJzSQUQnNrjsZy5hAMVJSdhoDugh
         0Jqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788798926; x=1789403726;
        h=content-transfer-encoding:content-type:in-reply-to:organization
         :autocrypt:content-language:references:cc:to:subject:reply-to:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=AJ38KZrQ1VU0wHJvFYCofD4vSHW03RLbTPeGnMYRlCc=;
        b=tIlupl2bcOnNNFabm1syn9cJtSW+LWJCqoIoE94mzW0TxMiNiJW+CAp9qqhLZMcxdI
         kbesxdunrYKXi5D4fUv/eL9Dka7CuIzAV3e6pmvw/uycsV/9qV9nlY5FH8Eho+RPYFft
         0VHgWjwDU/utVdH75Vnk6SkQDfdJdyqGyXzLddO7MuRzrkq3eQwmGPKM3a/4wjJqUeg1
         17XlCrxtcFaBCrrikVuzAlLG18Z8ACgaoC/HQeP7LODxJOy/3P0oFRLAA59lbBt6rnEP
         KbaiZsVt1smTzyxF1KkFk6GkFMd7d+cTkrsss3dfPZIclYwL8BnyWxMcFyX5/OUj/X0Q
         0Bcg==
X-Forwarded-Encrypted: i=1; AKwUvBxFRRPnNCfFgy4o1ql0v9S4tRnS3a0g0NWKHMr1ksAxlY638p8H2Rnhd5IWCbQU5tPAlVTjpCbjfsw=@lists.infradead.org
X-Gm-Message-State: AFuF++nXPTuUzRtXHMNYmT0I6u2modeoC9iOscbLopdx9Y9dI72FUhLh
	VgcXdAAN3C1Q1FjI5YGwwdAGiryOGz17fW4aSNV7xnxvlYn9RhCyrS2ArBOouyRCCJY=
X-Gm-Gg: AYBFou1lcN8Z4hWKfbOD8Ct8A7jzgAusbVXxzvjzF7BK9/s+pmLcONdAYundnSFoE42
	tqehOwr//Z6f1/N9JpnnpRRiP/DN6UmllrRColeyN99RT1XjPzX3Fa0K3xmCLDCkDlJakOROXbG
	R9YFH5L8/dCQDIjQVAJxD/R6Gpm8krZDp0Q+uEE1psIuPSdo8a413Zy4XDmSo7sFKVfHJRieWEd
	KfwhQyUBUfr9K38LAsT9xRbziGf0NHf3E4eCrset/jzl/LUhg6x/Oo/tlQT6oJwq46C91UHE+Cd
	iHVCKbQ4X4Gbmbk7yr6LCKvvXn4qeVnK7J1W3XE2meeio9lKUFw9j+QL8pj0BNBqWwE8fxeTQEY
	NT+yj7ZEco3IrmKDl6o56O3G8tVLrVDaWCxDUDUncDBmlXOtcKC8lTOsAS3gBr2E71KlRzvG8v9
	nod/VvEE8FuqMZiyb6do5Fpu8l18xUoqBehWGCZDR6kGsWfgzfEThtrDLaho66XqYQFNZey+sav
	ldhBcXr8PCwbajCXVvpnr9uploofrnedulwWSgqVm4=
X-Received: by 2002:a05:600c:530d:b0:49c:fc6e:8cae with SMTP id 5b1f17b1804b1-49cfc6e8f24mr189817335e9.18.1788798926391;
        Mon, 07 Sep 2026 09:35:26 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:106d:1080:74d7:9035:e283:b480? ([2a01:e0a:106d:1080:74d7:9035:e283:b480])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-485885c5bbdsm28013294f8f.36.2026.09.07.09.35.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Sep 2026 09:35:25 -0700 (PDT)
Message-ID: <e1971874-6e06-4ffb-8118-c4acc40144eb@linaro.org>
Date: Mon, 7 Sep 2026 18:35:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: SM8250 USB-C DP alt mode: DP AUX times out in reversed (CC2)
 cable orientation
To: BurningHoryd <sjunhyuk1@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 Vinod Koul <vkoul@kernel.org>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20260906225206.2994952-1-sjunhyuk1@gmail.com>
 <f0fc4211-2040-4115-9847-6e5cc3fe8161@linaro.org>
 <20260907162643.36585-1-sjunhyuk1@gmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <20260907162643.36585-1-sjunhyuk1@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260907_093531_277755_7BAE4147 
X-CRM114-Status: GOOD (  23.30  )
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
Reply-To: Neil Armstrong <neil.armstrong@linaro.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 9/7/26 18:26, BurningHoryd wrote:
> On 9/7/26 08:40, Neil Armstrong wrote:
>> This means the nb7vpq904m is _not_ responsible for the AUX swapping, other
>> boards have the wcd9395 or the fsa4480 in the middle to use the AUX line
>> for the USB-C Alternate Audio support, and does the swap.
>>
>> Could you check in the vendor tree if there's any reference to those ?
> 
> Checked Retroid's downstream Android DT for this board. There is an
> FSA4480, plus a GPIO AUX switch, and my mainline port models neither.
> 
> 1. fsa4480@43, on the same I2C controller as the redriver:
> 
>       i2c@884000 {
>           fsa4480@43 {
>               compatible = "qcom,fsa4480-i2c";
>               reg = <0x43>;
>           };
>           redriver@1c {                 /* nb7vpq904m equivalent */
>               compatible = "onnn,redriver";
>               status = "disabled";
>           };
>       };
> 
>     The only node that references it is the ASoC machine driver
>     (qcom,kona-asoc-snd, via "fsa4480-i2c-handle") - so downstream it is
>     used for the USB-C analog-audio / MBHC SBU routing, not by the DP
>     driver. The codec is a wcd9385, no USBSS block, so no wcd9395 here.
> 
> 2. The downstream DP driver does its own AUX orientation over GPIO:
> 
>       &dp_display {
>           qcom,dp-gpio-aux-switch;
>           qcom,aux-sel-gpio    = <&tlmm 8  0>;
>           qcom,aux-en-gpio     = <&tlmm 9  0>;
>           qcom,usbplug-cc-gpio = <&tlmm 65 0>;
>       };
> 
>     TLMM 9 there is the same pin my mainline DT currently hands to the
>     nb7vpq904m as "enable-gpios", so that assignment is likely wrong, and
>     TLMM 8 (the orientation select) is not wired up in my port at all.
> 
> 3. The redriver (onnn,redriver @ 0x1c, same I2C address as the
>     nb7vpq904m on my board) is left status = "disabled" downstream.
> 
> So the SBU / DP-AUX orientation switch on this board looks like a
> discrete GPIO-controlled analog mux (TLMM 8 select, TLMM 9 enable), and
> my port is missing it - I modeled the I2C redriver as the
> orientation-switch instead, which is why poking its AUX_CC_REG did
> nothing and only the DP_CC2 (pair-swapping, 2-lane) op-mode ever got an
> AUX transaction through in reverse.
> 
> Does this look like a job for gpio-sbu-mux
> (drivers/usb/typec/mux/gpio-sbu-mux.c) - a node with
> select-gpios = <&tlmm 8>, enable-gpios = <&tlmm 9>, orientation-switch +
> mode-switch, wired to the connector - with the nb7vpq904m kept as
> retimer-switch only (or dropped, since downstream disables it)? Or is
> the FSA4480 in the DP AUX path as well, making fsa,fsa4480 the right
> orientation-switch to add?

Yes if it's a discrete SBU mux, gpio-sbu-mux was designed for that, and
keep the nb7vpq904m and just drop the SBU link to the redriver and replace
it with a link to the SBU mux instead.

Neil

> 
> I'll wire up gpio-sbu-mux and come back with reverse/normal traces
> unless that's the wrong direction.
> 
> Thanks,
> BurningHoryd


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
