Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB6D606A31F
	for <linux-phy@archiver.kernel.org>; Mon, 26 Oct 2026 22:50:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Mz4Zivu8;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=OdN/9mtj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=SuCamMdVW0fsbDgb2adfHrJBswvlmoNfAQNJEEpbF9A=; b=Mz4Zivu8UAdA8sN4FllWQE8mxm
	/lYAjNU9T2QZ+o/FfL9vMwdkyxM+UD7vx2flCuGuEwZ/TmQpXgzPOnIq18y5VvJUlJ6h8mR+TWp9k
	xfZFJTOPPTRZqG50zsDqD+Sy0lLsFXLtI+m8ET7HAy8djs/8A2gK9Ahf/T/5gm+Ik03HnYJ6KYM+l
	DaADjlWQGrm54o2LiMfTaHN+Bh0/T6kJ/Ct01nlou5NNaKvBseTaolwdRHD5usR/zt0av7lWE5yG4
	Co0KVnkbqlvpLvRts1Ic6fiO0U0n/UMhasIu4+HpvWrQE4hanEVB/7RRAzmYB/36hZVoLrqcupb5j
	ugTWJDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTW1-00000003Nql-2JCd;
	Mon, 26 Oct 2026 22:50:05 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLTW0-00000003NqR-3IMx
	for linux-phy@lists.infradead.org;
	Mon, 26 Oct 2026 22:50:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CD69243AAC;
	Mon, 26 Oct 2026 22:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE7FF1F01825;
	Mon, 26 Oct 2026 22:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793055003;
	bh=t7JehZMn3Nl/lxkYG/xWHY5X5HT1Ppoe07eraMxeFB8=;
	h=From:To:Cc:Subject:Date;
	b=OdN/9mtjOk1dKJ6xkM1gNYxz2hYE+Sd1gZtHVyuGFOZ38XHV7tm187e5xxlR6Hmva
	 a9fzW1SE4muojYgFTd9AecGrsycLE7bV1hEnFOSUOr6iG6JcnHDuoQElakfZZJ7iws
	 VJxxi80KiVRpySfEYTrQJMqfpkfVNPYcrdM2o9xi0y6pJhFE2HG5A7MoD95/E6RYmq
	 Av3c3Pdh0jPvhvb3xIvmg6dhz56YMs+yQm+JJXE+ZAg3DYGop0yUFedFuedTWrqXKM
	 6jL4j1CX/7oTM5B8aNVy9vEBFVO7RMqQhCgbJ+qhIAtXGSWiqqm0fnln7qqs69wtYw
	 WL9/3QR/rmNcg==
From: Vladimir Zapolskiy <vz@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-phy@lists.infradead.org,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 0/7] media: qcom: camss: Add SM8450 CAMSS support
Date: Tue, 27 Oct 2026 00:49:50 +0200
Message-ID: <20261026224957.1115370-1-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds support of Qualcomm SM8450 Camera Subsystem.

The CSIPHYs are described as separate CSIPHY devices compatible with
X1E80100 ones, there is no legacy CSIPHY resource description in
the CAMSS driver, and this option is not intended to be supported.

The change can be immediately tested on any SM8450 powered board by
running an image stream from TPG to CSIDs, CSIPHY IPs are equal to
the ones found on Hamoa platform, and were tested on a private board.

The series was based and tested on linux-next-20261023.

Changes from v1 to v2:
* renamed Waipio SoC name taken from downstream to SM8450 (Krzysztof),
* pushed DTS patches to the end of the series (Krzysztof),
* added Reviewed-by tags by Konrad and Bryan,
* minor non-function commit message and blank space changes.

Link to v1:
* https://lore.kernel.org/linux-arm-msm/20261023163057.775917-1-vz@kernel.org/

Vladimir Zapolskiy (7):
  dt-bindings: phy: qcom,x1e80100-csi2-phy: Add SM8450 compatible
  dt-bindings: media: Add Qualcomm SM8450 CAMSS
  media: qcom: camss: Allow CSI2 PHY devices without CSIPHY resources
  media: qcom: camss: Add SM8450 CAMSS support
  arm64: dts: qcom: sm8450: Add CSI2 PHY device tree nodes
  arm64: dts: qcom: sm8450: Add CAMSS device tree node
  arm64: dts: qcom: sm8450: Add description of pins with MCLK function

 .../bindings/media/qcom,sm8450-camss.yaml     | 274 +++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml  |   4 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 565 ++++++++++++++++++
 .../media/platform/qcom/camss/camss-csiphy.c  |  16 +-
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 244 +++++++-
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 7 files changed, 1100 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8450-camss.yaml

-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
