Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0922C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:34:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHmrAlg9eVp4/aIb0nM/mMxf0CHIQnE1WwfwB1KAotw=; b=kTTqZPxj6B0GdT
	E6nQgxzUX8x9WxqjP3HMi7t7YaVM5sumxMSEGCTU5X5wxJsoiGdSV66dxGnbbl3+7ey6vQrjiLq3c
	OXvbtuLShAykuo2jhELU3rcgZXTFlkosb5hxzXV4q3JjMWvDpfldtlU/80WGvncJQLAEtxtCZdGjb
	FHIg5CeIMnt3N7XlBrfuLzhvsMHWf1uwpZEatvh0kKQzuBzGzJr48xOX/tjPmbro6e2FCNgQvevIw
	8LZvjiWlmuAMErnriqLyA+FKJu5hO/CObr05uYpxEcSyS+HsmKx2Qc4lgh5AhicwaXXTKkKKTj0DD
	CcG7JeC4fsSO/VESu6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJm8-000000081Ns-2iNU;
	Fri, 07 Aug 2026 12:34:12 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJm6-000000081NN-3HV3
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:34:10 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 10771600D8;
	Fri,  7 Aug 2026 12:34:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6EF721F01559;
	Fri,  7 Aug 2026 12:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106049;
	bh=i6qYanLTFqd0IqbWzuK+Yek81Ia/RevJ2aCxp8vXMus=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=dCxiro5MnrvGbrFQiNTvE1hDoMZzcvq2h55KvvcLx43rpuW+FmNxOWIZWrLWeDsZu
	 PLDVOaK/NPs4Uj2V8bc0b9QAe6NZDiMywzGrlzaW0MtH4LHqW+Cu4BkRC61cG2Lkdv
	 Y6q8W0yQRDuux3UhgsFznkUs23ZG679egnNNhPDSJL3vV+cf+Srxnibf6Qz3mNNIoa
	 6tso2laxct35C0hoW0XSGOf/ePAGK6lTmlHV5HMVGj2fMOVDN7QUs3g2RUs5YtZsqE
	 S/QJBb41Z+W1RS7h9Xa0zEQkQjQAtEpTRy52M3/KV5g01DjwSai2N491pFrePrusGU
	 GSXRwkd+ObKzg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Esteban Urrutia <esteuwu@proton.me>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org
In-Reply-To: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
References: <20260715-sm8475-bup-pcie-v2-0-48bd91a19abf@proton.me>
Subject: Re: [PATCH v2 0/3] Initial PCIe0 PHY support for SM8475
Message-Id: <178610604511.740291.3909806705219410355.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:04:05 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
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


On Wed, 15 Jul 2026 02:37:45 -0400, Esteban Urrutia wrote:
> This series adds support for the PCIe0 PHY found in the SM8475 SoC.
> The initialization sequence varies noticeably when compared to the one used
> in the SM8450 SoC, hence the need to add support for this PHY.
> 
> 

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add SM8475 QMP PHY
      commit: bae047e91213a7b8f86b70f0f48f38374a73d5ea
[2/3] phy: qcom: qmp-pcie: Add pcs_lane1 offset to V5 offsets
      commit: f8b4493d5e7e19682abcf538a9faad012b5ef69e
[3/3] phy: qcom: qmp-pcie: Add support for SM8475 Gen3x1 PCIe0 port
      commit: 9e953732c3ed02b19698bf4af05396a3573681e1

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
