Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22904C3DA4A
	for <linux-phy@archiver.kernel.org>; Sat, 27 Jul 2024 22:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tggC8JCrsTHkcvSZkRA7WJCrOMJMOvnsIbs7wx2vLEk=; b=Fw0/2Ulpa4UeXy
	PUFo63/tJ/SQbf8LmzNyxHYFI5VbS0cUlLrsd5eib4NRkN4ZJAFpojKii+sziZxEsmL42A1tIYXwo
	4e3vzhUlhyVjbZ3i1WW3oM5qpqr3PbK/DHSwoOrPOWGstTGFAwQm2cTCuf2XlqJk7F/0SemeVgLgp
	njZM7fQrYvDWw69yLLkmGZsMoaZ44yhjvzVv5DuBzpdbzT7ioopq3noCw4q0X5vXr+SR5ptGbiFbv
	DzuwhlxZ3Eq5ATqmL39StoOeve2tq6+ISxb3tEyrK9unogN/tnIyqQmlVAltWJHFbka025LuKmOh8
	QfG8pZC9qLKRu5Y87cRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXpas-00000007OUg-3Dfc;
	Sat, 27 Jul 2024 22:08:50 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXpaR-00000007OQ8-2q1K
	for linux-phy@lists.infradead.org;
	Sat, 27 Jul 2024 22:08:25 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-52efbb55d24so3455551e87.1
        for <linux-phy@lists.infradead.org>; Sat, 27 Jul 2024 15:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722118101; x=1722722901; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mwqWPO6eJP4Qec95t6HNVfe9KGEXFic++ajRHBM7iSo=;
        b=sng2/4hJsSY7fUmvKpLIv1AQD5Coyz1UXi0niBfn+ukEEAs8A5p5+LSBuRNIUag+4s
         kaar+kf8GORoa7P9Ncm5+37thwAXXhsfHYKSY84tvLarpFRBk+NQnd3wTCujMpx7MHCA
         IW+daj1Pq9fIJPUJMfcR4Oe7lvjLE9MPdxvy8isfCXd7yuL9YlmBKPgtyOl4B+31TeOn
         rsTUv1zEYQ96KfelkzEMO59HTglKoUh3aEsusHK/mE0RBRxJkmMzXVivLT3Y1OvMiEA+
         8abptzPZb9+f0DcS2z2qMrQXqWhMEo5Mt7P1hzLxz+/E51eXQo8p9v2CRe1hGMzWdG4F
         HnXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722118101; x=1722722901;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mwqWPO6eJP4Qec95t6HNVfe9KGEXFic++ajRHBM7iSo=;
        b=vAb7sbBOoodtc59F5hsd131cXNmxnfnMh9aUv6YxAWKRlQMsISh84qQmtNUxjD7IWG
         GHjCHHW9fQFhSlRGoSe4P2xrsKr+DrSip7NYj1fwLRnYtRikAGv8L56CFqSgmuQy5uUO
         BzkSlDCjozZJSnMIF0qSKVx0XFA+jhbkhVQiXrP0N2BvsHaj0k2245Wqrik09+pYMRa6
         L0Z/QTw6NtNRk9ZdEV3+sxrlxs3uLRU3rvg3ds4XyM7wS1EqdgSIKG9sY+7p/SzBLq+8
         UAmVo7VR9R6UuiQNXYIv2y0ly6FtRaFz0659GSPEvElSAzRznq32vAZSMFfQ82i28nFG
         TjzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWQFCW/GPfFv+7iCV1EOf6fc3KVkbJzuhRA6F6ogEvHPwiUCVPR2X+QWGIcMXMjK3BUgQAzYjdFSib/kaoPCD55NFjaJyuVbHXOSErQ1g==
X-Gm-Message-State: AOJu0Yws89iNS7jZnRQegrjrD5RcdpnJHkYanhKD8+sg/I42v+8kPdI3
	HdMXbzJG/fcIgi4/tDfMN4uh93K/Zv2lR7dV04j4kBTaenzcRZ1mWKASPXCTtNk=
