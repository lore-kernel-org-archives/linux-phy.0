Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9ACBCD8C92
	for <linux-phy@archiver.kernel.org>; Mon,  8 Jun 2026 10:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdTwkvMBxG43IIddrCfQWM7ZamdUkp+WCafRLAJEz+c=; b=JYaM9EMDeqUveq
	4uuUH3dyM/TzNgY7Wl3yXuVJot0RxLyuwNuswsc+m5TnSebKUBvx/f3+siPdP0nwgjL6eTNPf6LOo
	H88xFLlLEqlf48l1+U8E9PRWoT6Pzu/jofkO9Wp6if1RFNPSo0HHFXhWIM2gjcvmk83hKlivJOsxH
	2G4OlrOuH4kVojXBz8pL3DT8mRPLAhRsP20KlnBZdSgk5FqEeeewZXPfwp5tb45GGc199FElTb/iT
	jREZxZ+9S01XZy9QIKIbpBXOb9H8+aKVIyvfPZu7MqyeyIDOW5z+coyNvhuWV7PcN829+muAU8fqk
	wz+pT7vdFUZZSbUjxiEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWyP-00000003JSH-2IVB;
	Mon, 08 Jun 2026 10:12:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWWyN-00000003JS3-40Sc
	for linux-phy@lists.infradead.org;
	Mon, 08 Jun 2026 10:12:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 78D5143313;
	Mon,  8 Jun 2026 10:12:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D131F00893;
	Mon,  8 Jun 2026 10:12:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780913567;
	bh=IPmn/o9ntEOe13GeAP/7lkFhSyInqwmiMxw7cbReXFM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Go66QURxicygg5iGEXmgguHyaOgb681N6qWTKJB858YK2DB9PcymVo7x232ytNudK
	 bJzpEiBFdFxaKEm+yEFB7zYVpH0yN6YuRijRL1bD/Lw2/vKbYD51caHgx1d6sw0UhP
	 dAxfBKdyPpzyt6I1pcrKUmOxQYScHLQkaROexNBfq/+nAplEKhJ7hcQ3yo4QCVVm8Y
	 AsXjF3//CVyRZyYUVi4NwUpMs8PSag0/iLas1/uTRWjW197KZMbuTpnqC429kb89Jj
	 OBpS5yxFTsq5OR+wcy1zmgROtM2o06SNCeM00p0i8wqNAQXf+8+C2f2tw/V3wLvB0v
	 Iu4jWr2vA4BCQ==
Date: Mon, 8 Jun 2026 12:12:43 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,ipq8074-qmp-pcie: document
 IPQ9650 QMP PCIe PHYs
Message-ID: <20260608-powerful-sloth-of-tempest-cb4abf@quoll>
References: <20260602-ipq9650_pcie_phy-v1-0-d8c32a36dbd9@oss.qualcomm.com>
 <20260602-ipq9650_pcie_phy-v1-1-d8c32a36dbd9@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260602-ipq9650_pcie_phy-v1-1-d8c32a36dbd9@oss.qualcomm.com>
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

On Tue, Jun 02, 2026 at 02:40:17PM +0530, Kathiravan Thirumoorthy wrote:
> Document the single-lane and dual-lane QMP PCIe PHYs found on the
> IPQ9650 SoC.
> 
> Unlike the PHYs in the other supported IPQ SoCs, the IPQ9650 PHYs require
> the on-chip refgen supply to power up. Add the refgen-supply property
> and require it only for the IPQ9650 compatibles.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,ipq8074-qmp-pcie-phy.yaml       | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
