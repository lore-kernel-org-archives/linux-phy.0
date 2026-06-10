Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B291BCD8CB2
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jun 2026 12:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E8zryecGGvlJAffHGpC+xmWLUVUgYckriRSPwZfSHjI=; b=Nutjhe0VWb+EZc
	PMFk/4o3APiU5fQOELnIDYsNJQY+Wvg5h+EXT2YvIlY5+TFBkvxCk/NTHQXqD4jHV5Zi5eXaL+FCY
	4B6uTTzHEBcnOIcFxmu4oqzFP6RUq+WuN+1Gkol6F0bj/5WliVBctOJnm3wghlow9Mr2y2P6GXCg4
	EHMMHPOpSLZ28RfEaWVijVKFE+6VmBQl8j4Xhx7bTmmW+TSyeRfB4FmBTayLbviCYK7rASR3sZHfZ
	NT88JGzI5dMJr/EVjhDe4ANB+JuKuxyjxFdMpeoiOwzyTgPapHVaxrh6GCUvuKrUWntmqhAuvj76+
	lOJcm09XBxAsj1Y5YBoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHft-00000007cBM-21kX;
	Wed, 10 Jun 2026 12:04:49 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXHfs-00000007cBG-1mwq
	for linux-phy@lists.infradead.org;
	Wed, 10 Jun 2026 12:04:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 2684043C53;
	Wed, 10 Jun 2026 12:04:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 605B51F00893;
	Wed, 10 Jun 2026 12:04:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781093088;
	bh=LsyBpd3ubxXywUQiKVs/hjr1/ctDNQr3tCkSZxmIp0U=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=gsDxLj1fjgPNbefANUcA6hmPrSLXo/+bgOXjvlVkzcf0ltdQ0z0tNCIl/xQweAWRh
	 onVfIn3wirf4WO3C4ZVxthbQ2oWUH8hEBu3okuadDg3NAObxgHUlOmHs/S/CnJYHVt
	 E1hmSpdC70dniwl0jgVUBabwtMiaI8ycwDI+mZzDdnCEVFGo+qu/I0GrzZPtjMpmYC
	 WNBtTGKnfFHIG/iwwVClp25UK+wqHygJ6nZjjfGKV0OmIalzoogKtI+3rjn8D443Ak
	 4QWDvpPQeH7MiWhkI/RBPW8KVf8mmQFtn3aeFUdJyXtXp1H8Ah6a43FMoavfGdoczn
	 hdExCJBnMA8Fg==
From: Konrad Dybcio <konradybcio@kernel.org>
Date: Wed, 10 Jun 2026 14:04:17 +0200
Subject: [PATCH 4/4] arm64: dts: qcom: sm6125: Fix QUSB2 compatible
MIME-Version: 1.0
Message-Id: <20260610-topic-8996_61x5_qusb2phy-v1-4-d7135980e78f@oss.qualcomm.com>
References: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
In-Reply-To: <20260610-topic-8996_61x5_qusb2phy-v1-0-d7135980e78f@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Iskren Chernev <me@iskren.info>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1781093064; l=1065;
 i=konrad.dybcio@oss.qualcomm.com; s=20230215; h=from:subject:message-id;
 bh=YVIqfrH3mYeu1oku7m5qMRh3GSxgBbzNU1DvKKCnwRs=;
 b=vQmEdDcvBBjR9bcJgViAK/lo1iKmbRKe4aVfqLMgFPPe3p7SNXSaHgH3wtvBtVEp7CzCSySXB
 5FbaOktItZeA/q54C8Oo25ip0czuFmAKfzQo/e34ZGy/fveXXTGGxUr
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
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

From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

There are a couple issues with the current description:

1) The msm8996 compatible is wholly reused, without a SM6125-specific
   primary compatible
2) MSM8996 has a different power setup (VDD powered through a RPMPD
   power-domain vs a regulator)
3) MSM8996 uses a different init sequence

As part of fixing all of them, use a SM6125-specific compatible with a
SM6115 fallback.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 6e84c226948c..688548cef0f1 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -681,7 +681,8 @@ gcc: clock-controller@1400000 {
 		};
 
 		hsusb_phy1: phy@1613000 {
-			compatible = "qcom,msm8996-qusb2-phy";
+			compatible = "qcom,sm6125-qusb2-phy",
+				     "qcom,sm6115-qusb2-phy";
 			reg = <0x01613000 0x180>;
 			#phy-cells = <0>;
 

-- 
2.54.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
