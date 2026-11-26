Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8EF9606A32A
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 01:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=YKMqwLam;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BnDVZwJL
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UwL1/Y9Np2SEQ7vCzxuMdiAAXc1m9PVT8OTGvtll3bM=; b=YKMqwLamktiYWYcs7hLFrRTr6J
	T6D3xnFIutPsR6ngKcrZWcJdsM8S96unI0PpDyr5k32pQPuc8E8hT/lcZAt006E2GgJ3qSUX3H4jb
	Ij5Kh6MMITkCP+9dNpk/yFI0LQBSZ3NNTeod95QuEwYg8quAvOEx3UNA3VjEWrkFmIj7UstjM/KzY
	fDFkX8yAYkf28WrB0IXX8wqn4AbRMhmSeSpcRqo7pKjhN/WXXgvZIL/P1j2zPml3in/LS7Ut+wDUD
	7Ta1mB59Hi/OEZErvbs7QajWOKm0eMRwIc7ylgK20yS+FM0BjqJtGiZnR2boLvdlhoRcby+bT1UkQ
	VNlUK+kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWO74-0000000BmwK-1aDD;
	Thu, 26 Nov 2026 01:17:26 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWO6D-0000000BmUd-1YsN
	for linux-phy@lists.infradead.org;
	Thu, 26 Nov 2026 01:16:45 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-8b4e18369c8so39072287b3.2
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 17:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795655791; x=1796260591; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=QlSPO9+8YS67Tn4rbTFkn+Zhwur7gCmRYFgUkoNRUs4=;
        b=BnDVZwJLbIDgYnD2Vqu7pgmruQpoY0ER0xLYdiPG8CalFGgOrceE3Q8l444DhLTOSk
         HgbMfcnWUwqOzhtYrNM99mvauHQ8UbCt+3GVKntQQcCp9NTnL3G+cVfmMQBMg852N+pP
         hxAlJUHiSW8MNt3CIXcbOCuPIv1gj25TDEcbr7xcoK1HpLSl2fraqUD0gujeyzGwlRj9
         zTPkc2eiS60fzsXBvnjf7bXsxgQ/Dx2vx7oC3++p/XFaI2hgymXXJ7yS/hjpCrDao1UE
         f2irHm1md9XiFKaKZpjyFiohalvgHdJqzz1IK3uxIRNrw9t6b0YYpJj1NfTRvoEpGFs9
         QVsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795655791; x=1796260591;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=QlSPO9+8YS67Tn4rbTFkn+Zhwur7gCmRYFgUkoNRUs4=;
        b=uRMgiQ06M+QS2eGcEO+fkHNAP8pASxF1SrVRsuKvv9ne9nKpM9hDJ4GG3WmU/OnJ4V
         m2IQHI2c6xAPHdeJbg+E9kjik4Zikh6Frzg4GlA1ngmEFutCqidqWRGL/Pcverq5KxzX
         0uAsUv3RsMrfs5ltjRBZmNSXEJYVz6ti6e4z9z364ktlRPtUo+lI+Me3cL3BvaAQQpuw
         zyto42kXdwQlAmKY8RCrFK5R39ncsAbg+3V8bGbXQ1eb+RmmgCQcY8e6A7jsUS83GKf8
         HPXu6u6kTd1fX7oLPwL4MQv1QvmzkzJcGnMgcocNw6dWbGZIIDBVOcUG2T2ByMC0Ue4F
         MVgQ==
X-Forwarded-Encrypted: i=1; AL+hErEl5H/UjxisrjP9el6uWkBU6zjUk8RvY+jsFQB1QkI5LVVDWD3lCf0J+34mHdRlwCpwYvfjx3q8PT0=@lists.infradead.org
X-Gm-Message-State: APuU4Z+n/q40WZc6PHwdf9DSaNan3QDlbeYTRT1FA8qQG0jAHUs+BNaq
	+V97jIf3sqhtYqily8t3Bt/ByN7fI99M8pL0U6J/HNWvN629utee7OQw
X-Gm-Gg: AZFdTZcKvB1n0DssIRFXbcfdazrUi++dB/mvLRbHSOClQZ5+hOkOWrU3vy3pKFuIhHs
	1kjkGydco8UeqQ5SNS9e1zclG+5mFfyNGv5+Gl5xaRDZF+viGdPElCgydhvMhlkeyMVxZTHt8xV
	eUzg8MXyToYFL9+Y3J6RwEh5t/avbkTm3GxjmKv+J10vFWwQl4QLD5rHIGOy/86v1bTTfG+sej8
	v2FZBMONYEs2UsVodsKB6oHmfEju0tGaIbeC4SPOolg0tayQqygnSK68WVf6XvG7y9Qy8GJage0
	XY7HxNF6sbjxCYQwAWkYvo0xzngzlvGiUJp55XqdPD009hoH0Tb6zM+ZAs4Ajl7ClOvnEFOdSax
	eCYw1P8w9N+nTKoRpc8lMbNlXGigKrfZW0zAkrYSh9xv24wmI2mQ0Q801qrTborLV8UA9kSKgXC
	hVx0pT1ZFsm80cg+/qFxLprzWu4Mwe6RYCakV+0HCsdhrnooc6nLKyLV5jgKS7guj79YMrw5x25
	rcuPiNP6zYGSG7hPeXW0LrUMOccqVJvz/GOLEzGKtZY/MnFfYf08K7207a7Vx1lEOD3CA8kXP0N
	sgdrOvH6cKU7n1XgsOWhn98S
