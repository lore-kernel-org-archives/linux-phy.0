Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57549C02192
	for <linux-phy@archiver.kernel.org>; Wed,  5 Feb 2025 08:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wPWMO/XrSbNRXTYtr9hzmCOjDpdfNHBqoylB/sTnQ6A=; b=a86Vdr7h4T8oGZ
	pTaUMbP8vebTjXRVpMrSDxdoshzUX1CTGvF8i58fjdPb4lHVyaPF08gta/mTP6qA2+i8Np9za6bK0
	rqv2iG3gXIuNIurSUsL4UYQ0cGS7gD2m8RPVHjr546eOkwDG1EFrHvRBFhtX8wqLK8JhQ+neXoLQP
	++QrQGAcrD9BaGR0zC8T9Vn9Ag73fIQaTJdfahz7szahcQgni70MD6TdTYGpuSAePxw0X/TT4zb5O
	0WXprbIppksBCMShpMsNNtshd6ZrblsKUCi3SLDGH6QAXrCRvx376eG55VYGqe620HeKajuJA+3tn
	oQ2851vVcPD9zLqhyTgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfbEf-00000002dqA-3mPk;
	Wed, 05 Feb 2025 08:58:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfbDI-00000002dhk-2Nq8;
	Wed, 05 Feb 2025 08:56:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 495505C5C71;
	Wed,  5 Feb 2025 08:56:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0540CC4CED1;
	Wed,  5 Feb 2025 08:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738745811;
	bh=jDRflpWn/eNSVYWYsmChMhlBoAx8KSfDOFOxrHxoKr8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BMSlP1ztsEQ6urNcvZNA5LG4TmjqcVVFSqEmeOSjDrESzJZNO1oxJvblv8TodUMiU
	 R6413G/mmomrMVFAsyr/c/jxrDbubulBDssRG796vFMpUqYBRklhxfoOIXNxWK5256
	 /g+5HdjX08Opk7C/rVYaFxP4SrgpyAVp3aod4SgvN6wUvU2+Lr42bIK5Val/qGRG69
	 989H0jpSNzdQBOyJ09htb446gC5YHaQb62BSj6j3W/RWS//qpBPxLqrBP52meOGVR6
	 5dOHUnMbbujMt4eHY+7X0JzupJ+WI7ycN7P1ltK49yAExZJCYCb+y4hczpJ9duUxVU
	 1H9i6UOY80maw==
Date: Wed, 5 Feb 2025 09:56:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Vivek Gautam <gautam.vivek@samsung.com>, Rob Herring <robh@kernel.org>, Conor Dooley <conor@kernel.org>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Sergey Lisov <sleirsgoevy@gmail.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: phy: samsung,usb3-drd-phy: add
 exynos7870-usbdrd-phy compatible
Message-ID: <20250205-honest-versatile-bettong-9c4c0e@krzk-bin>
References: <20250204-exynos7870-usbphy-v1-0-f30a9857efeb@disroot.org>
 <20250204-exynos7870-usbphy-v1-3-f30a9857efeb@disroot.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250204-exynos7870-usbphy-v1-3-f30a9857efeb@disroot.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250205_005652_641631_EBC2DC94 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
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

On Tue, Feb 04, 2025 at 02:10:14AM +0530, Kaustabh Chakraborty wrote:
> Add the compatible string "samsung,exynos7870-usbdrd-phy" to the
> documentation. The devicetree node requires two clocks, named "phy" and
> "ref" (same as clocks required by Exynos5).
> 
> Signed-off-by: Kaustabh Chakraborty <kauschluss@disroot.org>
> ---
>  Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
