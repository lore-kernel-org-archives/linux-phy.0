Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD3A2E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 15:25:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cdIEkWEW5KzU+QBfpli1dfeADS7BcHJ4zHNaxdjngAA=; b=3FrGunDxBx0GQ2
	5XjARU3x9XkOg3cQIBESoTK1PqlnOlOVJwqmhkz7qCaD/XCRCr+8BpZ8hfceTlq1KW3gBAuUFJBzf
	AkXXAPspuSKJAJv0jmishKt19iBcryJmvDQAVJkUDk3XT/NQbvXF/9N/3x9YGjsy3ttUtd03eDl1R
	NjIzJZkgCe8X0bittV0iDSwLCSTlH+mIiz16fZW7TUrjtZ5KVSDg3bz4ZiGUEfx3GWuG3kXPGvmi+
	B+y4K4OAt67RVFg779nvx7jH3SbrRlsaK0l6uk+IN39g4ifLCGlcg58X8da/mhgDAm5YTzFBKQzcA
	186PYiXSDr+vNCbn1GAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mk-0000000CD1R-1x59;
	Tue, 24 Dec 2024 15:25:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ6mi-0000000CD0r-3KhP
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 15:25:26 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 611585C5ED9;
	Tue, 24 Dec 2024 15:24:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F246AC4CED4;
	Tue, 24 Dec 2024 15:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735053923;
	bh=eAoc1WrWVjV6886T/Tb4CISeYk4DmpFuUmKCpQzlQ6s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JEaOpFsL1wq2v4cvnXvegIGm0PM34eOfw/YDSi2yWrk0aNBP2Y8s0EntWFoSZj9Dj
	 V+JC/J9HJjN0fC+rTLfw3SVgDu2Q1k3wchu1gDd8q7j21/HWrXYM6UKpJyZzFPVbW9
	 mXjByYfv25n/HapdFfeKoJIN1C+DY+Aqav4OjwegZbLbepN0K8zvoXpYRCImCD2W9M
	 ePGHnr/hOvB0y6horXswpen84P4yMmiTAs0jL4gDqWF9uIl3+HpTcEwd4e++LFAjil
	 S4bRlsnnvixB58Ur54EKoXlvJ/xI3D4x6kINnqRBGgTiSgyA/uK5oX8jGLoGWBX5Dh
	 KWJx04Ch1BFXA==
From: Vinod Koul <vkoul@kernel.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Johan Hovold <johan+linaro@kernel.org>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, 
 Varadarajan Narayanan <quic_varada@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, quic_ppratap@quicinc.com, 
 quic_jackp@quicinc.com
In-Reply-To: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on
 QCS615
Message-Id: <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
Date: Tue, 24 Dec 2024 20:55:18 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_072524_892246_CE1AE86D 
X-CRM114-Status: UNSURE (   7.72  )
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


On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> This series aims at enabling USB on QCS615 which has 2 USB controllers.
> The primary controller is SuperSpeed capable and secondary one is
> High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> 
> Link to v1:
> https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> 
> [...]

Applied, thanks!

[2/3] phy: qcom-qusb2: Add support for QCS615
      commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
