Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82791C4321E
	for <linux-phy@archiver.kernel.org>; Thu, 24 Nov 2022 17:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ye0qVNrLUDEEnbpK4OhoRt6Vue4+Jc5vLjwMwRdkuqY=; b=yhz7nnNTPryJm7
	N3mMCOhBUmPCNalfue8xms40FP+1Jj3mZsx7I9ifS44uPdwV2bYCHQWOvRUUzzGEvnq3oFFRNkrfO
	F/37LKLgt6GtuDX9bukvadfByhIJLYieD0MnClu2my3v3dNWSG7+ytVzht3dZMVE/Uowof8bK5dji
	CVwTdbsSH8G8I74n2jlbmQmRJc20WXzk3GXEMrbpt0lpyOcK11cBiFhVsCucnlguQ0HWckX8MDb8P
	jEpbJV/GJCwt9mpxSs7rettsNl1Fkw3h1hU9hjKarkvoCBjZOcfKWfWUWur2723a2XZQFVKfZyXiC
	lmENR/ocsrIhr8AuL0UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFvZ-00AQXD-Nl; Thu, 24 Nov 2022 17:22:21 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyFvW-00AQVD-Mf
	for linux-phy@lists.infradead.org; Thu, 24 Nov 2022 17:22:20 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 10B27621E2;
	Thu, 24 Nov 2022 17:22:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B3B9AC433C1;
	Thu, 24 Nov 2022 17:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669310537;
	bh=d/X53tK9KmT5R3bV+QTEQ0qCuivh4GtlmTT6z1+elAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LyWNbeWOZeTwJQ+bKkEItbAEjx9DCGWL1+QpPl3kN4/WRbafs3ZC7zALms9yCUlti
	 j7wz4dSFCjwGx9P7LWrFcLaBGoRVKDtV+doFvgpCOhUcYK5QKhTjDI4MHwtB9cRsXu
	 VhiVJgbRE6qvvTw2Q2xxklyoqUkxNxyM/AeNf0ZB1pBobqTvvUQFmEneI98K5+J0sq
	 BxR65B/ZbkP76Q1c+b5NWLGZH1gyDM7pNcaBLaIMn1hUgQLktSR4rzAe8R2C0+KJGa
	 dWktG7yH4IT6XJFce3AeCk3VuxoBdYQhxKKLySr1iC3mRKowUk+/Wp0RhNC5blCnl3
	 GswSyQTbWACWw==
Date: Thu, 24 Nov 2022 22:52:13 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 00/15] phy: qcom-qmp-combo: fix sc8280xp binding (set
 3/3)
Message-ID: <Y3+oRZF868ZuoWTz@matsya>
References: <20221121085058.31213-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221121085058.31213-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_092218_814190_B9D15560 
X-CRM114-Status: GOOD (  19.97  )
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

On 21-11-22, 09:50, Johan Hovold wrote:
> This series fixes the USB-DP PHY devicetree binding for SC8280XP and
> adds support for the new updated binding to the driver.
> 
> As the full series including the preparatory parts is over forty patches
> and I've been posting this in three parts of which this is the last one.
> In an effort to get all of these into 6.2, I've also submitted all three
> series before waiting for the previous ones to be applied. Parts one and
> two can be found here:
> 
>   https://lore.kernel.org/lkml/20221114081346.5116-1-johan+linaro@kernel.org/
>   https://lore.kernel.org/lkml/20221114110621.4639-1-johan+linaro@kernel.org/
> 
> This last series adds a new binding for SC8280XP that drops the legacy
> child node and the (incomplete) description of register subregions.
> 
> As the current bindings are both incomplete and incorrect it may be
> a good idea to update also the other platforms currently supported by
> this driver to the new binding scheme. The driver can support both
> schemes during a transition period before removing the corresponding
> code (dt parsing and clock-provider registration).

Applied 1-13, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
