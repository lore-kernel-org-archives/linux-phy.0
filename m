Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48EF7CCF9EB
	for <linux-phy@archiver.kernel.org>; Mon, 27 Oct 2025 17:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2VOdUOoTctwLTcC5K2C2VqXRzHrE/ZPst4lIzDM9v2k=; b=BviwTELMGfheOx
	0C2RPq1vkAeo/GiBCqem44IT9TjQ1jAAXEeIavfFcq35LQ+U/AJGQk1ngVS9dK4z7D7NSRdsRxKR5
	TQN6Xqi+CveAkiUXxNnFi+HLpc8GLU2r8PZsp9LqcovtdlzIUqubY1ZbFRsFRzZrormRB1i5UFp3s
	ywISsavGnkLkS+X4KG8/H0dL82souwD2PUQOGwmeYMMp7R8/O06sROtD1HhVhXro7gFjgbXcS2K/1
	iHm/Opkg/I3SSzZH9bCEsUf+2Mj/9aMYpK5KH/edJ/aghNGau7pxVcioDOnDqvpfuK9RcESwjbH0X
	2GvNzq75vZG+O0uT1Pgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQbl-0000000EOG6-3l5A;
	Mon, 27 Oct 2025 17:02:13 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDQbj-0000000EOFl-1ACU
	for linux-phy@lists.infradead.org;
	Mon, 27 Oct 2025 17:02:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 9124640C58;
	Mon, 27 Oct 2025 17:02:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F54EC4CEF1;
	Mon, 27 Oct 2025 17:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761584530;
	bh=aH66x+qi6wkGS5vlWmcbx+X2SNlXqg5IctaXAlPdLV0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sROLKMoC+Cbth9uUgf8fowYWiC9iEhAnTvvWbcCBA35ZofYUNrFH/umMZ+XEsL74i
	 yz2dSHQ7rHFb7P8HwAvMpdwmq0AuJHLdmddOyC2cQy3TRJ8BNgtYHs+vMXFFUnPiul
	 UMJkDjOjmuMtTKIvNKAR82PKp2z6mzKeL/p5brB61B3+qI5Z+punIJQIoKIRm1QHms
	 6K21l7qbO2zwDmwKhLHh3DKCwRqzauqUH6sfOWTDxMiaZ7D+U/tuu8uUFv73i9I7LB
	 JFmK2fvPdGrA7Azj5MMKTqRhU4vOEIbCMd52eRd+BX687XqITCvDPxuMpNNjChv8pp
	 f9tbifVHBK9lw==
Date: Mon, 27 Oct 2025 12:05:02 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: robin.clark@oss.qualcomm.com, lumag@kernel.org, 
	abhinav.kumar@linux.dev, jessica.zhang@oss.qualcomm.com, sean@poorly.run, 
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_mahap@quicinc.com, 
	konradybcio@kernel.org, mani@kernel.org, James.Bottomley@hansenpartnership.com, 
	martin.petersen@oracle.com, vkoul@kernel.org, kishon@kernel.org, 
	cros-qcom-dts-watchers@chromium.org, linux-phy@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom-edp: Add edp ref clk for
 sa8775p
Message-ID: <wai7uqe6bn6kcfp3gmgqvc7sfrs37vmpqh6cucc7mopwf5x76j@vkxbwvqiqlyz>
References: <20251013104806.6599-1-quic_riteshk@quicinc.com>
 <20251013104806.6599-2-quic_riteshk@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251013104806.6599-2-quic_riteshk@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_100211_333069_B66EFFB4 
X-CRM114-Status: GOOD (  14.30  )
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

On Mon, Oct 13, 2025 at 04:18:04PM +0530, Ritesh Kumar wrote:
> Add edp reference clock for sa8775p edp phy.

Perhaps the eDP ref clock was missed in the initial contribution,
perhaps it wasn't supposed to be described at the time, perhaps the
hardware changed...we can only speculate on the purpose of this patch...

You could change this however, by following
https://docs.kernel.org/process/submitting-patches.html#describe-your-changes
and start your commit message with an explanation of the problem you're
trying to solve...

> 
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>

Please start using your oss.qualcomm.com 

Regards,
Bjorn

> ---
>  Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> index bfc4d75f50ff..b0e4015596de 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,edp-phy.yaml
> @@ -73,6 +73,7 @@ allOf:
>          compatible:
>            enum:
>              - qcom,x1e80100-dp-phy
> +            - qcom,sa8775p-edp-phy
>      then:
>        properties:
>          clocks:
> -- 
> 2.17.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
