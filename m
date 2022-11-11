Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52FC6C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:40:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JwACDSckO7HQrOMrSabpRzXxsQQevq3XbcfkDlJG3i4=; b=44l49l4DW6g/lF
	XMQfvOE35N5WT3n75plYMcR4UFRtRDdy2ZqUcv/4X4Tra6D0n3RIcuSwHHF2801XVXjmXqqlPH9D/
	hrP1toqoK44NdAlz4QYldM5w2bAihWWmjQFJm/Y33B6M31jxVSwHdh/z5GZSd3ChEaQkPNV1sLUDj
	/+c8Uu5bRBbKVZN/mL8IgO94qooOmHwoHZGOdfZ0mnN6coMxs/m31hgDCbV2JRn9trb61vupPxkAT
	x2ScCk1gTDmEGAP92z56kkcE38KSt7D2qZTy/mbJSw/PO7VR37ZXTr3zRQB5TtDahLQcAAiuvvBlq
	//pyE3QrKZkNfcC+cqEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWH-00EeQq-KL; Fri, 11 Nov 2022 09:40:17 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQWE-00EeOy-Gq
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:40:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32CA2B824B8;
	Fri, 11 Nov 2022 09:40:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482D8C433C1;
	Fri, 11 Nov 2022 09:40:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668159611;
	bh=oyTBZ13gV8eABN+USBSLXLHgr9cRq7vSHs8d2NKvDGQ=;
	h=From:To:Cc:Subject:Date:From;
	b=bZp7H0gZzw5hdzr3QZX3lql2VyV6mhRI2h5Bm1xk6oYrjL0DU/JUUzA5AyHW1FZ9K
	 +Lzg9yDF0QfHwu/6uO/ZUdJOeDQRaTq/4+bTY5OwQsxwkOZ4s3NP07iCyZTC/VE20X
	 zS0cQQmpiScFpC8tbKwKVHyuby5a63jDjRlQSpf1jqHIO72dyKCi0oMVHK/sPb8aFQ
	 WSWWifHgu+A4VhKZZwZPx/6dTajKlMwK6yFnTMxMXFXNKwSifTnq2Mnm9Kv/5SNVRb
	 fGOomulrS7lsM5TwxHfnlpF5QrqbF03Ouw1lFmukygUJDVSHGevD9J2+OEbEYHXIzh
	 HAwm4bPKPO5dQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQVi-0002xf-E9; Fri, 11 Nov 2022 10:39:43 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/3] phy: qcom-qmp-usb: drop sc8280xp reference-clock source
Date: Fri, 11 Nov 2022 10:38:54 +0100
Message-Id: <20221111093857.11360-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_014014_758785_E5335F23 
X-CRM114-Status: UNSURE (   8.14  )
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

The source clock for the reference clock is not used by the PHY directly
and should not have been included in the devicetree binding.

As the new SC8280XP binding has been merged for 6.2, we should get this
fixed as soon as possible.

Johan


Johan Hovold (3):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: drop reference-clock
    source
  phy: qcom-qmp-usb: drop sc8280xp reference-clock source
  arm64: dts: qcom: sc8280xp: drop reference-clock source

 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |  7 ++-----
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |  8 ++------
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 20 +++++++++++--------
 3 files changed, 16 insertions(+), 19 deletions(-)

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
