Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D34B2C3DA5D
	for <linux-phy@archiver.kernel.org>; Mon, 22 Jul 2024 23:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38sJqHr8HgryYcEqG1eI6inLWTfejvsx/AY//VFe7mo=; b=TYkykiPiz0jRFq
	j2+4eWp8Y4SXGErYNrcxsGz9BzltGuRHslri1OBuPtRS9/n1Yynboz9j+jFQHze58obfIemOb8yw5
	xbuA2DOxwW6JkYs6sJWneSVmbwMWjzcR+2MjfydSurCAbhq5RSLoNkXMUx19KTVAtDwIl1tjOuE63
	7lU5jVQ3KYSn1QSY7YV7XqxUSWsNANQg1kRBybZXUUVvVjgWRqkZDGdXlddW1sDKDQlCJy4hqaT0x
	J9R4A1v5b+UM81v5DSTCf0ZoIX9zLE+AiRusfIisRjSCPy/U6U1aHGLEHldEte0CspHs4u0QDX3rY
	IX0Yv53SLFOnzCavZSdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW27J-0000000ApGo-2OCR;
	Mon, 22 Jul 2024 23:06:53 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sW26w-0000000ApAq-0EcR;
	Mon, 22 Jul 2024 23:06:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 76DB860B94;
	Mon, 22 Jul 2024 23:06:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C4E2C4AF0A;
	Mon, 22 Jul 2024 23:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721689589;
	bh=cC5eyWtTP19+7MNd7JmetoV2H8+x45FW1NUV40fuwgI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GRHIZiUIVpBScGRm9xbLaUYGpJcDXoWRnV0M3ZsGI/g/HEID7Iw1+in0LjpYpLbF+
	 nGdv8aSeztRhfOp/G751tSkgIw60t5W4bIinFFc/sgMXCwvXU+OoEW9B12juQhv9Zz
	 dmR5yNCiPdjOm5Ml6Ec26FHWaKSJqCoNNk8WkWDwA+hBeguGZHPR1BNhHw6oPxE/wF
	 xYHxvLjxGSuvsCPN4mWLY/GX35mBAcfjabgi9wX/jO3eF8USuiPIUrDHg2v5mzKNZy
	 XpLGu0eExUL/St9Jn64YPUYLM7Puiw41FUNNObDuWm0CMGjFEyLrry4+8GC1ibXehL
	 AIhdxpECb2RkA==
Date: Mon, 22 Jul 2024 17:06:23 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: francesco@dolcini.it, aisheng.dong@nxp.com, vkoul@kernel.org,
	dri-devel@lists.freedesktop.org, imx@lists.linux.dev,
	p.zabel@pengutronix.de, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	airlied@gmail.com, mripard@kernel.org, s.hauer@pengutronix.de,
	frank.li@nxp.com, kishon@kernel.org, agx@sigxcpu.org,
	maarten.lankhorst@linux.intel.com, tglx@linutronix.de,
	devicetree@vger.kernel.org, shawnguo@kernel.org, festevam@gmail.com,
	tzimmermann@suse.de, kernel@pengutronix.de, conor+dt@kernel.org,
	krzk+dt@kernel.org, daniel@ffwll.ch
Subject: Re: [PATCH v2 04/16] dt-bindings: interrupt-controller: Add i.MX8qxp
 Display Controller interrupt controller
Message-ID: <172168958076.231033.5039687741098447913.robh@kernel.org>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-5-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-5-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_160630_166455_2560C9B5 
X-CRM114-Status: UNSURE (   7.81  )
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


On Fri, 12 Jul 2024 17:32:31 +0800, Liu Ying wrote:
> i.MX8qxp Display Controller has a built-in interrupt controller to support
> Enable/Status/Preset/Clear interrupt bit.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v2:
> * Drop unneeded "|". (Krzysztof)
> 
>  .../fsl,imx8qxp-dc-intc.yaml                  | 318 ++++++++++++++++++
>  1 file changed, 318 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/interrupt-controller/fsl,imx8qxp-dc-intc.yaml
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
