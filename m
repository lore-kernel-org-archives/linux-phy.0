Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44434CCF2D6
	for <linux-phy@archiver.kernel.org>; Mon, 19 Oct 2026 07:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9PNCv2WgJpKT4RouFFyEBEFTCfV4wsE4zso0vTgqEZM=; b=2kn2WCpaXZsaVQ
	ElnMYgw59grYkhMSeHbU1F44XGfPcgFUsepasDLAE66XjkZdc8IVH8JswjYBE2bQJlS6ZePvzW29I
	E4ILJUicnq/MENIcuF+4o4/r7pfMfAxLZ3nvVKLmODybb5/HOc4BdA4CkW36cmatX9Z9XncCIeopf
	gZoAp9w82l/jnPIHgmMpLj8GH7Bm2ATpMVC1zxidWTNRmrS7y2h+EclKNnW2/UWcP2c7jrSAr7n9J
	roBRCs5C5nbWIvES/kiMujbSSkeKtTMq/xAJuvqSsQ4Y9WeYTabRvKGwul4xk2iseqXxZPI+X/oCw
	z3+NZDT+bsBh4SUPDNdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhet-00000006l1i-3VUg;
	Mon, 19 Oct 2026 07:19:47 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIhes-00000006l1R-2sry
	for linux-phy@lists.infradead.org;
	Mon, 19 Oct 2026 07:19:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 735BC40778;
	Mon, 19 Oct 2026 07:19:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E57401F000C4;
	Mon, 19 Oct 2026 07:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792394386;
	bh=s0Wnoav/C/2euhA91XqCk8d4XBb2ZZW0lDhI5no6CQk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=isXXnYUu1A25YFRh2Q2+ZRDGWo4DLyWZJSBXzsCTHa4qQAq0uYyJK8Z9JxQMxvHQB
	 4FZJScSZqb5gQiqGVywB4UFjNfvbrZ0JFII041jN/KH0XIlbXl8QlavH+Df9SCBoEe
	 ln9p7gRNfHnHvOs60/T5/HrpD1W7ROK7hSMM4HS0OW33vk+9vamlOUBZlv8aI9ZdFz
	 zZ4W9dQkQiB3RP1WKRvWKlaYRmOCWqmUdr35O+2W9S7CiIIkaubhe1DllRlohnWkm7
	 APbXdBzssNIvnkSiOznAgJyfQAmabogF0Gze2ZRmO6Q6ZPi/lT8AxEKWkUOfNYqQLA
	 jy36/gPXFqtTA==
Date: Mon, 19 Oct 2026 09:19:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
Cc: bod@kernel.org, vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, mani@kernel.org, 
	gjorgji.rosikopulos@oss.qualcomm.com, hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com, 
	jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com, vladimir.zapolskiy@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] dt-bindings: phy: qcom: Add qcom,sc7280-csi2-phy
 schema
Message-ID: <20261019-idealistic-silent-ladybug-783cda@quoll>
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <20261016235502.2274268-7-anusha.nandi@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261016235502.2274268-7-anusha.nandi@oss.qualcomm.com>
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

On Fri, Oct 16, 2026 at 04:55:01PM -0700, Anusha Arun Nandi wrote:
> Add a device-tree binding for the Qualcomm SC7280 
> MIPI CSI2 D-PHY, modelled as a standalone generic-PHY
> provider like the existing qcom,x1e80100-csi2-phy and
> qcom,sa8775p-csi2-phy schemas.
> 
> Follows the same ports/port@0 data-lanes shape and mandatory
> operating-points-v2/power-domains as qcom,sa8775p-csi2-phy. SC7280's
> CSIPHY has a single power-domain, the Titan Top GDSC, matching
> camss.c's sc7280_resources.pd_name = "top" and kodiak.dtsi's existing
> camss node. Two clocks only (core, timer) -- SC7280 has no shared
> CSID-RX clock in the legacy driver's clock table. The core/timer
> naming matches x1e80100's and sa8775p's clock-names convention for
> this pair of clocks.
> 
> Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>


Basically same comments.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
