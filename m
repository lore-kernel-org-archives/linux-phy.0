Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEFAECCA47A
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jun 2022 00:10:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dcv1+B3zwUOIuLny5IJuqzNjCqpTZZc23/rjETBU8H0=; b=3gyKVN1/EVdvDv
	EnQ56xARPDXNfm2ZL/CSpDvaODEO71VWYqUgwRBG8WmM9dWTSi/04FBNSkTF1RNGfkvxXBF6dBBZm
	F7wGlwd4l317nWvcxG87cVw4Phi0+jLUR0SPAJ4swVF6ADD0p+JwDGHJzeh4OGm4YV7uaqzAO/ksV
	fTs3lEJr0Aofy0qxLKaMggDhDYflHRMxR3nbg+FZa3AyucAQuyxxX9v5Xmi7yxqn/D+TFGgP7AM5j
	yXhUiOl9afIgLitSmucEL19sw5WD9QJnrNO0QwPKOf5PbiPxFcXTmxNdlSKoqqSTQ2FF23qudRN1B
	VwuZqC9aFOrhf0cXmf5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zYx-004rHo-5N; Fri, 17 Jun 2022 00:10:11 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1zYu-004rH6-13
	for linux-phy@lists.infradead.org; Fri, 17 Jun 2022 00:10:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1B84161358;
	Fri, 17 Jun 2022 00:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B08EC34114;
	Fri, 17 Jun 2022 00:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1655424605;
	bh=cD73xFTYbV7d8FwYS/+LxjiTrj6GgeC/IFBJ0+It07Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tsv9SdWuVyJNQeGUF1E0Nr3uDUJB7EeBVN4u0A2d1DNJmaibpJ6rwo//bI+x83hie
	 aqyUD+fTDgnqYB6+kjpDVxuVMQbM5ZhBaucwIzgRmR66O2Y73qfViA6R4DUSDKG8ot
	 26pywnT/zcUitfw8JYK3Av8QaIknlH0gJhsoG3o3NGo0fh2OsXwG1K5CyBtrn0ZCoa
	 yry1hDGnxYxhmOGfpf/4zKhfGF+GHYrpP9OuvTx18I7hEMr+wGmdQPKsPyZPR+hmdR
	 gO8VzaiAsi/SeYo6HlyAOkvp3lJcdb51Rvn5HBnbqA7Tstf42V8uC4MJQ1rkXllg6a
	 mvXY0iCAi1/Vg==
Date: Thu, 16 Jun 2022 17:10:04 -0700
From: Vinod Koul <vkoul@kernel.org>
To: Doug Anderson <dianders@chromium.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>,
	linux-phy@lists.infradead.org, Stephen Boyd <swboyd@chromium.org>,
	dri-devel <dri-devel@lists.freedesktop.org>,
	freedreno <freedreno@lists.freedesktop.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm <linux-arm-msm@vger.kernel.org>,
	quic_kalyant <quic_kalyant@quicinc.com>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Andy Gross <agross@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Rob Clark <robdclark@chromium.org>,
	Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH 2/2] dt-bindings: phy: List supplies for qcom,edp-phy
Message-ID: <YqvGXNGIzVHp7QtV@matsya>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.2.Iae013f0ff4599294189f3a6e91376fad137bbabf@changeid>
 <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Wbi=CXhPpOUJj=1PdgB8i6Lf1Sfr=T7wrQsgBx790S_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_171008_149292_28E4F763 
X-CRM114-Status: GOOD (  23.49  )
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

On 16-06-22, 08:35, Doug Anderson wrote:
> Hi,
> 
> On Mon, Apr 25, 2022 at 2:07 PM Douglas Anderson <dianders@chromium.org> wrote:
> >
> > We're supposed to list the supplies in the dt bindings but there are
> > none in the eDP PHY bindings.
> >
> > Looking at the driver in Linux, I can see that there seem to be two
> > relevant supplies: "vdda-phy" and "vdda-pll". Let's add those to the
> > bindings.
> >
> > NOTE: from looking at the Qualcomm datasheet for sc7280, it's not
> > immediately clear how to figure out how to fill in these supplies. The
> > only two eDP related supplies are simply described as "power for eDP
> > 0.9V circuits" and "power for eDP 1.2V circuits". From guessing and
> > from comparing how a similar PHY is hooked up on other similar
> > Qualcomm boards, I'll make the educated guess that the 1.2V supply
> > goes to "vdda-phy" and the 0.9V supply goes to "vdda-pll" and I'll use
> > that in the example here.
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> 
> Even though patch #1 in this series should be dropped, this patch
> (patch #2) is still valid. Vinod: I assume this would land in your
> tree along with the first two patches in Kuogee's series [1], which
> are related. Please let me know if you need me to re-send or anything.

I have applied this patch, thanks

> [1] https://lore.kernel.org/r/1653507433-22585-1-git-send-email-quic_khsieh@quicinc.com/

This needs rebase on phy split which I have picked

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
