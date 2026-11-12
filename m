Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5F1606A881
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 10:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LxO5zeJv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=AsxlAq+N
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=uZ81+fbIiwpXay3iP6IuSOfiye6iSsJZ8+WLJ2CLeX0=; b=LxO5zeJvI+eU4FLbNtEdCNfdwZ
	VdeKYdAdw7tlFlPBa2WJEFUxy9+5iRaJdjNw40qQ25tJY7EUq7AmPWXaZkXE/vVtuG6wb3nRl4beJ
	zo30xl7d1O9+EATXFbbIbNqMpvlMF3YD20MNDSR65qlG7KkcxarYTme/oYzljuPAEDIWcRh3M175y
	khmwZdZG2vdGr7x62CWa+ESVcJ8uDJPZEtMfl+fI4wIdI3g7ZpNkhProm01yLQtGOBG7dzhDW3Kxc
	B+UMA0FLXZjs6/th0AStUnTUojZZgEXzKDx4aCtNWqVRZRxuKeR12wNV1f86Ix7dkkMetXTGve6go
	ZZs8bAWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSKi-00000009aID-1Xxr;
	Thu, 12 Nov 2026 10:47:08 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSKh-00000009aHp-0jAZ
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 10:47:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 42FEF45111;
	Thu, 12 Nov 2026 10:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 624081F00A05;
	Thu, 12 Nov 2026 10:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794480426;
	bh=xQUAVxIrA0e4kdr2QPbx8bp/YVLIcucobYOVtM6SpEU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AsxlAq+NmzI/wNy08KiMrdGfA1lCFcL7WyVieP1Hd8pRJQ1mx5OS2gUMf17G20wAN
	 tSBTJuh12XaZLjlII5PLEmBSWtlPN6waOJjk5039Amiu+OLQa1LTs3J5/UGNhdbr9z
	 BjduKSKQdYtjdOrfZc/sNIO+LY09xdCtR+NVyDnV1a6YWGT4mkpS1JTqEcQwNHlLQh
	 xRpUsVZnTdPWx9nnqgmdQBgUuYxT9kiBI/MEgX8QsnSDw/NmSj85hTnjyccdwTjrmv
	 3N9pfi4r4ESXMWsoFJK6SgRViNsQecHMEYXy+GXzNTyiFQhmW2U26Ojj7HZ1LzE7jY
	 WGO4XpccYghKQ==
Date: Thu, 12 Nov 2026 16:17:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Add
 qcs8300 16 GT/s PHY
Message-ID: <avWZJr2eIE9KrV77@parshuram>
References: <20261019-monaco_ep-v2-0-852cb9f5d012@oss.qualcomm.com>
 <20261019-monaco_ep-v2-1-852cb9f5d012@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261019-monaco_ep-v2-1-852cb9f5d012@oss.qualcomm.com>
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 19-10-26, 14:55, Krishna Chaitanya Chundru wrote:
> The QCS8300 16 GT/s x4 QMP PCIe PHY was previously described using only
> the qcom,sa8775p-qmp-gen4x4-pcie-phy compatible, since no QCS8300-specific
> compatible existed for this PHY. This was a mistake, as it left the PHY
> undocumented as QCS8300 hardware and indistinguishable from SA8775P in
> the binding.
> 
> Correct this by documenting a dedicated
> "qcom,qcs8300-qmp-gen4x4-pcie-phy" compatible, with
> "qcom,sa8775p-qmp-gen4x4-pcie-phy" listed as its fallback compatible.

This fails to apply for me on phy/next. Please rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
