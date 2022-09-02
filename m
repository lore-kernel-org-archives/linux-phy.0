Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1063C54EE9
	for <linux-phy@archiver.kernel.org>; Fri,  2 Sep 2022 08:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XD/D+DJ8aOOgMg7DuDTovwmh+9G3JgHhxUuOqGgkHyQ=; b=oa6BtigC6CEYyk
	uBtXCA1K8CL2+7A+npqCL5UtDgtgp4MinYssTqVzjHaQExb9I4JfmDvE/yoKH1HBmteUD32zwuRVS
	PibbTi2WPSErr2ir3oJyFFp3b+uQjRXxVzgswYSFIMHpbSWiVH6ZzvMxmjRlLGDFDkI4z3rnEiW75
	Gw6rdAD0yNU6msEcA6YzW1hAkhDVEurerNzpxAau1rsdsa2tvkm6XQFO54SkuOW6yANtN0IVMEm8A
	bAOL+WIcDeeHwLp/rdA2Y/vgdMSApfgOUo4zNrrzrcJJHUmZSQnn08MvlSe9b4R4omBbKFErKHGzv
	IoYJNrPGdpABZ9Xd4pxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1it-001eCk-BX; Fri, 02 Sep 2022 08:08:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU1iq-001eA1-BM
	for linux-phy@lists.infradead.org; Fri, 02 Sep 2022 08:08:17 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 46FC362097;
	Fri,  2 Sep 2022 08:08:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E10CC433D7;
	Fri,  2 Sep 2022 08:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662106094;
	bh=NzHDhgY0zXBXtEi3T20cJPJB0uznOhoVmX/WodgpvMw=;
	h=From:To:Cc:Subject:Date:From;
	b=HD12sV+ZmWshRGuU92uYAtR4sxLCisrf1cxsMTNJMkD2713y6ltgEcfiW9xcWG+TE
	 NnvsA4jLZlHhoCXhXCi3TP6FGy4sZtjzLodEhsm8lFHZDnvdos+nFzmnVswE3IQrmi
	 Xgo1uQrqdQgeNVUhqTejCoxpbw1IG4Jxb6jWZ3paiF887Ne2JeUy7VM097mPR0rXkt
	 4/6Es2SuLkFj7x6ovjhmPVq5ClcuruZqT4rjAYXeuvYehOrGemZV/xgLieqsn9CGZw
	 WeHrOwwpXQ+BqNbCAPDsdhjTRyNsA8HJKzmem5siPn/YBcyetdLTfS+HWq4i9BbWGo
	 VN+NyF9L+m2qQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1oU1iq-000397-JV; Fri, 02 Sep 2022 10:08:16 +0200
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 0/2] dt-bindings: phy: qcom,qmp: add missing power-domains properties
Date: Fri,  2 Sep 2022 10:07:03 +0200
Message-Id: <20220902080705.12050-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_010816_465575_13E21059 
X-CRM114-Status: UNSURE (   7.98  )
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

The new SC8280XP USB PHYs require a power domain to be specified so
amend the bindings.

Johan


Johan Hovold (2):
  dt-bindings: phy: qcom,qmp-usb: add missing power-domains property
  dt-bindings: phy: qcom,qmp-usb3-dp: add missing power-domains property

 .../devicetree/bindings/phy/qcom,qmp-usb-phy.yaml  | 13 +++++++++++++
 .../bindings/phy/qcom,qmp-usb3-dp-phy.yaml         | 14 ++++++++++++++
 2 files changed, 27 insertions(+)

-- 
2.35.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
