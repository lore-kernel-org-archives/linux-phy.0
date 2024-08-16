Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9B79C531DC
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 06:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lWVwdNtR+Oc/ZE6FLMhnn06vLpWLqcahAP+ESEMfRjA=; b=KVWmgT0CkavCff
	VQy3YihwNPCJX656gekP5j6A7ufEbTFFdKHJ4TT00oU2EbqkN6X+moZb6YV7JfUjreQCYo6mFU+Iy
	YJzNvgwgjfG1N45PDA3TagxmjkpXiKGxl97IgwPSr81rkRzVV5gY5NwUQKxGZz7ZllmNz/Ug9cIao
	sssQ9w9j44+h2qj9Q4iiSVXTdsLFt5MJx+kAGm9/eU9PV8G0GQWnUolzrQ+/qpmT3H0l2H3r0Qj7N
	eTnmaWz0F3nk7ls+U5AxR9k0Ugo8dA6g5fpNolhkLZkfdbKEarbUPq/0JudWs9yZhtc3G/hczwAE8
	0o9ijnNIZQY4pWwos5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqYj-0000000BxM2-08L0;
	Fri, 16 Aug 2024 06:35:37 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seqYg-0000000BxKZ-0kCN
	for linux-phy@lists.infradead.org;
	Fri, 16 Aug 2024 06:35:35 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a8384008482so151859666b.2
        for <linux-phy@lists.infradead.org>; Thu, 15 Aug 2024 23:35:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1723790132; x=1724394932; darn=lists.infradead.org;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dlvy/2cOpY4w4qpZGIrneMUP1FhFXubcCbWNdPksnnY=;
        b=OXvDe89JQkmZmIxjxwltzySoq3W+76gD1LYZqhd2HLMx6eHvWEA0f4Fx/LD/VPnISC
         L7lza27NwcpiQbBONf1ghsyved936uR8zMDnJAutUIejTApJWt+fEd0fdGwyktJsv3N4
         +YqwEZGERKpVb0vxnsHuKjvXVyfTdKxqBkpVISPCiKpJMJLuEdyxsAkt5M77iEVi3hL7
         dtXLj0beebRvA3n4pSSrb31EjOi1p1jiJvfGqQhE9PbsdasXiTeooHe2BN+/fGbFvEFw
         zt98b9yNBSji87nyVTKsC+/3JNTtQ8IpKY5NWTYqhLtrTV8U8l0zkqW9uThYjgh0sPpm
         swxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723790132; x=1724394932;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dlvy/2cOpY4w4qpZGIrneMUP1FhFXubcCbWNdPksnnY=;
        b=FvFvIrB4V6ZuwK465Vzj3GRla0Bd+Ajbjg1Hr35FoFETpM9ShtBqGWjac31d5OsLE8
         69hFfnwZIv6kZaa3MavE1ys9A5c3b1mUfq2xJJqdX2JnZ+2DCX7iyB7JwVT+L79PKB+Y
         B5ORDcLEqSTrFUlTjY+8zRp9gCDGo890GYyYp9sszjpdzKq+tJcTd98aWz10P95lnx7T
         IZM4yfg8d+naNCaa0BNvBIFOj0A5grFKXQZ/+DzeSdePpDm5UmgRiqkkrosjKXd2ZvnY
         +ro9AsVdPsLIed23YS7RcSrXYWyPmKXh5l/RGfXT/0h91I8HpCIgGo8JiP8w9dKiAZe5
         YiWw==
X-Forwarded-Encrypted: i=1; AJvYcCXQaxPeJRwTVkEVHr5VXK+K9tNBGgcql/UldGjfCWknPWtMv7leKf5hv452hfbggycl+qgXSWLBXKzcFFjgPH5MVgzJmHEk0Khcc9bS6w==
X-Gm-Message-State: AOJu0Yx/Wjcr5n9AWB3LLV4c88oFBoA1/4WK8zSFFNXVH6Do+TG/gKRU
	o8CeGAZqsi8Fam9YmdysDv3GqVvxXQqMsYyO0k/o8RLBlhYKJASrpczbgGQTYe8=
