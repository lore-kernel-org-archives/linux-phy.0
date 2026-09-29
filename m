Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A405CA5FA1
	for <linux-phy@archiver.kernel.org>; Tue, 29 Sep 2026 03:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ih/7wxun5TDpqoE0GvxSNAE3qI4bR7+M0AET0jhU3u4=; b=smYdHoo5AiMTQf
	WCWEZJHRFPRCYWuamtfX8QvRV2WYcwa6mjUnxbTKYulTT0k1B14RZPmtiiLfoAKArqisp278nqzUy
	yKAaGAvHY999rNHDD5YAl3HDVMK1LRSZCIK7h5dezapyO8bri5zIKZnWyAP0rkZPVZ3/sKBtvh5U4
	jftuwRVDAI6EcvV1RR/NGKEcpX5qB+6+eZDmxcsH2z9rDIcdUpb9wwGXHQ0EYxqmQitjvuW7xaUYh
	D3xWIBoqRUs3Pa5f8Jw0BJy1aZMxVZ8Lu1KSs9ojVDM8tB23SL4ptBOfxg3Q1RaVt03He+O6pwy0S
	eGu3HDgUW+syKL1Mgs1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBOKN-00000002BmI-2fMQ;
	Tue, 29 Sep 2026 03:16:23 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBOKL-00000002BlZ-2fxX
	for linux-phy@lists.infradead.org;
	Tue, 29 Sep 2026 03:16:21 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1710B60136;
	Tue, 29 Sep 2026 03:16:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E6681F00893;
	Tue, 29 Sep 2026 03:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790651780;
	bh=Bs6ATfsBCrf3p90aWKR9HsITJdWOgHW1hvwEyCOXOcg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=LxR/+LNMidOYwTotQglBPeoZsoWwW6HNZ6dTj1eOKlWt3F4xgIEQ+V6r08xaAwSRj
	 UoTneGJvFDLpJwGiGRGAgNrYQCAbo/MgeHLQtJLBEWwCJnaRtczNREVxT1MVBs32in
	 JnrX98cNTCxUQTogsf2rW0tPeQO7KIz8cMV8YmTdmE8qKDSXn/6C0gxdZd+9kwqgjP
	 DyGZU8ytoakaH5IsuYbEeOwyr6csl0h9iwcjsegfoFowch7HJI5fMkojgb4swb6tll
	 80D2Yhv3lqRgnJin+Q4ioAAM30GBj6tFPSb4Fd10aue4uJwZpVclOstmfS+3dHTxXD
	 4upOcbeaZTi7g==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Wasim Nazir <wasim.nazir@oss.qualcomm.com>,
	Mohd Ayaan Anwar <quic_mohdayaa@quicinc.com>,
	Umang Chheda <umang.chheda@oss.qualcomm.com>,
	Yijie Yang <quic_yijiyang@quicinc.com>,
	Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 0/6] Fix regulator voting for the Qualcomm SGMII SerDes PHY
Date: Mon, 28 Sep 2026 22:15:11 -0500
Message-ID: <179065170929.2673486.4107059427681942662.b4-ty@b4>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
References: <20260804-b4-sgmiieth_serdes_regulator-v2-0-c4bc688177dd@oss.qualcomm.com>
MIME-Version: 1.0
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

[3/6] arm64: dts: qcom: lemans-evk: fix SerDes PHY regulator supplies
      commit: 457cf65a7997e398d8d6cef08601b4ea61b58e38
[4/6] arm64: dts: qcom: lemans-ride-common: fix SerDes PHY regulator supplies
      commit: 0d567fb7def9564d15c334ec0fa5f5f6a0114ffa
[5/6] arm64: dts: qcom: monaco-evk: fix SerDes PHY regulator supplies
      commit: de7bc562fc363421902db7bdda8e347cc78a5173
[6/6] arm64: dts: qcom: qcs8300-ride: fix SerDes PHY regulator supplies
      commit: e55080f068f3f6b733235fd7618c12e61744244b

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
