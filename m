Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 210F2C3DA4A
	for <linux-phy@archiver.kernel.org>; Mon, 19 Aug 2024 17:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+2ePS0V23YGErvkG6Sx2aOyP4+0TyxWVnPb0yXsS8Y=; b=4a+Ur6bsKONH0z
	cUwTefvyJTo2aun3jLtFVu88iIxcpHZp8OTzs3Ufn8aQSGxxSI5Jr+tKqgqkzBOAqs50WtzYrodEP
	TKI7mkY6IC0JYk2grpiLge4vDY1jKM3X8tjsmch2P0qjWzANsxSK4uk8aLZsUiA17F9F67SldVr3C
	LK8p5YMbtq3/nakghXXgMYxg5nwox091Z0pdYw9zjXLM0AA2qrMwMEiXLTh1VFPChXLpCBORwtmfu
	266oXDKrSl1Y62GFCivdWbS8DQA6YdFMIcty/9SqhmG/1pfGRNKV5PlQeFK/nIz1ZP7J7jkjt2AhO
	774AJGsuDMP/d73WC5AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg67Z-00000002Oio-3S4G;
	Mon, 19 Aug 2024 17:24:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5xE-00000002LwS-3n99;
	Mon, 19 Aug 2024 17:14:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E82FD60BBB;
	Mon, 19 Aug 2024 17:14:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6D461C32782;
	Mon, 19 Aug 2024 17:14:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724087643;
	bh=39oCUAsZXZjKgxyLECNLxHaEVLN2QJjJOIsKxZx4xsw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=VjjX2mQqM0fyQ4v+gD1AMuRgEz9FIOfegBSfjNRTwLJPuaGw7MbyvlF5L2m878RmD
	 mfpCRgrIHZ0PvOSHzXiEtRqm7U/uALnrRagy7srUzBMFmoUsQIZRg0NN6uA7n7bufN
	 ztRDiorcEMdCqrTJRnq7+pD3IcbZpn5aK21XcPAbiwWZ4+EeJytJfDJjNGJjMdN8Cs
	 3lKMT6S8/mMM6V6XyJerv3hYXvawfQDPtaZYRYvvnfFWA7e9uUdnNIpShadX7jV+y7
	 2NwYtgSCGm7rfXV5ixlwv3XcN0FerLm9a9jcAQfaIRon1NqRBBg/1i0Nj/8wZuxC+M
	 7tNVfdhOxVlGA==
Date: Mon, 19 Aug 2024 11:14:01 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-phy@lists.infradead.org,
	Masami Hiramatsu <mhiramat@kernel.org>,
	linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: socionext,uniphier: add top-level
 constraints
Message-ID: <172408764120.1697315.1961179049740064713.robh@kernel.org>
References: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240818172835.121757-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_101405_030527_C8F77DBF 
X-CRM114-Status: UNSURE (   9.21  )
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


On Sun, 18 Aug 2024 19:28:35 +0200, Krzysztof Kozlowski wrote:
> Properties with variable number of items per each device are expected to
> have widest constraints in top-level "properties:" block and further
> customized (narrowed) in "if:then:".  Add missing top-level constraints
> for clock-names and reset-names.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/socionext,uniphier-ahci-phy.yaml         | 8 ++++++--
>  .../bindings/phy/socionext,uniphier-pcie-phy.yaml         | 8 ++++++--
>  .../bindings/phy/socionext,uniphier-usb3hs-phy.yaml       | 7 +++++--
>  .../bindings/phy/socionext,uniphier-usb3ss-phy.yaml       | 7 +++++--
>  4 files changed, 22 insertions(+), 8 deletions(-)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
