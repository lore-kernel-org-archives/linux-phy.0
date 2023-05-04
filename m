Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69439C77B7C
	for <linux-phy@archiver.kernel.org>; Thu,  4 May 2023 14:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vwCItnY21H6WBGtcSDmKrZMEHF4H1/zzxjdkdGU5qO8=; b=huEY99o0RkYXeK
	7X2E4tirVfWzKKVwjEue5UczJeeG93ZqRLtqkIkVzum3C/8YxyP27sGUGeUPGGz0GjL37WPtrEmH8
	/Lnke4cDXbTu5YpBGMIAG7XOir9/o69cexemPIMAmRwaBBsIdqrCJAtn9lOi4UBLf7HfFhqzuyJsS
	q0v2vLSmyq1IuRN8p3XJjbPqqYxiouxZDcLa8mwTfZdWwJp5pwLfZ2JMYMbZGuixO7wH8QUjTakpl
	wc5PKhTd9YEX2anak5N6Plb1bvpBPmTdaudeCp1w0F+c336HafiYWHNDHIZ7As85aW1SRdljfm1q8
	H3JQdqWrW0pDCCj0skuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pua7y-008746-0I;
	Thu, 04 May 2023 14:40:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pua7v-008737-34
	for linux-phy@bombadil.infradead.org;
	Thu, 04 May 2023 14:40:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4WTzAI4qKOmBrA27xbgsCbo1hT20FZ27qp5n95zrtEg=; b=ElpQl8BvyB2AiwSTxdrJyn3iOX
	JBOQdcXMu1AhZNv2Xvl5jG6TZtq4/PsRXFtX2b8xlTJj840Ws3kPt4Vno1AxyjxhXhW0U1jxAcUaU
	BNadBUJirvDT8V/FvkkFu9pa6fJKs2yW8orqkhr6NjTGrxZTUDu6k7JtKMzdGu3jECqRLReuEVInl
	K/uY7howi3qE8J1/NIADQzHNmlt7MHztg2KxWYtAu3it137dLetyEy1NmHd9KS52RltIKXbLLWWgD
	G3u5fU1SnqDiweoAeDX980P1LB6xCJcfMCcoUchqgbUekXF9RExSzooAo/pUnsV3t/c0DuA4fwVGK
	A18FZfZw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puZGP-001kHA-2V
	for linux-phy@lists.infradead.org;
	Thu, 04 May 2023 13:44:55 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AD7F963459;
	Thu,  4 May 2023 13:44:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 116E2C433EF;
	Thu,  4 May 2023 13:44:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683207886;
	bh=cxXZ0Mv9fZe8AzkErEvTVxOOrlIoataPJcnAJ93nNR4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=O315kDjLiPUAsQ6xGpos4WTKEs50qI7zNpaj3f5JBpT11niVq2Dd4d0nT4K+WWtC6
	 bihPy/onuSp3833LpgoGH3e1AeRuCL3oBwHcyGEzQ/5zvencqvm51XpP7wCIulpwsG
	 T/rIndpoISt6pzekCOJk/PuT/VFxrsK0UMfKL+OFYDqQif6XoSP7jPd7ekerDuLNw6
	 WoXACFIqNAA2xC9mPvNVqYkqvayWczEmfyy0OJFQwZoAObGqcUWWAtZS3jiyBaWsAp
	 Ywse2+V3+hjXG/wFqwGAs4foDgViBq2TSYTgsj4CsDelqYDKwNMBRYhlGNsDcGOJJp
	 CVgaKL/iiCKjw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1puZGP-00078W-RV; Thu, 04 May 2023 15:44:54 +0200
Date: Thu, 4 May 2023 15:44:53 +0200
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
Message-ID: <ZFO21fLWSNc7orpb@hovoldconsulting.com>
References: <20230425034010.3789376-1-quic_bjorande@quicinc.com>
 <20230425034010.3789376-4-quic_bjorande@quicinc.com>
 <ZFD4gM9dUQwBmSUe@hovoldconsulting.com>
 <20230504032907.GF870858@hu-bjorande-lv.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504032907.GF870858@hu-bjorande-lv.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_144454_050030_41F9E752 
X-CRM114-Status: GOOD (  20.10  )
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

On Wed, May 03, 2023 at 08:29:07PM -0700, Bjorn Andersson wrote:
> On Tue, May 02, 2023 at 01:48:16PM +0200, Johan Hovold wrote:
> > On Mon, Apr 24, 2023 at 08:40:06PM -0700, Bjorn Andersson wrote:

> > >  static void qmp_v3_dp_aux_init(struct qmp_combo *qmp);
> > > @@ -1955,29 +1962,23 @@ static void qmp_v3_configure_dp_tx(struct qmp_combo *qmp)
> > >  static bool qmp_combo_configure_dp_mode(struct qmp_combo *qmp)
> > >  {
> > >  	u32 val;
> > > -	bool reverse = false;
> > > +	bool reverse = qmp->orientation == TYPEC_ORIENTATION_REVERSE;

> > It also looks like these callbacks end up being called without holding
> > the qmp->phy_mutex via phy->power_on(). Perhaps there is no risk for a
> > concurrent switch notification and dp phy power-on but it's not that
> > obvious.

> It seems we're arriving here from hpd_event_thread(), while
> phy_power_on() and phy_power_off() will be called in some other context.
> I've not been able to convince myself if DP driver ensures ordering, or
> if we have an existing race here...

> Unless you insist, I would prefer to follow up with an additional patch
> once we've landed this series. The fix will depend on the phy_mutex
> shuffling patch anyways...

Sure.

But perhaps you can just move the orientation == qmp->orientation check
under the mutex in qmp_combo_typec_switch_set() for now (in case I
forgot to point that out earlier).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
