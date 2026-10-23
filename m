Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C20606A32D
	for <linux-phy@archiver.kernel.org>; Fri, 23 Oct 2026 16:31:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ErEg5hV9;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lJ1Kbwac
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AnEGwcTfQSmzHnJfx/MFiQDfJA0yr32Cbi/KFBQ9HWI=; b=ErEg5hV98p6fIoaUo0uK+aufH8
	UFxfrSVs5BwO56YtuA4/XvH0V6aVeadYnHKig7CrnUq9hTWrQ7TuH18jIhCzG0nItaROkRUKFwzln
	+g+IMaMTbvKsHWDsWU/u9SZl3udPydlGzJxrT/QWnp8su/l4wlrlCvwZ6cXXdaO9tz4f74Sv678vK
	xXu8F5jj7seN3YSjM2EGptaaKdmJLuhN7giRdpjkAylrxb4PX50s7PxGPkzvZ2PJO8gUjqyImDoDv
	zvi4zLHUno0ljvw+sneGCWA/nSfXyOXpEjExDuaEBvOHShPhbYOgq0qFFvNMI0BbhBZDNOx5AA9pK
	2rvMpcpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIB6-0000000GfCZ-3ICq;
	Fri, 23 Oct 2026 16:31:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xKIAx-0000000GfBS-28UK
	for linux-phy@lists.infradead.org;
	Fri, 23 Oct 2026 16:31:29 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A4CE860A95;
	Fri, 23 Oct 2026 16:31:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB6BB1F01828;
	Fri, 23 Oct 2026 16:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792773086;
	bh=bhmNBL//ohDUQBiVwCH8dmQtob2Z0T5Nr5g00Vds0tw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=lJ1Kbwacpb4HGQQwXOhT+rGg1iXmG8VEcZPcbAeDy+w1898qcnreF53dCOOU7n8a+
	 S0tLZpLTXvlwjn9vsyrdsy+DORZHT85f21HxOaDsLXOuQ2Q+n2WO5W9JDwSIiHT3uU
	 jhxPrZvMqmgZDTosjRLRftjM2dkzrQohToK+ODoLdpCCoCx3gehvHYIVqntBgr6cN0
	 IX9/OZrMBxzry6E7muh4T07aw578CFC2xPDJU7zppytlPo19VPqD9XrP8tU0m+a4R0
	 yaCqFrQykQThzEi6HjGqgBiNcd4k4min7fsnFjo1q/8sx8l/wrSRNR2aeK4qt/7KHm
	 uQseWexrsVV6w==
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
Subject: [PATCH 1/7] dt-bindings: phy: qcom,x1e80100-csi2-phy: Add Waipio compatible
Date: Fri, 23 Oct 2026 19:30:51 +0300
Message-ID: <20261023163057.775917-2-vz@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20261023163057.775917-1-vz@kernel.org>
References: <20261023163057.775917-1-vz@kernel.org>
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Qualcomm Waipio SoC has six CSIPHY IPs, which are compatible with Hamoa
ones:

    qcom-mipi-csi2-phy acec000.phy: CSIPHY 3PH HW Version = 0x40010000

Hardware supports up to three different 0.9v level power supplies for
CSIPHY0/1, CSIPHY2/3 and CSIPHY4/5, but there is just a single 1.2v
power line VDD_A_CSI_1P2, which supplies all CSIPHY devices.

Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>
---
 .../devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml       | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
index 1f1e2a4993b2..2a11ca7c7d11 100644
--- a/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,x1e80100-csi2-phy.yaml
@@ -19,7 +19,9 @@ properties:
     oneOf:
       - const: qcom,x1e80100-csi2-phy
       - items:
-          - const: qcom,glymur-csi2-phy
+          - enum:
+              - qcom,glymur-csi2-phy
+              - qcom,waipio-csi2-phy
           - const: qcom,x1e80100-csi2-phy
 
   reg:
-- 
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