X-Google-Smtp-Source: AGHT+IEESjcuV3/3oS+Os1zyf2LB2n6lMR6DUHxbQ1nXgYeN+N3EfPjlTdSC2SKSZtLypC95ksepqA==
X-Received: by 2002:a05:6512:1296:b0:52e:933f:f1fa with SMTP id 2adb3069b0e04-5309b2e0b62mr2773797e87.61.1722118101176;
        Sat, 27 Jul 2024 15:08:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd1292sm872881e87.105.2024.07.27.15.08.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 15:08:20 -0700 (PDT)
Date: Sun, 28 Jul 2024 01:08:18 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sui Jingfeng <sui.jingfeng@linux.dev>
Cc: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v3 00/19] Add Freescale i.MX8qxp Display Controller
 support
Message-ID: <no7cgb4vfd4cxhsjoftfeizvzby4vfbq2okvneq4nbxs4ogwvt@ohplzz5bez4j>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <wky3mjl7fn773myatyrdsea6oc2xebkvrgmigmmoj36eswgqry@2kox5ad5dynl>
 <aba35ecb-2357-4c4f-8366-08d14e40d436@linux.dev>
 <zr2t6deyvwacawj7s36gols2vxu24fah25x6ofy7xpqyvc4s2d@luavybrlxpaf>
 <8014238b-2668-4602-add1-64a0c6e480ad@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8014238b-2668-4602-add1-64a0c6e480ad@linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240727_150823_729415_B3C803DF 
X-CRM114-Status: GOOD (  45.62  )
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

On Sun, Jul 28, 2024 at 05:38:37AM GMT, Sui Jingfeng wrote:
> Hi,
> 
> On 7/28/24 04:28, Dmitry Baryshkov wrote:
> > On Sun, Jul 28, 2024 at 03:10:21AM GMT, Sui Jingfeng wrote:
> > > Hi,
> > > 
> > > On 7/28/24 00:39, Dmitry Baryshkov wrote:
> > > > > Hi,
> > > > > 
> > > > > This patch series aims to add Freescale i.MX8qxp Display Controller support.
> > > > > 
> > > > > The controller is comprised of three main components that include a blit
> > > > > engine for 2D graphics accelerations, display controller for display output
> > > > > processing, as well as a command sequencer.
> > > > > 
> > > > > Previous patch series attempts to do that can be found at:
> > > > > https://patchwork.freedesktop.org/series/84524/
> > > > > 
> > > > > This series addresses Maxime's comments on the previous one:
> > > > > a. Split the display controller into multiple internal devices.
> > > > >      1) List display engine, pixel engine, interrupt controller and more as the
> > > > >         controller's child devices.
> > > > >      2) List display engine and pixel engine's processing units as their child
> > > > >         devices.
> > > > > 
> > > > > b. Add minimal feature support.
> > > > >      Only support two display pipelines with primary planes with XR24 fb,
> > > > >      backed by two fetchunits.  No fetchunit dynamic allocation logic(to be done
> > > > >      when necessary).
> > > > > 
> > > > > c. Use drm_dev_{enter, exit}().
> > > > > 
> > > > > Since this series changes a lot comparing to the previous one, I choose to
> > > > > send it with a new patch series, not a new version.
> > > > I'm sorry, I have started reviewing v2 without noticing that there is a
> > > > v3 already.
> > > > 
> > > > Let me summarize my comments:
> > > > 
> > > > - You are using OF aliases. Are they documented and acked by DT
> > > >     maintainers?
> > > > 
> > > > - I generally feel that the use of so many small devices to declare
> > > >     functional blocks is an abuse of the DT. Please consider creating
> > > >     _small_ units from the driver code directly rather than going throught
> > > >     the components.
> > > 
> > > Well, I really don't think so. I don't agree.
> > > 
> > > I have checked the DTSpec[1] before type, the spec isn't define how
> > > many is considered to be "many", and the spec isn't define to what
> > > extent is think to be "small" as well.
> > 
> > Yeah. However _usually_ we are not defining DT devices for sub-device
> > components.
> 
> I guess, this depended on their hardware (i.MX8qxp) layout, reflecting
> exactly what their hardware's layout is perfectly valid. It also depend
> on if specific part of those sub-device will be re-visioned or not. If
> only a small part of the whole is re-versioned in the future, we can still
> re-using this same driver with slightly modify(update) the DTS.
> 
> The point is to controll the granularity and forward compatibility.

