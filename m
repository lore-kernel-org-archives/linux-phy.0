Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D0CAE909D3
	for <linux-phy@archiver.kernel.org>; Tue, 17 Feb 2026 16:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gV/nGaJuHjSprssyYnm7tvGsy394Eam6vxrQx3ma8I0=; b=zCovKVN3sbcbs2
	aOyWMWf8LocTIL+xSFVuh5uKfIpnAs2X8Eq+dpZgPpuJGB4q2Yu31trQjPtUXxaT2GqbseizeMakX
	ZATvTw+AV/t6R4ilT6CtVujmCzWLSC7W+/MoH7W98Pvjj9qvF4BEqXt0XtsCihEY0IeoygdZMbUuX
	SxoEvQqpUs4k7SyHFrhaohGwq3nsuBiXesf4p4VkJiD5+ESlUca+yzo4J8G40ibpZMJafisKqvMDA
	tB59+6ZZ9o+XAudiTxFH2AgrPlrQFzli/3knPaQazSGbUnE48n0SGEW1WyPOhJygHmApZL+4dYm2f
	bV9IlRMXuK9KXqAaG0Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsO5C-00000008a5W-3UBa;
	Tue, 17 Feb 2026 16:37:54 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vsO58-00000008a3v-07IT
	for linux-phy@lists.infradead.org;
	Tue, 17 Feb 2026 16:37:52 +0000
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-65c20dc9577so1710887a12.2
        for <linux-phy@lists.infradead.org>; Tue, 17 Feb 2026 08:37:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771346267; cv=none;
        d=google.com; s=arc-20240605;
        b=Vw61pBol8WCFqt+w73vhZaAgVnKgLRm16R1QaeW+KabSYMbReCVNR52kjsinRGjUHt
         PO+26P3UcaAmaomVl3UMxwDxi3VaS2Gy7t+DAk+AFmiK3RMupg5YcA/KQdVW1QjhpowK
         nnbixQP/zY8wD3VE+SPgryNvkA1TT35vHrk4CoxKD/AfmvAyCDk2BiI+zXH5+hG7uAuA
         af+StAm6m18Lda0ztufdajb70QLeQdEmxFqJmDseIOaRfviLXJYB5Zb3QuvrO2iYpuht
         znHWW+oAFpnZ3IXY90onbZIxmWxnx/2GEUtnoV3ww3+6aftesKpmDrk/AzuX9A+FF5JF
         bQzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        fh=dLOhTpbPfCt0/l2CcVUyfvSTi5b7d/8y/vZhrc+9kR8=;
        b=HFWmjT5NBrt6ek9bleQD0HaMq5c5BzgRJKLEhvVIk15efV09LxuO2ZlExpJ57geBCo
         wj+5IOpRSyJPSyilbUrqYMBEgATsHxdJ5LcgM5cXBNHkLhAImjyx291y+SKP2otjD6tw
         SjJ3s8UP38RRsQl8rLbj9zwj6RWXc4aIkpgawkFW4b4uTJqDC0W1d8iBZWJX/bM8xVvD
         a9+pCgu3QHv4NfnWSFfa9sQ9CF1j+tuwFlDw9590bQxIlsdhlPRg7eDxvwktOltthMyP
         InNOiBKOzxfO7EbjHLzoSNoeaLQPLIDyx/NTP/grSD6GGeTqVmtb9A5Qj748Uv1wZvAE
         /lfQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771346267; x=1771951067; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        b=HQI31/0pakNEaH7kgDRrAcBjXj3DnE41+mkIzXVr6z76QOMZeDs1h9HIpEyBuluNVN
         s/vsLNUFY1eV4tg4YyCherla9PPjGWJ/yanr51A9X0dOMkPckaC2kK5ZkqJ+dzSI9Iiq
         59eIsKctKvOSrMbssJU1NEAqQXuYdtdE0OBGKslQvInoutXuV3jccp3B9vdHPOSPsOji
         5Q4/fbY4biPHvvaHR960vwpkIHIy7wxd5tOwY7uFBqt82pbMogbgT6KBh/Oc9RPUK1Rl
         3jcHkYEUvoB2votg1ZnaJGXNkZU6aul1HtNegZKXIfoH4bYpPyQkeV8pqvZlqvLu9ZYd
         kJgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771346267; x=1771951067;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eIGbAV+8Vnm23slA1If+Si9qq/awHjco1XJ0AGN0iyQ=;
        b=pmX+CcbHfxihyyPUmTR8XpxvsK2BOl67oq9cXRYJ6pEoz/4kAcJ5iOS9zvX/foWQt7
         hQ7kKP/Vt2BRq5jHtyxoKHmI09S7tLvQgvlUMGA0VzpSL2WodGDfDUSXGfL0bGQE3SNY
         2U/LGqrmgFtJWudEQTQWcufqbpt1Yf12u77LN23v3omdp2M1lKzCmGDmR4rBvPywlgs/
         obvloin/ItP+KOvqa+jomThrK4D1WXKLHuOWc+M1+Adb3uoUhnADjTyiOwNs+bNw/zEA
         pXnu210qAWHE+OEDegyKdK52p7mEP0YwO/XFwpJq+wQAm3ai6r5q2BR4XUzoBt8DTnf5
         7HNQ==
