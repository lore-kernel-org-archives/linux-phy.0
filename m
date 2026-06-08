Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB80CD8CA4
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 20:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wkXy9gzI+7CEoTK7WxcU17A/mBinKsdZRcawmXI6cZg=; b=1JFVjUYxRcbmeQ
	cpEG197e97m3VUqAEdLm3gy5JU/W02DSyVq5bOZyWeiUlE0b73J+mvmwV3w4xmwhH8I1+CmlzF4BY
	QrxjZWzqDlkJzN9BXM99PQ8Xw5Hxgd0oeXUuZNw11Cd3Px/KMgOAwJ+0T27TFT34usQbM/Ysqi4v/
	98WvDU1pcVwnj9Zi2Mb/yRLR9JiFOeNVhRFebGkdH0gzeRmO1160xd0hNWhXvQ746OkRF/k1fXVDF
	0frwegMY4fFjcZrFUcZQfphSIaFVLWtBpiWlLgQPbPZVNgoQkEptMJmoiSuQ9g2ohrxR2kYLForuk
	rsdWOAEaJdIq3EDg6BGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgEr-00000004KwB-3iG4;
	Mon, 08 Jun 2026 20:06:25 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWgEr-00000004Kw1-1Vz7
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 20:06:25 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7BEBB6001D;
	Mon,  8 Jun 2026 20:06:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33B961F00893;
	Mon,  8 Jun 2026 20:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780949184;
	bh=/16MXuPq2Ir5apRNIQjRucdXdMzC6TZraT+bxU+vx6k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Je8f5NCEP9ppoCNHr4EasJJjlfLrzVe9yU/TCNegJxJADLkd5aoJWHZ2BcGTrrxvS
	 TzLIm3D+h4er3LTN9FioIxkecqY4T52+BRHeh/U3WfzaiwKd5+38eIW/JpV88Kms2G
	 90r3Eefq4j1erEFdo8SwNSLhyZs1I4VFcuH0M/MPVdugB9PJwqZo6IgYMa6EZ4SJJb
	 3IrB+LnEp770Za0cLVYd3v97C7pOnrgzDVkbUDuMyAvQWBoD2bzpGD21gCSMbU95Fp
	 LRcF2mZ4PHoDrsanl3o4P1FkE6a1R6eNrTyn9GmyMhc93SZiEMUqBWTpcfGQI9mtTO
	 YSXL/h/SzkwFg==
Date: Mon, 8 Jun 2026 22:06:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_wcheng@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: qcom,qmp-usb: Add ipq5210 USB3
 PHY
Message-ID: <20260608-nippy-devout-potoo-0b0656@quoll>
References: <20260608103344.2740174-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260608103344.2740174-3-varadarajan.narayanan@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260608103344.2740174-3-varadarajan.narayanan@oss.qualcomm.com>
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

On Mon, Jun 08, 2026 at 04:03:44PM +0530, Varadarajan Narayanan wrote:
> Add dt-bindings for the USB3 QMP PHY found on the Qualcomm IPQ5210 SoC. The
> IPQ5210 PHY is compatible with the IPQ9574 PHY, so add it as a fallback-
> compatible entry using a oneOf construct rather than a plain enum entry.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 46 +++++++++++--------
>  1 file changed, 26 insertions(+), 20 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