That's why I asked for the comments or explanations. The cover letter is
a usual place, as it is an introduction to the series. The reviewers
don't start the series from 8/N, they start from 00/NN.

> 
> > So at least such decisions ought to be described and
> > explained in the cover letter.
> 
> Agree, but I see 08/19 patch has a beautiful schematic. I have learned
> a lot when reading it. I can't see any abuse of the DT through this
> bulk series anyway.
> 
> 
> Comments below are not revelant to Ying's patch series itself.
> 
> /*----------------------------------------------------------------*/
> 
> By the way, the last time that I have ever seen and feel abuse of the
> DT is the aux-bridge.c[1] and aux-hpd-bridge.c[2]. I strongly feel that
> those two *small* programs are abuses to the DT and possibily abuse to
> the auxiliary bus framework.

Off-topic should be directed as an answer to the original series. And if
you tried, you'd have seen the reason and the explanation. And a quick
glance around would have shown you the ti-sn65dsi86 bridge, which also
has similar structure for exactly the same reasons.

Nevertheless, the aux-bridge and aux-hpd-bridge provide a way to link
two different directions of the probe dependency chains: from the SoC to
the connector (DRM bridge chains) and from the connector to the SoC
(USB-C chains).

> 1) It's so *small* that it don't even have a hardware entity (physical
>    device) to corresponding with. As far as I can see, all hardware
>    units in this patch series are bigger than yours. Because your HPD
>    bridge is basically a "virtual wire".
> 
>    An non-physical-exist wire hold reference to several device node,
>    this is the most awful abuse to the DT I have ever seen. In other
>    words, despite you want to solve some software problems, but then,
>    you could put a device not in the DTS, and let the 'OF' system
>    create a device for you. Just like what this series do.

Thank you for your opinion. However you have clearly provided the reason
why these devices do not have a separate DT node: they are internal
parts of the existing device.

> 
> 2) I feel your HPD fake bridge driver abuse to the philosophy of
>    auxiliary bus [3]. The document of auxiliary bus tell us that
> 
>    "These individual devices split from the core cannot live on
>     the platform bus as they are not physical devices that are
>     controlled by DT/ACPI"

This is correct and two mentioned bridges follow this approach. This
phrase mostly provides a boundary between platform-based MFD devices
which usually have MMIO-like addressing for cells and non-MMIO,
non-platform devices living on the aux bus.

>     Which is nearly equivalent to say that devices that are controlled
>     by DT/ACPI have better ways to enforce the control. When using
>     auxiliary bus, we *generally* should not messed with DT. See
>     golden examples[4][5]. At least, their code are able to run on
>     X86, while the code you write just can't.
> 
> [0] https://patchwork.freedesktop.org/patch/605555/?series=135786&rev=3
> [1] https://elixir.bootlin.com/linux/v6.10.2/source/drivers/gpu/drm/bridge/aux-bridge.c
> [2] https://elixir.bootlin.com/linux/v6.10.2/source/drivers/gpu/drm/bridge/aux-hpd-bridge.c
> [3] https://www.kernel.org/doc/html/latest/driver-api/auxiliary_bus.html
> 
> [4] https://patchwork.freedesktop.org/series/136431/
> [5] https://patchwork.freedesktop.org/series/134837/
> 
> 
> Best regards
> Sui
> 
> > > 
> > > [1]
> > > https://github.com/devicetree-org/devicetree-specification/releases/tag/v0.4
> > 
> 
> -- 
> Best regards
> Sui
> 

-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
