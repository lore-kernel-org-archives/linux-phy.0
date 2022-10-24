Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18495C38A2D
	for <linux-phy@archiver.kernel.org>; Mon, 24 Oct 2022 13:38:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=veReLvwh2U4iuZV/Ft2/JM6mDW923zAiOLP6iWu9g8Y=; b=FifaF+qkEoEKD1
	ki7DpbSyZCtK7J+j7MJawXMdxfts6do6s1OUfSkWxHLwEI/lUnaYB/BIftENAac0dUrdnHhXYBWke
	4XWGVhXGET/jrNKQepCK4E5PH9d6KgiHXXfUFy9nm7c98YKykDWr5a2hki/+S2dvusyxj4qS9HdTP
	0eM0RwaxrUR2m8XWIKySiWRjQjehRZ+lwFnJidsjcuWAEcsoYmssUD4bxS6Ki2g4QL++fYNExQDjh
	voFBZPC/bVCadp49DUWJNdTBqFKDwEkB+b66wQF82qt7OIkHA4U5VZkwm60mj4ZKqZ+uG30pNQgsw
	M5+K3nDertQZKX22to7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxf0-001kLa-Hq; Mon, 24 Oct 2022 13:38:34 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omxex-001kKM-5o
	for linux-phy@lists.infradead.org; Mon, 24 Oct 2022 13:38:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D203661330;
	Mon, 24 Oct 2022 13:38:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A17AC43470;
	Mon, 24 Oct 2022 13:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666618707;
	bh=I4FTtsDnU0ezaEay34oD3KMJKI9F4/bPpdTPGpE8do0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cV2AmzVatMWxWwoE+eVdEHmWI9NUojM5cEYwEOf+Tb0k20YLHrzOrDSPYvD25GPyM
	 V6KWZu9hVeDknIZipT4kzJL3NpoF35cPB2Qs5PTKFcaTf2pMPvawsw8qUQTzLvRvQ7
	 H+fHN5LLDHjHSqSR14M8dEwa3Y499ajj2WNdi1SgWU3TUJoDQhRkPWUxG1EGPPUdoQ
	 vzeZR9frETE2p6kK+mt5QYwFUX148t4CdeiyGATCKZvOYVcaLmj0mXyN6n/rpCxGGc
	 Vq6SWAcvbyFjyv4zNTZEaOEe+V3O1ZRETuOZLpdyDMNKt6pXqII44OlV5GdOeXoSH3
	 jPPB4qYrMyaDQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1omxec-0008Ro-LS; Mon, 24 Oct 2022 15:38:10 +0200
Date: Mon, 24 Oct 2022 15:38:10 +0200
From: Johan Hovold <johan@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 13/13] phy: qcom-qmp-usb: add support for updated
 sc8280xp binding
Message-ID: <Y1aVQsKpBL7Dlt1j@hovoldconsulting.com>
References: <20221024100632.20549-1-johan+linaro@kernel.org>
 <20221024100632.20549-14-johan+linaro@kernel.org>
 <2f758573-c901-25a5-c4fb-8dc2f72b42bf@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f758573-c901-25a5-c4fb-8dc2f72b42bf@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_063831_291285_CA3115F6 
X-CRM114-Status: GOOD (  15.79  )
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

On Mon, Oct 24, 2022 at 04:35:25PM +0300, Dmitry Baryshkov wrote:
> On 24/10/2022 13:06, Johan Hovold wrote:
> > Add support for the new SC8280XP binding.
> > 
> > Note that the binding does not try to describe every register subregion
> > and instead the driver holds the corresponding offsets. This includes
> > the PCS_USB region which was initially overlooked.
> > 
> > Note that the driver will no longer accept the old binding due to the
> > fixed "phy_phy" reset name.
> > 
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >   drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 82 ++++++++++++++++++++-----
> >   1 file changed, 67 insertions(+), 15 deletions(-)
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Thanks for reviewing, Dmitry!

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
