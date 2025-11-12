Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFBA3CD13DD
	for <linux-phy@archiver.kernel.org>; Wed, 12 Nov 2025 16:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xMEgviqxR+4atPS4sPb/sQboJ939qoXr5RJF0yZCWog=; b=USMniEJ3OkaSKN
	OLUtCMGHl80Yh2jecqICk8/YX3UM9CoC6sGn8QGWvVtZi5CJvVcKgmuJWuegzOxG+tgbbkuWrDki/
	/zqJRUd2oocx8qHNeUJV/1SbZ5Hivebu9BJrFl9K2WzZEouJDBh3lEgEe5RIQaaPpXa0izVXRnm2e
	yEdo2uJPn3l7+NUn9ALtQjpQ7uWRSZLn0GQRFm8llCCqLJm8iSeZAgyIkfWRAQeXXtdgrUvoWMWF2
	vuYSCWe3f6k2CQE6UMTJa91hPMzVTq7E/IhF0AGE7FOANi1E7pb5BFPmseeNeFua8ZfxfHj5s0ENb
	TqjOF5ZkU1tgf/qBlKwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDX7-00000009AQT-0uBC;
	Wed, 12 Nov 2025 16:17:21 +0000
Received: from mail-oa1-x2f.google.com ([2001:4860:4864:20::2f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJDX5-00000009APF-14gp
	for linux-phy@lists.infradead.org;
	Wed, 12 Nov 2025 16:17:20 +0000
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-3e41b6469f5so470937fac.2
        for <linux-phy@lists.infradead.org>; Wed, 12 Nov 2025 08:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762964237; x=1763569037; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8VMCABcDQg3bj1MpLgUPb6hZG0b0uHbN8RDXsa01+ho=;
        b=AhgGIIkc3sA97kppJXnS0Mojkh6RRGNZ1eycDzjbgxNeourU3Uhur8CkAP1I6083E9
         cXGpUAgDNb65WQBXyiLjb1Fh9x9NdvDz1Lhq6AZlghZ/zJHpP78LGd4YR0Hgt2YaIt+e
         PrX4H80kDQsZZQ/Rffm0drhFigXitjDrSAXZKR06YNmkBWo72P+rD2E8T9VA2oylhO/c
         rSYy13eHR+maW6SCmURY+GQwRiR28ldx73SOa/mRfI4oFHMxR7PnKewInX03fsMBVsV/
         gIJ1cc6Uukd2FvzKyy0WRR4dr1UbeGQyd87UK4siUWrTzUt9XkdATiucN7XACOi3FNTM
         RzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762964237; x=1763569037;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8VMCABcDQg3bj1MpLgUPb6hZG0b0uHbN8RDXsa01+ho=;
        b=RHs/uTHM2GbJU+l/iyw3Aa7R+ZeOfFUhPYzNJ14D3vAsnf1ONn72m5Zz3MtTi6anZ3
         IlEwhcC8T5M3WP1jVJ2yNa7Yws3xONY/tc6WqolFu0Mcof7tG4mzvnf5Vpjlx4G7Z+KF
         jcMgB8AKYn/Jpbww6f+n1eNlR5epLl6XoCAwXA0AA5+lPLVtfCC2/LMRwsVH2votukm/
         ZbV9iEmM6v+yahGRVgRGtzi23xSh1nptTaMGxEZBu6p4sh3yAqVvNUZ4kAbwOn0RwuQQ
         RKRlxTvDu2gz+H9pTcG7+ybPFMo3QnkdvE/J7b2CpxiELDCVGDWj27c5+S2mLsOUlu8k
         mXTQ==
X-Forwarded-Encrypted: i=1; AJvYcCV2TbkqnwnuKAhPxsqfX6/PJp5ZneV6O7w/97g6kkyf/xmTLxviZFkS1yAOjN0uTsCFiGH/p6aicBQ=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9UwTqO5ZpkUSEMvXErPIgM6C68jhxaMkrC5sTCst70fjO8NMD
	DSJMi4havpzo3foQKVzWuTliMt2KNVfgIKlvYcz5p+7b78gn1ZEIJky/FQghSCl2/Vz3YqB4ahp
	Vc1ZZyAXSWKPXDrm2eI7/WHu8JkLBdz3kC+AfpQoLVw==
X-Gm-Gg: ASbGnctAGb1QxnYgOEud3tGgx5vtdcWWhY8hUEOIjPyKS/Z+37dy2bmFIA6eSx0/jxm
	HHopfxI+QJrK6YHSiCRBCHgkmWdcypXeBOX4OBkbx62ebm0+cNibYnfSrxvEl8cz0BHxm0o7/IM
	6+SjKlSmRtCaomCSA9eNXPzfYXb9IdtBQY4xuQlR44IkYvfcjUPqAPf2B2n8hEfZSozZg38jcSf
	bULNSKe3D4BWN9m6Y0cYk28HsNpnyLIdPUSvUx2IKUFEvbziHvhRC6+7xyRWA==
X-Google-Smtp-Source: AGHT+IEsUM5mecSa8OvDA3eHi3Rt//Ce7dwGX8jwgmu78EO/L2nrGwzBPId/luKJz03aDcGKbnhMLH136z6/UVOOfm4=
X-Received: by 2002:a05:6870:5694:b0:367:6cdd:8c52 with SMTP id
 586e51a60fabf-3e833fe5841mr1730179fac.14.1762964237482; Wed, 12 Nov 2025
 08:17:17 -0800 (PST)
MIME-Version: 1.0
References: <20251112-phy-notify-pmstate-v4-0-717d78009d15@linaro.org>
 <20251112-phy-notify-pmstate-v4-1-717d78009d15@linaro.org> <aRSyTst8Vd-Qb2Ha@shell.armlinux.org.uk>
In-Reply-To: <aRSyTst8Vd-Qb2Ha@shell.armlinux.org.uk>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 12 Nov 2025 16:17:06 +0000
X-Gm-Features: AWmQ_bmeUqnv9Axu23X8v5l7CIA0NkBrp9BKset-SthjnPv3fEKplJqCJGUzBUo
Message-ID: <CADrjBPqPUOQThv+KmeYyUhMA1S5HL_F8FwTa_srcZM43P4GzyA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] phy: add new phy_notify_state() api
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, kernel-team@android.com, 
	William Mcvicker <willmcvicker@google.com>, Manivannan Sadhasivam <mani@kernel.org>, neil.armstrong@linaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251112_081719_299490_5DD650F7 
X-CRM114-Status: UNSURE (   8.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Hi Russell,

On Wed, 12 Nov 2025 at 16:14, Russell King (Oracle)
<linux@armlinux.org.uk> wrote:
>
> On Wed, Nov 12, 2025 at 04:05:58PM +0000, Peter Griffin wrote:
> > +int phy_notify_state(struct phy *phy, union phy_notify state)
> ...
> > @@ -255,6 +266,7 @@ int phy_reset(struct phy *phy);
> >  int phy_calibrate(struct phy *phy);
> >  int phy_notify_connect(struct phy *phy, int port);
> >  int phy_notify_disconnect(struct phy *phy, int port);
> > +int phy_notify_state(struct phy *phy, union phy_notify state);
> >  static inline int phy_get_bus_width(struct phy *phy)
> >  {
> >       return phy->attrs.bus_width;
> > @@ -412,6 +424,13 @@ static inline int phy_notify_disconnect(struct phy *phy, int index)
> >       return -ENOSYS;
> >  }
> >
> > +static inline int phy_notify_phystate(struct phy *phy, union phy_notify state)
>
> Should this be phy_notify_state() ?

Yes, that's a good point! Let me send a new version fixing that.

Peter

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
