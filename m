Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA6EEEFCE3B
	for <linux-phy@archiver.kernel.org>; Wed,  4 Mar 2026 18:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8gpm31smHyb1BRvBBbnyVe96JH823bwj1/MJEXEs5w4=; b=buhUUX2vIWBUZM
	qJ1kIfa7fHCxauIe6j/njfegL75YX4oI5D7E/aFnT5RmgHuUghLcEAV/wUlxNgPwVsE9HDxXT5toD
	XpV4c7PTuL+jWMs9mZK7xnpIlFPYukttYpu+65cRiF2CXgEW2EJdeifrdLqpsbd/EJtXnpXI4J5q1
	WTaeoSPM87AjkQnA0dAi2IM8LttlKeD/SaxLr4Sc99zbC66bp3u1ti0mUM1PYYXEpIAK9UFi92uwc
	gzzXeMkrv5hZqX6VzYYSXT4oLbWkw9kNI5+I25GsB/h8QDk/zOGnqgdFd3rozamJcG7567J0yzScK
	J7nIt/qRoVZVBBV7bs9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxrQJ-00000000MzQ-2Qtl;
	Wed, 04 Mar 2026 18:58:19 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxrQH-00000000Mz1-1oW1
	for linux-phy@lists.infradead.org;
	Wed, 04 Mar 2026 18:58:18 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 53E0644387;
	Wed,  4 Mar 2026 18:58:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D7E9C4CEF7;
	Wed,  4 Mar 2026 18:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772650694;
	bh=pu3OJFJuXTN1mbkxo4zJRrJEcUuyxNxIUZrmOglqj/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AwB8CcU3+sXaDNelrTNcdKED5BuooBcptyjoz9pyiIDJlix/dUrVlBRAtY2KBDSD7
	 h6KrDy4b73ZJdvM4hktgVTAjTX6zRTc+gvSTQ/5RottG6nhL+D3O/QjhQk8OWJVt2/
	 MvKM3oW0h8rAaH+Xy1nyrLgibke4pf8Ytw146llNQq7shcJlSKiDHrM6C9X7NfmYak
	 j4f0yovpFJlvkk+d+Ppu2se2Y2B54cqTv7SCSCMtvTuyxvwIBBCn9Oi3G8xndWyLtN
	 BQYRKVOwWfHkMT/8IdaQvAWQhI9w2L1pW92h2u/lnv7UgDWNOHQ2tQ439iGinuyOqk
	 Kz5iPPq8G9rwQ==
Date: Wed, 4 Mar 2026 12:57:43 -0600
From: Bjorn Andersson <andersson@kernel.org>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, 
	abhinav.kumar@linux.dev, sean@poorly.run, marijn.suijten@somainline.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_mahap@quicinc.com, konradybcio@kernel.org, mani@kernel.org, 
	James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com, vkoul@kernel.org, kishon@kernel.org, 
	cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
Subject: Re: [PATCH v4 1/2] dt-bindings: phy: qcom-edp: Add reference clock
 for sa8775p eDP PHY
Message-ID: <gurq34svc5p52bqx5qwkgjmschzcbklmssjzmu2tg5wzgppkft@c6nrw2ageyp2>
References: <20260128114853.2543416-1-quic_riteshk@quicinc.com>
 <20260128114853.2543416-2-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260128114853.2543416-2-quic_riteshk@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_105817_552524_A411C69B 
X-CRM114-Status: GOOD (  18.20  )
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

On Wed, Jan 28, 2026 at 05:18:49PM +0530, Ritesh Kumar wrote:
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

Is there any reason why you didn't follow up on this patch Ritesh?
Looks like it's ready to be merged.

Reviewed-by: Bjorn Andersson <andersson@kernel.org>

Regards,
Bjorn

> ---
>  .../devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml  | 6 ++++--
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml     | 1 +
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> index e2730a2f25cf..6c827cf9692b 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,sa8775p-mdss.yaml
> @@ -200,9 +200,11 @@ examples:
>                    <0x0aec2000 0x1c8>;
>  
>              clocks = <&dispcc0 MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> -                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>;
> +                     <&dispcc0 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&gcc GCC_EDP_REF_CLKREF_EN>;
>              clock-names = "aux",
> -                          "cfg_ahb";
> +                          "cfg_ahb",
> +                          "ref";
>  
>              #clock-cells = <1>;
>              #phy-cells = <0>;
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index 4a1daae3d8d4..0bf8bf4f66ac 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -74,6 +74,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,glymur-dp-phy
> +            - qcom,sa8775p-edp-phy
>              - qcom,x1e80100-dp-phy
>      then:
>        properties:
> -- 
> 2.34.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
