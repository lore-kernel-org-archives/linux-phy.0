Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB46C352A1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Dec 2022 02:17:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7z7Hr6NhxLGRWgiyMB2B11QNu3/7dKKCZbNEBNdKnAE=; b=D0X/AmA7ukvIym
	8wouxObMlwNtF3JOGwunWSY2D2urMWV9bnbdjTZGXlEBu3z7tJrE4U0ThbxWj+Fwe4sc6TJ7i6RcV
	utAtetsUL8j+iuXYd5rqyGqBhEvC6rJ6p/qCw6WkoPWro/ixJ0E9Jt8NhNOHn6Janx3p0f8UjLKJl
	RNR9511fDCr5b51XurkN0AmRxIK4+YT2LPhQZVZU/3BdQwkuJ5oPe1oefWNpHKY2uMLH+j4McwwhA
	XooL0PRtSGpxpUd8KXS0LXcqGvTAZYuGoiOksD6d6nxP+OIW7fKVo90JksJ9sdVhjocf5bQ0qthjW
	JC2eARAMvD9BRdvk6kCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2k0R-008XUz-4I; Wed, 07 Dec 2022 02:17:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2k0G-008XRt-Ny; Wed, 07 Dec 2022 02:17:46 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 49659611DD;
	Wed,  7 Dec 2022 02:17:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3596C433C1;
	Wed,  7 Dec 2022 02:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670379462;
	bh=lxh+qkWtrAkQD6FWNVfNsV2V1Ki+c1iwrz1a+xcetr0=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=rshxMWMbp4jY5A3Nq2O5c7KmmaX6MZr80aizs8RFHHgf5gnyu5edJNDFxhhk7z7/Y
	 ckBIRqkHc0yxl7ApXxB+NTs8/dTIiruW8ELggtlnE7epcE0x7bWR2SWPuX8q5hf4fG
	 dVeJLhQrgpM5XWrCuJbWrbCcY5C5HrE7HmFyHyBM4pakwkMAj9Urz9TrRAWFu2d0QO
	 vvDb4UkZZXe0rhD+MGA6otPd8oBVuFRPrVns2+L6zwtkorJou3Z7aXhSdwdphbsaFU
	 wgJQBRZPAyOXQVs6C1I0uwvoGkcQl0R06amskDTpcv7UMC1TLnWflgELbrNjep7c4U
	 tyLzbSifoOr9A==
MIME-Version: 1.0
In-Reply-To: <45463950-7a4f-758d-d6a1-b8fdf9bfd319@seco.com>
References: <20221027191113.403712-1-sean.anderson@seco.com> <20221027191113.403712-5-sean.anderson@seco.com> <20221027230331.19C2FC433D6@smtp.kernel.org> <5f00ede6-10f5-c11c-ee21-54460c1f98b0@seco.com> <d13ff3b2-79f0-2a72-c9da-2c310c4e3bb8@seco.com> <20221101201020.B6180C433C1@smtp.kernel.org> <45463950-7a4f-758d-d6a1-b8fdf9bfd319@seco.com>
Subject: Re: [PATCH v8 4/9] phy: fsl: Add Lynx 10G SerDes driver
From: Stephen Boyd <sboyd@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>, Bagas Sanjaya <bagasdotme@gmail.com>, devicetree@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linuxppc-dev@lists.ozlabs.org, Ioana Ciornei <ioana.ciornei@nxp.com>, linux-arm-kernel@lists.infradead.org, Camelia Alexandra Groza <camelia.groza@nxp.com>, Madalin Bucur <madalin.bucur@nxp.com>, Jonathan Corbet <corbet@lwn.net>, Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org, linux-doc@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>, Sean Anderson <sean.anderson@seco.com>, Vinod Koul <vkoul@kernel.org>, linux-phy@lists.infradead.org
Date: Tue, 06 Dec 2022 18:17:40 -0800
User-Agent: alot/0.10
Message-Id: <20221207021742.A3596C433C1@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221206_181744_857215_2DEACBD9 
X-CRM114-Status: GOOD (  12.56  )
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

Quoting Sean Anderson (2022-11-01 16:27:21)
> On 11/1/22 16:10, Stephen Boyd wrote:
> >> 
> >> Oh, I remember why I did this. I need the reference clock for clk_hw_round_rate,
> >> which is AFAICT the only correct way to implement round_rate.
> >> 
> > 
> > Is the reference clk the parent of the clk implementing
> > clk_ops::round_rate()?
> 
> Yes. We may be able to produce a given output with multiple reference
> rates. However, the clock API provides no mechanism to say "Don't ask
> for the parent clock to be rate X, you just tried it and the parent
> clock can't support it." So instead, we loop over the possible reference
> rates and pick the first one which the parent says it can round to.
> 

Sorry, I'm lost. Why can't you loop over possible reference rates in
determine_rate/round_rate clk op here?

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
