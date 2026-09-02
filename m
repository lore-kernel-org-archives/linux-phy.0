Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3257BC61DFD
	for <linux-phy@archiver.kernel.org>; Wed,  2 Sep 2026 07:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiGqwgVuNibsfCoZ+ByYhYeEcKCaYWqaEjuWXwDzYJM=; b=UmecOMGeYODI/q
	RnPfC7TIbnJq60flSGxhZiJBJTLioGz/UGqt4SBAc4TNxXy/4z3peleH3bAUA3SocUCTqB2JlZ0GO
	52U1gzCuM/xeIbDZJ45XncBqphqmC4Q0PGehSrbALP50/X86zua7bHEWXD80D+CjL/CX2breacL6S
	NmPo8U/Oq+NXWkZSFNtGKNjSpSLk9YxNKvQx8SWrImPtPWIoxB00hWYEmrvWYkiMnanAymnZAxfgs
	uhq3nsPvnHZ43h1o/+ss+61kjHvvuqY+plxZEPX57oXZtG/e++LoGnNoGfhAxfIRUlfr5LhZPado6
	LGT1P8qv765nDx2E2K2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1fih-0000000DzHO-2wOR;
	Wed, 02 Sep 2026 07:49:19 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1fif-0000000DzH7-3THz
	for linux-phy@lists.infradead.org;
	Wed, 02 Sep 2026 07:49:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3C000402F3;
	Wed,  2 Sep 2026 07:49:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77D951F000E9;
	Wed,  2 Sep 2026 07:49:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788335357;
	bh=s8Eo7ol2MpLclIW3Ma0lRro98Gdwdec1Kmfw5HO+SmE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MSPWSuLF0lYksTPJltML1tzWwBvAzoU3G0OLlXcxLHJudeMCYu0pz7AAKTRNFo8P4
	 dYTbe3ZKOIskvQ/bUCgRa1IvxwEylNKBnDC1CHAINh14B2tNsSYgl1mwtC7XpEP5kR
	 kfhZg9aG+5KRSN3dPxx0s0S82VRhqqelwRqLujr0sRF9mdh3OxaeacsG24S+GJ7m19
	 8cCovTzAJz27XGWm8V1YeHiQDdyxLfUn4sk5al0nuXxjpBKg09KQPCZMvqG174J4BI
	 T5t5Tm3PKlo3OfVlKo4fV38yoPzN/zwAdVfK41k6pZTbcmFGAriexNvfoYlP2bPW81
	 yoNTW7O4KWm1g==
Date: Wed, 2 Sep 2026 13:18:51 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Saurabh Anand <saurabh.anand@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Clark <robin.clark@oss.qualcomm.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Abhinav Kumar <abhinav.kumar@linux.dev>, 
	Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>, 
	Marijn Suijten <marijn.suijten@somainline.org>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	Ritesh Kumar <quic_riteshk@quicinc.com>, Vishnuvardhan Prodduturi <quic_vproddut@quicinc.com>, 
	Mani Chandana Kuntumalla <quic_mkuntuma@quicinc.com>, Mahadevan P <mahadevan.p@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] phy: qcom: qmp-combo: delay Type-C mux switch while
 DP PHY is initializing
Message-ID: <37cs3ejjaldogjlh3oyhzxgedl2w2s6qk7sercwem5j23vdtb4@2dzhapohcgda>
References: <20260824-qcom-dp-typec-reconnect-fixes-v1-0-2825e5bf8a96@oss.qualcomm.com>
 <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260824-qcom-dp-typec-reconnect-fixes-v1-1-2825e5bf8a96@oss.qualcomm.com>
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

On Mon, Aug 24, 2026 at 04:58:04PM +0530, Saurabh Anand wrote:
> The Type-C mux switch guard only checked dp_powered_on, which is set in
> qmp_combo_dp_power_on(). However there is a race window between
> qmp_combo_dp_init() and qmp_combo_dp_power_on() during which dp_init_count
> is non-zero but dp_powered_on is still false. A Type-C orientation change
> arriving in this window would proceed with the mux switch while the DP PHY
> is mid-initialization, corrupting the PHY state.
> 
> Extend the guard to also block the mux switch when dp_init_count is
> non-zero, covering the full period from dp_init through dp_power_on.
> 
> Signed-off-by: Saurabh Anand <saurabh.anand@oss.qualcomm.com>

If this patch fixes a race condition, it should have a Fixes tag.

- Mani

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
