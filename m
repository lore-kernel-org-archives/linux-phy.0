Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D87A9C3ABD9
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 12:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9IHpb9AGg2qcAfECRhG3A9k2qAI5rxN8lwx6og7hZw=; b=4CYi1qmBCIP2p6
	VDVTg+fbhdsJntneK6keHvBeANVXAMQmKho1htbIQHSX3I6fy/ZjVBSrczFHgjpSWL9uMTTtBHwVR
	ZiccuB1YCM/QcKzyo4usyxFgS6lTAcvApXR04j6iqEiskiMH6AMI3aBowWUOO+A1YUBZoWNX6zdo6
	lSkBlXPPPhPOYav2VHh1gH/fuA4k0nThfbr4F8VMAJe61Uzd/vrKbYHGj5mtArvMCTvu1+Exh77QF
	2KqcHTo/jqDz56zqyZz4yJmfiBqZJol947JoIsgKkYddCBF1e5MV8pIh55vMj1OztOHcrC8jXLg57
	eW2Q/afX5SmlW85rdaTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFB6O-0000000F4k4-23dz;
	Wed, 14 May 2025 12:20:48 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFAQX-0000000EuTT-2uDn
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 11:37:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 2641F61360;
	Wed, 14 May 2025 11:37:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B2A0AC4CEE9;
	Wed, 14 May 2025 11:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747222652;
	bh=tuM+4GBuky8rvhpUbkvytG6IgttQsqZkqThC8BUjoFk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=BwZWjW0DB2YWPwZbHRAz9qbLC8lObChDm6LbaejDE0itMn1QhvkDMt4XHNbR+rEcP
	 nwvw7o6snaVjPfjHJ74rDBW4S6TpJXnLcsgxxqoNiUsS3Y0HEj0fpBkP3wx1Isbzd4
	 82o2NkoN/QbQWBJXGBN7Rtud9EXnCZnTchRde8sSLpaTPqfduuHdiI8fXDcCUy2qaS
	 wW9TesQpo4auwYqMLvDHLWDwlOauFAajBUebYIym1VWG/WKVxYJ/QNpEBBhMgqNXGd
	 6if/rga1fg+64h0icT0d2Yb1rPfx5anEsyxjytAg0leihSu48jW+y482FDzkrka98S
	 sVi8D8+NJZgew==
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, Qiang Yu <quic_qianyu@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250429075440.19901-1-johan+linaro@kernel.org>
References: <20250429075440.19901-1-johan+linaro@kernel.org>
Subject: Re: [PATCH] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
Message-Id: <174722265039.85510.16073616165341473080.b4-ty@kernel.org>
Date: Wed, 14 May 2025 12:37:30 +0100
MIME-Version: 1.0
X-Mailer: b4 0.14.2
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


On Tue, 29 Apr 2025 09:54:40 +0200, Johan Hovold wrote:
> The PCIe PHYs on x1e80100 do not a have a qref supply so stop requesting
> one. This also avoids the follow warning at boot:
> 
> 	qcom-qmp-pcie-phy 1be0000.phy: supply vdda-qref not found, using dummy regulator
> 
> 

Applied, thanks!

[1/1] phy: qcom: qmp-pcie: drop bogus x1e80100 qref supply
      commit: eb7a22f830f68997d76e660a02143c2bc72e7fb7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
