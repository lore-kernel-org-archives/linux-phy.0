Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48366C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ggm9cecku9bvvsQoaG+/lifND9rcENr96mI7M8/g8hA=; b=Pkk+n0lKGXjxHl
	vbHWABbmryWBl6mgiItulaRcpqWgYIDaaiJc4lJy3GXyBHaEYUDc49BwY7fX2/X3Cba7FVBo7TcTi
	h0qChHPm8OQt38Om1oBLzZgPb8tS7J7N/dh3a8Hi+CbajBGpFadSSckHDvQ0MxnBbUBIos+LPmjcU
	jAirS6MFcmRZ9l+M6R7GpuCQ25M1w/IEtB2N3mpcDkS0lJFb9XQ7aq7HKcTV5YLwq2FIbJDtcbaQe
	M7NmP+I9VvaAjnmy557ZDKsU1dufSNxMVKWeSye2FNDoFDMvaP3ZtHvDsqQQQKD/6HyNuYzByEbnJ
	/gTpEl/3IN5qfGpEAm8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rada3-0000000Gis6-3Q88;
	Thu, 15 Feb 2024 15:23:19 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rada0-0000000Giqx-1k4j;
	Thu, 15 Feb 2024 15:23:17 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1d780a392fdso8579805ad.3;
        Thu, 15 Feb 2024 07:23:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708010595; x=1708615395; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4OC/x8qlWcMFQdWFPJ3tzHkUQF/6/47D2PKzDjQg6g4=;
        b=HrynRkOymNV8hW7W45HEfjbzbv8DXkfsEKWy+ROXfTdhmySfLfi4MVXPTPi6VVOB+N
         1bp4g/M/YxMK3LhWZBFhAwAxnurNeDp4SC2WW31Zcz1FdLmRnleawFOOfpKZ7KaqtCzP
         faah83NAyxXiRTq6WKoSDBEjGD+1SpSpZxZ3vrfQNkNYzZI8Kk57pwFQ+f5pqmVL/g8M
         PozUs4lcDINYHNNNtBUeNBKPODY94um62ibTsEFcDyxIGhJKBByle+JeoJmIAKt+vWQQ
         ibx5YtXU1QrrBWbqEOBnfCiArK7FWs3GHTYrNiEUoW0kFKjYk0Gj6qdk71LurKOZ38vf
         riiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708010595; x=1708615395;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4OC/x8qlWcMFQdWFPJ3tzHkUQF/6/47D2PKzDjQg6g4=;
        b=Q47Sho+yqoinB+aX1BtDUcVBk336hQVtlvwSCl/NhHYMdDoZcIC0lQVbHX0mJgyz/s
         VMfs9BCmHxx8ZXwezj3sihADLWdr7tDGb2DF1p342s7u41g7pL/ZRVCdFr8p7gbZ6BeK
         dqhlf8HEVBn9ISQr0nX7dozk2H4W+fIYdnVcD1WOzjEnTmGKheHvt4KVOcguWwyeR+9J
         pPyl7qV57r8pQCWdfNrYnTfqp/l16qBgqk9cv6AEr+twCOboQ6ABKixxn8wjmI/ahMOM
         Wo0tmX1/Lyt0x3qR4oL+eE5s7dG7hDrnV3oidhBZyWnXLGVa0fWDMzHlbIVWYMiLRGkk
         lc3g==
X-Forwarded-Encrypted: i=1; AJvYcCVd3QUqi9zWrs9h5EFDhtt5L5Kzm7KD/YXHyVdvNSzhGYGCEpUnddMHg/NBi1TbXF5YcCEUixF8MSj3N2IXikzpBWdfRYRvZJjWiYYZe6R3oSUrrfihBlnT0lHqI1YemAvdrGV9etMWPo4laNcXyjHahX5s
X-Gm-Message-State: AOJu0YzxtQDsKpwD/73YpqU55zVfkbQJVcYPSOmFl6cldz520UEz5kqs
	h9JjZpalZANt+r6ZkX8wlRbCmNZMz40n/wGxPUijThJle4OVx6Xo
X-Google-Smtp-Source: AGHT+IHYztxwJWPfFEJ1GAM5kJx7IGeAjelY0lEUitRzhi/Nkm6tu+VUAX33wsQY22VuVx5uEmw23g==
X-Received: by 2002:a17:903:11c3:b0:1d9:a4a5:7a6c with SMTP id q3-20020a17090311c300b001d9a4a57a6cmr2560480plh.57.1708010595241;
        Thu, 15 Feb 2024 07:23:15 -0800 (PST)
Received: from joaog-nb.. ([152.249.118.214])
        by smtp.gmail.com with ESMTPSA id mm8-20020a1709030a0800b001db57e999dfsm1397767plb.81.2024.02.15.07.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 07:23:14 -0800 (PST)
From: Joao Paulo Goncalves <jpaulo.silvagoncalves@gmail.com>
To: aford173@gmail.com
Cc: aford@beaconembedded.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	festevam@gmail.com,
	kernel@pengutronix.de,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	marex@denx.de,
	robh@kernel.org,
	s.hauer@pengutronix.de,
	shawnguo@kernel.org,
	vkoul@kernel.org,
	will@kernel.org,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>
Subject: Re: [PATCH V4 0/6] soc: imx8mp: Finish support for HDMI
Date: Thu, 15 Feb 2024 12:23:04 -0300
Message-Id: <20240215152304.307972-1-jpaulo.silvagoncalves@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_072316_476973_66D11D03 
X-CRM114-Status: UNSURE (   8.53  )
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

>The i.MX8M Plus has an HDMI controller, which depends on several
>other systems.  The Parallel Video Interface (PVI) and the
>HDMI-TX are already in the Linux-Next staging area 20240209, but
>the HDMI PHY driver and several device trees updates are still needed.

>This series is adapted from multiple series from Lucas Stach with
>edits and suggestions from feedback from various attemps, but it
>since it's difficult to use and test them independently,
>I merged them into on unified series.  The version history is a
>bit ambiguous since different components were submitted at different
>times and had different amount of attempts.

>The previous attempt I did used the wrong starting point for the PHY,
>so this update includes a newer starting point with tags from that version
>and fixes from various people's feedback.  I hope I caught them all, but
>I apologize if I missed something. Any tags from the previous attempt I
>made were intentionally dropped, because of the significant change,
>but I kept tags from the newer version I grabbed from patchwork.

>Because several items from the last attempt were merged, this
>series is only focussed on adding the HDMI PHY driver, and enabling
>the power domain, irqsteer interrupt controller, and HDMI pipeline
>in the device tree. The version numbers are a bit strange since
>these all got pulled from various attempts with different versions,
>but I wanted to push them together as a series to complete the pending
>work.

Tested-by: Joao Paulo Goncalves <joao.goncalves@toradex.com> # Toradex Verdin iMX8MP

Thanks!

Regards,
Joao Paulo Goncalves

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
