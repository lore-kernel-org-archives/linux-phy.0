Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D80606A68E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 14:06:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0ayDmDQW;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=J5sHknHB
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:Cc:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=qqWmPlsrLR33paltmBxxP03EAF4YHBk2xMIOhNIwDZo=; b=0ayDmDQW7WwHXccO/W3lL5Dnje
	faXQVCWSRqyuLfptKVFQxqmkdpI1oI3tCiX3RhanoFzZxJpUOD1kuAMbku+pgXB0pqBg4Bx10FxrP
	DmtOoWoa7dULQmh1EiQNBYfzYDaoo3u65jcV5r3H9lS6WjXvXOzDmeYhQw/ZvjLiSdSuyHvRKg3PX
	jCcYSFFQfItlphPhoHxPjz9I79oM4Xg3Ozp+HYZ/Ps9e2hLadPYV0nQ9fGMJHFwRgKMlzm+BEikFu
	XQ2vNKsKSFPr5C6XhZmVmFWKLeO0596UYJX8O5mJRRlP4ybiQxHOvkwko3/ZI5sAET0ITu4yGO7gI
	r2Sxi1hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDe8-0000000A6AW-2dBU;
	Wed, 25 Nov 2026 14:06:52 +0000
Received: from mail-dl2-x09.google.com ([2607:f8b0:4864:38::9])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDe5-0000000A68g-2n0C
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 14:06:51 +0000
Received: by mail-dl2-x09.google.com with SMTP id a92af1059eb24-1397ad3d891so813032c88.0
        for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 06:06:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795615608; x=1796220408; darn=lists.infradead.org;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=MP09FK8BKciK7H/NzSBFI5ee4XjfPiGr8z/17qMy3kI=;
        b=J5sHknHBY8ROd2WtYYSYd5C+F9fmYg01+YLkkXzU6c/22N9nHvVKReJxt291lCjYi1
         DLJfHIGRXgU+eZ2IX/NOFYgAoOXdGqhPieIua2bVids1JFrdRea2LXbxh6IrWSY0+odP
         trUvtHlW8YM3Xtoak0Clb1QQXZaYRxT7teKA1Ddhz2eyJmZoHNUXxC464GlS/IkKrSpR
         65jVidziop/nbVmoy7JOCUrEw2rrtzgcOvrD1OcRblHErpkY4Mqc5AAdl6jI3PySvdb6
         SSXNoTQmYw2NCvRdaamuc/Q63QYnHomW7LWjadnxUx8a1lf96VWOFeHhV3IGmUdPP/VV
         e5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795615608; x=1796220408;
        h=mime-version:content-transfer-encoding:content-type:references
         :in-reply-to:subject:cc:to:from:message-id:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=MP09FK8BKciK7H/NzSBFI5ee4XjfPiGr8z/17qMy3kI=;
        b=Y8Pt2DiwLkKl4izteuneZzZAIEm6D3TI1t3JWaudSUdb55SHdRAhIPUXjlDhrdwKMz
         pa5Y3RtPiEpdar5s7/CbkVKARY68GPS/OED5lNZM3b4asDNQozw3s7ppnfsfxShcOPzP
         ieXd8YwYnQsdkQmRVl4EM5V6exjzOb+lPItIkcHkEc85KWdwwgRBVxZWksvaPfjhCbvs
         LQ6E8igGlxgzxgMDSNJaM0ScA3JrJIX60wIv3IcQE+fp7Zs4pJkjZNo2Ln3DciVishpM
         oIEJqGyQp5rAXVUemMtynRVEM7lEGxLm7C9kemaCC9f9Qww8aydyqUu1zZwIpqZVloXN
         wkdA==
X-Forwarded-Encrypted: i=1; AL+hErHkbFSjxf3mIsnHC47/Fmp3gRSwiyX5ThLIoGwHyLKr1fw7/rYDenFc5SL/8KveyqMK9horTSLDajI=@lists.infradead.org
X-Gm-Message-State: APuU4Z9o6cESv4oceqQftYRdfagjGumCTfceKtWSTUU0LPLF6SynvWN4
	5B40WxSAJRLjyp0EGsjUCNdNjXCp4TV8vIsoJIc6XhF7KbNXIG190ony
