Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AF7AC4828D
	for <linux-phy@archiver.kernel.org>; Tue,  6 Feb 2024 08:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bv0LHBBfnRh0T/zeGstRciYIcos4usMzBNpBkvOLRB0=; b=hI+H978F8bQmaG
	I3vvVM+c4e7zTUnmekL0TAIXERHmZ4nu8uE0s4NIIHKWg1iieTx3T1sTrEZnovS/+++b5tOkzQjXt
	6+7ELo4gYS8oinSa0bjbUNhYIvSIN6/3pNcFPo70mz27wwYurPS2210mVOTIMpNZjqoTqKBSfZiP/
	z+F+rWQy+cs6qYmdpqyrDlNQ0O8ronUMXkYeMajx8MPLP8tWGQVquUV0+tGs9Tf8++5hUh3Ogolqb
	xi/wXAHeb34MvWhsWYWSiJdn+9WBxEmdK7ZF8gl/o/KK+u/LRxHFghzZz22RO9fL/hrpC5gP8MRNH
	mGlv9QznBy6jNMBpcufw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXGby-00000006P0T-1H0b;
	Tue, 06 Feb 2024 08:15:22 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXGbt-00000006Oxz-0RuY
	for linux-phy@lists.infradead.org;
	Tue, 06 Feb 2024 08:15:20 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40fdf5e7039so7315845e9.2
        for <linux-phy@lists.infradead.org>; Tue, 06 Feb 2024 00:15:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707207309; x=1707812109; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=btHhwGxbZA6ve4BPec76cdv8nujipODBvqRCy/GsxP0=;
        b=OJKk4HBSJGMjK+qFvR3XMMOb/NfkMzuM+oaZI5Co6GQsam1qqvSrN6zRiqLnUieDea
         K/dS/8/LYbNtBG8QLvHeIsaoP/JmJ93O4OM+FD4nqVxmzK/hHuwox57+doiEq79rWzBO
         PX0Kpqx67XEJm2MOUKsLyqulmvyKdSoMw+z9Q1LDyvB1HhF5k3MywX67XUZsR5yzP708
         JjeOH8TnyFoxmX+H3P4zdOMRd+Fff/iVT4XCVPL2vU/5YBESLYaVXPouuVwIPRbYQA2M
         ZP3XnUAzJVT3Kd9pnGz6f8I50CN0ayPZV0j1rGFpBGLG3l3MJOa43TQvad2Wq4yGs9oX
         0h0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707207309; x=1707812109;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btHhwGxbZA6ve4BPec76cdv8nujipODBvqRCy/GsxP0=;
        b=RmfvrTzxTrJ+pIb+mg3cSMm0suGEhgIeUT1xUdZ6quYu0Ck2wUub7lrg/g+1BhNGp6
         cDSsZ7DOrqp+KAWHMng85+IUGDkhZte41ATrxJXEh8oy7RiRDKN/xGdTFiRMYwM1hv1h
         WG1T6bLRDI9zNjkKXd8kFhHPQR3p24SuHvM09ueSPVE9kQ5wvxfXyGFwI5NbC6U9sevB
         2pOpyt+ES9G3/MX2G28UXfDRX+L2EIPB0qMA+c9rGJAEe3EXfOL0pTFlFMoG4ibVtWLB
         rwiiPtOX8o6046Tb2lCprjtNF2vG/iN0D46V9TeGCNBtH1O/XvxjUvGid8Hb7liv0XJz
         Ksvw==
X-Gm-Message-State: AOJu0Yx9npO9+C5jX5lunuI0+03nzEM4bcVvYiUmxRfV4BGc4boYERsf
	p7H86UCNe5RwumSWqqsTBFlfJyOYJP2v9iy/YfkjK8lwYtSG3MZzteYy/YI+El0FMSwlLyQPhPW
	stKnz9w==
