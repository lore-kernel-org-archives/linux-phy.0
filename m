Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61070F327AD
	for <linux-phy@archiver.kernel.org>; Tue, 21 Apr 2026 07:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UeDY2Gh79CWwaJt+eas1ARWAbRc1Ja7eFMOwDkTg8dI=; b=Xyf0XEXpN/wqMY
	MCIuI6bwOBRRbZBVi+2MynSYbY9y+1G2S6TpUQPegLyY+0V0AKMBe2RpP9UELKivSjcegO+UxG5vM
	SPnGlPYaOmLJJkYb9ZFA5iQloA6xXrb3cVUieB9x3QJSNBTFYFCIp7QdS4rHSH7SO5oD/kWxeHV1r
	P3Xkm0Wj86JtGPXVYs5Ho19eH4KEKWD41917nWM5Ta6S4h0CENi2jESGZr8u1VhqK1PcT2+ZzG9Dr
	gVmTynH5TLr1/+GqI4fI3Jepg2STXaS2nC5hM1a2eTCE5V34SzyqNHgMYO4ID6/TjhAyX60Qi0mmB
	0mX4ZKv8U4BFxMgGnLZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5FM-000000088yo-0ajY;
	Tue, 21 Apr 2026 07:10:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wF5FK-000000088yd-341g
	for linux-phy@lists.infradead.org;
	Tue, 21 Apr 2026 07:10:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 30159600AE;
	Tue, 21 Apr 2026 07:10:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F749C2BCB0;
	Tue, 21 Apr 2026 07:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776755409;
	bh=JK9ByoGDnHAgT55aq4ZUwYc3KmeDG/rY4+1MhRlLt+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L6/4rVzBd874l8llGsEKVhzWRPbH4BYYT7yPkcjDBVXqn5JhBn4U3SNuZlHWjOTPu
	 rRW2ZbyHdiK2RXkRnhCuVcwub5CaeqDW8B6imtkJSDo3SoPOxpQ67lmOwacqeDc+1Q
	 VZjkz/jY1YiJF6XGrb+CtrGK2WbdPzHicSDJgvGcJz7Nm4D1gAMDHmJCgu2QiuQ86Q
	 jdoF5O0Y3evyugPIymJx31nqmZsYbF7ZqKVTV6MX7Y/CGZQ++yV2fzRVAGQQqrR6zF
	 W6/7KAXMobdtwYSKepuZGUKMQ5BGtIRqpbC3452/SxDW5rfQfmXTwMN918i1OYEGhT
	 NPxGdzPtN09+w==
Date: Tue, 21 Apr 2026 09:10:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 3/6] dt-bindings: phy: realtek,usb2phy.yaml: extend
 for resets and RTL9607C support
Message-ID: <20260421-conscious-goat-of-opposition-eb1cf9@quoll>
References: <20260420191941.81834-1-adilov@disroot.org>
 <20260420191941.81834-4-adilov@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260420191941.81834-4-adilov@disroot.org>
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

On Tue, Apr 21, 2026 at 12:19:38AM +0500, Rustam Adilov wrote:
> Add the "realtek,rtl9607-usb2phy" compatible for USB2 PHY on the RTL9607C
> SoC series.
> 
> Add a resets property to properties to describe the usb2phy reset line.
> 
> In RTL9607C, USB2 PHY reset line is from "IP Enable controller" which is
> multipurpose and handle activating various SoC peripherals.
> 
> It is unclear whether RTD SoCs have something similar to that so set
> the resets to false for these devices.
> 
> RTL9607C requires the "resets" to be specified so add the corresponding
> if check for the "realtek,rtl9607-usb2phy" compatible.

<form letter>
This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions of patchset, under or above your Signed-off-by tag, unless
patch changed significantly (e.g. new properties added to the DT
bindings). Tag is "received", when provided in a message replied to you
on the mailing list. Tools like b4 can help here. However, there's no
need to repost patches *only* to add the tags. The upstream maintainer
will do that for tags received on the version they apply.

Please read:
https://elixir.bootlin.com/linux/v6.12-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state in the patch changelog
or cover letter why and what changed.
</form letter>

Pay attention to the last part. Intentional dropping tag is the same as
"not adding".

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
