Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A62F1C6FA82
	for <linux-phy@archiver.kernel.org>; Sun,  4 Sep 2022 15:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vdzbzij7I64c/jXdPTQ/9QOaQd5CzPU8NWs7mQFVyHE=; b=NgkM5CIwogyFYH
	OIJtLNWXtAyUFrxkI9zMosuikKn6YqTa1PNMU1ZfMpbUJV5cHsqAGXKiK+CDR6Q32s24jWw0upX5e
	4GlUAp8wvgQE9p5caE2UvcsPTQt7gtC+nv9kRh6yBAJvOPCdXEm2OoShO2FhRA3j1YUAflpuCuB3+
	YVi1YWdNwQ9ShJkbp42TCWJ/dwe1Gm//InwQ4cGSh4JKCW8WM94eA/exzbXKepBux94VNuQxUTlfQ
	HZ+0/pvAnCsXol2zg72Bv3v47nPx+eXUjq/ByGMIgP6EIfxL6LO6GO5otS7+5AvW4/IvEfX/iMbOb
	UPb5pKLmJBuOuVtH54bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrND-007T1u-3l; Sun, 04 Sep 2022 15:17:23 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oUrNB-007T0q-1w
	for linux-phy@lists.infradead.org; Sun, 04 Sep 2022 15:17:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 9ACC360FA5;
	Sun,  4 Sep 2022 15:17:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21440C433D6;
	Sun,  4 Sep 2022 15:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662304640;
	bh=xjdPYgdB9h50iN/sMAXgx3TlezzJ2hEsjMGUNuESwQw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bSZ4dTKtfMNrRfeMjIh0uwpaywenCjzYh7YAtyAapy/xSEsV2B/DjrmrWFNfaoIxZ
	 fRLCTgyJhn0nU3HHUKigGDtRWjfxtQfKkiBmg4Vx2ur7rtVDKDpxBAFTMbsJ57ckn0
	 K0zPIG3VCYowbB3wCwadpgFSVG+fLaqif+4d2OmQPZm2pSQaSdYPsgr87J2XIsGgY0
	 Q8qcamBf9Wd2s0h/3AwC0MKS3OFLay2XyAnJTm6sIJSaZt0qTzAqjKri9VZ/yLm+ub
	 J82ButxZ6R+CFLc8PS+QSfsRwyKehuqD4AoIBiq7IuTkw4KDCipnGxROIAEzUS+mAu
	 DzYxz/mLbtQ3A==
Date: Sun, 4 Sep 2022 20:47:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Stephen Boyd <swboyd@chromium.org>,
	Doug Anderson <dianders@chromium.org>,
	Matthias Kaehlcke <mka@chromium.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>, devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_pkondeti@quicinc.com, quic_ppratap@quicinc.com,
	quic_vpulyala@quicinc.com
Subject: Re: [PATCH v11 2/3] phy: qcom-snps: Add support for overriding phy
 tuning parameters
Message-ID: <YxTBewhBecSgXvPq@matsya>
References: <1658384954-9506-1-git-send-email-quic_kriskura@quicinc.com>
 <1658384954-9506-3-git-send-email-quic_kriskura@quicinc.com>
 <20220830203518.pty67fyefho4ewgw@builder.lan>
 <31d459e4-57c0-85d1-2d88-e5bf0bed6604@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31d459e4-57c0-85d1-2d88-e5bf0bed6604@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220904_081721_156533_642E7176 
X-CRM114-Status: GOOD (  27.00  )
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

On 31-08-22, 18:41, Krishna Kurapati PSSNV wrote:
 
> > The ordering of this list needs to match the order of
> > override_param_map[] and there's nothing indicating this in the code.
> > 
> > I was considering suggesting that you add a enum/define and do
> > 	[SQUELCH_DETECTOR_BP] = "qcom,squelch-detector-bp",
> > 	...
> > and then do the same in the override_param_map array.
> > >
> > But I think it will be cleaner if you add a const char const pointer to
> > override_param_map and just specify these strings in the
> > override_param_map array.
> > 
> > Each entry will grow by a pointer, but multiple copies of the same
> > strings (when added in the future) should be combined by the compiler.
> > 
> IIUC, you want me to remove this array of const char*'s and embed them in
> the override_param_map and iterate through it without using this const
> phy_seq_props as a reference.

I think that would make it simpler.. 

> > > +static const struct override_param_map sc7280[] = {
> > 
> > There's nothing ensuring that the loop below doesn't run off the end of
> > this array. So when the next platform is added, there's no way to
> > handle the fact that they might have a different set of properties.
> > 
> > If you add the property name to these elements, that will no longer be a
> > problem (and you can add a {} entry at the end of the list and check for
> > this when looping over the elements.

Would be great if this is addressed as well

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
