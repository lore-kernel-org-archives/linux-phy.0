Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9863C43217
	for <linux-phy@archiver.kernel.org>; Fri, 11 Nov 2022 08:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ljhgWZLpWWbOm4mfyK2uMtT9x0qnoykRh3KL7G4i4wM=; b=bHhx9QnGusdMjy
	fKsw8mf4OGwY/cVicZwgFOyfPA4uVBXDaVZnPIG6ZtdcpWUlPuunaSgWxTDk3kscTbO/q+A/4Hnqb
	IlKqD+JivsF629flufGjwI6QWA0XyCN7ubcpJxNZeqWKHdLsxPE1qqUb3TrpWmWMPzMQ4pIHXE4Ww
	Yf+twYwk4xsXbOixUyTQU+O9mfTF3bn9QdCVCQR/e6zaS9ncBLH8L2Lsl5Jf+dzIBvWc/1iU0Q2pa
	/K25Iwa3Hi+XmEDaFSK4NGtbwvLx2ey/r64Phhrsl+df2HjZp8cGAUrExJd3sUwURv1XEx085o7Pz
	3gObf+51oRGHoW20z0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPr2-00EPlo-GW; Fri, 11 Nov 2022 08:57:40 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otPqo-00EPUF-84
	for linux-phy@lists.infradead.org; Fri, 11 Nov 2022 08:57:29 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id A3C48B82478;
	Fri, 11 Nov 2022 08:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA6F1C43143;
	Fri, 11 Nov 2022 08:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668157042;
	bh=6lx4EuPQGDBHFiojMWKakUIRIo8dAD0np6BpOOEOAUI=;
	h=From:To:Cc:Subject:Date:From;
	b=qKzF3q0UwDaurz6612AAcMaD3CizUEFgCMp2/9GG4FugPV/lByzLqOt7sUEO4aZs5
	 hNrnNFcnk9GAtwzw9Fo5AxxL5dpXfIXDU2/B5hTo+mevirP1ASf2CvupQyfRrqbpvb
	 Aue7vgnHK1bOAlPB0NzNDFDzuZ+ABqngF3lWJ748Ekm4Hx6413/Gu70SH9CoXdJ6jc
	 ajMgwNNy6fqIPQ/3xvdh+sHJ1hBxejlATMantBS+sRnLxJDm/7zUX0kOP9Nroz6GXO
	 zegoqQQk28UJ0Bvo39kLqh/irUqeUcEzE6ynbD6aSlewU6x9ak58XmHnrVSKpx4dfy
	 HR3JSEcM2egoQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1otPqI-0002Tn-56; Fri, 11 Nov 2022 09:56:54 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>
Subject: [PATCH 00/22] phy: qcom-qmp-combo: preparatory cleanups (set 2/3)
Date: Fri, 11 Nov 2022 09:56:21 +0100
Message-Id: <20221111085643.9478-1-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221111_005726_467354_5DA6392A 
X-CRM114-Status: UNSURE (   9.12  )
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

Here's a set of preparatory cleanups needed to fix the devicetree
binding and add (proper) support for SC8280XP to the combo driver but
that are otherwise self-contained.

The full series is over forty patches and I'll be posting these in three
parts of which this is the second. In an effort to get all of these into
6.2, I'll also be submitting all three series before waiting for the
previous ones to be applied.

This series specifically separates the USB and DP PHY ops
implementations, and merges the USB and DP driver data and
configurations.

Johan


Johan Hovold (22):
  phy: qcom-qmp-combo: sort device-id table
  phy: qcom-qmp-combo: move device-id table
  phy: qcom-qmp-combo: move pm ops
  phy: qcom-qmp-combo: rename PHY ops structures
  phy: qcom-qmp-combo: drop unused DP PHY mode op
  phy: qcom-qmp-combo: rename USB PHY ops
  phy: qcom-qmp-combo: drop unnecessary debug message
  phy: qcom-qmp-combo: separate USB and DP init ops
  phy: qcom-qmp-combo: rename DP PHY ops
  phy: qcom-qmp-combo: separate USB and DP power-on ops
  phy: qcom-qmp-combo: clean up serdes initialisation
  phy: qcom-qmp-combo: separate USB and DP devicetree parsing
  phy: qcom-qmp-combo: add dedicated DP iomem pointers
  phy: qcom-qmp-combo: clean up DP configurations
  phy: qcom-qmp-combo: rename sc8280xp config
  phy: qcom-qmp-combo: add DP configuration tables
  phy: qcom-qmp-combo: merge USB and DP configurations
  phy: qcom-qmp-combo: merge driver data
  phy: qcom-qmp-combo: clean up device-tree parsing
  phy: qcom-qmp-combo: clean up probe initialisation
  phy: qcom-qmp-combo: clean up PHY init
  phy: qcom-qmp-combo: clean up DP callback names

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 1328 ++++++++++-----------
 1 file changed, 611 insertions(+), 717 deletions(-)

-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
