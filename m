Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B821CA5FA5
	for <linux-phy@archiver.kernel.org>; Thu,  1 Oct 2026 08:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGmoy6ReteOf04U7O+/elMXba/XZV/Ntob10Jc78rYw=; b=W3zsV769ssQhjf
	Lls+vW40SlCEikl0mVFPiUfMWT/w1Ma0hkouKkDgvanht+S8G9vOlgx55LWamdpvPsT9DEuZRlb+/
	QETmrIE5Ijle7wiXeiQsqEP0XXMJSlYIRFTOqq+yZHSAoomxQyPtQ1lU7ZHO9PV867/+zZv4GlRG8
	zhjW56fKyAw/i+3CYDBPocf2KAKSdR86JXcJwcm0qd0gDe3pE/+tTqQE7Sy7ZcS1gm9ug3pJn/4ri
	97/HzZn3Tnt7m9HpWSS61BGVlD+2JcpqIia9E2tZtNUS48wo6OZBs68j3B2JlcpeZKGPRID4fNwEY
	psU8TkS33Czcw3KtzvqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCT9-00000008GOl-3htw;
	Thu, 01 Oct 2026 08:48:47 +0000
Received: from mail-pz2-x28.google.com ([2607:f8b0:4864:3b::28])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCCT7-00000008GNe-08TE
	for linux-phy@lists.infradead.org;
	Thu, 01 Oct 2026 08:48:46 +0000
Received: by mail-pz2-x28.google.com with SMTP id d2e1a72fcca58-88884f63ba1so142863b3a.3
        for <linux-phy@lists.infradead.org>; Thu, 01 Oct 2026 01:48:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790844523; x=1791449323; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=xkYtUBxUyQXi2wHjivuAC69Sw5c4fAlKZiLrX6CMriA=;
        b=eoYSOPX4OnyUESUwFLsMX8Oya4uob9cQSHZmLWlm5Xrx+4sX/2I2QOOf9Z1MuJELRp
         Leyq+dbGSx0EBkXpJdRACryDpOYOZPeA9bVvHL+YCngA1sJ+uo8Z5evF2rpuDxyhYzke
         Dcx56z0wp2vfSpetrp7L1j4hVx3Mw8n4o8H63jCZJJ13X1PcZpItSohvHefMFgm7nB75
         F+AmlErADs5C8yb4QSTh3PxE6LNUeqb23HTZxXs5qlI843OwJf+lxdXRCqDWp55sxkzO
         ldXP0Yjcstt1iM/q3tIkIzqeNve7Aq5XinqPUUfU8zSE8c156haXGmSBmdySYM+iLBYn
         +5eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790844523; x=1791449323;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=xkYtUBxUyQXi2wHjivuAC69Sw5c4fAlKZiLrX6CMriA=;
        b=CKQr8LVZgLBoIwzpzHn4TYk3DAEPNzuG56n/l3ehyQ7dGXpC2p0ybVydVUCas/lsMv
         rJwBtlguol8k/wSaPUEEPLu5orxTWaL8WsDYLfFpznFVWk8jkbg91/QeLsXR465P5fIl
         UIaM2nzoFehEC/awHhgAfpRZRVNBwHYdqlT2+nHPuF8aWgY6we18bhu2R3X+GqPE8s2I
         BZiFa5bzjYjfFSskpjB1K+pdEF+Ds4okCwwk2cIyXByKaCXAJhcQxQpeYRPLSOcv43hl
         gfLa+fU+4ulTVCn4f97MWmO9zrCm8PyHbIlooMghdvHMe8LqtU+z2BFVjRxKk0OOApvz
         Z6+Q==
X-Forwarded-Encrypted: i=1; AKwUvBxn+LTrUovzr3q7f86S3smg8HANlpqamTE0rbUUINjpYjUz1HPAaFeLmP9QFUpjr67LwNQhaJSRlo4=@lists.infradead.org
X-Gm-Message-State: AFuF++lzuH8RN1QVgyUbYOdChaOmZjEKM3aV0grdmvChePEPANOjIO+d
	euMAqJ0F4kJXWd+oUBv/Fi43I4vlQKressJppi9DpBqmGNmVjmN1Eudw
