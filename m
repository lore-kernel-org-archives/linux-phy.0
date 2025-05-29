Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5F83C54FB3
	for <linux-phy@archiver.kernel.org>; Thu, 29 May 2025 11:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iHfxilXxktSj4zTHfqMVwFw1ZSgo5tMmDYunrbd7TX0=; b=a9/ZDUBL/F5F6R
	pG/Cqs7wxme4n3rc0idR00KIeSFJjPtOcsyK+ooGQ5ZQMjsgiGAkTGK/xPBmQmhOKfC8eyIg9bw5j
	TWebc31o3sJUznAhPBt47aiRB3Pz3C03YMNnN5HrGON3EvloGLwQPJccI3Dx/oNXgDmm15bQH1y7U
	ll2eDVZBOia9BrhFB9QE2b4JGmxF/exL5qFjv2ulEf1DiMQrjkUZ0AKmjcA4mUg1IJSV2aYJRq6WK
	tRc48Z9fnEOX0f/57P6kfnibfwxncpsaKSviAT362l3eoOBsLpkOUZ3++PT7N+KQBUgJAGJaHwRsz
	8tvHhYybUceUEOWMh/UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKbNX-0000000Fbr9-1tWC;
	Thu, 29 May 2025 11:24:55 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKbCl-0000000FaD1-1kyn
	for linux-phy@lists.infradead.org;
	Thu, 29 May 2025 11:13:48 +0000
Received: by mail-wr1-x430.google.com with SMTP id ffacd0b85a97d-3a4dc0f164fso747395f8f.3
        for <linux-phy@lists.infradead.org>; Thu, 29 May 2025 04:13:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748517225; x=1749122025; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yK9qxpphezwGnQuF+KskqWcGIK9SoXYFqqQnXtln7Y0=;
        b=SHViETryPL9rIH/j2QUd9haA3WHhBfEZjLS01Jv+u9Blf6FCIhvA0eomL3QcGK+EDS
         pMggU0ZMQHU+sGZNN17jqqaWhe5EcfomYO/uYbemlzTUe2SFprQtbZ/kSZf9NIUUlp+f
         XCXf9ECkH/JS118/D33UexDR0ix4TmvGPE4TekpwAJ08WYZijV4U4AGpQbeFBi6IYdoo
         bBMUxS/VnfovgL/RVRQlumXiNlFljP/2ZqekC8vPzrBnXse8lfDYTw/aBdHCnAp0t9f2
         Ag6QaimMMAMTEiiiAkTrLSl3ka80aMtWZVwG8jWDU7OdTU583pe094K1ztBFmUnvf1v6
         2QBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748517225; x=1749122025;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yK9qxpphezwGnQuF+KskqWcGIK9SoXYFqqQnXtln7Y0=;
        b=r6zJJUwa/xlJBVAR/uH/VMl/r694rPAuRLmQDgoIzi5CMqebAh0+MojFdliOnWkR0g
         lH+SOWW+h8HQgQUK4S2/4txRMn+rqVFn9RM58y7RE0V33o/xLUQ5nCU0dqOPQiyQ+fX1
         mTAMy4WajWZzxjyw56xWiAkiwN9Mo0skKfAmAncj+Za+UqaOPsKvtiuX0V63NaTQ5tYY
         cpRGXXzT86TGTYGtSnFSR83atpqcCM+pDznQEXO093qIjaeqXfaPaxJ+oPR0JV2uFwvV
         OTTZqniiE7XJzfcAd3+deDubfSFwl1YjCa5zKjytcmVMuUfs68I+LjKX+rXP9kZ9gA5a
         wwDg==
X-Forwarded-Encrypted: i=1; AJvYcCUGV2ukk3dboZ+375vkwt4Or40IlzPDh2/+ypnqYImG+gF4Wc+Suln/ih08dylKJd1kzgDW63cc8RM=@lists.infradead.org
X-Gm-Message-State: AOJu0YzzMqTT9kWHuPzEI4evydO6LgYBw1o+JGqt54EiLwiNQxrLq2QF
	wOdXPoR9YzyUiQAHe2af9a45mYM8SzBP4oh/65rCnrJXl5HNjy1V0rg=
