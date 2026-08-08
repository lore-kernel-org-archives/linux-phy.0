Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFECCC55174
	for <linux-phy@archiver.kernel.org>; Sat,  8 Aug 2026 09:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ytDYT/ZC7EahWVo5NdZx8hybw+QAobWwEnEaXFZOJA=; b=vSFTQX1ADv07Ml
	1Eg3hvU0dnz8/6vNeM0NHSN+nkXwZkFZQMESuD1yDSuNZKttNGccN5u/JfwY6wujTGI8kpRe5CZJG
	LDK4hz0g04Kqf7TuVbDrJf7rWohl5zY77GyHwWcJnmaoHWUJH2+jyqT1pG+R0j1teXvt0DYR/X+ku
	XAw6iwc5HRv4BhfsUWeOLg0575RP/cMgAy4fIHCnNK5TZpBRjLCwpPna0KdjmkanwivH8fy2uMqeF
	ymj9K2NxQXW0gRD1HVwBni/UPHVH6qjGGDdyhmC8jIlMwLZSoHKv7FrMXasuFotjFjO/ABYsFkYyz
	MKYWFNaz859yxAS2cKdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdcd-00000009EfA-1maZ;
	Sat, 08 Aug 2026 09:45:43 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsdca-00000009EdR-0dCu
	for linux-phy@lists.infradead.org;
	Sat, 08 Aug 2026 09:45:42 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4957952e0f8so323965e9.2
        for <linux-phy@lists.infradead.org>; Sat, 08 Aug 2026 02:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786182338; x=1786787138; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=O7MAb3Uu0LO6yvv+qCiCK5kQU9lkaEhyw4ok7BL0cqY=;
        b=D7Us/c12tKs3k/Faop+3qjklkbN3x6o8Et39AR1mI0B4AGTRbWceumomM663Tqz25G
         FHopgltZwEe2VOKKUprTYhL9WkbgpwReeoxo2hc9GaLi2VPv+UclNByslqd1+N90vvGj
         BpAP4CrNagaAxdAfM6v2cSRZDP8gJxE+IhT4ioVz+vCKVxWQtVHB6G3g0buApcnnQnFE
         rYMbCQLwTKToLk/tTMbqDMi180YGilZMa3LlmXSg+pbTqSLS/XONpmhNrz/G3k2twvn+
         5DqXl9+0bQjfPgkBpIiZ4/Kc9BFNVtt5eZ0xdKYwHZxwfGHzQGm0LoPT0Nt7CvcuwQdq
         V3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786182338; x=1786787138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=O7MAb3Uu0LO6yvv+qCiCK5kQU9lkaEhyw4ok7BL0cqY=;
        b=BwKL5tj/PDDuWSO2tre2XvGkDkXgXfmvFVVDcpITq4SgxWHfD4cLRCyfg3IWUV7QDg
         R2Hv8oPEc52/AhFxMQVIUiCemvbTZ+l1UJnH/d8mw504WOLr/5oA14tLS2Zi4nyOCcv2
         amuKZuvvKt8uq8Z32UtBKFF132C4aAeSFifpBtDrKbSimpEivqaUSu8Vp6U3JpP4NVFn
         LVXvhjFTXZJTn5gz5LobpIUi1ApJC4hdA5tgCYtOhwj2JurdtlHAPvzJc5blxI8A/8DM
         HvvhsXu4+RGDkRcEgFHh9DQSvnf+15pHIRa2E3ZfFHzuDA2bVT/NpFpQWWwket0B4B8F
         UVwg==
X-Forwarded-Encrypted: i=1; AHgh+Rq4yMQXdNmEbEQ6AjYwq/GEVPfPYzGDBMnUWXupsGFP7tcL8pZK1jbKIU6XQOWTJpfVbCsCTYJalwY=@lists.infradead.org
X-Gm-Message-State: AOJu0YyNPm7VnMqKf1RwNqt1F88NKQxC1hK1exoKBC2zXfG34mi5i5zM
	9m2YcfHLnphDt7lOhPTLpEvowLhFFkEvk4YDkuSwd2CzZmL6u2+MITpU
