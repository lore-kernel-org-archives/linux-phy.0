Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82611C7EE26
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 15:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+pr53qkQkcY2mZfOBknfB4K9u8y3+rePpIGuYkQvsCE=; b=1y+7FpRxF69KtF
	TIpy9AYYUe243bi3lKq9NuK5TOClCMiazwJM7dCmd16gKtSo7Vru39HSn0I4axusA6SVLRTTGAzDd
	xbNJe5j7U5bmuSFwkwXMhm4MC6stlD3/lvsbI7yiw+bhjIpxJpb/Xkm18c8qBxa39mb5PJIPi2AQX
	pqhxOHDwFj6JyyD4EAn04dQZV4IMc//lmHCBjIzbE4g4iyeu1RS6YDnC2WoIakg+rd2jcRocLgp2t
	E/YQkIyT0kvnKn5Mcs1FbM1LSGvRgBBdqVdJPkpUZh1AnWSgr/h0Blatud09DCWSjbtDRAZoSZnIQ
	ioWj7hEVlXwpP8ezyqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pub5G-008FCB-0G;
	Thu, 04 May 2023 15:41:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pub5C-008FAu-2B
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 15:41:28 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id F1FD662E02;
	Thu,  4 May 2023 15:41:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53847C433D2;
	Thu,  4 May 2023 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683214885;
	bh=6eAF+PDzJKSUispa3X1kRM2MZ4pCLVUtY5fjeRCGXiA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=W8Oo7i3roM/RRef6hNcEKwGGoFpbQR86l34KO/NKH1a0qCn5JBSz0FWfUB3+HaeNE
	 aLhSa1x2/xFf99elNs4U+71UWXgagW5a3BtU8JIDTjBUdq/gcJK5cSDbsTixoF4BIZ
	 gF/XGhyxVJLgHJVSnF3g3OXIHy1vMYZtgS+vGW9VXw4uLmRBvZVOoCoT616t3oF82u
	 cQXpUTlP+N9UFtEnRoiAKrEla/+JFYaWymO5VZtoeOkKZ38197H/zCECJ5d07sVRQF
	 +zC8KfxBIYAzFgJ9c2JVcHBvvSCH9JLVCgdkw768ccchzjq4WmkCebAd2Og2dovStE
	 vVIpopmID/A5w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pub5J-00014L-JQ; Thu, 04 May 2023 17:41:34 +0200
Date: Thu, 4 May 2023 17:41:33 +0200
From: Johan Hovold <johan@kernel.org>
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/7] phy: qcom-qmp-combo: Introduce orientation variable
Message-ID: <ZFPSLTgOiPMgwHzP@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
 <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
 <20230504032907.GF870858@hu-bjorande-lv.qualcomm.com>
 <ZFO21fLWSNc7orpb@hovoldconsulting.com>
 <20230504151633.GH870858@hu-bjorande-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504151633.GH870858@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_084126_792726_0F556349 
X-CRM114-Status: GOOD (  32.34  )
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

On Thu, May 04, 2023 at 08:16:33AM -0700, Bjorn Andersson wrote:
> On Thu, May 04, 2023 at 03:44:53PM +0200, Johan Hovold wrote:
> > On Wed, May 03, 2023 at 08:29:07PM -0700, Bjorn Andersson wrote:
> > > On Tue, May 02, 2023 at 01:48:16PM +0200, Johan Hovold wrote:
> > > > On Mon, Apr 24, 2023 at 08:40:06PM -0700, Bjorn Andersson wrote:
> > 
> > > > >  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> > > > > @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
> > > > >  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
> > > > >  {
> > > > >  	u32 val;
> > > > > -	bool reverse = false;
> > > > > +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;
> > 
> > > > It also looks like these callbacks end up being called without holding
> > > > the qmp->phy_mutex via phy->power_on(). Perhaps there is no risk for a
> > > > concurrent switch notification and dp phy power-on but it's not that
> > > > obvious.
> > 
> > > It seems we're arriving here from hpd_event_thread(), while
> > > phy_power_on() and phy_power_off() will be called in some other context.
> > > I've not been able to convince myself if DP driver ensures ordering, or
> > > if we have an existing race here...
> > 
> > > Unless you insist, I would prefer to follow up with an additional patch
> > > once we've landed this series. The fix will depend on the phy_mutex
> > > shuffling patch anyways...
> > 
> > Sure.
> > 
> > But perhaps you can just move the orientation == qmp->orientation check
> > under the mutex in qmp_combo_typec_switch_set() for now (in case I
> > forgot to point that out earlier).
> > 
> 
> qmp_combo_probe() and qmp_combo_typec_switch_set() are the only writers
> to qmp->orientation, so that check can't race with any updates and hence
> doesn't need to be protected.

Only if you happen to know that the callers of
qmp_combo_typec_switch_set() are serialised, right? That happens to be
the case for pmic_glink, but it may not be the case generally.
 
> Reading the code again, qmp_combo_configure_dp_mode() is invoked from
> phy_power_on(), not the hpd_event_thread(), as I claimed yesterday.

Yeah, but phy_power_on() is typically called from that thread. But
perhaps not only from there.

> But we shouldn't do qmp_combo_dp_power_on() in parallel with the
> reinitialization following a switch in orientation, qmp->orientation
> might change, but we definitely would have two contexts reconfiguring
> the hardware simultaneously - perhaps this was the cause for the 10%
> crashes I hit when trying to extend this to handle typec_mux as well...
> 
> I will grab the phy_mux in qmp_combo_configure_dp_mode() as well, thanks
> for "insisting" :)

:)

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
