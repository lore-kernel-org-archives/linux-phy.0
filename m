Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED9B8C001DE
	for <linux-phy@archiver.kernel.org>; Mon, 10 Jul 2023 03:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/KVS6nZ1kAiwWcn/8SztfQgkeBkTDEeaFqmrDiiJE4=; b=UUYZsgMY3HL9Rk
	RrGrpLLlWUyBcjyXQAYk8GG9fGEHaevv4qg38/4SkPv6BtuHZrPB6RAqUyLncTxGvfBgxnol9iTOd
	Q2otDfm5hK6dwcJXMdxSoBtSwFV8GuL6SFyYnKrUIhCcsoxw5x05O4gtrDwG1QF0i+FxFZc57Be67
	yxcPPrCxsye3qIvRHxvOw7eJhxjndMlTSrDeEher7JfTmFDpaZB1T8G8MhpaHNQsfkfkN7kr4GEAt
	henEjrXGsIIRRYrZlwZ1HdPx2DqebFEbwAmSUBuoseZfrWKGpqMN4MwE3x+uPHGLvRPg3k5hZhdZ9
	ZQPdOwpyNNMp5UL6o/BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIhV7-00AGyl-1a;
	Mon, 10 Jul 2023 03:23:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIhV5-00AGxx-0k
	for linux-phy@lists.infradead.org;
	Mon, 10 Jul 2023 03:23:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 19EEC60D42;
	Mon, 10 Jul 2023 03:23:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96289C433C7;
	Mon, 10 Jul 2023 03:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688959425;
	bh=lqe8M7rk/LG743hh6/dDFwTSc8ca5NiN9IWm+xYMIkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Az1XMuo7BJ5sIjavnqwP3S0wBqAcQC7d9El7dkF5aU71+wD9WgriwA6uoJ5tlGwLi
	 RTazBGQdGtwza7hExsaTAVQxe+SxOO0kYuf+MSEI60bvI4bi+crok3JRZKMyrh+ojP
	 Lz7g2Eatq+mFQ+07OK6MMB4kDHy+mIzpVMHUysYoVPQcWAi3DmecP3lbfJaWjxL6sk
	 +PrixTwzzaZiT+aXZeZEfKznT7OHEzgqIGsPYmrioLp/Mrn5t0CiTCruTg4XGwVa7v
	 iNWMnOjEqqxZl3+xFCNMTIPx3bM0R/HAbKngjN7li2QPrS9AB3Qnp5ALbrzXf1Doc7
	 Ejb7ZBdEOhjmQ==
Date: Sun, 9 Jul 2023 20:27:20 -0700
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
Message-ID: <teisqo5zbl65gu5fy6sqhuuaai2ynnu4ce7ybof72nhyweb6n5@3n77j6xw3obj>
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
 <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
 <CAA8EJprDPzTQU1j6n17gYAeiXw1t6M_d4CciTtD8mHNksYGHow@mail.gmail.com>
 <10388324-45c7-b8ae-fb48-64becff76e66@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10388324-45c7-b8ae-fb48-64becff76e66@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230709_202347_331269_249BF2EC 
X-CRM114-Status: GOOD (  18.41  )
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

On Wed, May 31, 2023 at 02:16:42PM +0200, Konrad Dybcio wrote:
> 
> 
> On 31.05.2023 14:13, Dmitry Baryshkov wrote:
> > On Wed, 31 May 2023 at 14:35, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
> >> On 31.05.2023 04:34, Dmitry Baryshkov wrote:
> >>> SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
> >>> USB+DP combo PHY on SM8150 platform.
> >>>
> >>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> ---
> >> I'm not sure this is right. Downstream reuses SA8195 USB seq.
> > 
> > The upstream driver uses sm8150 data for sc8180x. So even if sc8180x
> > data is not correct for sc8180x, it is definitely the one that we
> > should use for sm8150:
> Right sorry, this patch adds support for 81*5*0. I wanted to point out
> that 8180 has a different set of init commands and one of them is probably
> incorrect.
> 

FWIW, DP works on my sc8180x devices. (But perhaps still not correct?)

Regards,
Bjorn

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