X-Gm-Gg: AZFdTZdCIP/F8FYUanTfi61neJlcwaInCK+NcVEz2y6ZJ4boAo5tYEqAdyG2eQ+mQEw
	lUGFETgf6m1WGAJmey7z2gx+43iVeaDJOvOGwL/qshcPS+J6NcFkmEIlem0RqKEeA57bYb43VgC
	wXmwzSlE04DtbZ6YeNoVrJ+RykjoTILxiz6bMqMV6MKeqzFKaNv1dgxHUtX7hQRrnOU4uf/uqyj
	wfovHlm9swAXXoCz1DydtmamSZrHczervXza7VdQvatDSLBTFMPf03Ptw4jAHI99LlpNYmOBj+k
	F3U/70qeA280H85UngJ2Cu2yykIDfZVzNOpNkoFWa6lZ3Pt/esq4mgtN1clGkdPMAid/5d5T3jX
	8Ny/L3XqNa0WCRKmQPxTzDekV3heROQse02miMZ0rXzjaW7GViSWaF7LBKsWeL0EkGuISh6g8Zs
	p/SivDNE3V9qbyRFnruaSAc2NhRPhr/lN40stIkhKhjZ4wK5GVPmCosMNs0z3txxlZudhKHocgk
	WkREY+PLG+xWjWG1zhxyvygZ7JoTcM83N72YSe5TJ4l65V7EBWlsAj92sUqn+AZ7OZOcHM9lNFl
	HAim17RIpbbxTSaR7wdZ1GSM1bJwqPKAzasS7ooFQg==
X-Received: by 2002:a05:701a:844e:10b0:1b0:20:6444 with SMTP id a92af1059eb24-1b56e185990mr10444498c88.39.1795615608143;
        Wed, 25 Nov 2026 06:06:48 -0800 (PST)
Received: from localhost ([2604:a840:3:1e0::3003])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-38567cafec4sm61981028eec.26.2026.11.25.06.06.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Nov 2026 06:06:47 -0800 (PST)
Date: Wed, 25 Nov 2026 22:06:43 +0800
Message-ID: <eccf3f1e6dc94fbe847d112e8804c053.codykang.hk@gmail.com>
From: Cody Kang <codykang.hk@gmail.com>
To: James Morris <jmorris@namei.org>
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
 Guodong Xu <docular.xu@gmail.com>, Icenowy Zheng <uwu@icenowy.me>,
 Jerome Brunet <jbrunet+clk@baylibre.com>,
 Sarah Emery <sarah.emery@canonical.com>, Ze Huang <ze.huang@oss.qualcomm.com>,
 Dmitry Baryshkov <lumag@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 00/17] drm/spacemit: add SpacemiT K3 display support
In-Reply-To: <87eaeb2-b6e9-9198-b9cf-7e9f96bdcbc@namei.org>
References: <20261121-k3-display-v3-0-ec419e8e96b8@gmail.com>
 <87eaeb2-b6e9-9198-b9cf-7e9f96bdcbc@namei.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_060649_708888_426DAE0A 
X-CRM114-Status: GOOD (  19.44  )
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
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi James,

On Tue, 24 Nov 2026 19:53:11 -0800, James Morris wrote:
> On Sat, 21 Nov 2026, Cody Kang via B4 Relay wrote:
>
> > This series adds display support for the SpacemiT K3 [2], a RISC-V SoC:
> > a new DRM driver, a new PHY driver and three new bindings.
>
>
> Tested-by: James Morris <jmorris@namei.org> # CoM260-IFX, DisplayPort
>
> Assisted by an LLM.
>
> v3 on v7.4-rc1 works on a SpacemiT K3 CoM260 IFX with an Acer EDB323QU
> (2560x1440, 144 Hz) on the DisplayPort connector. The DRM, DP and PHY
> drivers were built in, and Linux ran from an initramfs with
> clk_ignore_unused.

Thanks for testing v3. I will add your Tested-by in v4, on the PHY,
DRM driver, SoC device tree and CoM260-IFX patches.

> The board has the vendor U-Boot 2022.10 built on May 21 2026, not the
> uboot-for-k3-display-verify branch. That link in the cover letter
> returns 404 for me.

I will drop that link in v4.

[...]
> Two observations:
>
> 1. The HPD interrupt never fired. /proc/interrupts stayed at 0 for
>    cac88000.dp in both boots, also across the unplug and replug, when
>    the stream was running. The connector poll caught both.

Same on my CoM260-IFX: the count stays at 0, also across an unplug
and replug with the output on.

The external DP connector is polled on purpose. The interrupt needs
the pixel clock, so it cannot report a plug into an idle port, and the
bridge leaves out DRM_BRIDGE_OP_HPD there.

> 2. With the monitor asleep, nothing was displayed. It kept HPD high and
>    returned a generic 1920x1080 EDID. Link training passed at
>    2.7 Gbps x2, but the monitor stayed dark until I woke it by hand
>    and a later modeset retrained the link. The kernel got no event
>    when the monitor woke. I found no DP_SET_POWER write in the driver;
>    could the sink be left in D3?

Right, v3 never writes DP_SET_POWER. v4 will set the sink to D0
before link training.

Cody

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
