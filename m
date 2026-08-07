Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D78E2C5AC7C
	for <linux-phy@archiver.kernel.org>; Fri,  7 Aug 2026 12:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VNvaahYCUcUe4SckEs0VWYZ+aWKt7s1NagmTZsCm5As=; b=FxpBO2Uy3DiUUZ
	vc0WE8shFMlK/WaXRjAy1NsPtfTSdeG2ZOf/Ff507p+a+Z+3ebuWQqAePsK5rnKw7x5O/dM2S1uyC
	TCCF4BBII0nkLfh5LpkCSMGO+Zx0n1+M2O6BwWXHEQKmgu5FF70lbLiCrkpFTamTQ6TI8/tdfS+Gn
	1H7YAa3ex2hRanISW/VpLke7e5sNyFNW0uwpaErOgz9FuRYWm9foFx1ef8HV1CvdIbQgzv4GAAwDW
	BnrI0C7Wrr0gztKQMdO5QBI/BN4NQext08YmudDuA0bM9DdcGvq8AqzQCxvMi6L6yNr+NCv+X2vwC
	Xnn5q7Y+CYV0Sw/yPV7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJlz-000000081Ly-2HWZ;
	Fri, 07 Aug 2026 12:34:03 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsJly-000000081Ll-2NZQ
	for linux-phy@lists.infradead.org;
	Fri, 07 Aug 2026 12:34:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1C75A40A5A;
	Fri,  7 Aug 2026 12:34:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A18B1F01558;
	Fri,  7 Aug 2026 12:33:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786106042;
	bh=CWUeE7zbWeo/eTSF+wA67IMWhRrqgAw1fJQs/s5GWyc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=l04coC6zp1E7HZzaRmx1VneHw6rDPa//nvL9FyFq+m29vsgFB04sAkuqMD/pm7jwf
	 bHOLZsRL68nnKa/Ayw0JZVYmAVmL+hp3rMyGLSc4tX/6VOFU72Mrf8AsxWoT1s5PCK
	 7IlztcXcf+rjnT8gTm92ouySFC7ExXL1XXKcPbJ9qrghogOPsun+/sOlOv0cr4U3pe
	 OlMafxlJUAxmSHnUaUtMuzE6RHwu6rhQMmzprqFw775pbg56eh/bSkkVGGjPD2BJg1
	 S03il/LDkWhkY23BvzmCWBY8wElLj4kgbeJSJTag1W0G54FKGnzwk9t2nVoaZcbu85
	 ehd1TSqF+otmg==
From: Vinod Koul <vkoul@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Wasim Nazir <wasim.nazir@oss.qualcomm.com>, 
 Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>, 
 Umang Chheda <umang.chheda@oss.qualcomm.com>, 
 Yijie Yang <quic_yijiyang@quicinc.com>, 
 Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v2 0/6] Fix regulator voting for the Qualcomm
 SGMII SerDes PHY
Message-Id: <178610603469.740291.829141301645845928.b4-ty@kernel.org>
Date: Fri, 07 Aug 2026 18:03:54 +0530
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


On Tue, 04 Aug 2026 00:57:56 +0530, Mohd Ayaan Anwar wrote:
> This is a long overdue v2 of the original patch series which tried to
> address a SerDes power-up failure observed on the QCS8300 Ride board
> using the phy-qcom-sgmii-eth driver. After going through a rabbit hole
> of hardware schematics and power data, I now have a fuller picture of
> this IP.
> 
> The Qualcomm SGMII SerDes PHY (used in Lemans and Monaco SoCs) is
> powered by two voltage rails. The schematics call them vdda-0p9 and
> vdda-1p2, so that's what we follow in the series. Additionally, the
> 0.9V regulator draws a peak current of 46 mA and the 1.2V regulator
> draws a peak current of 15 mA.
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add named voltage rails and deprecate phy-supply
      commit: 3719850f1b70dd3f01173be830cb0a1d2bc03a4e
[2/6] phy: qcom: sgmii-eth: vote for both voltage rails with correct current loads
      commit: 4f81684a1d1018d7d0e5579f08d95e7701279358

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
