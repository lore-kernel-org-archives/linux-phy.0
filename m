Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B54C5D358D6
	for <linux-phy@archiver.kernel.org>; Thu, 29 Jan 2026 16:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8sJ/pORrmPwtIKSwA+zpx/z+ThwKV1LmraJSltFub8=; b=xdrY5/Kj2D1Pnn
	oUukRuhGvFp2Hq1fvLGJpqlu/Ytc57dlnLwPLL1rUPtCG1XHiN9rXETrKridSqR74lmJENaSdm4J0
	ERz9z6XjkTzyLHYR09IYPw3+oUZtcnXVeiN3NbSA03IFyXoP082HULhT/6mNUhZN6jz1xzMznr/7y
	DfBlZOLswtVra7FyJotsJS0KY1efF1H9mrQuQpMlGAUq7jRnJ9HrPzQqgISVYvt568CkFHcfbsIli
	AXXFFkAhnO4EOiOlIXTEQCVXRmWX2rWdP5haDCdz4C4Hd1ijChGbLXDnZ1jUygTzcBPnaJB01CGeG
	yqX2eZjlu4880mZtoXng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlVGU-00000000NJc-1G20;
	Thu, 29 Jan 2026 16:53:06 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlVGT-00000000NJS-16BZ
	for linux-phy@lists.infradead.org;
	Thu, 29 Jan 2026 16:53:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5DFED600C4;
	Thu, 29 Jan 2026 16:53:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E040BC4CEF7;
	Thu, 29 Jan 2026 16:53:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769705584;
	bh=4Go8r+auphjo22TcuXvyOWWNojSmrb+RGzHfXTGMbzs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=i9GB03m2rvW1q2q52DbPwCtjUQP5aHy6q0i/GQtvQPaBJ77SGI9HEANAdjlN+ue50
	 cz4KCQVvudBzPtTloSt7N4Bxq+AiQLUVj8DXVEVb6Jp6PlksHW8ir0Xjg1x9AwJqw7
	 BPg8jwfYNyiCs1SAMC5wdYwvHw4ApXjcGxAGrGoolFt8swmCiXrGX0mck+fC/4epLG
	 AtBxiVddh00hmQJtFZhy8nvi+gRGAs3QG6/ybnz3rRwvtYa9EH6ATp1RkpXUgrQ6iU
	 /nyBDnOmmeLghKnZ3q+SvgvkFNEw0yuvjZgXWZEaDcQ/auR7l+TTjmMXkNDl0df/L7
	 RXZBPHnedKVaw==
Date: Thu, 29 Jan 2026 10:53:03 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: quic_mahap@quicinc.com, robin.clark@oss.qualcomm.com,
	mripard@kernel.org, krzk+dt@kernel.org,
	dri-devel@lists.freedesktop.org, martin.petersen@oracle.com,
	tzimmermann@suse.de, lumag@kernel.org, simona@ffwll.ch,
	linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com,
	sean@poorly.run, kishon@kernel.org,
	James.Bottomley@hansenpartnership.com,
	marijn.suijten@somainline.org, devicetree@vger.kernel.org,
	andersson@kernel.org, cros-qcom-dts-watchers@chromium.org,
	linux-scsi@vger.kernel.org, vkoul@kernel.org, mani@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	quic_vproddut@quicinc.com, abhinav.kumar@linux.dev,
	conor+dt@kernel.org, konradybcio@kernel.org,
	freedreno@lists.freedesktop.org, airlied@gmail.com
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom-edp: Add reference clock
 for sa8775p eDP PHY
Message-ID: <176970558251.1269081.4205775234649909264.robh@kernel.org>
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
 <20260128114853.2543416-2-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260128114853.2543416-2-quic_riteshk@quicinc.com>
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


On Wed, 28 Jan 2026 17:18:49 +0530, Ritesh Kumar wrote:
> The initial sa8775p eDP PHY binding contribution missed adding support for
> voting on the eDP reference clock. This went unnoticed because the UFS PHY
> driver happened to enable the same clock.
> 
> After commit 77d2fa54a945 ("scsi: ufs: qcom : Refactor phy_power_on/off
> calls"), the eDP reference clock is no longer kept enabled, which results
> in the following PHY power-on failure:
> 
> phy phy-aec2a00.phy.10: phy poweron failed --> -110
> 
> To fix this, explicit voting for the eDP reference clock is required.
> This patch adds the eDP reference clock for sa8775p eDP PHY and updates
> the corresponding example node.
> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
> ---
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml  | 6 ++++--
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml     | 1 +
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