X-Google-Smtp-Source: AGHT+IEjLooN9mJouFfwclDBmTI6IWvI0aT85+PtIm7Jj9agzY0qG27OrjnCsCVb6+1o8gjkiZQ/Qw==
X-Received: by 2002:a17:907:944a:b0:a77:db36:1ccf with SMTP id a640c23a62f3a-a8392a3bb13mr117533666b.42.1723790131615;
        Thu, 15 Aug 2024 23:35:31 -0700 (PDT)
Received: from localhost ([145.15.244.232])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83838eeecesm206592166b.95.2024.08.15.23.35.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2024 23:35:31 -0700 (PDT)
Mime-Version: 1.0
Date: Fri, 16 Aug 2024 08:35:28 +0200
Message-Id: <D3H4LOY4UHKJ.2E21EUSJWXQGJ@fairphone.com>
Cc: <linux-arm-msm@vger.kernel.org>, <linux-phy@lists.infradead.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 0/7] arm64: qcom: allow up to 4 lanes for the Type-C
 DisplayPort Altmode
From: "Luca Weiss" <luca.weiss@fairphone.com>
To: "Neil Armstrong" <neil.armstrong@linaro.org>, "Vinod Koul"
 <vkoul@kernel.org>, "Kishon Vijay Abraham I" <kishon@kernel.org>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Konrad Dybcio" <konrad.dybcio@linaro.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>
X-Mailer: aerc 0.18.2-0-ge037c095a049
References: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
In-Reply-To: <20240527-topic-sm8x50-upstream-phy-combo-typec-mux-v2-0-a03e68d7b8fc@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_233534_267155_ADE4595E 
X-CRM114-Status: GOOD (  25.68  )
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

On Mon May 27, 2024 at 10:42 AM CEST, Neil Armstrong wrote:
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
>
> This patchset depends on [1] to allow broadcasting the type-c mode
> to the PHY, otherwise the PHY will keep the combo state while the
> retimer would setup the 4 lanes in DP mode.
>
> [1] https://lore.kernel.org/all/20240527-topic-sm8x50-upstream-retimer-broadcast-mode-v1-0-79ec91381aba@linaro.org/

Hi Neil,

Is there anything happening on this patchset? From what I can see there
were a few comments on the patches, would be nice if we could get this
in at some point.

Regards
Luca

>
> To: Bjorn Andersson <andersson@kernel.org>
> To: Konrad Dybcio <konrad.dybcio@linaro.org>
> To: Vinod Koul <vkoul@kernel.org>
> To: Kishon Vijay Abraham I <kishon@kernel.org>
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: linux-arm-msm@vger.kernel.org
> Cc: linux-phy@lists.infradead.org
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>
> Changes in v2:
> - Reference usb-switch.yaml in bindings patch
> - Fix switch/case indenting
> - Check svid for USB_TYPEC_DP_SID
> - Fix X13s patch subject
> - Update SM8650 patch to enable 4 lanes on HDK aswell
> - Link to v1: https://lore.kernel.org/r/20240229-topic-sm8x50-upstream-phy-combo-typec-mux-v1-0-07e24a231840@linaro.org
>
> ---
> Neil Armstrong (7):
>       dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch
>       phy: qcom: qmp-combo: store DP phy power state
>       phy: qcom: qmp-combo: introduce QPHY_MODE
>       phy: qcom: qmp-combo: register a typec mux to change the QPHY_MODE
>       arm64: dts: qcom-sm8550: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>       arm64: dts: qcom-sm8650: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>       arm64: dts: qcom: sc8280xp-lenovo-thinkpad-x13: allow 4 lanes for DisplayPort and enable QMP PHY mode-switch
>
>  .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml         |   7 +-
>  .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     |   6 +-
>  arch/arm64/boot/dts/qcom/sm8550-hdk.dts            |   3 +-
>  arch/arm64/boot/dts/qcom/sm8550-qrd.dts            |   3 +-
>  arch/arm64/boot/dts/qcom/sm8650-hdk.dts            |   3 +-
>  arch/arm64/boot/dts/qcom/sm8650-qrd.dts            |   3 +-
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c          | 169 +++++++++++++++++++--
>  7 files changed, 174 insertions(+), 20 deletions(-)
> ---
> base-commit: d4eef8b2e18d3e4d2343fb3bb975f8ac4522129a
> change-id: 20240229-topic-sm8x50-upstream-phy-combo-typec-mux-31b5252513c9
>
> Best regards,


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
