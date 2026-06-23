Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CAF6FCDB46F
	for <linux-phy@archiver.kernel.org>; Tue, 23 Jun 2026 00:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MD6sE/P0p04tVCU+4kPnJGbLG/M3sXQSugwzs9a68Zw=; b=ztwFbWmW4LXnY9
	2h0+v1+38sooXI4Q8xAD40H17Ldx6IVGZcyTvA7KX2x5h/GcKUYkp/Lk0ABNsugzBHUua6l8qSMbt
	SLwPyPIyVYR5dYWt1UI4en++cmaDjFaLECKW3alBOBFCN2WLHOBgcNPClx9jbS4yZiqLRv48KycY8
	YlQi2Zh2Ja9XSgxLPdKjuhGRoFZIjLQ3z3V0Svi6XL+v16UCw983YV5Rm01vBNIbqrYuVz7pPIOnF
	ywe5PHpUyMrs2seWsz9D4qTXu/IgEsqE3RCsyfEMjwi/afrKbONWuhThCtICi8k+b+W5uLY1xP84d
	MypT9375h3k+AWnLyTYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpQo-00000005VR7-2A0n;
	Tue, 23 Jun 2026 00:56:02 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbpQm-00000005VN7-2qtq;
	Tue, 23 Jun 2026 00:56:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ACB76445B7;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6302AC2BCF5;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782176159;
	bh=NAQ2wPwIxNZQO7OtM7yBfMhOLpni9K/2uOT+0gTcdss=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=q1vXSbLV6q9wVvZSjX2Z9NxO07sUskAJXSNt/6c+Ggu4SEZWOy8o0JwmS46aFXNms
	 GCvT58oPF/x2PA2uErBIajK2ZCEjnzRKnYNjCf4kSaBI7ToprbfaE+tZwBsDuvAtkQ
	 mKNSSrVFYhfaO7Gm4ofolbpLZDozWVB8ox/t0PKWNp9dRmxgWwBy3zPFovvDiJKeJL
	 VRNIXjO8ZeQmXO5tsfXe8Aia3CehURxcE2yXhFGPpT4Om7hwSYxj6dPAUG/eaTmj+B
	 E3NemT2eBlfMRk44/DVZ1R4fLOVDDi44Rq0jMfsjJ+sNQDTdc5kLHA3xiBdl4JBMMC
	 tmRhl36qKbB6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E4A4CDB476;
	Tue, 23 Jun 2026 00:55:59 +0000 (UTC)
From: Esteban Urrutia via B4 Relay <devnull+esteuwu.proton.me@kernel.org>
Date: Mon, 22 Jun 2026 20:54:24 -0400
Subject: [PATCH 3/8] arm64: dts: qcom: sm8450: Modify GPU operating points
MIME-Version: 1.0
Message-Id: <20260622-sm8450-qol-v1-3-37e2ee8df9da@proton.me>
References: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
In-Reply-To: <20260622-sm8450-qol-v1-0-37e2ee8df9da@proton.me>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rob Clark <robin.clark@oss.qualcomm.com>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, "Joerg Roedel (AMD)" <joro@8bytes.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 iommu@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, Esteban Urrutia <esteuwu@proton.me>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782176157; l=1067;
 i=esteuwu@proton.me; s=20260622; h=from:subject:message-id;
 bh=UC8G+Beo5Ny4qD1bWQkjh6S3TFmJKL1P3wTRFImBETw=;
 b=V0HqhO1u+vHE2WkQyZ8w53tz9nq5vyJwjoEMcNSnSh9lQeJePF45vUwQO1oEV5l9C03S56ym5
 yuN/x2btOijA7GTkYxTOpmiR7wyBg3PEFIHlzEQG2lD3ssBubBG0T7a
X-Developer-Key: i=esteuwu@proton.me; a=ed25519;
 pk=wToFt4mOAWkzbqb15Ye1hrhevI13vK9BcMUFiQ/me1M=
X-Endpoint-Received: by B4 Relay for esteuwu@proton.me/20260622 with
 auth_id=835
X-Original-From: Esteban Urrutia <esteuwu@proton.me>
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
Reply-To: esteuwu@proton.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Esteban Urrutia <esteuwu@proton.me>

These frecuencies don't exist in downstream device trees.
Both 220MHz and 285MHz belong to SM8475, and I'm not sure where 317MHz
came from.

Signed-off-by: Esteban Urrutia <esteuwu@proton.me>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index e34e3c05bf74..5e331a25e22a 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -2495,21 +2495,6 @@ opp-350000000 {
 					opp-hz = /bits/ 64 <350000000>;
 					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
 				};
-
-				opp-317000000 {
-					opp-hz = /bits/ 64 <317000000>;
-					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
-				};
-
-				opp-285000000 {
-					opp-hz = /bits/ 64 <285000000>;
-					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
-				};
-
-				opp-220000000 {
-					opp-hz = /bits/ 64 <220000000>;
-					opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
-				};
 			};
 		};
 

-- 
2.54.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
