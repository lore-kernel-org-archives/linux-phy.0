Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A6C8ECAAA1
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 13:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nB1n1bB3ZiFJ3jVZE+zGs/np1mcSUKA5QhwkXoSs5SU=; b=wLNb9jDu4ljfDH
	taTj/O1SDmhrBbhgm9cAcvaQeEKmCQeFaSuDeSnfwjsyVjj1/2IyGu+2zLo0kJAqOBhfD8ZJlW55I
	wrYmVpOzLgU4Yu782MHnxG9q0mUbAHn8gGE2jI+6UUI3OWQvD06NRv69fd/zZdEg0kxJ5nTCeg8i7
	UacAiii40imoXPbESKdh4DA0pDzXqF2EfN4UGyNrvstWItAj1A62zDTqvPn6SDtHCAxFwqs8xBwTg
	P3GC4WlUli10as6oh4/j3tdccDjC/zkH2HXgnbRt39ury/+3/wFUbBX9yy84irodZncLLve+dmF6N
	hhcPwcnGcO2s9VCVaGag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPfB-00HQWa-17; Fri, 28 Oct 2022 13:44:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooPf7-00HQTb-V7
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 13:44:43 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 56BDE62882;
	Fri, 28 Oct 2022 13:44:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7A44C433D7;
	Fri, 28 Oct 2022 13:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666964680;
	bh=MmnLFLEGV38Oa0D4suwaaBqgVsASkgXcREUF9ghKQhk=;
	h=From:To:Cc:Subject:Date:From;
	b=b6I83973NpTJu0pEVU8pqNx1VhMLIQm58a5y037R1gi6ZQML2VNeFgmNun+czg6IR
	 0b1FrM63M3lywgUVCQCI+YGlxW7Tweqi9Z2yDuKOgJZK52C9sc+Pd0pxGSbR+rJAQQ
	 GJaJjGQSADAzClmtyzst+lbRWEnpMqVibSabKGmRnRwvjNLHWnX8K9wUNYDme2awth
	 UUcSrDdop3JKdkP5owtVmB/OFCfbfU5uUfxUTNNsMi110/p7fndi+ikuOJgks8AesJ
	 8j51tHtlHbmjqeYOLu6t0LiFnJODy94qR7YUtNSvSGZftczut9D17SuK01/r7jIRVS
	 Fory2ai5fG7Gw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooPes-000520-0y; Fri, 28 Oct 2022 15:44:26 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH v2 00/13] phy: qcom-qmp-usb: fix sc8280xp binding
Date: Fri, 28 Oct 2022 15:43:54 +0200
Message-Id: <20221028134407.19300-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_064442_058258_6022B2E3 
X-CRM114-Status: GOOD (  13.74  )
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

This series fixes the USB PHY devicetree binding for SC8280XP and adds
support for the new updated binding to the driver.

The first half of the series clean up the driver in preparation for
supporting SC8280XP and its new binding that drops the legacy child node
and the (incomplete) description of register subregions.

The other QMP bindings suffer from similar problems and the PCIe and UFS
drivers are being fixed here:

        https://lore.kernel.org/lkml/20221021110947.28103-1-johan+linaro@kernel.org/
	https://lore.kernel.org/lkml/20221024090041.19574-1-johan+linaro@kernel.org/

and a follow-on series will do corresponding changes to the combo QMP
bindings and driver.

Note that these patches depend on the linux-phy next branch of today.

Johan


Changes in v2
 - add missing "3" to current bindings file name
   "qcom,msm8996-qmp-usb3-phy.yaml" to match compatible
 - add missing "-uni" infix to new bindings file name
   "qcom,sc8280xp-qmp-usb3-uni-phy.yaml" to match compatible (Krzysztof)


Johan Hovold (13):
  phy: qcom-qmp-usb: fix sc8280xp PCS_USB offset
  phy: qcom-qmp-usb: sort device-id table
  phy: qcom-qmp-usb: move device-id table
  phy: qcom-qmp-usb: move pm ops
  phy: qcom-qmp-usb: merge driver data
  phy: qcom-qmp-usb: clean up device-tree parsing
  phy: qcom-qmp-usb: clean up probe initialisation
  phy: qcom-qmp-usb: rename PHY ops structure
  phy: qcom-qmp-usb: clean up PHY init
  dt-bindings: phy: qcom,qmp-usb: rename current bindings
  dt-bindings: phy: qcom,qmp-usb: fix sc8280xp binding
  phy: qcom-qmp-usb: restructure PHY creation
  phy: qcom-qmp-usb: add support for updated sc8280xp binding

 ...hy.yaml => qcom,msm8996-qmp-usb3-phy.yaml} |  20 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 105 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 532 +++++++++---------
 3 files changed, 368 insertions(+), 289 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb-phy.yaml => qcom,msm8996-qmp-usb3-phy.yaml} (95%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml

-- 
2.37.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
