Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82E86C433FE
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 09:26:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qoaqjbYEbmTBWe6gFqyvlbGn2dYum+kL2wuWxWrySHM=; b=hMI1gOK1Rtx89Y
	su3vWcMFsQ4ThIpRb+af6vdMRwIIOd01aFHNqy6892zSJ8lbupefs6lMArBPN56cEuryFTZCZapsr
	rwSs+Wnhd76VZrZkIIChnxSNzekTdQKcpL8d1ygVgLgdUnZ+nJlPtmgAP/sCa/ZjhkujAGsn3xTwt
	mXi2lBPMJ1EFHwsI6Rn/sVd4+VLLrK2KwZr81DPei9ZgjXBNMJJ/om5Wef+qq0fXTs9bdtz773XUU
	YIq0FrIfkgK4h+hbsuW7HAuSGslvmJvSIVIMKtYhs20jujxijo78wyaAKeblOYvoq9GvnyUpMhsnT
	HU8UHH3NWhmfhXK16A4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIe-00EaJp-5B; Fri, 11 Nov 2022 09:26:13 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otQIY-00EaGB-3T
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 09:26:10 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5FEB661EF6;
	Fri, 11 Nov 2022 09:26:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAA72C433B5;
	Fri, 11 Nov 2022 09:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668158764;
	bh=WEY2NyK7kGYSFZQ1MVYoHe3uZ9puPVnYkW8PQVcfqcw=;
	h=From:To:Cc:Subject:Date:From;
	b=VY1jZEd7SGw28EB7kPDbF3wRCNldktRQayjUTL47oIR4d3Xod0RdEaAqy56N8MwaT
	 lVXsHZFNlvslLGu4qNFn3Cy9e4X7z3SZpnlgenVHycnyJ4A4A7r1M2nxDo84SeinMk
	 DcmUb4Ftyf8kk3O8cVWcMqpX6xJJE9amaZErjraZtX1gKk2FEVlTy8jxiVVMkjE67A
	 PiU8qgesJaIxxK9jIcOpqF3tDNaU9XMcvtG0/2NNaLO7lICrAdDt397UuIuZaWmuK7
	 6fIYwBbxSbqf1mp4pX3Joe3SC5N9bBhtKC1lX0Z3zoCiifo36ATH+VymDJzJC5qi2D
	 cDGV+oEYU7w2w==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otQI3-0002kn-Oy; Fri, 11 Nov 2022 10:25:36 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/14] phy: qcom-qmp-combo: fix sc8280xp binding (set 3/3)
Date: Fri, 11 Nov 2022 10:24:43 +0100
Message-Id: <20221111092457.10546-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_012606_241707_929A2FDD 
X-CRM114-Status: GOOD (  15.14  )
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

This series fixes the USB-DP PHY devicetree binding for SC8280XP and
adds support for the new updated binding to the driver.

As the full series including the preparatory parts is over forty patches
and I've been posting this in three parts of which this is the last one.
In an effort to get all of these into 6.2, I've also submitted all three
series before waiting for the previous ones to be applied. Parts one and
two can be found here:

	https://lore.kernel.org/lkml/20221111084255.8963-1-johan+linaro@kernel.org/
	https://lore.kernel.org/lkml/20221111085643.9478-1-johan+linaro@kernel.org/

This last series adds a new binding for SC8280XP that drops the legacy
child node and the (incomplete) description of register subregions.

As the current bindings are both incomplete and incorrect it may be
a good idea to update also the other platforms currently supported by
this driver to the new binding scheme. The driver can support both
schemes during a transitions period before removing the corresponding
code (dt parsing and clock-provider registration).

Johan


Johan Hovold (14):
  dt-bindings: phy: qcom,qmp-usb3-dp: rename current bindings
  dt-bindings: phy: qcom,qmp-usb3-dp: fix sc8280xp bindings
  phy: qcom-qmp-combo: drop v4 reference-clock source
  phy: qcom-qmp-combo: restructure PHY creation
  phy: qcom-qmp-combo: register clocks sooner
  phy: qcom-qmp-combo: generate pipe clock name
  phy: qcom-qmp-combo: drop redundant clock structure
  phy: qcom-qmp-combo: drop redundant clock allocation
  phy: qcom-qmp-combo: add clock registration helper
  phy: qcom-qmp-combo: separate clock and provider registration
  phy: qcom-qmp-combo: clean up DP clock callbacks
  phy: qcom-qmp-combo: rename common-register pointers
  phy: qcom-qmp-combo: rename DP_PHY register pointer
  phy: qcom-qmp-combo: add support for updated sc8280xp binding

 ....yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} |  23 +-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    | 111 ++++
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 532 +++++++++++-------
 3 files changed, 441 insertions(+), 225 deletions(-)
 rename Documentation/devicetree/bindings/phy/{qcom,qmp-usb3-dp-phy.yaml => qcom,sc7180-qmp-usb3-dp-phy.yaml} (92%)
 create mode 100644 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
