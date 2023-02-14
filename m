Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B33C61DA4
	for <linux-phy@archiver.kernel.org>; Tue, 14 Feb 2023 14:22:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59xVLmR31YFqgnRa0JhwwDMWi7Fm0ibMiEdhOLnhmS0=; b=D5ptxW7nYn+fe3
	P+TDOnjHV99DMx6r+winAtb2A/Pnz7p8Yh8CoTRNtqSu8r/U+EvbcILH/e77lQFONRKqdTRXrZF2Z
	AUrwWlDyhozaMFEC2oFSh7tEyW+l8RxjRrA/TxSfNIlDLsR3Hs2mlRtybJWrFgz2I3wVXVHpe2KkL
	jD2zHcNEvF4nzWl9rzGA2TIigaPLMT2o/v/8dlCSJCvQJdU7yv+m7u8COMzQEvmN5lJafuosyi7pK
	aRZkSFUAvgzgLFVao1Zz+vDmb+q2yT91v3Gy8pYWs6BL0fRbFFCEyrGmXA5wNCCaCzCUggTBzfKMz
	Ulu3Big6iU1CQElLoWQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwCZ-00275b-1E; Tue, 14 Feb 2023 14:22:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRvoR-001tRE-Td
	for linux-phy@lists.infradead.org; Tue, 14 Feb 2023 13:57:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8750261644;
	Tue, 14 Feb 2023 13:57:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 186AFC433EF;
	Tue, 14 Feb 2023 13:57:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676383058;
	bh=paS2uSTC3Y1cMzECXhLdYhnK8pqSvSQtR2m6B50tay8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ilO+2WdNOpmbVYUoJ9coNkhx/8X/p/H7yUfTgWyfLLZk7XjkvShOOrxtwFHcGJjcE
	 3HR+6fmC2cJv9pIwVSjqV+8pm2zvNL82AgjoePB0EUr9wPHae81kvzTyby5CuIzeB2
	 aTqqUFFlD2dVdwqyNpJPSnX+rUdQ64yWODX7vXCtKZOO64O89eK+RCIIBiUsa0cITQ
	 RrQiIRsd4D3yA3AArIEs0xTUqD8ukcySnXe6xquei1EgCIeeeaT+KHslrWfcc+Ef2F
	 pmqpgyXw+EBSZ6mQeyusrwF3wei3DiOcuLba/CEfOgoSUSi/GwNdhAfwIe8fp8vf9Y
	 A8L+DMap+SNvQ==
Date: Tue, 14 Feb 2023 19:27:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh@kernel.org>, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: phy: amlogic,g12a-usb3-pcie-phy: add
 missing optional phy-supply property
Message-ID: <Y+uTTcTM++F1gg09@matsya>
References: <20230207-b4-amlogic-amlogic-g12a-usb3-pcie-phy-fix-v1-1-3e437b759549@linaro.org>
 <Y+Z5xOlAeqO6JyIj@matsya>
 <f727dd7d-08a8-acdf-316c-d571e36a4b1e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f727dd7d-08a8-acdf-316c-d571e36a4b1e@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_055740_044871_2EF48859 
X-CRM114-Status: GOOD (  12.26  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 11-02-23, 14:49, Neil Armstrong wrote:
> Le 10/02/2023 =E0 18:07, Vinod Koul a =E9crit=A0:
> > On 07-02-23, 16:03, Neil Armstrong wrote:
> > > Add missing optional phy-supply property used to power up PHY regulat=
ors.
> > > =

> > > Fixes: 87a55485f2fc ("dt-bindings: phy: meson-g12a-usb3-pcie-phy: con=
vert to yaml")
> > > Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> > > ---
> > >   .../devicetree/bindings/phy/amlogic,g12a-usb3-pcie-phy.yaml        =
  | 5 +++++
> > =

> > I dont have this file in my tree, what was this based on?
> =

> It has been renamed in a previous patch by Heiner: https://lore.kernel.or=
g/all/8d960029-e94d-224b-911f-03e5deb47ebc@gmail.com/

Thanks for letting me know, I have merged fixes which had above and
applied this

-- =

~Vinod

-- =

linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
