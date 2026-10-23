Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF70606A31D
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mG+4sQNd;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NG3cLh6z
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=StdUwl4jpmhZpK0ARJYf0BbSqj7Uv7np75p9iPlq9b0=; b=mG+4sQNdHOIOdLfmMW0uCyepsG
	Gb7g6HIo8xt8gUVGw4vkJLXcGomp/IpD5mKQVRxgTOa1Q84svUIQ+1qcCXSy1+tRUZQMsi5KZ9NOs
	3D6D0HCJDRlVIQgJH9pPHtb6lqSEsx0M0bklkZaEZfAzjN6XvbbxUxhmmqOqd7mf4V7VJB//lhsRT
	sh5PYlsGQoLrl4Nz/bt/AkInm50Y9F8MfU0a0FuhUtFpjRyCW89jGvS3YtSczvM6flbhgOJA+22mT
	tQECS4jW5OTMt1KgNOmL61qzNkd3VPbBuR6/sUjU2kKqrpzXHRwf7u26WqTUzUuIJLFOc6sVySW6U
	R8pG8vMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIAx-0000000GfBe-3QrY;
	Fri, 23 Oct 2026 16:31:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIAt-0000000GfBE-1qHD
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:31:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 66E3341AF5;
	Fri, 23 Oct 2026 16:31:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A05391F01825;
	Fri, 23 Oct 2026 16:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792773082;
	bh=+Q/WZXCrhzRC1pBbhEEk9GmXlyfcA/VhGiqMj+3Fzos=;
	h=From:To:Cc:Subject:Date;
	b=NG3cLh6zHDvkcesr1fj0IE2q7fkHJ9nXBGQALLN3F75CiPLs14mUTUjJwiKlYvJ/L
	 iPapmbpENcZU9suGxHW3cKb9IOs17f2s9Pe5mV4nu62kd0+g3MdE9yOgm/gyOI14PJ
	 yEZjuEdewpbQIcLeXlrgP4pRhBD8g8bL1kCYk6D3X71fDEg0jKBwz5IhJDRWUFNOpH
	 tGMO86Uwf00opaz0OhFsoneQwTFcq0YfLf/7Qlc51s1S7MRn19fyq1+WalE+8/46BY
	 3iTMRVfs2FOXwM/zeaQwODXodM2ijh8vBVf2RjwQNEcmYXkDaBQqDccigFgYttl6Sq
	 0o8qjC+aVb4vQ==
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
Subject: [PATCH 0/7] media: qcom: camss: Add Waipio CAMSS support
Date: Fri, 23 Oct 2026 19:30:50 +0300
Message-ID: <20261023163057.775917-1-vz@kernel.org>
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

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

This series adds support of Qualcomm Waipio (SM8450) Camera Subsystem.

The CSIPHYs are described as separate CSIPHY devices compatible with
X1E80100 ones, and there are no legacy CSIPHY resources in the CAMSS
driver.

The change can be immediately tested on any Waipio powered board by
running an image stream from TPG to CSID, CSIPHY IPs are equal to
the ones found on Hamoa platform, and were tested on a private board.

The series was based and tested on linux-next-20261023.

Vladimir Zapolskiy (7):
  dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Waipio compatible
  arm64: dts: qcom: sm8450: Add CSI2 PHY device tree nodes
  dt-bindings: media: Add description of Qualcomm Waipio CAMSS IP
  arm64: dts: qcom: sm8450: Add CAMSS device tree node
  arm64: dts: qcom: sm8450: Add description of pins with MCLK function
  media: qcom: camss: Allow CSI2 PHY devices without CSIPHY resources
  media: qcom: camss: Add Waipio CAMSS support

 .../bindings/media/qcom,waipio-camss.yaml     | 274 +++++++++
 .../bindings/phy/qcom,x1e80100-csi2-phy.yaml  |   4 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi          | 559 ++++++++++++++++++
 .../media/platform/qcom/camss/camss-csiphy.c  |  16 +-
 drivers/media/platform/qcom/camss/camss-vfe.c |   2 +
 drivers/media/platform/qcom/camss/camss.c     | 244 +++++++-
 drivers/media/platform/qcom/camss/camss.h     |   1 +
 7 files changed, 1094 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,waipio-camss.yaml

-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
