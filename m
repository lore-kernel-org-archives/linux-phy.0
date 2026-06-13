Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D2D4CD98C5
	for <linux-phy@archiver.kernel.org>; Sat, 13 Jun 2026 18:36:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uuoFKCcDwk8PSuSQyyjfKwQXMchZfWC+O23nnWyu30M=; b=djzupehZqnLE7p
	wbOqPTp8YV/P4MbVBMxda2qCUAxW+1LqFmkuDj9FGRLZQgeVbT1ZPHExfLASTQV+KxyoAR7g1WXxB
	j/OwpfwDrkD7S/WU2EZIh7jDt+MwSj7XHjR2IL48+eD6VK3FxlqaPGFe5NyhfnYWleFuETS7blJi5
	9QP4bF60LNqVYkPiaNQWhSE62i+dYLx7TcRdgVLvShxUHr1TuED4GCl/Z0rGx9LAdM0OtEy/odwhd
	b7Y/7RR8GGen+WwgntzmVg358IvcreGBiclam9ClyBiX07xt2+ICf1JQzD3z8fyPDrlZW7jz7i0AZ
	08VncZ9SY/pfN6annTRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYTDZ-0000000CUBU-04xi;
	Sat, 13 Jun 2026 18:36:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYTDX-0000000CUBO-2TqU
	for linux-phy@lists.infradead.org;
	Sat, 13 Jun 2026 18:36:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 09F11440A3;
	Sat, 13 Jun 2026 18:36:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10DB81F000E9;
	Sat, 13 Jun 2026 18:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781375786;
	bh=9/fhFUOP6QN8GP6i6zmtZ/S1uM1iIL0AFYQSGlurmeM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vvr4+y/Dzg+E+ofiujlSepDU9FyS8u7rvFTmEDwvBkhvgB9vOyJ7f2KxNkqfZntOW
	 t6PvweaRyQc5cVgUjIurjvXuU6n7LNfB4MEyU0IMcUZNlfV70W2XCmDP4W59iTHdz7
	 ssAP1DC0hyMU0T7l0IMhLBZ1GIbbfCfkEqh346VrjPnir7ub3+LhGGvl45TytPqNjM
	 c2ddm/8/0IUbOotH20B40qca7ZHGrb9OX6cIRswKGqiHxE6TiT5xCLQmvZEwBdQFgW
	 wWcDGQMBWHsJ1GoBXYMkTMG+CIXQLA+WNvCJ6Wmjv2M/e9ssM+wFMW67On3uIOI/71
	 7j1bc9jEgraxg==
Date: Sat, 13 Jun 2026 20:36:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Iskren Chernev <me@iskren.info>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bjorn Andersson <andersson@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] dt-bindings: phy: qcom,qusb2: Straighten out SM6125
 and MSM8996
Message-ID: <20260613-impartial-cow-of-emphasis-e60cdc@quoll>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
 <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-1-d7135980e78f@oss.qualcomm.com>
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

On Wed, Jun 10, 2026 at 02:04:14PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SM6125 DT currently uses just the MSM8996 compatible (without a primary
> SM6125-specific one). This is not only wrong for the reasons of
> violating guidelines, but also happens to not be valid.
> 
> The MSM8996 PHY is quite similar, although it requies a different init
> sequence (for arch reasons). MSM8996 also needs different power
> plumbing, as the VDD supply is fed through VDD_MX (which we define as
> a power domain rather than a regulator), unlike on SM6125.
> 
> The init sequence seems to have been "good enough", but now that the
> bindings clearly diverge, add a new compatible for SM6125 with a SM6115
> fallback (as they seem to be an exact match from the SW interface POV).
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,qusb2-phy.yaml    | 31 ++++++++++++++++++++--
>  1 file changed, 29 insertions(+), 2 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
