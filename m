Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43436C5AC67
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 05:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jLLMU5NnKWlGkAclZmCbQ2kJkG3Td/M7Jcn83KuvKhw=; b=aLbQgov6elnimHXSH/DY7hX5KG
	T0/rcz4T9T/MF5S+ZnPIRRKfsxGIW0CC6zJaItBr3hmcd+EsRX0/kkt/UekwYVtyqIy2fAdUoEldk
	zpTprIhngvF3bwv4lTf2OAqWOIuM/Mj9XdXpMW6CluBYZORkGMnM2y2MzFTncBRTqxdUVkbQ/b9A1
	nZ+DJYkGMUGOl63dujY4mgGX9zzZsRIaybhCYyPYsH4D+GK1UibHqI1H4WqR+1WjyReidBEaVyMP0
	8Kod/zecbj+HctELPHdfNBotV94QPCeANvJZKG7lvasYUD0Yc3P5cnFOGqp3rlgqa+NMoa6XVhuK3
	KuPBy4dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsZEG-000000093d7-2eJi;
	Sat, 08 Aug 2026 05:04:16 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsZEE-000000093cR-1QnP
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 05:04:15 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2cace91f112so2480785ad.0
        for <linux-phy@lists.infradead.org>; Fri, 07 Aug 2026 22:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786165453; x=1786770253; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=8uD24huWZm6XpJh9wT7WOr3BJsSLtwFgAarL6fJ9kQ4=;
        b=VIrSnP6UWm76BnKBNDY0J3wdUZJ45wL1N1018jVOX5iTNavYup0EACJVc5oCDRbMO3
         WZlOjSqRbwyK2/L4Yhkw/TDYrUiVvovJzBMJ/O9pnEAdkpY4OO7T7yz3KyBWnbFZTaZH
         mhzPsDOH3/2gba4/jNiUFosj2xwNhR6fjw7LeUSlAVSzdZoJZblF8lSn2CpKJHNv8+qX
         F0HoXvtdt7Zg/FfZ/RTAGLYLl+okG1h8Uc4aXFO7/+PTHDj6er0pQLUFrc0WuTHh9HcC
         8T6TDSyi1FJNQFuuqj7OIt3VjIMPhkqxtZowu/TBXfz83XZeWpr68icMRnQRVBpP5lrU
         ZwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786165453; x=1786770253;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=8uD24huWZm6XpJh9wT7WOr3BJsSLtwFgAarL6fJ9kQ4=;
        b=hRfJ62/68ebt7lAmVGhV1rsRwFlKqP4AaVU8SfrFSJxSnL0PIN18GC1wFs8PiVOVr1
         FY+2/WEVAB76YaR8oLjVQdG8Uf62xtrnuJQWWEHK4xv4ModlZdJCAHH4HAYzD6gJUHy7
         JyvLhnzELtu2EagTuzNjinF8qhSox5AvVRyKu/NvRCzxXgW3B3LZ+pgFKH0vCElSnkjK
         jlnaaelGwrOvkoHj58C7ZWjrl9uJY5prIaY6fZhpKXbG5lOdry2xxgwUWe1COQrC6ME/
         n3sM/X99OJ/9MWYS0D28OhO75W+oeTzaKOM1iJ3R8rztdHhip9nv6vt0EC9jU6VQmYzZ
         Beuw==
X-Forwarded-Encrypted: i=1; AHgh+RrnYl//yBrwPQrROlQfHPOtjE9uROtHcjiGZ4vGaqCIqHY5lJFbbTbW8x/6QFx+rNS/GTjTC2FXD1c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ2bp4NU6vL5xF46KSxNxWapLszYMlXWTBfYNG0W2mAOeia+27
	+FTkfxHZ7Vwis9a6+O5Qpd1XNZQrLfUsICjeQmP0DUXcy2UnFAUFho+r
X-Gm-Gg: AR+sD10tK9S8za0mMYuFzGMYDastpy/PW/Awqq26BY2rSD+IknD/aO7FqyuzxG9kEM0
	2N8yd+L6b1PCYWm5gGQSNpiMJBz0haoQTN2H//ZAeOEdMftRHUGHy5InOg7icV4TtJfdC1Yi8wh
	PRGZ3unm4yrvZDhgLLDTz1Ht5rIGSwnk8i0R9ULCRjoX+gGCLG+PuqpGJ2aAG/owAdy8o4cJCLq
	h27IM4LgNZKF3x0ZKpPWKYuPOvaGAcu9pPGDKls0LOuPdr9GHu9HaAmLASF597ZJA4n9AE8FKNL
	xbmAwB52tTq90mJ0zWGsZAnT/WTl/wAgVQ5smgoPDWd27q4ezD4XzKzFDcU3DVqDdz57QJzt3f7
	M6BGHJ6mM0QoGBE4kMrjr86FbPf2wQJqAmZsTAtzPgEAfkcTrOKpyVudc9GEbj2w//gBngFQeF0
	LOkye+u79uUIjub6n6iM9L5M3Mi8d/YNGxTQ==
X-Received: by 2002:a17:903:fa5:b0:2c9:d8c6:1dc3 with SMTP id d9443c01a7336-2d0ca1611famr339026475ad.0.1786165453023;
        Fri, 07 Aug 2026 22:04:13 -0700 (PDT)