X-Gm-Gg: AYBFou1OxBcpmdjQPdOpZgWepXcN7le7cxc1K/l0X+cm8lqhNRrlddjE3n5bIQ20+g9
	oxdIA1pWf43HUsvGb4x/QjcP9ZYAJtK639PmBPHqWJrQZyI2l94C+Y8vJZdxV0j9Gnzwtmc9omG
	yRNh3hUCV52Jm1uG0L5mrViuvDkadL2MGVfS4mM4pFMXVCvAfTeX3M05zmuzBMI6ETG4CwhRz4q
	nfSgZiQ71KqiH/3YHrXOum0ACYMG32LDiKWTC2GWdvRYW4zTS+SXQK8GO6GXvX9WmryRCnDFmjd
	/XMwEgnacunn2u8SRR7ze3fPLkNSyLF/uAC7l37m/k/5yXPk5Eus3JKtsoCulVsEYquxpK4HYlW
	MqLkeci3gHR1Nals5jOJEuMuxjGAcjZxZC8mMUGmAn39wjMJcgOjahJESU90vem/SQgzYHL23rT
	63VZSbOFA9dcYPnPd6/hY0U6XQZGndP6Cx9KUqjeEp5UXkJtcfvp48RumJ+z1QkUYopc1NjrFDC
	q3cYdM3z7+5Qo2p1srCg2N5m27DFpntbED9Dbi+VerAVna6PnJhIp4=
X-Received: by 2002:a05:6a21:9218:b0:3dd:85a8:cacb with SMTP id adf61e73a8af0-3de9e8a898fmr4391298637.34.1790844523436;
        Thu, 01 Oct 2026 01:48:43 -0700 (PDT)
Received: from [172.19.1.47] (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc7e546039dsm1125695a12.8.2026.10.01.01.48.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2026 01:48:42 -0700 (PDT)
Message-ID: <92216f9b-6c8a-430d-9bca-eaf583106a3e@gmail.com>
Date: Thu, 1 Oct 2026 16:48:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/3] arm64: dts: nuvoton: ma35d1: add USB controllers
 and dual-port PHY node
To: Joey Lu <a0987203069@gmail.com>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>, Jacky Huang
 <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>,
 Hui-Ping Chen <hpchen0nvt@gmail.com>, Joey Lu <yclu4@nuvoton.com>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260929020854.1282339-1-a0987203069@gmail.com>
 <20260929020854.1282339-3-a0987203069@gmail.com>
Content-Language: en-US
From: Jacky Huang <ychuang570808@gmail.com>
In-Reply-To: <20260929020854.1282339-3-a0987203069@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_014845_066337_782BF0AF 
X-CRM114-Status: UNSURE (   8.73  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org



> Add the USB subsystem nodes for the MA35D1 SoC and boards:
>
>    - usb_phy: standalone PHY node with #phy-cells = <1>, covering both
>      the OTG port (PHY0, index 0) and the host-only port (PHY1, index 1).
>      Uses nuvoton,sys phandle and HUSBH0_GATE clock per the binding.
>
>    - usb (DWC2 gadget, USB0): phys = <&usb_phy 0>, dr_mode = peripheral.
>    - ehci0/ohci0 (USB0 host): phys = <&usb_phy 0>, companion pairing.
>    - ehci1/ohci1 (USB1 host): phys = <&usb_phy 1>.
>
> Board files (ma35d1-som-256m.dts, ma35d1-iot-512m.dts) add pinctrl for
> VBUSVLD, PWREN and OVC signals and enable all USB nodes.
>
> Signed-off-by: Joey Lu <a0987203069@gmail.com>
> ---
>   .../boot/dts/nuvoton/ma35d1-iot-512m.dts      | 36 ++++++++++
>   .../boot/dts/nuvoton/ma35d1-som-256m.dts      | 36 ++++++++++
>   arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       | 65 +++++++++++++++++++
>   3 files changed, 137 insertions(+)
[...]


Reviewed-by: Jacky Huang <ychuang3@nuvoton.com>

Best regards,
Jacky Huang



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
