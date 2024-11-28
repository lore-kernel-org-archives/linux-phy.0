Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86734D690ED
	for <linux-phy@archiver.kernel.org>; Thu, 28 Nov 2024 08:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zTQOen/sA4BnCGkPUOgiexw6n4cAKAr61xorUf/vTBI=; b=cZyW09flvvxVkJ
	4YLN3vJfytfXtS0ntgCsNDlr/miRBSTjaHQKdAKo8uiLbn7N07137VSanh8BVCVoZG/+2Ipt+hQnp
	bofKWI7J5TzdvkRjjvpzT3q7r8dbZ3AGIBQXU3lSc1rkQqtngxz7KfC+pTrzicXQbrktDwRRjPSoc
	z0BpdTk/Na2JghwASrNpOIsiKzEXdcVssmHw6IKH83Dz7XIA/l7GmXLZ5EXUp0OYzx7YkjWO30zSM
	JET/DhO/ZPOM0tZGJ6OMqk/1ajwqJPLBuaegCw71q3nX1lKL5riv+jjK3iHhZOgHLNA3Lr/d95Str
	dACED9dxqjbssOsEdDNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaFt-0000000F4Qp-3D3C;
	Thu, 28 Nov 2024 08:52:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaBG-0000000F3Oz-0Gha
	for linux-phy@bombadil.infradead.org;
	Thu, 28 Nov 2024 08:47:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=AOSMhqdqSNHzc6Y2732B2LXEY8wXpjTk/vIt0M1oHnU=; b=W0AniWLLrwH9/kuiNI2aRsF3BI
	2woYpR6NKA1FyxOUvX/8huA9ovbCUQfF8nSM5w32gfcHV1DidUBdKLGzK9G8JXDY8kUdiSepGDIi7
	DFCpHq991M/UiCNOKC/elbWidNgd3YwTR7L/RNTbiqtAcERlH0O0h36x3mxBx8LUobsQDkZSVin1n
	r/xsE1UWyTTH6HPgpBuddfpGtg7WDx0b+Rz24RFsJgVvi9C8HNwwJGNoiRXblHheTx/VqHWF4MZM8
	OwzmJAKhKifiSScerev+gfFISvLWX6JV15p1EAYGNvwm4Srab8O2UtdRfe2c9Vhlh/zJ8UTMLJuts
	B7oGNL1Q==;
Received: from out-180.mta1.migadu.com ([2001:41d0:203:375::b4])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGaBD-00000001ZCT-10aq
	for linux-phy@lists.infradead.org;
	Thu, 28 Nov 2024 08:47:20 +0000
Message-ID: <c4334c9b-833b-4923-8188-64d662231512@linux.dev>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1732783624;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AOSMhqdqSNHzc6Y2732B2LXEY8wXpjTk/vIt0M1oHnU=;
	b=V2IFpiDweMUXNBus/VrD5t1I//7Gz9UTqTJlX3cSyUym9EIZ+69HJGd1qZQ2sIj+W2Nm9+
	Dx/E2Y/Kd3xnFxV2OpirmhaF2gxkxE+s0nqeEsYREZ8vAdmeRBwj3VllN79322U4BrvE+M
	UVJnEE4qznqqhAaiXBC3PXP2q0oDDK4=
Date: Thu, 28 Nov 2024 16:46:53 +0800
MIME-Version: 1.0
Subject: Re: [v4,09/19] drm/imx: Add i.MX8qxp Display Controller display
 engine
To: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org
Cc: p.zabel@pengutronix.de, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, glx@linutronix.de, vkoul@kernel.org, kishon@kernel.org,
 aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it,
 frank.li@nxp.com, dmitry.baryshkov@linaro.org
References: <20241125093316.2357162-10-victor.liu@nxp.com>
Content-Language: en-US
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Sui Jingfeng <sui.jingfeng@linux.dev>
In-Reply-To: <20241125093316.2357162-10-victor.liu@nxp.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_084719_397275_2165681F 
X-CRM114-Status: UNSURE (   9.59  )
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

Hi,

On 2024/11/25 17:33, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The display engine driver as a master binds FrameGen and
> TCon drivers as components.  While at it, the display engine driver
> is a component to be bound with the upcoming DRM driver.
>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)


Why?

Its seems that the switch to regmap APIs is not very necessary,
as ioremap/writel/readl are simple enough and easier to use.

Isn't that this just introduce an intermediate layer? It's okay
for display bridges/panels that behind I2C bus or SPI bus. But
then, why drm/msm still haven't be converted to use the regmap
APIs ?

Just a few questions, has no opinions to your patch.

-- 
Best regards,
Sui


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
