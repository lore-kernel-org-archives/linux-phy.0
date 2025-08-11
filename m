Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B43ECA0EDB
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 22:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmk6kgxdGN4C06TXlpY7u0UtteuzHcZXftMkYgieq80=; b=UOBizNHLu6XW9/
	hO07q4WxT1/IutHI5f7y826lcBLv/y3jVPlWh/QtRbcVoG9HFYy8UEaTIRceKql9nSf3MmRPGG9vT
	jb0v818j5mkFzrsEwLuIHlJwrlA9y1ANwTNQPpHM76u/6Uzx+aE9I9IM95qlxURGqDliXhqlNHHn0
	S91E/equjn2t0HN8iitVkw5NXdrsBSOz6NyTkm8KvZQGrTQIBst+vuqC+Zgj6Gg85zlM6b0O5plTo
	jgs81lIXVnkM7oALgzgdI6IOcrp0s5oZWV5bhqwgd/kL3WcWQ7ywFW324X5C5DPjNy+Xc7kb2+YN2
	7Cr57rcTlKL4vLX7QSfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulaah-000000099N0-0sfW;
	Mon, 11 Aug 2025 22:02:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulUn9-00000008H87-1Zt2
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 15:50:32 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id C9B5F45696;
	Mon, 11 Aug 2025 15:50:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9228CC4CEED;
	Mon, 11 Aug 2025 15:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754927430;
	bh=xz5SsscxKSvb837vq9ZUhdv9db22CG35nOkoNIMi8HI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=q08EK/7GHBssiZw8op5dwHH01YjSrLS+vTvGeX2ipEeo4sQ6g8vVlIdr39/fFpQLu
	 vYdWPRkUz3Ko+Loo643LYY0V80TLhXAjzdF8SouifuFxPCJ4i8+xbTu68NDQr5rQkZ
	 gd3maA4A591/fDF056ZxnBhPKHOf7Fb1mcucQlq0Kl5sD08b8tdt6GI4CUWo8uc2t/
	 HQ2o15UrQ3uYP74g3mxOK5dTv9fRRIAVib3/E3WIFUtI4z1rrj4lY8Ck4XQirGN2wN
	 7ZKSjKeg4VAdMqlJmDf5XqirhlAHLzbxxeUK2mWDmnlILKboc8AL85Thru8cB/+hsu
	 KMeyV2c6xu0WA==
Date: Mon, 11 Aug 2025 10:50:27 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Nitin Rawat <quic_nitirawa@quicinc.com>, vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 4/4] phy: qcom-qmp-ufs: read max-microamp values from
 device tree
Message-ID: <kwp3q4r5rzahzro5f6l6ml24vbiutyxokrhjsbtzcb5kvanx5e@elagxv6w5dq7>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-5-quic_nitirawa@quicinc.com>
 <f368b6da-1aa3-4b8e-9106-3c29d4ab5c5e@oss.qualcomm.com>
 <fe2bc07c-8fe9-47fd-bcd7-c2f0ebbd596f@sirena.org.uk>
 <aed1de56-fafe-4ccc-b542-69400b574def@oss.qualcomm.com>
 <acf89420-743b-4178-ac05-d4ca492bfee3@sirena.org.uk>
 <599b8a4b-324a-4543-ba27-0451f05c3dfd@quicinc.com>
 <3aa82f65-4812-4bf0-9323-96f40824a004@sirena.org.uk>
 <8c7f8cfc-2090-449e-b6ec-688a0021bac4@oss.qualcomm.com>
 <14566f49-7f7b-4583-98b7-8a473054f7c3@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14566f49-7f7b-4583-98b7-8a473054f7c3@sirena.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_085031_457214_1B980241 
X-CRM114-Status: GOOD (  31.33  )
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

On Thu, Aug 07, 2025 at 08:09:56PM +0100, Mark Brown wrote:
> On Thu, Aug 07, 2025 at 07:43:15PM +0200, Konrad Dybcio wrote:
> > On 8/7/25 7:26 PM, Mark Brown wrote:
> 
> > > Note that that's specifying OPPs which is different...
> 
> > The microamp properties are in the top-level, not under OPP if
> > that's what you meant
> 
> I mean the OPPs use case is an existing well known one for dumping stuff
> into DT.
> 
> > > That doesn't mean that it's a good idea to put that information in the
> > > DT, nor if it is sensible to put in DT does it mean that it's a good
> > > idea to define a generic property that applies to all regulator
> > > consumers which is what I now think Konrad is proposing.
> 
> > Yeah, that's what I had in mind
> 
> > I was never able to get a reliable source for those numbers myselfe
> > either.. At least some of them are prooooobably? chosen based on the
> > used regulator type, to ensure it's always in HPM..
> 
> That's what set_mode() is for.  Like I say it's becoming less and less
> relevant though.
> 

set_mode() just applies the mode to the regulator_dev, so in cases where
you have multiple consumers of a regulator_dev things would break.

Further, there are numerous cases where we have multiple consumers each
needing a "low" mode, but their combined load requires a "high" mode.

set_load() and its aggregation of the inputs deals with both of these
issues.


Whether mode setting is becoming less relevant in our hardware, that I
don't have the definitive answer to.

> > That said, our drivers cover a wide variety of hardware, built on a
> > wide variety of process nodes, with different configurations, etc.,
> > so it's either polluting the DT, or polluting the driver with
> > per-compatible hardcoded data (and additional compatibles because
> > fallbacks wouldn't work most of the time)

If this is our reason for putting it in DeviceTree, then we should write
that in the commit message :)

> 
> That's really not a persuasive argument for adding a genric property
> that applies to all regulator consumers...
> 

I agree, even if we determine that this belongs in DT, because it needs
to be tweaked on a per-board basis, it's still only applicable to a
fraction of our device nodes.

Regards,
Bjorn

> My instinct with this stuff is generally to avoid putting it in the DT,
> we see far too many instances where someone's typed some numbers in
> wrongly or discovers the ability to drive the hardware harder and needs
> to tune the numbers - once something is ABI you're stuck just trusting
> the numbers.  That said I'm not going to stop you putting something
> specific to this driver in there, I just don't think this is a good idea
> as a generic property.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