Received: from localhost ([2a12:a305:4::40fb])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2d14cce7830sm15452855ad.29.2026.08.07.22.04.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 22:04:12 -0700 (PDT)
Date: Sat, 8 Aug 2026 01:03:52 -0400
From: Guodong Xu <docular.xu@gmail.com>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: codykang.hk@gmail.com, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Haylen Chu <heylenay@4d2.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, spacemit@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH RESEND 10/17] drm/spacemit: add Saturn DPU KMS pipeline
Message-ID: <wr3264hzlya6zep433nr3u2acukizilkrqpkj444kfqeyaeorj@2rc4zo2cqcer>
References: <20260725-k3-display-v1-0-6de34d80e86c@gmail.com>
 <20260725-k3-display-v1-10-6de34d80e86c@gmail.com>
 <084a860a77f18aaafcda4b223eec4fdcd96e75c9.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <084a860a77f18aaafcda4b223eec4fdcd96e75c9.camel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_220414_421024_159610CE 
X-CRM114-Status: GOOD (  17.59  )
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

On 2026-07-27 09:35, Philipp Zabel wrote:
>On Sa, 2026-07-25 at 00:51 -0400, Cody Kang via B4 Relay wrote:
>> From: Cody Kang <codykang.hk@gmail.com>
>>
>> Add the atomic KMS implementation on top of the hardware backend: one
>> CRTC and one primary plane per DPU instance. atomic_check validates
>> the plane rectangle 1:1 against the mode and sizes the per-channel FBC
>> line buffer; atomic commit builds the cmdlist batches, maps the
>> framebuffer through the DMMU and arms the cfg-ready handshake, with
>> vblank events driven from the DPU interrupt.
>>
>> Signed-off-by: Cody Kang <codykang.hk@gmail.com>
>> ---
>>  drivers/gpu/drm/spacemit/spacemit_crtc.c   | 815 +++++++++++++++++++++++++++++
>>  drivers/gpu/drm/spacemit/spacemit_planes.c | 376 +++++++++++++
>>  2 files changed, 1191 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/spacemit/spacemit_crtc.c b/drivers/gpu/drm/spacemit/spacemit_crtc.c
>> new file mode 100644
>> index 000000000000..b75ff6320501
>> --- /dev/null
>> +++ b/drivers/gpu/drm/spacemit/spacemit_crtc.c
>> @@ -0,0 +1,815 @@
>[...]
>> +/*
>> + * The assert and deassert orders are not mirror images: the hardware wants
>> + * these.
>> + */
>> +static void dpu_reset_assert(struct device *dev, const char *name,
>> +			     struct reset_control *rstc)
>> +{
>> +	int ret = reset_control_assert(rstc);
>> +
>> +	if (ret)
>> +		dev_warn(dev, "failed to assert %s reset: %d\n", name, ret);
>> +}
>> +
>> +static void dpu_reset_deassert(struct device *dev, const char *name,
>> +			       struct reset_control *rstc)
>> +{
>> +	int ret = reset_control_deassert(rstc);
>> +
>> +	if (ret)
>> +		dev_warn(dev, "failed to deassert %s reset: %d\n", name, ret);
>> +}
>> +
>> +static int dpu_pm_suspend(struct device *dev)
>> +{
>> +	struct spacemit_drm_private *priv = dev_get_drvdata(dev);
>> +	struct spacemit_crtc *a_crtc = priv->a_crtc;
>> +
>> +	/*
>> +	 * Assert before gating: a reset asserted into an already-gated block
>> +	 * has no clock edges to propagate on and leaves the register file
>> +	 * untouched.
>> +	 */
>> +	dpu_reset_assert(dev, "lcd", a_crtc->lcd_reset);
>> +	dpu_reset_assert(dev, "esc", a_crtc->esc_reset);
>> +	dpu_reset_assert(dev, "mclk", a_crtc->mclk_reset);
>
>It looks like these three are mirrored, and could be handled by
>reset_control_bulk_assert/deassert().
>
>> +	dpu_reset_assert(dev, "aclk", a_crtc->aclk_reset);
>> +	dpu_reset_assert(dev, "dsc", a_crtc->dsc_reset);

Is there a reason these two cannot be mirrored in order? Please double
check. As I checked the vendor tree, the suspend/resume side appear to be
copy/paste rather than a deliberate ordering.

Please double-check. Unless I'm missing something, I suggest to bulk them.

Thanks,
Guodong

>> +	usleep_range(10000, 20000);
>> +
>> +	if (a_crtc->core && a_crtc->core->disable_clk)
>> +		a_crtc->core->disable_clk(a_crtc);
>> +
>> +	return 0;
>> +}
>> +
>> +static int dpu_pm_resume(struct device *dev)
>> +{
>> +	struct spacemit_drm_private *priv = dev_get_drvdata(dev);
>> +	struct spacemit_crtc *a_crtc = priv->a_crtc;
>> +
>> +	dpu_reset_deassert(dev, "mclk", a_crtc->mclk_reset);
>> +	dpu_reset_deassert(dev, "esc", a_crtc->esc_reset);
>> +	dpu_reset_deassert(dev, "lcd", a_crtc->lcd_reset);
>> +	dpu_reset_deassert(dev, "aclk", a_crtc->aclk_reset);
>> +	dpu_reset_deassert(dev, "dsc", a_crtc->dsc_reset);
>> +
>> +	if (a_crtc->core && a_crtc->core->enable_clk)
>> +		a_crtc->core->enable_clk(a_crtc);
>> +
>> +	return 0;
>> +}
>
>regards
>Philipp

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