X-Google-Smtp-Source: AGHT+IHAY0id2rUAFIshnMoMYXgfIfqBfIbwnjGvIxqn8bUK+f7tCiKlPakrEgJpmh+5BOErZSPgrA==
X-Received: by 2002:a05:600c:5117:b0:40f:de5c:d283 with SMTP id o23-20020a05600c511700b0040fde5cd283mr957164wms.26.1707207308987;
        Tue, 06 Feb 2024 00:15:08 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX1hmKw70FzD7bJf7uUXsOKOKjCezkhFYawWz6xg07SYsxhvKv3q3I7MdZBhoJFAtFibPiY+lppQGWokiuhvJpriSDPCGWWvg9GaF5G7QtZAswh1dEJFg8W8CcMgLw1dSmZ7sXXdA/IfouRf7ndIcKbhlB1R8nIejdD7QFT2AuLEXE3QDRtu4Oi4rYDYAk4k0IDcxox5bzKqjI0HOIviksCiIkJYLHVrSo3nhX4vS6IVy1fKzFtFNMSlXsoM56I4rvi+O2xbGRj9kz3KHgEnYGW7BG/cV3dB8Ev9PwSfbQRIl9P27ThziXC2FZVj3+Jlge2Usk9R5sB807bUlqWsXWwVSOiA+sMVqobqtncNIZ7tlODknzocIf9K4Pin07cszcfsLJbcYxqSbHzjY0c2KXCuCElKyD5DbvxRvQth5ycDvE7GscwUWLpoMiCXYRVIqAsx9h1v5Y/xqvcGNdkra6z/tLvTUAGvo+QyfPCuxycSdJTyS8AYc47n3pa0WWh3uDgkfnfNC/HwE59mKN/BA33LBuxc+QNqaNaSnoPU7V56hOr9I8kkJbvLbZgJsa5Cqxe2jlspVAv1UUyjfXZIKAcaOCxtYPOtLxrfQATN8KauuCbNdn3Cm2rIgvzQ79N+KRpG/pYVbHUBQJPMN930iVtdqPu6BgzQo/5vadtYiABOIaTkDm9dxEWzDQ9gc/+UldTJhR77/lR/ab3nMd0CMaqhfoUDxpEm9UR5ywWQkLRcxzPNG9XG+Dtxoc1rqzY2HrQO0GkQQSoccVqaT2mSKOcmKsTnK5UAjicWvXQ+5nzh43HHTJVmXkmCgTn1Jh02bViz58Zh5/ZRwyEZ0FVR+dxOBpX3MuMDv2oTrc9nQullGCLh4UceAncr2COOFpejrRnrvdtoVdbEHEtkwBT9/T1eKNSQFZM9EvfufhNl9ATj7yb93zB3NW1ktFAneBRykJD1w
 huBWIWIirQQa/D77hagZ/LhIx3be1dMivkRxQWPWPFYjSmgBBx4KXysvRNuq0bi2acJDpi+BTqzK+7e5ufYEtNI1pXT54aVeY3fWAnDBMYVlXw1jxRAVFS3xEjM4URX69Ievl8tEmPTD5waLJpGY+w5LuYeqi+2NGkJ0XJkgDLdQY55mg7/dIs0m9u3A==
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id o28-20020adfa11c000000b0033b3ceda5dbsm1440140wro.44.2024.02.06.00.15.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 00:15:08 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
To: linux-arm-kernel@lists.infradead.org, Adam Ford <aford173@gmail.com>
Cc: marex@denx.de, alexander.stein@ew.tq-group.com, 
 frieder.schrempf@kontron.de, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Liu Ying <victor.liu@nxp.com>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Lucas Stach <l.stach@pengutronix.de>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org
In-Reply-To: <20240203165307.7806-1-aford173@gmail.com>
References: <20240203165307.7806-1-aford173@gmail.com>
Subject: Re: (subset) [PATCH V8 00/12] soc: imx8mp: Add support for HDMI
Message-Id: <170720730748.2682504.5723443718654255772.b4-ty@linaro.org>
Date: Tue, 06 Feb 2024 09:15:07 +0100
MIME-Version: 1.0
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_001517_156787_2A61B722 
X-CRM114-Status: GOOD (  11.98  )
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

Hi,

On Sat, 03 Feb 2024 10:52:40 -0600, Adam Ford wrote:
> The i.MX8M Plus has an HDMI controller, but it depends on two
> other systems, the Parallel Video Interface (PVI) and the
> HDMI PHY from Samsung. The LCDIF controller generates the display
> and routes it to the PVI which converts passes the parallel video
> to the HDMI bridge.  The HDMI system has a corresponding power
> domain controller whose driver was partially written, but the
> device tree for it was never applied, so some changes to the
> power domain should be harmless because they've not really been
> used yet.
> 
> [...]

Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (drm-misc-next)

[09/12] dt-bindings: display: imx: add binding for i.MX8MP HDMI TX
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=8933d29e7703f6f905bc84186b915b0ab4fe03bb
[10/12] drm/bridge: imx: add bridge wrapper driver for i.MX8MP DWC HDMI
        https://cgit.freedesktop.org/drm/drm-misc/commit/?id=1f36d634670d8001a45fe2f2dcae546819f9c7d8

-- 
Neil


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
