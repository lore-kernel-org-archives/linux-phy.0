Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9721FC5B572
	for <linux-phy@archiver.kernel.org>; Thu, 13 Aug 2026 09:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xf8ijOTVMwp0K48VedpI1cySvlYN1AF6JIvxvNIfJbw=; b=SLQUOivJ+vxbNJ
	d3l0rBB8ep9JPXZ1ylxbZYnljKGqA58kzAeQ2ZYD7idK5k7H2tPgAswJCxvOUEi478iVZd8KuOgHp
	fpMWhftWpQJcQEzl9/L41Bx+XS+ABRMlb6kK9wnyoR/v+rWzhL1EyK9G+7NvbJ2xFM7hoYRh2rL7G
	Oo2YjejiKxVgVZ2Bv5AvJoW4Z9ojtz8f+MH+npZ/w4h4yKebw6eKA1/80Q13CpAZ7trTDWvFKUUpD
	cpwJlohK1Ufz+Wp2M9BZyeavBt5TJL8oZ0gDVo99j/o/ZQcuDHYE54mkuA3dr1Nx+uncP4DNlUczr
	eqCUkkO/98HQGe+X6gpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRRd-00000000Fl1-04Jm;
	Thu, 13 Aug 2026 09:09:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuRRb-00000000FkZ-2z6K
	for linux-phy@lists.infradead.org;
	Thu, 13 Aug 2026 09:09:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 0898A600AD;
	Thu, 13 Aug 2026 09:09:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F2CA91F000E9;
	Thu, 13 Aug 2026 09:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786612186;
	bh=55pjWL2dqRqVF3ySND1g9Z5pqwOJeqbt+9oVpOV21aU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Qq/9htuFdn6XUwYLQBuwvcIaZi7RzOMt7XPIRP3aBBdq7l0Oxcq6N2zEYBPv4C1mz
	 jGaa7DhNfOUVPhZnB7C8EXj3tFmil3rA5tzR9ztEiGg/R9Io5SYo1apCDM/jCF/PQl
	 +n5m7zXmCour3VItlMEtX6A/poVVhlytrg/gNiTHqfM8lImJYDXHk+PPR3h7G1/2pO
	 czwshBMMlS0SpPgaQYInuD/NcP33l3b+yEmHC1mKF/DYu+jZ90sUcfPo/iYnf6PmC5
	 qjXQ8dq101Lvd73qAiYKrmbtVioGPv3H0sP9DR9ORbtci6h4IEOz2CqIJNSYIi+eAX
	 QYRYyJ0zGZYzQ==
Date: Thu, 13 Aug 2026 11:09:37 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Praveenkumar I <quic_ipkumar@quicinc.com>, Varadarajan Narayanan <quic_varada@quicinc.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2 07/14] dt-bindings: usb: qcom,snps-dwc3: Add clocks
 for USB3 on Qualcomm IPQ5018
Message-ID: <20260813-uptight-peccary-of-pizza-6edeab@quoll>
References: <20260812-ipq5018-usb3-v2-0-8f355d7ff0ef@outlook.com>
 <20260812-ipq5018-usb3-v2-7-8f355d7ff0ef@outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260812-ipq5018-usb3-v2-7-8f355d7ff0ef@outlook.com>
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

On Wed, Aug 12, 2026 at 01:34:42PM +0400, George Moussalem wrote:
> Add aux and lfps clocks in Qualcomm IPQ5018. These clocks are required
> only for USB Super-Speed support.
> 
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>

Please do not mix subsystems which explicitly requested not to be mixed,
so all USB bits should be separate.

> ---
>  .../devicetree/bindings/usb/qcom,snps-dwc3.yaml     | 21 ++++++++++++++++++++-
>  1 file changed, 20 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
