Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA472C3DA4A
	for <linux-phy@archiver.kernel.org>; Fri, 16 Aug 2024 22:39:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kQPU9Fa+98TpYe1ihp508Oaa5W+BWX5SzbGfiHEhL7M=; b=bbVh6f/Q3Xbj1g
	OmmCrRlTtEZLrd/qPAhfM9sCg2zuju1U883EHW309Z1u8KI7R2SmKJpGw4/Hx9SOmJDFiF5jpDy22
	Rm09u8eUxwWKsk1cPZmBNzfG8ZWxQf6O+tXPxC1exY9bp+BR3OrkFHRYt0bViGRRUeUIO9lNalfeA
	f+ZcoG9J3HpZdEsPmRobOje9eKYs4xJ2ibXaMRH0oJPYQv44toca6VoHYgpaT3qlGCDSW0WXEYaXe
	vCj6OFQiTzm6kI6MyCG0Kq++HHyq/EeBFmUBSJa6OEzeliTblBebT1l5urn3TxzFRtaONpNJKk+Sy
	zYYbOmcuCCAN9GI2wKdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5bK-0000000EDc3-2UD1;
	Fri, 16 Aug 2024 22:39:18 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf5aa-0000000EDSq-05Zb;
	Fri, 16 Aug 2024 22:38:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8C27BCE1EFC;
	Fri, 16 Aug 2024 22:38:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85D75C32782;
	Fri, 16 Aug 2024 22:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723847908;
	bh=Fjk1qhh8MhiVCg0maoWKTtUgd8BuOC//8pVyrOmXtIo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ni1WbB956Qo8TD6hjwwrk9k+6YrtuO2dkesGFQxQLCgYgPnkAnP8me9WRPBdFkYVb
	 elEVCbpG2IpUFiH9gOy+KM4198FDIKx6SlTjCMdKft04RYkqr0XPg3zjjt3y8VuTV+
	 D/PU47mhdiHpjadj1eVctKE30UB8JWSKdPhTMI+om7ADAvP/hKr+fIfoZV++FF1vZ9
	 D4fj/ujxmZc5bYMLbE3uxoRyNEfDnUWn+ow33chGavQAy6dgPdslNjTGQfv/Qcqt8/
	 t1YvklfkdUIAXy2L/L+3TkKGzf1eWA3biJkGnGu/Bmfp+rDdEUgAqW0zybAVaLJF1J
	 uaBZOXrP2T3tQ==
Date: Fri, 16 Aug 2024 16:38:27 -0600
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
Subject: Re: [PATCH v3 05/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller AXI performance counter
Message-ID: <20240816223827.GB2394350-robh@kernel.org>
References: <20240724092950.752536-1-victor.liu@nxp.com>
 <20240724092950.752536-6-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240724092950.752536-6-victor.liu@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_153832_252488_2393FCB0 
X-CRM114-Status: UNSURE (   9.25  )
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

On Wed, Jul 24, 2024 at 05:29:36PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller contains a AXI performance counter which allows
> measurement of average bandwidth and latency during operation.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v3:
> * New patch. (Rob)
> 
>  ...sl,imx8qxp-dc-axi-performance-counter.yaml | 57 +++++++++++++++++++
>  1 file changed, 57 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-axi-performance-counter.yaml

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
