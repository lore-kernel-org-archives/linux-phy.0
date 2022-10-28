Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E002C38A02
	for <linux-phy@archiver.kernel.org>; Fri, 28 Oct 2022 16:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cDs4fniCbNzHEFe6RHvvcJ3ppAuc2LD3ao2x6mqq9/M=; b=O7d/lVbYXRRvmf
	0UTNoFh/Fw8h4sLOoMYhCzURdAXKy8IVnIvBDeJAntlo2IRakeuNYt0LHjdepzh15gjyqcwHlhrs8
	illkPhzJ+F+Rq2YA3VykCOECDWJjtbOB48sB/o4chWfwgrnZmRUnrJdTwYnhMpLyMJLrOf4R3+FGj
	jQmG2JrHynFAYS4YUjA2qRnsn1Z3xDSbUhl00Tr2Lxhf8RA3cwt0yOq57OmPWjXSEgU7hcM9EOB31
	991io0rRYXNEi4zRarzeMXHNujZicv2CrQQ5OKzkhfAKPB5XV8EnvC7+oRxscJA8/PtyrTZsUpdIq
	J+o6tTLW5kNmRVtEDEGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRrA-000lf0-6J; Fri, 28 Oct 2022 16:05:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooRr5-000laC-V4
	for linux-phy@lists.infradead.org; Fri, 28 Oct 2022 16:05:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 37A7062957;
	Fri, 28 Oct 2022 16:05:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 975E1C4347C;
	Fri, 28 Oct 2022 16:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666973109;
	bh=zMsqR4NCaF15rnmf8tGTZpGv/GOwk0U5elPPfgDilzc=;
	h=From:To:Cc:Subject:Date:From;
	b=RA510jvmZ8L122s0NFLJGM8/PHg6Vnxygzvi59838JAxosslWRpcpLX0dr/0A21oR
	 Ih5qsaUR5TBTSXglSgeTw0CFZjarBRkxP4AByZEsouyaepzqamqbcFgoUlRDbIJZK3
	 l18qB7+tQcY9nwUu/Id+UXlx/RiSYrPlkFKgiEdEMkh5P1mCQusIY23Yj/EzHsfhEN
	 6x22dJOpDlEzAESmlvxaVaTOXCyepRJ82L6qYGKvOMVzxneTJOwM7U0+AWJp1TOgDJ
	 nqp1My8ZVgkNF7TfUD4qNlzkQDPz6IZJRStj+m7OF9WQ70SW6uKih2vpFaHtm+D8ls
	 76qNnUDzgoS0A==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ooRqp-00071S-Kp; Fri, 28 Oct 2022 18:04:55 +0200
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
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH RESEND v2 00/13] phy: qcom-qmp-usb: fix sc8280xp binding
Date: Fri, 28 Oct 2022 18:04:22 +0200
Message-Id: <20221028160435.26948-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_090512_059751_2682B30E 
X-CRM114-Status: GOOD (  14.00  )
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

[ Resending with devicetree list on CC ]

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
