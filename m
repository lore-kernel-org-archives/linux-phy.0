Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 711FEC27C75
	for <linux-phy@archiver.kernel.org>; Wed, 12 Jun 2024 17:44:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8ETltBozzBBe6YMUVl0Kj+Mk15+Ky8TiDLqlxBdACs=; b=MkIKOeKZXEzDmg
	ss3a7+His4C7ASauU8ZsSUxCdwDC9kBglkTEC0OLGL04A/EV+6P0Pv67gPqkpcm4rELBCpsX7DfQk
	nJcfvZD/HWtalFftyIDpNX6NMHiKHVtJiYVcocAb5trzLrOsERvRptX+8gEp0Kg+aABQswWfpyJ9n
	0auONkzs+2XLYe6s2f+uRUunKaO/k1UueCyyzTL/tB9sdDqAAUPZA/xysCJAInGH/pIqlG66UGcP0
	y+SsgGRhOMteGfrlmaIN6IPSAIlcn1e3uTUd+UR7yENCzmSpFyMpf/F9uZrI0oyGSmP8MYRTyP8k7
	NQnjoXS7asNqE8CzlrvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS1K-0000000DbrK-45CH;
	Wed, 12 Jun 2024 17:44:26 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHS1I-0000000Dbqe-0t64
	for linux-phy@lists.infradead.org;
	Wed, 12 Jun 2024 17:44:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B210A614FD;
	Wed, 12 Jun 2024 17:44:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9837C116B1;
	Wed, 12 Jun 2024 17:44:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718214262;
	bh=X/W4+RBIDg73ZY+dLTQoYPcN2GOZNe5RdPBV8OPN5i0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rsEIbaL3TaGu65Vzwpc66Y55Cq6oFPsp5UqG5dLb/0hshXQYvgusTLkQ7B6NSvpIg
	 nYSv7fo28HcBka3HtEql7X9qdOPUeFx0zCaNSBux12UwWGJ2JFIMA82+y/c92vxHwt
	 /v6gnBr3KgFXofosdzL7jADZP7qsOfjTUKiOx/J0sg8PgrkrMzn0kLuYz0qV5sOFOw
	 QJxkIPIwYg5HWFc9l8kghshlwxcspdZIaG17nWh6fuYjSjP3wiaGV36AaZLCseFylY
	 Jv0oQfJUxUVfFipFXezBeuBnrHKSe7wUkK4XYqvcEHAHaHigFoIKymKxuSsMXIvsF3
	 yq7YDwZg+vs5A==
Date: Wed, 12 Jun 2024 23:14:18 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, Arnaud Vrac <avrac@freebox.fr>,
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 1/4] dt-bindings: display/msm: hdmi: add
 qcom,hdmi-phy-8998
Message-ID: <ZmnecsZrtNoggI3X@matsya>
References: <20240606-hdmi-tx-v3-0-9d7feb6d3647@freebox.fr>
 <20240606-hdmi-tx-v3-1-9d7feb6d3647@freebox.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240606-hdmi-tx-v3-1-9d7feb6d3647@freebox.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_104424_329908_8694440F 
X-CRM114-Status: GOOD (  11.72  )
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

On 06-06-24, 18:07, Marc Gonzalez wrote:
> HDMI PHY block embedded in the APQ8098.

Why is the patch titled display/msm, this is phy patch and it should be
tagged as such..

Pls update

> 
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>
> ---
>  Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> index 83fe4b39b56f4..78607ee3e2e84 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,hdmi-phy-qmp.yaml
> @@ -14,6 +14,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,hdmi-phy-8996
> +      - qcom,hdmi-phy-8998
>  
>    reg:
>      maxItems: 6
> 
> -- 
> 2.34.1

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