X-Gm-Gg: ASbGncviAFf2w/Qfzg2UC84+TdIP7dLjJtLPjuxRi2wWpit1TgoqJgmLE9cZZRtFHGb
	JJbC514wnYBWdIzgvaRqz3FoB3Y9HEJBMI240Jq4x8A7G3QSNWAvo4ie58HkqbywM+VjuBVtyh7
	dqZTUdoQMd32SLS2GH/ezytveirbwhzzpiV6s9xiWnEkakVPB5XzFXN3swPpmbM4nq8jCJ9frSM
	rgq8au0gAsih1GWHXXYBr+JoiH2VGIH5TptbJoOedky7PK2X0J0bVDijgiY/4pvZ4AI7APY0Uqv
	UWse7rDNSWwfmfyxrbxmqHvJ7GczMwL01oNL/JfwDHKQ86MWChCkyMPvnGYDuQ==
X-Google-Smtp-Source: AGHT+IFtVOAYLaqimD0CxC6hc1kQSyzh4mu6P4w2Hy3B/G1NI/FXQGzDsNSqYq4Rk9kil0/t65js7A==
X-Received: by 2002:a05:6000:4027:b0:39c:1f02:5409 with SMTP id ffacd0b85a97d-3a4cb4619camr15584768f8f.9.1748517225032;
        Thu, 29 May 2025 04:13:45 -0700 (PDT)
Received: from [192.168.2.104] ([66.205.92.118])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-450cfc02cf0sm17219285e9.11.2025.05.29.04.13.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 May 2025 04:13:44 -0700 (PDT)
Message-ID: <2df66542-90b7-487e-88bb-5433b500c518@gmail.com>
Date: Thu, 29 May 2025 13:13:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/6] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
To: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
References: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
Content-Language: en-US
From: Alex <alex.vinarskis@gmail.com>
In-Reply-To: <20250527-topic-4ln_dp_respin-v3-0-f9a0763ec289@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250529_041347_465301_FEB86DFB 
X-CRM114-Status: GOOD (  23.82  )
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


On 5/27/25 22:40, Konrad Dybcio wrote:
> Register a typec mux in order to change the PHY mode on the Type-C
> mux events depending on the mode and the svid when in Altmode setup.
>
> The DisplayPort phy should be left enabled if is still powered on
> by the DRM DisplayPort controller, so bail out until the DisplayPort
> PHY is not powered off.
>
> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
> will be set in between of USB-Only, Combo and DisplayPort Only so
> this will leave enough time to the DRM DisplayPort controller to
> turn of the DisplayPort PHY.
>
> The patchset also includes bindings changes and DT changes.
>
> This has been successfully tested on an SM8550 board, but the
> Thinkpad X13s deserved testing between non-PD USB, non-PD DisplayPort,
> PD USB Hubs and PD Altmode Dongles to make sure the switch works
> as expected.
>
> The DisplayPort 4 lanes setup can be check with:
> $ cat /sys/kernel/debug/dri/ae01000.display-controller/DP-1/dp_debug
> 	name = msm_dp
> 	drm_dp_link
> 		rate = 540000
> 		num_lanes = 4
> ...


Hi,


Thanks for the respin. Together with `mode-switch;` for x1e80100.dtsi 
and 4 lane DP change in respective .dts, successfully tested on Asus 
Zenbook A14 (Parade PS8833 on both Type-C ports).

Tested with:

- Type-C USB3.0 pendrive

- Type-C to DP cable (x4 DP lanes)

- Type-C to HDMI/USB/... dongle (x2 USB3, x2 DP)

All three variants work, in both orientations, on both ports. When 
switching from x4 DP lanes cable to USB3 pendrive no re-plug was needed, 
it works right away. Suspend and resume (to my surprise) also works.


Tested-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com> # x1e80100, 
ps8833


Regards,

Alex


>
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
>
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/
> Changes in v3:
> - Take the series from Neil
> - Rebase
> - Rename many variables
> - Test on X1E & X13s
> - Apply a number of small cosmetic/codestyle changes
> - Remove some unused variables
> - Some smaller bugfixes
> - Link to v2: https://lore.kernel.org/lkml/20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org/
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
>
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
> Konrad Dybcio (1):
>        phy: qcom: qmp-combo: Rename 'mode' to 'phy_mode'
>
> Neil Armstrong (5):
>        dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>        phy: qcom: qmp-combo: store DP phy power state
>        phy: qcom: qmp-combo: introduce QMPPHY_MODE
>        phy: qcom: qmp-combo: register a typec mux to change the QMPPHY_MODE
>        arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: Set up 4-lane DP
>
>   .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>   .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 182 +++++++++++++++++++--
>   3 files changed, 173 insertions(+), 22 deletions(-)
> ---
> base-commit: 460178e842c7a1e48a06df684c66eb5fd630bcf7
> change-id: 20250527-topic-4ln_dp_respin-c6924a8825ce
>
> Best regards,

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
