Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D6E1E7719C
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jan 2025 17:07:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CtzLZTyT1p8BqdTwnRAku66Ue3yaxEwQe+Sjg466Eww=; b=V+M34D0HmCHgaR
	2JAAauXLvBtDQUuT93M7xgo620K2qSIVg+m7cZP8Y1h5JvYGrgxhDb1S/V6LV5rgwLkrajonNqGus
	keVTHpvVO2BIdV9rIs95asTN8AC3iIy/D29bnDSc0sdvns++VVYrlf9kyqGPoOaXsESF/5OgI3/5r
	/lWvaL+Y7woydjE7L19YvZ+riqqBpbnOW3YF1HDyfGCW7CwwCdz04EQGvygfZztmaqv7AvTVoe3oJ
	9hdS8J4uAncz+pndfMCZYy0UXSQM+IXEnKD/GQ+UbPhNCHb2dFNZdATWTqbtDhXjVG8ml2cvu8hHU
	bVNeKbQbJgsrjSkoHGrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWITx-0000000GN8o-038y;
	Fri, 10 Jan 2025 17:07:37 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWH96-0000000G24n-3I6D
	for linux-phy@lists.infradead.org;
	Fri, 10 Jan 2025 15:42:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3C0625C2B52;
	Fri, 10 Jan 2025 15:41:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCD21C4CED6;
	Fri, 10 Jan 2025 15:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736523719;
	bh=1WJun6SDCnjO4F/qdOg150Sc0efJ7jC5PW/RAsW0f9M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lRl7Vfi5fUaa1cIcpAfBxoGpHFLkJaUjgY+QU5HZ6BNm/0eXyQ5g5qmkxI3OBksGJ
	 tH1ZtsvkFdCCMwPMh/IPEFgQLhkvzKjGchSbPLVsoThEpIsUi+uWRbYrwg6hsgFclZ
	 yE0BZgLRoAclYX/e2hH3O9VRanuWJOVJhHA7OJtC/IKZm64PEQG6SK9GTaqpOYPyAt
	 lnx4bUI021uOyn+2Rq2DFyVGIvCeYvvku5YdhBiJvVKGW5RpJYEpaWXz6L3drC6+x8
	 dQu5lieliug2sXkxdwfSZiXVp7W1/913LIAZwmnld4kJo1+TYdpKNPWztgNLUsqDxk
	 aJTPwoWjdeTSA==
Date: Fri, 10 Jan 2025 09:41:58 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andre Przywara <andre.przywara@arm.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: phy: Correct indentation and style in DTS
 example
Message-ID: <173652371839.2920536.158309773961606738.robh@kernel.org>
References: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250107125840.225982-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_074200_862885_BC12B0BF 
X-CRM114-Status: GOOD (  10.03  )
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


On Tue, 07 Jan 2025 13:58:39 +0100, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/phy/calxeda-combophy.yaml        | 10 +-
>  .../bindings/phy/ti,phy-j721e-wiz.yaml        | 98 +++++++++----------
>  2 files changed, 54 insertions(+), 54 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
