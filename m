Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66500C3600C
	for <linux-phy@archiver.kernel.org>; Thu,  3 Apr 2025 06:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/VNqgl+mZsQiEldFpoHIMP0dQmxj6x/y0nzsjWzMPU=; b=yoLTWC479uEA4x
	FjPQ49vpEuec1ierleOFEBneOTmzjnk0qwE2aFzkKi2WZoq6681hnxgPbINANtgsxIYIdm8z4rAGQ
	scwJrNUsIo7yGI9DQBSPNIzEh9dfdeNeUi6gUlQwzeUCdRft5Z3HW3ZtTrG8oFIYm1uovVOCs1kPo
	uqNQshV2JLKyLU6Zjpzc6kAGn2PoFNt2/GuA4cF4hrq87JVe9VRG1ZmLqxEd3IZ45w/t+S/IN/VWc
	R/IA6n8g60G2gYPx3dKZ1s/cEeRHRcV6QDoHC0wtwKpdXpqN1f0wdL0JeGAHifzBFhrYv88XxHetF
	VDr/Ejs7LrHbZPoy03IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0EFd-00000007xN2-3qoz;
	Thu, 03 Apr 2025 06:40:33 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0EBE-00000007wV9-3IFB;
	Thu, 03 Apr 2025 06:36:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2E62761362;
	Thu,  3 Apr 2025 06:35:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E7BE0C4CEE3;
	Thu,  3 Apr 2025 06:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743662158;
	bh=AGJNWfKRNZL//XYg7cPPDMuxOk/9JJAVddvZZSpuEEY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VQQndKRoCv1j7LhtIGvg7iXfK76iyoBI6qWG8JHeIVWZUMXdE6vuMdhlhXvQuFo4y
	 XNRn7AOAnUGVDJpSze7BcqQ3U8Q6Iskb1CSCQ2ZQYb+JevofEDlFd5XQW9RH3PZzlD
	 QCzVBydKlgK1dffpoWUAsnPf/PRXUaF7dH1JChf7yFqleEFFOkKsFbHqhuQ23cTMrL
	 diBfgnv5Oge5fzNEbI6gEq1PF7hFmpoIdJA5YvVnKUSyqz+UgZNMI3FhUcW4yNAwbv
	 yFYotLIxGgrxl+sxl+z8XFD4/3GH5uRkloeWLJEYDjBzGRpjGYANXmV5/YdZdTJGGX
	 nQ35QgAhHviEg==
Date: Thu, 3 Apr 2025 08:35:55 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support
 for bcm74110
Message-ID: <20250403-impetuous-spry-falcon-1e2ea9@krzk-bin>
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
 <20250402185159.2976920-2-justin.chen@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250402185159.2976920-2-justin.chen@broadcom.com>
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

On Wed, Apr 02, 2025 at 11:51:58AM -0700, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>
> ---
> v2:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
