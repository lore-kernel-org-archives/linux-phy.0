Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E756C433FE
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 16:54:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=An4T8qGHl1sGTHnxvK2m0zI9ot+8Vjt7bDEGNZrUY1M=; b=NBnpJcg8QF1D3P
	58UPhLUopmxOtAtmtEE7cXJ+ebph5puNarmPP6WD7u7DXtehh9g6LiMXkrsiqyiQiBJTs2N+HGLtA
	d4MU6KODtiq2+bSk0L3d4uW2ESxqi/Fm9STzTqB3xdcq071NYWuVuvap0JCsKeT1FeUw4mAvUknlH
	snajto7GxcMePyQpQPF4S7s5FKa+dIbPE3vR5gCLQxcFnb2Up6lZOYD7XuqRjg7G7thJHNJ6DwpmO
	SUs6aR/trgJmNSuUNIGPPQMs/PaUc0SYBndUWCbKT+Cbbl9nvF5bZUdFuqwYldnZQS7TvSxNsCQ6S
	TvqBiK+a6hbzidzBX2qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucik-002stC-G4; Mon, 14 Nov 2022 16:54:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oucii-002ssQ-Np
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 16:54:06 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 58624612EE;
	Mon, 14 Nov 2022 16:54:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B69FEC433D6;
	Mon, 14 Nov 2022 16:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668444843;
	bh=XXjdo254kFi84g2UiUO6+gdpm1EHkbVBYoKzVnLnrAg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D6NEQPVRltTt8BTRjtVYUDZlCmgFdteA5eiWY/is3pUOV/tYGl8mdCsIPQU10aq58
	 su0BLPfzS2J1UfG2WVgpdPmk0sMNl1h5R/XnNBzZKNXHiQX6BCTZxfpIv05K8dH7hB
	 f9+8g87nE7tiilTDnYYtpMhxS4UJd280x/3OrF/KxOyGEQr1asmqKqaSzlEkl/afPL
	 IzlTaMhGFJMGmVIh70SS6gJzZXia2mUvdjmpDX0cxFSJ+ROBtQDtfysyYjhDYL6VjX
	 0aMyupdHAAzz9+N9D96rH7oqvgyUOnqSGDD8AxlJjuFoNPE3RwSYMwptfM3X5YhY7d
	 zEinuZgqGSZNA==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1ouciB-0005Hx-Vc; Mon, 14 Nov 2022 17:53:32 +0100
Date: Mon, 14 Nov 2022 17:53:31 +0100
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/14] dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp
 bindings
Message-ID: <Y3Jyi+PdKOSlTGi1@hovoldconsulting.com>
References: <20221111092457.10546-3-johan+linaro@kernel.org>
 <a22888cd-34cb-3453-0dc2-096da208564c@linaro.org>
 <Y3JCVzJ74YsfcDz4@hovoldconsulting.com>
 <de3a426a-03e8-ed15-a9a1-bb300e776e5f@linaro.org>
 <Y3JOO0kNnaNhnW3K@hovoldconsulting.com>
 <78cda6f8-849c-219a-8dbb-966c283c1a92@linaro.org>
 <Y3Jg/qmMW3rC5Okc@hovoldconsulting.com>
 <bcc327b6-c38b-86a9-34cb-440ad33df210@linaro.org>
 <Y3Jv4ePkPiKiG8wj@hovoldconsulting.com>
 <5920660e-34e4-8a6b-7d99-ba0511e2c86a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5920660e-34e4-8a6b-7d99-ba0511e2c86a@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_085404_838845_185E86A9 
X-CRM114-Status: GOOD (  15.62  )
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

On Mon, Nov 14, 2022 at 07:51:31PM +0300, Dmitry Baryshkov wrote:
> On 14/11/2022 19:42, Johan Hovold wrote:
> > On Mon, Nov 14, 2022 at 07:14:48PM +0300, Dmitry Baryshkov wrote:

> >> Ugh. Please, no. We have symbol clocks for UFS PHY, USB+DP clocks for
> >> USB+DP PHY, but let's not go for the unified clocks index definition.
> > 
> > Yeah, this is the kind of issues I wanted to avoid by not using a per
> > SoC header for three clocks which will almost always use the same
> > indexes.
> > 
> > Because how can you be sure that your unified per-PHY type defines will
> > never have to be amended? Or some index left out?
> > 
> > The only way then is to have per-SoC defines which is a pain to
> > maintain (just consider that driver mapping table when some odd SoC
> > shows up).
> 
> My vote is definitely against a per-SoC defines.

Simply stating that doesn't address the problem I was trying to
describe.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
