Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F869C4829E
	for <linux-phy@archiver.kernel.org>; Thu, 15 Feb 2024 15:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XBW/iryggvNxoLYu2AngM/npASin3hP9syylcVjljV4=; b=Tlrz5Q8UXLcE+1
	PLmNzZkZtoZ1xfa7vFi8FKjGPYky9/uMuHJp8CDrD7nJJz+nAI/Eytq3dKhVgyOoMp+UWegPeYDVD
	1B/wlfIapqT3tTJHbLtPzYZMWzgZz45s1JaehuNRQ88qDhe/FWBGp76XeNjr92BCtUX61+Dook9Td
	YcOjlZrddvHcVQKVQ24rEtD8wT/HwTJza4IlJ7zG3IwR2/YTh2nin9cfdAMguwoOe8wdZ1mACf5sd
	unnUXts1Qa9GygbcXKdp1bkxeGwDCrBH6f80jTCSY6s5pVrCxlvF0Dklm9X9ABv8jc2FQqD2eWNFb
	hpiC1Ic1UQ8gGEDSTQHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radKA-0000000GfLD-0aCa;
	Thu, 15 Feb 2024 15:06:54 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1radK6-0000000GfKf-0jqZ;
	Thu, 15 Feb 2024 15:06:51 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1d911c2103aso5973515ad.0;
        Thu, 15 Feb 2024 07:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708009609; x=1708614409; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wRHZqIOyBrytKgjz2NXJfF7uGwSTiUJd7ozSIo4Rz5Y=;
        b=LX0zLMCekIen9YiCE9tENHKLyYflaww1gjdj+hzl2w54eELoFbIAEcSZqxFWjHcykA
         5c5MiDVZ+pW++MUvOYWE4nLjioIWvFXQr9lBXkIdI548gPp+lAzK7Vyk/pp1/Z9U7KeM
         UddY/h3YfRGlsDwIfbuG3qiRL0OmB7m3MvBqyrhQ3YWUWl4ixxNA848DCqvkzBYUEBll
         zXtY7VyeKBpVlJ48ePH9RpyJhyCT1PznIJmtCc0rKjsAL9osM6aUXR/iUbkWz95Sflue
         g634BiT61qixVROjvgDFo1JpS2VwNQRkmGhws1wuyN6ALndpDw7ZYkcIObmNcDy87KfQ
         Lomw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708009609; x=1708614409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wRHZqIOyBrytKgjz2NXJfF7uGwSTiUJd7ozSIo4Rz5Y=;
        b=b5A9o/SfGxMvxEl5mswegZAypYirj+hq9cWiJp4T4hhzHHfll2IZsPO/FHHsG3zvxC
         2a6NiGVakjIsXf4130a7l7sFKDPTYDyC/qMrlqZhHRnQayx8JzVCqhiRMvWt0nAC+x12
         l331bHkWpcgNILdJEwv2x6JQKl4yhaiQ5QQNZJQy62bfMuXAO6xPrRW3AOSA7YOujA9n
         St+PFsECc11rJvVZVx9EHJLI5yaUhGUrOqmdrY8fjdfRrJ7LSDPHhKHB8ldFXvgTGVKX
         hr3KFYiaXSYFlBjq7iFxUij1W72w2CI+3r4hhy6L9di8L7MeUe38MVK3RBZ1/RAewvwG
         uTDg==
X-Forwarded-Encrypted: i=1; AJvYcCUXlxIIDaMVWp6yGwL+4OioRIcEwn2y7fP/FmCsHeuWtcW05rhX2/vY2n4YwbdIBNKD6pHWqK71AFNMBQ84pdooLuUC4xQlkdrTyFgm8/SekRBGqg5UvJP/sUFbySAvtrwj7ZVj+QY7Xp3U8BwAZHa0lGT2
X-Gm-Message-State: AOJu0Yz4n0Nx6CSCkTsgbEXXfMJJwTw7oJK1P8WZhZDlkUddCVg6r5O0
	Uomvwe7WhaqZ5BBsVncUcyHu65wf2WV5SnIclcgrUHL/WXdYy+fq
X-Google-Smtp-Source: AGHT+IEblop9x6atphDkcaL7O9OM5+yWMRm/XmJEMDeW45mWdx6pdQdYqGT8NM/WQeUzq7tk9pqffA==
X-Received: by 2002:a17:902:c948:b0:1da:2b52:52d4 with SMTP id i8-20020a170902c94800b001da2b5252d4mr2938295pla.39.1708009608588;
        Thu, 15 Feb 2024 07:06:48 -0800 (PST)
Received: from joaog-nb.. ([152.249.118.214])
        by smtp.gmail.com with ESMTPSA id u5-20020a17090282c500b001d8aadaa7easm1375987plz.96.2024.02.15.07.06.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 07:06:47 -0800 (PST)
From: Joao Paulo Goncalves <jpaulo.silvagoncalves@gmail.com>
To: aford173@gmail.com
Cc: Laurent.pinchart@ideasonboard.com,
	airlied@gmail.com,
	alexander.stein@ew.tq-group.com,
	andrzej.hajda@intel.com,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	daniel@ffwll.ch,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	festevam@gmail.com,
	frieder.schrempf@kontron.de,
	jernej.skrabec@gmail.com,
	jonas@kwiboo.se,
	kernel@pengutronix.de,
	kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	l.stach@pengutronix.de,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-pm@vger.kernel.org,
	maarten.lankhorst@linux.intel.com,
	marex@denx.de,
	mripard@kernel.org,
	neil.armstrong@linaro.org,
	p.zabel@pengutronix.de,
	rfoss@kernel.org,
	robh+dt@kernel.org,
	s.hauer@pengutronix.de,
	shawnguo@kernel.org,
	tzimmermann@suse.de,
	ulf.hansson@linaro.org,
	victor.liu@nxp.com,
	vkoul@kernel.org,
	will@kernel.org,
	Joao Paulo Goncalves <joao.goncalves@toradex.com>
Subject: Re: [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Date: Thu, 15 Feb 2024 12:05:59 -0300
Message-Id: <20240215150559.287571-1-jpaulo.silvagoncalves@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_070650_233280_57526AF1 
X-CRM114-Status: UNSURE (   7.37  )
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

>The i.MX8M Plus has an HDMI controller, but it depends on two
>other systems, the Parallel Video Interface (PVI) and the
>HDMI PHY from Samsung. The LCDIF controller generates the display
>and routes it to the PVI which converts passes the parallel video
>to the HDMI bridge.  The HDMI system has a corresponding power
>domain controller whose driver was partially written, but the
>device tree for it was never applied, so some changes to the
>power domain should be harmless because they've not really been
>used yet.

>This series is adapted from multiple series from Lucas Stach with
>edits and suggestions from feedback from various series, but it
>since it's difficult to use and test them independently,
>I merged them into on unified series.  The version history is a
>bit ambiguous since different components were submitted at different
times and had different amount of retries.  In an effort to merge them
>I used the highest version attempt.

Tested-by: Joao Paulo Goncalves <joao.goncalves@toradex.com>

Tested on Toradex Verdin-iMX8MP.

Thanks!

Regards,
Joao Paulo Goncalves

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