X-Received: by 2002:a05:690c:6a06:b0:8b4:d0ea:ca9d with SMTP id 00721157ae682-8b52045f6c5mr70876907b3.25.1795655791098;
        Wed, 25 Nov 2026 17:16:31 -0800 (PST)
Received: from localhost ([120.244.9.31])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b575ff89c0sm12140497b3.0.2026.11.25.17.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 17:16:30 -0800 (PST)
Date: Wed, 25 Nov 2026 20:16:25 -0500
Message-ID: <9ec2f818084f2e723e8b82218a302258.docular.xu@gmail.com>
From: Guodong Xu <docular.xu@gmail.com>
To: Cody Kang <codykang.hk@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>,
 Troy Mitchell <troy.mitchell@linux.spacemit.com>,
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Haylen Chu <heylenay@4d2.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Brian Masney <bmasney+clk@redhat.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
 Yao Zi <me@ziyao.cc>,
 Uwe =?utf-8?q?Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Icenowy Zheng <uwu@icenowy.me>, Jerome Brunet <jbrunet+clk@baylibre.com>,
 Sarah Emery <sarah.emery@canonical.com>, Ze Huang <ze.huang@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, Cody Kang <codykang@vsit.ai>,
 dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-clk@vger.kernel.org, Luca Ceresoli <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v3 12/17] drm/spacemit: add Innosilicon DP/eDP controller
 bridge driver
In-Reply-To: <20261121-k3-display-v3-12-ec419e8e96b8@gmail.com>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <20261121-k3-display-v3-12-ec419e8e96b8@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_171633_455684_928362BE 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Cody,

On Sat, 21 Nov 2026 15:40:51 +0800, Cody Kang via B4 Relay wrote:
[...]
> diff --git a/drivers/gpu/drm/spacemit/Kconfig b/drivers/gpu/drm/spacemit/Kconfig
> index 8326a7b98151a..4667cb624401a 100644
> --- a/drivers/gpu/drm/spacemit/Kconfig
> +++ b/drivers/gpu/drm/spacemit/Kconfig
> @@ -16,3 +16,22 @@ config DRM_SPACEMIT
[...]
> +config SPACEMIT_INNO_DP
> +	tristate "SpacemiT Innosilicon DP/eDP controller support"
[...]
> diff --git a/drivers/gpu/drm/spacemit/Makefile b/drivers/gpu/drm/spacemit/Makefile
> index b3b148000cf7b..260d316a271b5 100644
> --- a/drivers/gpu/drm/spacemit/Makefile
> +++ b/drivers/gpu/drm/spacemit/Makefile
> @@ -9,4 +9,7 @@ spacemit-drm-y := spacemit_drm.o \
>  		  dpu/dpu_saturn_hee.o \
>  		  dpu/saturn_fbcmem.o
>
> +spacemit-inno-dp-y := spacemit_inno_dp.o
> +
>  obj-$(CONFIG_DRM_SPACEMIT) += spacemit-drm.o
> +obj-$(CONFIG_SPACEMIT_INNO_DP) += spacemit-inno-dp.o

I noticed a corner case when testing module unload on v3.
spacemit_inno_dp can be removed while a process still has cardN open
(say Xorg or kmscube is running and somebody does rmmod
spacemit_inno_dp), and the DRM device then still holds references on
the bridge. When that process closes cardN later, the kernel oopses. On
a CoM260-IFX:

	sleep 20 < /dev/dri/card0 &
	rmmod spacemit_inno_dp

  Unable to handle kernel paging request at virtual address ffffffff01ac5188
  Modules linked in: spacemit_drm [...] [last unloaded: spacemit_inno_dp]
  epc : drm_bridge_put.part.0+0x72/0xb6 [drm]
  [...]
  [<ffffffff01b0b142>] drm_bridge_put.part.0+0x72/0xb6 [drm]
  [<ffffffff01b0b19e>] drm_bridge_put+0x18/0x22 [drm]
  [<ffffffff01c41318>] drm_bridge_connector_put_bridges+0x34/0x7a [drm_display_helper]
  [<ffffffff01b23400>] drm_managed_release+0x86/0x116 [drm]
  [<ffffffff01b13cce>] drm_minor_release+0x68/0x80 [drm]
  [<ffffffff01b1ce2a>] drm_release+0xd2/0x102 [drm]
  [<ffffffff802b325c>] __fput+0xa8/0x248

An open cardN pins spacemit-drm only. The last drm_bridge_put() comes
at the final close and reads bridge->funcs, which was in the module
of spacemit_inno_dp that is already gone.

Other DRM drivers with the same structure, rockchipdrm for example,
put the bridge driver and the DRM driver into one module. I think doing
the same here (add spacemit_inno_dp.o to spacemit-drm) is the better
solution.

Luca (added to Cc), is module unload something your bridge hotplug
series [1] is meant to cover?

[1] https://lore.kernel.org/r/20261118-drm-bridge-hotplug-v3-0-44bb3b4a828f@bootlin.com

Guodong

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
