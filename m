Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91050CA0ED3
	for <linux-phy@archiver.kernel.org>; Mon, 11 Aug 2025 18:10:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OgFhd4kNABQFYgqH6v+yi3A+hwS0CglzZF4JaYjjg7o=; b=GISZULvXNWbJU0
	YZWv3HZXj+IJoGxmQHnDLsjKhYJ0i1ogmT/KBivDDR6zTYWqmL40xBsTk47GZHqFvOTw4ClHL10wv
	6QlZeSKNk9BWWg00hEvEpnhPpFLRfObxu3BKPXfyon8ama0Fj3OeVagelSt4USwv3UPnehYUATChT
	JxvKAoFSdlmAayfsCAv+WMFnNjDRByq5GXt3CiGqzOWYiGPQs9iJiraqbck2V3U60OUBHkDrFfT6l
	3hCn0nfPhrARdryY7PGkbA937mJK/ynLNFIAwm8zfDKSVic0ruua4DKPr8WJnuOu9/FrUVBmDFUpl
	q1NTD8WlltJWMB6MD0QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulWyk-00000008jBB-047r;
	Mon, 11 Aug 2025 18:10:38 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulUKJ-00000008BZS-086H
	for linux-phy@lists.infradead.org;
	Mon, 11 Aug 2025 15:20:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 5993FA48F8A;
	Mon, 11 Aug 2025 15:20:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11356C4CEED;
	Mon, 11 Aug 2025 15:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754925642;
	bh=HODDP6bUeUjpqflyi0V3xVYklwBtKZvsyo9s97ASpgQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jiElQkzB1VuRNUtbAj0YE4+yrtFBTSue7LFZFVivvsuQ5ZX5fx0LyHNQWLmcher5p
	 5RDdaozpcRrqLIPWkzqhiAjTiptVPp3nKMvqzizujoK5RalBmwu6ucPq/fJFIwbobd
	 22rhIfBy4lKYeiCELOaCiz+eeUr2Y+XJGqukatp9OhncmsHxbqLKOBsUSDvIXcROO0
	 EEW9VEKewOBL1VxbCFJczHe9Pu0gl6lY96IlcJCcCKq6BvbDUj9e7J3zhukbwwivkj
	 UFfP2l3mXnEy0dwxs5AekcbuCgtk0fWqWoejOWHGVZR8Lavo4TKqBMQGSrDhqwKmdn
	 4xA9/RrEp/W5A==
Date: Mon, 11 Aug 2025 10:20:39 -0500
From: Bjorn Andersson <andersson@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, mani@kernel.org, 
	conor+dt@kernel.org, bvanassche@acm.org, neil.armstrong@linaro.org, 
	dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org, krzk+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH V1 1/4] dt-bindings: phy: Add max-microamp properties for
 PHY and PLL supplies
Message-ID: <jnsrcwcok6p63zddr3idsm2oa5kk3zi46atg7v3uvpu55vw4t4@vxslqznwhvyd>
References: <20250806154340.20122-1-quic_nitirawa@quicinc.com>
 <20250806154340.20122-2-quic_nitirawa@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250806154340.20122-2-quic_nitirawa@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_082043_138524_984C5492 
X-CRM114-Status: GOOD (  16.98  )
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

On Wed, Aug 06, 2025 at 09:13:37PM +0530, Nitin Rawat wrote:
> Add two new optional properties to the SC8280XP QMP UFS PHY
> device tree binding:

Please start your commit message with a description of the problem
you're trying to solve.

> 
> - `vdda-phy-max-microamp`: Specifies the maximum current (in microamps)
> 			   that can be drawn from the PHY supply.
> - `vdda-pll-max-microamp`: Specifies the maximum current (in microamps)
> 			   that can be drawn from the PLL supply.

That's literally the content of the patch...use the commit message to
describe the problem you're solving and a technical description of the
solution to your problem (and in this case, why that solution goes in
the DeviceTree).

Regards,
Bjorn

> 
> These additions help define power requirements more precisely for
> regulators supplying the PHY and PLL blocks and ensuring the regulators
> is kept in correct mode based on the client load requirements.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  .../bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml        | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index a58370a6a5d3..4648642dc974 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -71,6 +71,16 @@ properties:
>  
>    vdda-pll-supply: true
>  
> +  vdda-phy-max-microamp:
> +    maxItems: 1
> +    description:
> +      Specifies max. load that can be drawn from phy supply.
> +
> +  vdda-pll-max-microamp:
> +    maxItems: 1
> +    description:
> +      Specifies max. load that can be drawn from pll supply.
> +
>    "#clock-cells":
>      const: 1
>  
> -- 
> 2.48.1
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
