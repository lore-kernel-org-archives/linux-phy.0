Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25EB7CEACEF
	for <linux-phy@archiver.kernel.org>; Sat, 15 Nov 2025 00:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MCwcADTqdvfJKzaB1/bXq26jhC+gsFFw/fPcws8QtIs=; b=V0Dz0HkDqEVoSY
	4wyrAGgFsaHYhScbqerq4p+yPRoFdWoXT2uvkt52hp6wIhmy7zS5LUEkDwICHXsxHi7ojjOFi21Wx
	s24GjzKpP0k1xDR5hfL8O0ivGlvZh47E2A5UL0iE75tHfJ/NGPoMEbpvctaQojKCML84hvprY97mz
	EMKvPlRkFw4SttLhEShQO4T7L0So3axC6sHMXxU2NuizpVtmS5UJpiGEWE75ht6Hk6CkYaSf2ZFaH
	8B6OoovPxG0s9vGh/iApD+9TVsmUWrRyhFv9ir92CtBs2BMgZ5t2LaXYPqT+Kkh8NJFYhIT3Za91i
	j7FIsCXd+A1Z5WKJXXPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK48y-0000000DHI0-2QrO;
	Sat, 15 Nov 2025 00:27:56 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vK48u-0000000DHGD-0t6p
	for linux-phy@lists.infradead.org;
	Sat, 15 Nov 2025 00:27:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763166470;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MY79eneNfrMG9dz4hIdkivq1gZvCTrtfj5tzDev1p4M=;
	b=SoasmG49ZR+i7dNTZOYOkhhWIEhKkAthzCBPAlNlpLaEz0bYny6nIycodFyBKj1sa59paP
	GqZ09nPQG5NWuKqNZPR2gGo76UaCemg3sVCXCBA6r3w6N++L3C0tZS9weeWxpozY3Kb/0f
	A5O07PjYqGx6UiC12mi7uZqFWbNAvaw=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-231-uaGQcOMVNKmo9UhAWxZWzg-1; Fri, 14 Nov 2025 19:27:46 -0500
X-MC-Unique: uaGQcOMVNKmo9UhAWxZWzg-1
X-Mimecast-MFC-AGG-ID: uaGQcOMVNKmo9UhAWxZWzg_1763166466
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8826a2b2d9aso87079566d6.1
        for <linux-phy@lists.infradead.org>; Fri, 14 Nov 2025 16:27:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763166466; x=1763771266;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MY79eneNfrMG9dz4hIdkivq1gZvCTrtfj5tzDev1p4M=;
        b=w2412yAwlDk443QyYE6dh70QLWeQpUZqFTjEnNr8rI48LkugrkY4C1pJVkNae9OeSV
         +DtvzM/adevGPx5B21ZoevJ4M/qWFMnNkMlCwo6V6xoKstbczgBXu5vxl659cs4yK4xi
         aJCeZJ1cAOCjF3A0KuJDcslF8Xa/u8pLmTw3415hphG2bGf6E5oh3NmM/I0ZkWD8lwcb
         T+5qUgiwZBOwmd3cNh80zvkSIKNRpYQNtUnRt1d/p3TlD/IFI2wUtNxNtzO80v6dEPUx
         vtf36X8Qnj6YCnMfIfnOMB1/3E4K3Vo0i75BaS5F3vTYHBc8/+l2zs87VEhY5uVQy58R
         sxHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUs8OyZMgvdsslQcOIfl+xPJ6LxUv3fKOiVkpGkP7Z7MBTn1IZT6XrIznDP8IBr6GYf6F0nC8KOVXA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzu+4jIlsf7Z1spvoHroGtUsjcXcXjCWdEXuVfYsNe9HiA8Aepq
	XpptrKIUyE7LwXDVC5geXfjBLdPndhAfiG2fiBAuJa4n3BYrWafZHcCg68GTXQ6kFJNyHcSyDOp
	GmgmIykJw8EzR8OZVCbgJdzv4Od1SONZV+qM3Z5ETN5oM2EkgsOgfhmIZozOtCaXlWfg=
X-Gm-Gg: ASbGncue7u4NIegn3AxUi0rBDnZkLHnTuSAGroc1/IgIKdkLbo1RQTprH4BXFxq4U5F
	DqAtrLt12MCDBr7eeII4zrv0VtLEc/BhN7/sjLFF8y3PVKYgHlk8RnRIlxRUZ8fVWmToY1DNGQG
	N1NyFwexMVeld5eSEUibD78Sd8NKPqyoptsI5TaKhgcdYo3HgtatlkC54AdZ+vp6wo93ZueEyWy
	/S4YefXZNly8UPnhF1QYDabcEBU+t0JKyKQks//XP/L2pemIinKcvmuvjINq5tpID4X3zf+CHZF
	M9dKTjsPN1zSzTi59mGR6N1k0WBS9zhECzLD29dKpzChRoKnoe3i+IF3tc3k8YZ/juUCH6kQgD/
	QH9Jdzswc/3Hdd8kGMCKbMUvVp5cVJlJUl5wosUODu5pG
X-Received: by 2002:a05:6214:5014:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-88292705010mr65042286d6.54.1763166466363;
        Fri, 14 Nov 2025 16:27:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGraWChEBaQ8Kt2DRqLdXdplufLvs8tWzEMELdXUg1GXFx2RN4xE4J+31DR8rAVpI9IzMPVUw==
X-Received: by 2002:a05:6214:5014:b0:882:4be6:9ab9 with SMTP id 6a1803df08f44-88292705010mr65042096d6.54.1763166466020;
        Fri, 14 Nov 2025 16:27:46 -0800 (PST)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8828659e0fcsm41781696d6.53.2025.11.14.16.27.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 16:27:45 -0800 (PST)
Date: Fri, 14 Nov 2025 19:27:43 -0500
From: Brian Masney <bmasney@redhat.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Chunfeng Yun <chunfeng.yun@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
	Maxime Ripard <mripard@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: Re: [PATCH RESEND v2 0/9] phy: convert from clk round_rate() to
 determine_rate()
Message-ID: <aRfI_xT680E7Cf-o@redhat.com>
References: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20251106-phy-clk-route-rate-v2-resend-v1-0-e2058963bfb1@redhat.com>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: V_UToQ7a30DNiYZ2asZBbWngttY9MpBh5Cq2kEUb1Z0_1763166466
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_162753_194621_6C553172 
X-CRM114-Status: GOOD (  14.10  )
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

Hi Vinod,

On Thu, Nov 06, 2025 at 06:25:46PM -0500, Brian Masney wrote:
> This is a resend of my previous v2 series since I haven't receieved any
> feedback.
> 
> https://lore.kernel.org/linux-phy/20250810-phy-clk-round-rate-v2-0-9162470bb9f2@redhat.com/T/
> 
> I'm hoping to get this merged for v6.19 so that I can remove the
> round_rate() clk op from the clk core for v6.20. The clk maintainer
> (Stephen) mentioned this work in his last pull to Linus:
> 
> https://lore.kernel.org/linux-clk/20251007051720.11386-1-sboyd@kernel.org/

Can you please take a look at this series since rc6 is this weekend? I
have almost 200 patches merged in other subsystems across the kernel
for this work since the Summer, and this series to drivers/phy is the
last one remaining that's blocking me from posting what I have to
remove the round_rate member from the clk core.

Thanks,

Brian


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
