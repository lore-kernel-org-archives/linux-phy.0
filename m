Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1E8AC25B79
	for <linux-phy@archiver.kernel.org>; Sat, 25 May 2024 17:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q3jtXKNjIDwQe3jrazsLuxBJYSd4uhqwFtNjV8TiAao=; b=HclD5+3GTOZZF2
	UyTTB2ASwWtEEQLDqlohleveIEh/lXGiYKP+h1q9FR8Mdz0SgBO+5rravknaA90g293FwtYmeNtIq
	9h8ZauTyRJCJ7ywTykTmrxuexP0qWp/wWZK31tOEgOgbjV3t9BCg65btLqrH0TOztAjgqSReEJrKz
	2hnWYV5i6wXLfiNViVRuWswprF6K41NItqft4bDVDZKKXNJGxbBp4o6Zv2dVx+68MaGuy20e0Z82D
	5LRSyOuf1ikQ3uApfC6SCZbY4M1NpNBdrqQlVAKiikp4s9cdDmWs7RK8FAtcLPrDXKw/FwC0kq2c3
	4JE7UCG5pEDjx4uGsJBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfy-0000000BSti-2YmQ;
	Sat, 25 May 2024 17:59:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAvfv-0000000BSsH-1MWk
	for linux-phy@lists.infradead.org;
	Sat, 25 May 2024 17:59:24 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C458D63571;
	Sat, 25 May 2024 17:59:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 52574C4AF11;
	Sat, 25 May 2024 17:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716659962;
	bh=x/A3qlHKSNksLYkJyamEvoUm6j0d2K1gDvbHogrpo0Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=dA5YG2ldKuY07n1rg7kv83bweOx1o7532gHn4E3h6ldpV3PWfYE+K8D759V/hWkEm
	 d5e9XCx8iUJkHOImcjZlNwzWhJusY58NtiPHf2F8l8QAvK+nV51o1ebigd7M+9tK+8
	 5+21YARO5/JG53BJpigfvP4h/Q9QsPLn44dazPdqT6pgXabQK8GhZ/BWaQwQAXzXq5
	 TTS2bet5Kej6E0i5e8rqOMTNtQ4GvCow8uqkok2BxGR367w3U0XSO9w8/lgnI8LZUB
	 /KksqpX3OE1oFRLjT9gBbt3nqMLw94sS0NZSrGq5Ekf3hHdFHuL0CKWwG7hJT1vuPp
	 vUwTjFrvhYZ2w==
From: Bjorn Andersson <andersson@kernel.org>
Date: Sat, 25 May 2024 11:04:03 -0700
Subject: [PATCH 10/10] arm64: dts: qcom: sc8180x-lenovo-flex-5g: Enable USB
 multiport controller
MIME-Version: 1.0
Message-Id: <20240525-sc8180x-usb-mp-v1-10-60a904392438@quicinc.com>
References: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
In-Reply-To: <20240525-sc8180x-usb-mp-v1-0-60a904392438@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-clk@vger.kernel.org, linux-usb@vger.kernel.org, 
 Bjorn Andersson <quic_bjorande@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1388;
 i=quic_bjorande@quicinc.com; h=from:subject:message-id;
 bh=ApeqdvS88ACvmrMfc7ygIjzXVr8WNirPX8Y+Q+iz2qg=;
 b=owEBgwJ8/ZANAwAIAQsfOT8Nma3FAcsmYgBmUigNf7OPmC9AZV+nbwo2ZWqTekEW/mFXM//YE
 76bMWBweBSJAkkEAAEIADMWIQQF3gPMXzXqTwlm1SULHzk/DZmtxQUCZlIoDRUcYW5kZXJzc29u
 QGtlcm5lbC5vcmcACgkQCx85Pw2ZrcXvxRAAiLS+lEqoMRKXifzpZgBqbQKahAwyZOa/z+B0HjV
 ATMhQP6UbO02H3tHJ6x+6nhC1uq2w6bTtoaOHCJvbdfJq+Bko3nsyk2M/TbDFeVPeFD0UXNaPpE
 NO6LtiLjcPXgXVEEaFqUfzrHv76P2dYXrvBZumeiNcK0oLjNaNQn9nqe+w9c5P6RCB928L3iA5A
 73IaKXehwKa2kVBsPz4u3bfKcPB5HLecCIMMITIAjAdgcAp/+qGFHP4lh0hBYjxrggcGerQ2/SK
 IixzUjoP3AB/G2IlRXd8h5jS2tghqvsZ9PaHIbaqh4bMHgWuXxKRhlSpstZuSXR+L8o085tQw1D
 r3/X3gwY1J6Xbmb0rjR8aL5qAAQhQcDVCr7msLiIxSKrrqGR+73J5iPmzFtji1vSMedeJGfFIcU
 N1tZc9KjpClkZz50177Qcwjx/2Vt8TgbicEQuZSvQ1sKmw1QuYomO/gYrMjGnMxRplVRehvA0va
 3eCt3e4JW7JfJSP+HXamS6i0dMX9Sgmj25gqE01lGE12axNnCUwr4PArGUxzmpzCFbLEUk04va1
 B6wXVmxUYKYN1oRA0bllHyaKki/ud+DoHQp9moS94dh2dUc3BX+keKtSuSDpGWAEvIu5ir+4sDr
 LhLiBCDzpogQcB0KF/l4JA0NbNlSK56hzPOvbZiG38HQ=
X-Developer-Key: i=quic_bjorande@quicinc.com; a=openpgp;
 fpr=05DE03CC5F35EA4F0966D5250B1F393F0D99ADC5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240525_105923_703976_A002C487 
X-CRM114-Status: UNSURE (   7.95  )
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

From: Bjorn Andersson <quic_bjorande@quicinc.com>

The Lenovo Flex 5G has a camera attached to the multiport USB
controller, enable the controller and the four phys to enable this.

Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
---
 .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
index 6af99116c715..daa3065bcfe5 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
+++ b/arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts
@@ -557,6 +557,38 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_mp {
+	status = "okay";
+};
+
+&usb_mp0_hsphy {
+	status = "okay";
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+	vdda33-supply = <&vreg_l16e_3p0>;
+};
+
+&usb_mp0_qmpphy {
+	vdda-phy-supply = <&vreg_l3c_1p2>;
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+
+	status = "okay";
+};
+
+&usb_mp1_hsphy {
+	status = "okay";
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+	vdda18-supply = <&vreg_l12a_1p8>;
+	vdda33-supply = <&vreg_l16e_3p0>;
+};
+
+&usb_mp1_qmpphy {
+	vdda-phy-supply = <&vreg_l3c_1p2>;
+	vdda-pll-supply = <&vreg_l5e_0p88>;
+
+	status = "okay";
+};
+
 &usb_prim_hsphy {
 	vdda-pll-supply = <&vreg_l5e_0p88>;
 	vdda18-supply = <&vreg_l12a_1p8>;

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
