Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F55DC3ABA3
	for <linux-phy@archiver.kernel.org>; Thu,  1 May 2025 12:31:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ftyB5OC2uBpoqDq+ViaFD2tj0R5PlMY01BCPcdd+R24=; b=FRpvfW1Li35ljy
	Tb37uEH3u2GWeTtekXA+6qFycT2JwCYyaCpp44sImcSV5YfBS17CYFnu29Bb1iwMfPGAYX0u04avq
	X0iXJ7sDPgEafjciDyeovrivGQ4b+PHUDG8xB0iCG7XUiQrCqNJU2cl/5qepkhUduYG4zcJXhCXFb
	1tOxECnEG7IPLSAEBgTHnUuEG8gd5Ys4RxsbVkqFQY7q8OX5P/A9QxFUuuyTayjov/G/Cy8wrVmEq
	gFVuSMB5f4M30LylgbK9c6JYw+ERUZDLI3J7CdrX6iqMJ+coVCMdmQP5HutzF/nDl/RVSsKpeJv4D
	VQtpIjvtkjtMXh6GqgrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAT4R-0000000Fg8T-3HCM;
	Thu, 01 May 2025 12:31:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uASbZ-0000000FLUt-0Gzw;
	Thu, 01 May 2025 12:01:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id C4EAF68468;
	Thu,  1 May 2025 12:01:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94CC3C4CEE3;
	Thu,  1 May 2025 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746100888;
	bh=wO38hj0kH5wwFVV788X9fXlS0WBLehhmfHhlpKQsYvg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r91DJqwzqLwYugfxG2pb0c35WvYMJaYiQSAzcjSB9ovMk/EnuGFWt2MzM/ytGRGdC
	 wAZKGYA+vz/s77fg7aQPZpAlRKcIT/igILGZ14jGoQZRtnvMqHOqkLkJwPy7JSpIpu
	 XDcukosA/Y5OgnMQVJEm1UnxIJQM61jiR71p9iyLgVv43hbMZ2gAbN2M6b5oOH8MEX
	 eADFKDx06fKC+QJCJEL2g+i88z65RYvJRGtPFmWl9dLMhjXRqk6a3+1YKebnYI0UTa
	 HUNw7+7h0Z7T1NnKcVsO1ulcz0ucQy6ZlItp/CCK3/P4KLZaEHM+QCaMeinOSEse5R
	 h5ur5t/0ba74w==
Date: Thu, 1 May 2025 14:01:25 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xu Yang <xu.yang_2@nxp.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, jun.li@nxp.com, 
	alexander.stein@ew.tq-group.com, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/4] dt-bindings: phy: imx8mq-usb: add imx95 tuning
 support
Message-ID: <20250501-incredible-skylark-of-awe-e0c2cc@kuoka>
References: <20250430094502.2723983-1-xu.yang_2@nxp.com>
 <20250430094502.2723983-2-xu.yang_2@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250430094502.2723983-2-xu.yang_2@nxp.com>
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

On Wed, Apr 30, 2025 at 05:45:00PM GMT, Xu Yang wrote:
> The parameter value of below 3 properties are USB PHY specific. i.MX8MP
> and i.MX95 USB PHY has different meanings. This will enlarge parameters
> value and add constraints for them.
> 
>  - fsl,phy-tx-vref-tune-percent
>  - fsl,phy-tx-rise-tune-percent
>  - fsl,phy-comp-dis-tune-percent
> 
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v3:
>  - keep original unchanged
>  - enlarge value for some properties of i.MX95
> Changes in v2:
>  - keep widest constraints

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
