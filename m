Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 797AAC35FF3
	for <linux-phy@archiver.kernel.org>; Wed, 19 Mar 2025 03:23:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=C2DRjmtExrAXOWquKZ5JG/JcvVQ0fF7VPtsduldNBXk=; b=ofbfDif0UIJFHj
	V7XuMnHh+o918aTANyxqRYc3jS1bVa0+PO0qoErEP4x+7zVRKHDVgnfIu1BsZONGvaIj8owq9vKX1
	hJN0W6xUGnZ6fOMphHh9VwdaCXS3W5c4kHlmIo0IQJBddqe5Wkeivf5brv7wzeVMYFZldfz9iNQvW
	9W3kxSM52f8T9yP3RRfr4QSceddusHiy7ISVf1IWPF6iDqPWQmDEDcMVzFHhk5AW/CqSRyI+/ZQTO
	sk3qrXhE9h+x7Gpq2HpBqbMJiw3Xt11d4Y0zIX/bWVodoMIaVF8iCqmpZLJwYpPQUZVp9jp4MLDFZ
	PFoU6gfT/qmfSoYSiRqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1F-00000007syr-0DEv;
	Wed, 19 Mar 2025 03:23:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuk1C-00000007sxT-0icD
	for linux-phy@lists.infradead.org;
	Wed, 19 Mar 2025 03:22:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1C26E5C59EA;
	Wed, 19 Mar 2025 03:20:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA10BC4CEDD;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742354576;
	bh=OIzJIfkOFGoCE9pBG/Lr5IOf9VKdk7vbd7YcXAXXAEo=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=SNu/RMkYh2+8GNgZvWtiZZlQBpWr3PEuwWMvJuWkLyrHEDD9sSnxga8hgCx98jOMz
	 JFHWnrMnFhFq25VZU2yOq+IpBdWh53nFPO5WHFZHdEcPCfBxdQ1JEL6bcG3NPjS0cx
	 Eo04JjCACoH7t2kcvqxUwFxC587xys1yd50suGCPVaW/Eh82ejVa04ZB6XqARtfsEv
	 iX4uipBIIVzPAtIULs4YMIQx3R1vEBPicwCj3NyVIvnMi63Gzl4OO+FnfpnTZiXkCm
	 oIgDH2k9D3vwog+YZjtn5Em3q2SwVW9TFNFd5CaBl/a6ZPOOYKAb51uSlOpDkDifGy
	 BJ/CFuXLiIMew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD7C35FFB;
	Wed, 19 Mar 2025 03:22:56 +0000 (UTC)
From: Bjorn Andersson via B4 Relay <devnull+bjorn.andersson.oss.qualcomm.com@kernel.org>
Subject: [PATCH 0/2] arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable
 fingerprint sensor
Date: Tue, 18 Mar 2025 22:22:55 -0500
Message-Id: <20250318-xps13-fingerprint-v1-0-fbb02d5a34a7@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAI842mcC/x2MywqAIBAAfyX2nJBr0eNXooPZWnsxWSOE6N+Tj
 sMw80AiYUowVQ8I3Zz4DAV0XYE7bNhJ8VYYsMGuMXpQOSZtlOeiJAqHS9ner4T9iA5bKF0U8pz
 /57y87wdfDSP4YwAAAA==
X-Change-ID: 20250318-xps13-fingerprint-a7fbe2792c24
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742354576; l=770;
 i=bjorn.andersson@oss.qualcomm.com; s=20250318; h=from:subject:message-id;
 bh=OIzJIfkOFGoCE9pBG/Lr5IOf9VKdk7vbd7YcXAXXAEo=;
 b=xPdarBZ6Wboru3bGIBrX//UgIq+TafbLcKFRcVMI2nbSEI5CvAFcun9STrbiGIKfJIMr0AlgF
 8qRciq7cCFgBd/GMkcO9od9WJ6yd77Y9k8jHNNoIYd04EkVb84UcJFE
X-Developer-Key: i=bjorn.andersson@oss.qualcomm.com; a=ed25519;
 pk=rD3O9C9Erg+mUPBRBNw91AGaIaDVqquHZbnn6N6xh6s=
X-Endpoint-Received: by B4 Relay for
 bjorn.andersson@oss.qualcomm.com/20250318 with auth_id=362
X-Original-From: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_202258_271459_80C73A93 
X-CRM114-Status: UNSURE (   5.95  )
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
Reply-To: bjorn.andersson@oss.qualcomm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Make the repeater optional in the SNSP eUSB2 PHY driver and describe the
involved components for enabling the fingerprint reader in the Dell
XPS13.

Signed-off-by: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
---
Bjorn Andersson (2):
      phy: qcom: phy-qcom-snps-eusb2: Make repeater optional
      arm64: dts: qcom: x1e80100-dell-xps13-9345: Enable fingerprint sensor

 .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 59 +++++++++++++++++++++-
 drivers/phy/qualcomm/phy-qcom-snps-eusb2.c         | 10 ++--
 2 files changed, 64 insertions(+), 5 deletions(-)
---
base-commit: c4d4884b67802c41fd67399747165d65c770621a
change-id: 20250318-xps13-fingerprint-a7fbe2792c24

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
