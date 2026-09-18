Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B62AC982D0
	for <linux-phy@archiver.kernel.org>; Fri, 18 Sep 2026 01:50:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XyVrXegv3r09S2To/mYFVXkiZNmwX59CNi9mlN52A3A=; b=1j5hwGfD1zy/Cx
	g1uaWyBn2l6P8JhZ/9UrxT+uSmtjPxdSQYSFnJswK7yA+3/FKw42UTC52D2kxgtXbwELwXnZPoYBm
	oJGUO7VtkZmuH4RJUaFzxF6rJuj2Le2PcS5l3Ymi80myLZukV1XIg4Rl4P198sfmazBUGyy5WsuJW
	3Sc+LIQ5CrVhW3jFWhfblhO1qSDwetrrCGThXXj4hTKBH88PfzRWDE+5zIcljbVg29LbaP1h5peey
	DDQNAqWzh4IPeYdKJzQaP0HQmBpONTzaE9otj4k0aGlGnmUW5dhnG+psWOdsged/vzbfF+dCkaQWQ
	oSevjI7vcq+qLLEGMCQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Njl-0000000DCwT-3ofL;
	Fri, 18 Sep 2026 01:50:01 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7Njk-0000000DCvt-0gKN
	for linux-phy@lists.infradead.org;
	Fri, 18 Sep 2026 01:50:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 86BDF42D52;
	Fri, 18 Sep 2026 01:49:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 119EE1F0089C;
	Fri, 18 Sep 2026 01:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789696199;
	bh=IwTMpGPl6hX5qtbuIoB+Tp1nOI7fnUx8936+g94Tn40=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=KcBXDfFSLMXG2uKAY3a6rjWxYn5FQLYat9OiHfPulX5hgVojVh5fPKykfxWg9Uodr
	 I+H27+D+RKc+1ArAXQo+ujPY3h5l1Bil8HtHcTCyBwPB7azjZAZQ0KWPCFV07Bn+Ux
	 W2Sm2XcewVYQRem3Bl028k/1wIhI70bILjPssoxWiU78dUtoilYupe/NhhMOF4hU6J
	 6C56paIjB38B8+nPINdIF6k0+uHGuB9AEOku4sJ84K0SYMFsYwH8lDkPz63W9ocprm
	 9yl9Np0Cnk3kLsyKmhwHFRlGezEJdlHu4bYIOr0BzyfF99WbCCo7dGzELlyzwQ6qdO
	 Da+8AtwDd9dKQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	usb4-upstream@oss.qualcomm.com,
	Raghavendra Thoorpu <rthoorpu@qti.qualcomm.com>,
	Mika Westerberg <westeri@kernel.org>,
	Sven Peter <sven@kernel.org>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Abel Vesa <abel.vesa@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/5] USB4 mode programming for QMMPHY on X1E
Date: Thu, 17 Sep 2026 20:49:48 -0500
Message-ID: <178969618813.1582337.148852121014416119.b4-ty@kernel.org>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
References: <20260908-topic-usb4phy-v5-0-73aac69578ef@oss.qualcomm.com>
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


On Tue, 08 Sep 2026 09:54:04 +0200, Konrad Dybcio wrote:
> The USB43DP QMP PHY, as the name suggests, supports USB4 in addition to
> DP/USB. This series provides the necessary plumbing to switch to that
> mode of operation on hamoa/purwa.
> 
> This is achieved by exposing a third `struct phy *` for the USB4 sub-
> PHY, which will be toggled by the USB4 router driver, living within the
> Thunderbolt framework, which will be posted separately.
> 
> [...]

Applied, thanks!

[5/5] arm64: dts: qcom: hamoa: Extend QMPPHY description for USB4
      commit: 1360126eeb38872b68f5b89d793bd28e328224fd

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
