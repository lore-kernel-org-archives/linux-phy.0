Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50916D1D478
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 19:04:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zapfpbcJWXU6WjAM2J+UiAx6QqDorPFOayYBhA8Jmdk=; b=t8wk/faxtdUr8Z
	8rxDe6lntyWB+3zkHp7B4E2fHErd8P0qJcxYtEodNsvYa1YI2Gx0D7xvxGwApYiGZDn8SoD0LhQMC
	UGdYccSaOBj3D2Nj29Sn81euoiIDEK7g2dtsf0WjgdUQi8MIOXnhkmFyI28yk/+tJ+nZlO7+ntz3K
	WZk9+IjNGz9CvIPgw9DxDQpZuQxJ3AqwejzIvBcTreM5E9fdjni+u8TsAVDH+b0skNz8fA8CsuEWJ
	1ebpwz5wojpYiDRFmK8AAN2YoMldX2pz6vR50oaLB4wLu2wzL5ndsbD5KMAlT+j4u6BmPO7x0PsBY
	PoO7NCY/x5GCL0M98Auw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvJW-00000000hhN-3qjE;
	Thu, 08 Jan 2026 19:04:54 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdvJT-00000000hee-2LQw;
	Thu, 08 Jan 2026 19:04:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WBscWiAcWdp/hFnULczKZ/bdY9UUlluznf57AoT+VeU=; b=BD6a4vJXOQQcwp946mh2IuOht6
	QCqrXoCfVvwFYyjRpEyGtotTZjI5gEECIGbVWgYpFVizelst7RqVFw7V6ipRBUFYfFi//vrk4t02L
	lNoyQTwoyh6tdVBIwGrPBP8PfuUrgw6itGx7kyw66jq2iLAcjOai7M3FeJv+sFgRtctCEMgYmLvnb
	x8JqNBdRGMFgDMN3XldtxauDM2KgODhvWrNSBTAwsiCqPKlneKIL76yBa2XnEYfyIwPoF52M62eRo
	KIjeQBcXHdkmxNDvAJrgK/7opHfNwQ3j3hYAUyPcsT2u/A/RapUegEkebxEOeHdfMgMm3QKZkEIdT
	UNqPZt/g==;
Received: from [192.76.154.238] (helo=phil.dip.tu-dresden.de)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vdvJI-001XT5-Fo; Thu, 08 Jan 2026 20:04:41 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Chaoyi Chen <kernel@airkyi.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>
Subject: Re: (subset) [PATCH 0/9] drm/rockchip: Introduce Rockchip RK3506 VOP
Date: Thu,  8 Jan 2026 20:04:36 +0100
Message-ID: <176789904486.3303270.3558903343785181315.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251106020632.92-1-kernel@airkyi.com>
References: <20251106020632.92-1-kernel@airkyi.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_110451_596031_F7870ADD 
X-CRM114-Status: UNSURE (   8.14  )
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


On Thu, 06 Nov 2025 10:06:23 +0800, Chaoyi Chen wrote:
> The VOP on rk3506:
> - Support 2 lane MIPI DSI interface, 1.5Gbps/lane.
> - Support RGB interface.
> - Max output resolution is 1280x1280@60fps.
> - WIN1 layer support RGB888/ARGB8888/RGB565.
> - Support Gamma LUT.
> 
> [...]

Applied, thanks!

[3/9] dt-bindings: display: rockchip,dw-mipi-dsi: Add compatible for rk3506
      commit: 3af0f4d5d433921fa399bbe6396221c8a9985869
[4/9] dt-bindings: display: rockchip,vop: Add compatible for rk3506
      commit: 7919273e495b9154cc7e5f7713f002290f4d9597
[7/9] drm/rockchip: dsi: Add support for rk3506
      commit: cabeacc7eadc2d0033a2fc7304dfb900f9a32095
[9/9] drm/rockchip: vop: Add support for rk3506
      commit: ec27500c8f2b65a3be6ce39a5844d6d246d1b2b0

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
