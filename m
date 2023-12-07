Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C21A8C10F05
	for <linux-phy@archiver.kernel.org>; Thu,  7 Dec 2023 13:36:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQqJkvpTrdkpwA+3WnG5TK9XMYEQembvcmk9qR4LRj0=; b=3V/WHTZ8Su8nvb
	Wo8aQDnawZB/yQ/ATngGzPU5m4aoSLnilUKSQS0KbnChGLYQ1mwXaINoEiIQtp176kEnTU77sJGok
	wpkAtQSOOjABFvhwGxcZBHW+SV1QeH6FboBGI+wU8Uu76XHMVE/5J5snpUnfovs1EjE4IHt5mIqf3
	t/LfiHDUrroalKJSp46dTeWTHh65TyB4OLxUt6GIzhJG6ZzVhybYE1CIdJc7xHUVTe+FjWEH66AsD
	AaqDBwRmVX0hPZSM0hfjMSls6pM1mtW1lSwUOlx2ibS0/iDpRv8U6qOMP8F5TgB8Sm8HlO1lUDeOw
	MKsmZ5mC1klVw/Pj0p8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEXs-00Cusz-1g;
	Thu, 07 Dec 2023 13:36:04 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBEXq-00Cus2-0h
	for linux-phy@lists.infradead.org;
	Thu, 07 Dec 2023 13:36:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B04A0B827E9;
	Thu,  7 Dec 2023 13:36:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 093C0C433C8;
	Thu,  7 Dec 2023 13:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701956160;
	bh=mFp8ParZIu7BFVIzOTUQQcSiCU1gOg9JVYkNdX0stLc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NnYaHdj6Pmizr43mxvzX8DdtfGzQbuNgm01szEtBlMZEwikYTje4vBkFBRMeo/0M0
	 hy4Ij2Kh5sCnscX9Dzkc4YVPr3I3ZZxRHFRoO3DoecbSQt0L4YU9KODGQNWynZ+Itn
	 J3QbXMd3C7yzkXMFQRHYxUsyjI+BEvzNzqQtUf7BThkUrk5ZoM0svG+nSG3B1RWBhL
	 MS06NU+56eWf1rdzFOzV9mcUfOqPnrOKN1JVqaGHSFPkPhNXVD55iDCDpTMosZS9lz
	 SbKy5wtY3PYRa+ybl+c78d+a4y+1T51ofkdLP1fdrNN9/lHWyYHeMrpqcKNfXmp7WU
	 OHx7NNGxvVrfA==
Received: from johan by xi.lan with local (Exim 4.96.2)
	(envelope-from <johan@kernel.org>)
	id 1rBEYb-0000T6-0T;
	Thu, 07 Dec 2023 14:36:49 +0100
Date: Thu, 7 Dec 2023 14:36:49 +0100
From: Johan Hovold <johan@kernel.org>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Krishna Chaitanya Chundru <quic_krichai@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_parass@quicinc.com
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp: Add PCIe
 qcom,refclk-always-on property
Message-ID: <ZXHKcToXzTgoDCLW@hovoldconsulting.com>
References: <166d307e-7d1b-48b5-90db-9b6df01d87c2@linaro.org>
 <20231201111033.GL4009@thinkpad>
 <f844cd1e-7e4f-4836-bc9a-2e1ed13f064f@linaro.org>
 <20231201123054.GM4009@thinkpad>
 <3a7376aa-18a2-41cb-a4c9-680e735ce75b@linaro.org>
 <20231206131009.GD12802@thinkpad>
 <ZXGVjY9gYMD6-xFJ@hovoldconsulting.com>
 <20231207101252.GJ2932@thinkpad>
 <ZXHDCNosx8PCUzao@hovoldconsulting.com>
 <20231207132032.GL2932@thinkpad>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231207132032.GL2932@thinkpad>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_053602_533438_E3348DF1 
X-CRM114-Status: GOOD (  23.47  )
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

On Thu, Dec 07, 2023 at 06:50:32PM +0530, Manivannan Sadhasivam wrote:
> On Thu, Dec 07, 2023 at 02:05:12PM +0100, Johan Hovold wrote:
> > On Thu, Dec 07, 2023 at 03:42:52PM +0530, Manivannan Sadhasivam wrote:
> > > On Thu, Dec 07, 2023 at 10:51:09AM +0100, Johan Hovold wrote:

> > > > Shouldn't that be
> > > > 
> > > > 	qcom,broken-clkreq
> > > > 
> > > > since its the CLKREQ# signal used to request REFCLK that is broken, not
> > > > the REFCLK itself?
> > > > 
> > > 
> > > Darn... You are right. I got carried away by the initial property name. Thanks
> > > for spotting!
> > 
> > Thinking some more on this after hitting send: It may still be wrong
> > with a 'broken-clkreq' property in the PHY instead of in the controller
> > (or endpoint).
> > 
> > Could there not be other ways to handle a broken clkreq signal so that
> > this really should be a decision made by the OS, for example, to disable
> > L1 substates and clock PM?
> 
> One has to weigh the power consumption between keeping refclk always on and
> disabling L1SS. Chaitanya, can you measure power consumption in both cases?

Sure, my point was just that that's a policy decision and not something
that should be encoded in the devicetree (as was initially proposed).

And that the right place for the renamed property is not necessarily in
the PHY node either.

> > Simply leaving the refclk always on in the PHY seems like a bit of a
> > hack and I'm not even sure that can be considered correct.
> 
> I wouldn't agree it is a hack, even though it may sound like one. The option to
> keep refclk always on in the PHY is precisely there for usecase like this.

I just skimmed the spec so perhaps I'm missing something, but there's
definitely wordings in there that explicitly says that L1 PM substates
must not be enabling unless you have a functioning CLKREQ# signal.

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
