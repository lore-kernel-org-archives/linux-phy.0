Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35069C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22vUx6KlYHzyhVTZ3Q8QjgTRAZRQYJajQYYU5zXLr+I=; b=NNY/FhRg/qYmCE
	XohOJrSJwdt/jVy12fF/lE4lM6c0ge0cfYZoDWmDH81Xkd9ilDTrTlBWE2jJebyPATPtlglQuwwfW
	BK3JUtjO4qjGLajSdguBGCe1ZL7gNgs05jI9xBxxHkLwxZYIUnamMKu2Bfe7YJPW/LIHZh/gXiFAD
	PiI51nfSi+8p6OuODLqo3HCR9Eo/zWw1eJBLHI9fj9d0FDufUwF0+wYT84c/zj2UNmDkgG/9RFfrt
	6dfuCtWT1NjLKGtUCy/UZJbVpqUAVYGMvMCo0dzJt9aCuER3NNdhDAmdOb7dChT4JvZeXfbu8ysAo
	liZ03/DjQIibfuBy0pGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5ce-0000000EDnb-3lRb;
	Fri, 16 Aug 2024 22:40:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5bz-0000000EDgs-2UXW;
	Fri, 16 Aug 2024 22:40:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id CE418622FA;
	Fri, 16 Aug 2024 22:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CAC1C32782;
	Fri, 16 Aug 2024 22:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723847998;
	bh=yLgBm9EHFdqhhjPZ0xAEPGSJiVwgSWNa0lcI/kftets=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=drt0e7SJlXPXlA5dgoJrHp/EE6nyWURgh3JHxpgb3xvT7uRmoe2zziG2njkn2Obcx
	 P1jWxlq/Z/NbE8rNjwIzmworTxqMWk48ZFT2EZ9FF5vmAirX8Tg1MFUfV6e2FcFyHD
	 FbIWKcl6cdSSz5kwxbrFjJadhLYGvZKCCU5bZ4faHRp02Tz9oFKNkzE/a9XQBC1NVo
	 NqUNd6WOu4KaDu0bHzQU1/cha920gSrChM+k9GHvgP3DLqd8kWXFROosgadTWRLD+d
	 oCRLWdN5t3dGxJprHRVdgtAY6DIOEIg4LLPE5FJLBKMqZNtZjLpyQZ5NCrkGgwFlJM
	 Tz+YKhKeAsiHg==
Date: Fri, 16 Aug 2024 16:39:57 -0600
From: Rob Herring <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, krzk+dt@kernel.org, conor+dt@kernel.org,
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
	festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org,
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org,
	francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v3 04/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller pixel engine
Message-ID: <20240816223957.GC2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-5-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-5-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_153959_707009_97269757 
X-CRM114-Status: GOOD (  10.51  )
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

On Wed, Jul 24, 2024 at 05:29:35PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller pixel engine consists of all processing units
> that operate in the AXI bus clock domain.  Command sequencer and interrupt
> controller of the Display Controller work with AXI bus clock, but they are
> not in pixel engine.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * No change.
> 
> v2:
> * Drop fsl,dc-*-id DT properties from example. (Krzysztof)
> * Fix register range sizes in example.
> 
>  .../imx/fsl,imx8qxp-dc-pixel-engine.yaml      | 250 ++++++++++++++++++
>  1 file changed, 250 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-pixel-engine.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