X-Forwarded-Encrypted: i=1; AJvYcCWkpRzrmwQDH1ymsJAkt+oORXrGUBRik2nANVqFZadwn6exYauZl2NmN7+YFw2LEdqscBkFSotzB9c=@lists.infradead.org
X-Gm-Message-State: AOJu0YyRSx0pFfqvrl2cPyTdg8iWlrRUzYy4276MwO6uIUy2xmkLbvrj
	FRjylMrnPM74x4cuKvm/uxKGd3Cix53cpH7nlt4m2F0XEamUj7jQTDIwmlX7pcWXAy4fRH8y2GB
	lsOrzPGy7yIIzoLa1forQ1QfIb3hPfho=
X-Gm-Gg: AZuq6aJBulvLFAj8x1cDcJl+/13LbYo7Rha0OcKXHShW3dYhQJG/yttMXIGzoaVA3ab
	jphIlTA8qF1zBw9SGUaBpm4eQzq4XRJAKU2tZnCufZ9AJNPhS5MquRJ+zKd4QoQWZ/+ZbuGmJQL
	hnQTlzeKjl96ONn9FfSTCHdllytc9ozIoKed8SZh9LzsRKKKyAgZqf9Hj5rM0po1lHMD/I1Sws8
	Uw/8/yIAaqnD19JsuNX40I2nt2vbt1Zv3J4d9AjnXvVgu3NiuUwLRCmhXEW5+z+/aIiQPKtUx4i
	AVZbX48wgmalcIuH
X-Received: by 2002:a05:6402:3648:b0:65c:1f0f:e6f6 with SMTP id
 4fb4d7f45d1cf-65c1f0fee06mr2535558a12.22.1771346267257; Tue, 17 Feb 2026
 08:37:47 -0800 (PST)
MIME-Version: 1.0
References: <cover.1771258407.git.l.scorcia@gmail.com> <ff920a7cc94f2b0c03d4bb55142030fded30d07c.1771258407.git.l.scorcia@gmail.com>
 <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
In-Reply-To: <20260217135828.4hgbyhnz5nuzm6p7@skbuf>
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
Date: Tue, 17 Feb 2026 17:37:36 +0100
X-Gm-Features: AaiRm51UVemOzhQMk6xoVI4EJaD4w62lgA3q3kyqzB9n5tt-MdAm1A1cRwc2sAA
Message-ID: <CAORyz2L6_4yLb7t6-H3MjCu7QJtPF0QTvdsvdBw8f9zTey_tBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] dt-bindings: display: mediatek: Correct
 compatibility for mt8167-dsi
To: Vladimir Oltean <olteanv@gmail.com>
Cc: linux-mediatek@lists.infradead.org, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chunfeng Yun <chunfeng.yun@mediatek.com>, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Jitao Shi <jitao.shi@mediatek.com>, Fabien Parent <fparent@baylibre.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-phy@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260217_083750_923543_234141BF 
X-CRM114-Status: GOOD (  29.75  )
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

Hello Vladimir,
thank you for the reply and explanation. As a new contributor it is
greatly appreciated.
Those patches are definitely intended for next since as far as
I know there is no mt8167 device using upstream kernels out there.

As for the Fixes tag, the rationale for it was that it's ultimately
not coherent with both its original author's intended usage [1] nor
with the current code as it's not present in [2], possibly due to the
fact that at the time of the original contribution bindings were text
only and less accurate, so I described is as a "Fix". I understand now
that the Fixes tag has a special meaning in the merge process so I
will just remove it in v3, it does not add much information anyway.
Also thanks about the git commit prefix suggestion, I didn't know about it!

I apologize for the confusion and I appreciate all guidance from maintainers.
I really want to do stuff The Right Way, it's just a matter of moving
along the learning curve.

[1] https://lore.kernel.org/linux-mediatek/20210406113631.2675029-3-fparent@baylibre.com/
[2] https://github.com/torvalds/linux/blob/9702969978695d9a699a1f34771580cdbb153b33/drivers/gpu/drm/mediatek/mtk_dsi.c#L13061

Il giorno mar 17 feb 2026 alle ore 16:35 Vladimir Oltean
<olteanv@gmail.com> ha scritto:
>
> Hi Luca,
>
> On Mon, Feb 16, 2026 at 04:22:14PM +0000, Luca Leonardo Scorcia wrote:
> > Remove the dedicated "mediatek,mt8167-dsi" compatible from the device list and
> > describe it as compatible with mt2701 instead. It is safe to do so because:
> >
> > - Bootloader doesn't rely on this single compatible; and
> > - There was never any upstreamed devicetree using this single compatible; and
> > - The MT8167 DSI Controller is fully compatible with the one found in MT2701.
> >
> > Fixes: 8867c4b39361 ("dt-bindings: display: mediatek: dsi: add documentation for MT8167 SoC")
>
> Not sure which direction this patch will go in the next revision, but
> (if this patch remains in this form, and intended as a bug fix) please
> do not mix fixes for the current (and stable) kernel with new development
> for the next kernel in the same series. They are supposed to be applied
> to
> https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=next
> and
> https://git.kernel.org/pub/scm/linux/kernel/git/phy/linux-phy.git/log/?h=fixes
> respectively.
>
> (also see Documentation/process/stable-kernel-rules.rst for what is
> generally considered to be a bug fix. We don't use the word "fix" very
> lightly, there needs to be a user-visible impact.)
>
> To help the build test automation select the proper base branch, you can
> use the "phy-next" or "phy-fixes" git subject prefixes when generating
> your patches.
>
> You can send fixes at any time, but please send new development for the
> next kernel only when the merge window isn't open (unless it is marked
> as RFC, then it can also be sent any time).



-- 
Luca Leonardo Scorcia
l.scorcia@gmail.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
