Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D147606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 13 Nov 2026 13:46:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wTSSr45L;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=L37eIFWr
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=J4vkKXC2wK92TiLrP8PrY2M7MJEc4A9vphna7+L1C44=; b=wTSSr45LoPme+v+dQrPVBSOfIk
	9M72Nf9iwb/r/fjj4vo3WyzsphR5n6Tq13lL78fpfgSDY0qIxhnu9Em8ye7DXPO0nujKoirQeGgnm
	c/AY4AfxuvUQDpRlvk0Bv18xfGIzEIQV58pQMdZUfIP7Cmcr3RwiinbC8ovur/SdRF88zreDuZDYk
	CWElX05lK10VPY6I2FUrMpuL60N36tPTuc5Jx/GbJp4SsqOQlLXkdioATFD+Ha/BasRZcL0oepvcy
	aceFXZ9QhleUBP+bsI5ik/bw+7N3sT2587tpcqX/gltsVXAw2Di49f3hphN6+LrYXmJugqqwpCzL3
	u/vCtYAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrbN-0000000D0UQ-2q6U;
	Fri, 13 Nov 2026 13:46:04 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRrbN-0000000D0UB-0582
	for linux-phy@lists.infradead.org;
	Fri, 13 Nov 2026 13:46:01 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 5177C62731;
	Fri, 13 Nov 2026 13:46:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4FDEF1F000C4;
	Fri, 13 Nov 2026 13:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794577560;
	bh=8pf0Ttgbp60MhDc0Dc4NvrD/zrCECRvJDQmpqioCFR4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=L37eIFWrEuAwCGHXNqGu1DwtIyFJ76qaVbulVzzkZlAYXjC+nzf5ddb5+8JBIRgqf
	 IyeM6/23Lj37dFeh/oFjVO/h3ixHojSBJADX3/1N9NMHww36MdYWx1Fi7Xom3FPHn1
	 A3XYUifder5tk3rQHHqwqETqu+QBmOdFeLJUgKLGOI8OSCWjOI9NXnm0P3lO5RAgwa
	 Z1yFp06vz2r7SO766bUq+r9hSg2khnMWvNZ1b6fvTOjG0ztFfRRJY7bS+Pa963uLoG
	 AVpd+ReizibHUlnfMR3e0Yk+s2CdmcwbL2d3RUmjruXZOdpm45nXSrY2d8JC4cC2V5
	 tQ5NettKUcyBQ==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261112192345.3962577-1-robh@kernel.org>
References: <20261112192345.3962577-1-robh@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: phy: qcom: Relax required supplies
Message-Id: <179457755589.652128.7788585780819198887.b4-ty@kernel.org>
Date: Fri, 13 Nov 2026 19:15:55 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Thu, 12 Nov 2026 13:23:44 -0600, Rob Herring (Arm) wrote:
> For the QUSB2 PHY binding, keep the three regulator supplies required
> except for legacy IPQ6018 nodes that do not describe the board rails.
> 
> This relaxes the requirements for the IPQ5210 as well as if it is
> compatible with IPQ6018, then it shouldn't have more required
> properties either.
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: phy: qcom: Relax required supplies
      commit: e77b61b463909da3e21a337295954f48f4ca80ec

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
