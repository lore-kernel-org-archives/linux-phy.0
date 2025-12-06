Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55FCBD3B7D2
	for <linux-phy@archiver.kernel.org>; Sat,  6 Dec 2025 10:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gAaeJyQoCT8e+Vfpi/RCwqBbC1DIBGgt8VRGuV/cusM=; b=Dk591YB+aXWiGs
	2cOIRGvBXFEr6AyfkdM14jxsWBhLOtZPMR6ckXSLWLbwyoIai3FaFQsSrNdVbTkRfCg9W1FOafHdB
	N3ZTywr+zsFdrUAnGk8G0/jljubJRwxnFib5/vKn5MadSItz8M94wNKr1RsZb7J9zvUbWZuHJSQjF
	4l0jjfLpkpxJTkM8BkDLkQQvYvb7RAYt/jWHxbw+6tIvyqowKJ63E47kYrCi++rtFQmV8p3ntClrG
	2xI7LM+FrdYzzZQNHnSU9UGVXHenMWQ/lQJB+vnagyxOqbHKse3MdN1MKNPRk5laEKGYjWAp0t9Yv
	sOm2PgZnL1ZOps3imZOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRpq2-0000000ApqB-0Prh;
	Sat, 06 Dec 2025 10:48:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRppy-0000000AppG-4BFh;
	Sat, 06 Dec 2025 10:48:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4FDB140A9A;
	Sat,  6 Dec 2025 10:48:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FD59C4CEF5;
	Sat,  6 Dec 2025 10:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765018106;
	bh=STlMorUBBdfacWXUVY0MYVqsAE1P74sX888Amhh4DqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kTd5BxawgkEYe4L+iumdhan+lE8CnBtT01ThDZa7b0F0Ip81sUSc/9625ECYF/iQz
	 442XYwhRYNxCZpEKsyRaQ0IvCTXIC1u4EDRv/yI1Jlu7ceV3rzD7xWhvi0n+LTKnLD
	 7j75ukNgYNpUFa711h2OulwuVfSZ1cDd3DQVi38KrkdC7ISqgZWWf2iZc+ojRCUrQb
	 ZXwxdU3v1HIuhyyT4OQfj97wb+k4KcrYZubuowSFWdT74jPAn3ybeDBgIIr7HJpTDQ
	 IVXGf6v0cfspFMY3lizzo70QHNC0h4qndXeslofw7YcjSInbOiwjYK3BYnV9Dlxh5R
	 Z2vsYF4DFlnlg==
Date: Sat, 6 Dec 2025 11:48:23 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Roy Luo <royluo@google.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, =?utf-8?B?QW5kcsOp?= Draszik <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>
Subject: Re: [PATCH v8 1/2] dt-bindings: phy: google: Add Google Tensor G5
 USB PHY
Message-ID: <20251206-viridian-shrimp-of-growth-43ddd0@quoll>
References: <20251205-phyb4-v8-0-c59ea80a4458@google.com>
 <20251205-phyb4-v8-1-c59ea80a4458@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251205-phyb4-v8-1-c59ea80a4458@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251206_024827_060080_34051892 
X-CRM114-Status: UNSURE (   9.83  )
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

On Fri, Dec 05, 2025 at 03:54:11AM +0000, Roy Luo wrote:
> Document the device tree bindings for the USB PHY interfaces integrated
> with the DWC3 controller on Google Tensor SoCs, starting with G5
> generation (Laguna). The USB PHY on Tensor G5 includes two integrated
> Synopsys PHY IPs: the eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo
> PHY IP.
> 
> Due to a complete architectural overhaul in the Google Tensor G5, the
> existing Samsung/Exynos USB PHY binding for older generations of Google
> silicons such as gs101 are no longer compatible, necessitating this new
> device tree binding.
> 
> Signed-off-by: Roy Luo <royluo@google.com>
> ---
>  .../bindings/phy/google,lga-usb-phy.yaml           | 133 +++++++++++++++++++++
>  MAINTAINERS                                        |   1 +
>  2 files changed, 134 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