X-Gm-Gg: AR+sD13YGA/TmB1bWB/oSq1hFFBVb7nlID9B2veZzjPB+EYz7lb5GnZesCiPaRWV6sj
	59Zaqulqg9SLup+Kke8qZL5kYVZUkOLC+Jf1foZObYK+EPQXoTvzMutju0eX638xpKxEbgqItyv
	3KDrhcnmoXfVywCSyq9cJbODOEInUERxmbrxm36xL6DsCEY3MS2ejEjH4W/6tfmquIO9ldO1qYu
	tckypqSqUQRyTCoiPrTAIhgFU1XcuI8wrut0EBUiRScDt+S5WhlJ33uxxdgqtgu7M3kqcZNICD+
	wlT+gHF89ZaIpN++CmnR8r1o+3fmnylkUH8z2j8TMXnw7X67F4asOiYTCTwTwHWFwG2owFaoogR
	aDKpFaeMnNcR6X1etGSajxL14oRQMM6v7V0StB8BxCok+Ackza9S9Sj+RgJuCq9vCHoF4r67nHA
	kitVpsnk293fbuy7R+C5s1HGZnJbDrfNLh5uweeRrJ48Q8shZzgTKM0aqdMoP7z4Q3piMcDzDbw
	mpJEQ3mIGApkTW0cxXuJgiqixm7WJMvVhjsSrBoVGqAH4lYosvhbfxm+3XMH50p0Q1cug==
X-Received: by 2002:a05:6000:290a:b0:47f:7526:5a0 with SMTP id ffacd0b85a97d-47fec47628bmr22114967f8f.0.1786182338193;
        Sat, 08 Aug 2026 02:45:38 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8E20009911270F4BEC2300.dsl.pool.telekom.hu. [2001:4c4e:1b8e:2000:9911:270f:4bec:2300])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48002145966sm12913518f8f.5.2026.08.08.02.45.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Aug 2026 02:45:37 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Frank Wang <frank.wang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <lumag@kernel.org>,
	Yubing Zhang <yubing.zhang@rock-chips.com>,
	Alexey Charkov <alchark@flipper.net>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-usb@vger.kernel.org,
	William Wu <william.wu@rock-chips.com>
Subject: Re: [PATCH v13 00/35] phy: rockchip: usbdp: Clean up the mess
Date: Sat,  8 Aug 2026 11:45:18 +0200
Message-ID: <20260808094519.8417-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
References: <20260714-rockchip-usbdp-cleanup-v13-0-6cb3e769d4c5@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260808_024540_201264_83CA529F 
X-CRM114-Status: UNSURE (   9.34  )
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

Hi Sebastian,

The Tested-by tag is at the bottom.  It comes from the same test run
as my reply to the dw-dp v11 cover letter: Orange Pi 5 Plus (RK3588),
drm-misc-next of 2026-08-07, this series and dw-dp v11 on top, plus a
local board DT patch that enables DP Alt Mode on the USB-C connector.
All 35 patches applied without conflicts.

Scope, so that the tag is not read too widely: I exercised the
DisplayPort AltMode path only.  Modes up to 2560x1440@144 are clean at
the stock VOP2 ACLK rate, and 3840x2160@120 works once that clock is
raised - a VOP2 limitation unrelated to this series, which I have
reported in a separate thread.  I did not stress-test USB3 host or
device mode, and I did not run repeated hotplug cycles.

Patch 16/35 ("phy: rockchip: usbdp: Register DP aux bridge") is what
makes dw-dp probe at all on this board; without it the whole rockchip
display subsystem stays down, HDMI outputs included.  The details are
in the dw-dp v11 thread rather than here.

Thanks for the series.

Tested-by: Igor Paunovic <royalnet026@gmail.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
