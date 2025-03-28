Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ECB37C28B20
	for <linux-phy@archiver.kernel.org>; Fri, 28 Mar 2025 08:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pV7sWfYyOPOaCv87+OjzNsA9bouXM6M66bncIxbS7O4=; b=Wa+f370+GUpNV7
	36fhlNvpBoCqc7eeGaNopme/gn6zt2cU8QGvAFw6rYVBwa9tMTqbUi6ZeOBBPyp5a0ZCSi9nhGCh3
	WGwot4dPkmGzfZq46FvU7lZaBVb6KSbhVS45nbi3ImauzACP67gOjClwTYrbD44asrw9o2MBPzSML
	Ui8QK1vJQ/9Z8CFWIMl4UiVa58nDc1EzOuGRJ4EhnPLz069TSAO7aKlyMvfB0Ow7fGaxbq33qH1rP
	3kZi1H6PYirKyX69eEeGc8nhp6ycR/+6K/H2mG3Tu4gnGPqoGPDD0WytuARgJxKY2N5xQbnkgbCrD
	Dji4vkM8C7m8aknufhbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty52A-0000000Cuf5-2zcV;
	Fri, 28 Mar 2025 08:25:46 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty50Q-0000000CuN6-3xjw;
	Fri, 28 Mar 2025 08:24:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E288DA41318;
	Fri, 28 Mar 2025 08:18:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA09DC4CEE4;
	Fri, 28 Mar 2025 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743150237;
	bh=EChM5lZ02vQW3NFPu4SvlJhSoekdEWsTAF8Ta+yEhxs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kfdEU50tAlrImVBnCDiKUb91BGet1mqQjVmlmN0LJxzj3fb6Zx+gnBwOkbROkkaAy
	 VkPuX5MSz7e8ApRUdk12TUrQp1q/IEPIEKPQ+Mq6/J8H75jsOr79xrFQOzv8VT8bRn
	 GnAiYg3pgDS/lt6qLw/HsNRhTcVnlk/9VKDUywnGyqQBsT5B2AG/jX8IkAdKPfiOQC
	 VYGVP89JlLmIG78fyih0GYUoqKKz2xf1T99Bw0FT+pHDQR0bSXWlF8at/5KhtiZHkS
	 O0nh+26hROskyWX6ySHBkfPokPVHjPhT/aemHaTCLeaGA1o1yZIVgd5o2gCWVTLqCw
	 DWoOV+bRBxhjg==
Date: Fri, 28 Mar 2025 09:23:53 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: justin.chen@broadcom.com
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-phy@lists.infradead.org, rafal@milecki.pl, alcooperx@gmail.com, 
	bcm-kernel-feedback-list@broadcom.com, florian.fainelli@broadcom.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: phy: brcmstb-usb-phy: Add support for
 bcm74110
Message-ID: <20250328-acrid-pygmy-dogfish-babce2@krzk-bin>
References: <20250327185623.3047893-1-justin.chen@broadcom.com>
 <20250327185623.3047893-3-justin.chen@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250327185623.3047893-3-justin.chen@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250328_012359_047381_206B6FE2 
X-CRM114-Status: GOOD (  11.62  )
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

On Thu, Mar 27, 2025 at 11:56:23AM -0700, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Please order the patches as stated in DT submitting patches.

> ---
>  Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> index 580fbe37b37f..2e668935b454 100644
> --- a/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/brcm,brcmstb-usb-phy.yaml
> @@ -15,6 +15,7 @@ maintainers:
>  properties:
>    compatible:
>      enum:
> +      - brcm,bcm74110-usb-phy
>        - brcm,bcm4908-usb-phy
>        - brcm,bcm7211-usb-phy
>        - brcm,bcm7216-usb-phy

That's incomplete. Where are the updates for constraints? Look at entire
file, not just top 10 lines.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
