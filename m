Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13DB6C3ABBE
	for <linux-phy@archiver.kernel.org>; Tue,  6 May 2025 22:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D4i/oyJJc5dUFlbUouAADRxCXaoHw9jQRgVSQufPMxM=; b=drg7fMfuj8e9KF
	fj/cvwTSWqLmPw7iovDeRmI77VwBjVtbpRN5yKm4phnOx7aUppHH3xpE3qR7zBbYaBJiCjdN9RXuW
	6QcvpDljp1co7BeG95uJMRCzrkWMSwGcXtZWJlsZB1nQ9HsoxNDCC2iAS8yAFWYciJsS6YsFIYjXb
	e7OfC69LR1I14m71TcxiJvOe37g7gB8VgIh/+GIdX3Pvc9/i07nZsvYwamJk1GVDJZD+PVA0KEbu5
	EX8gS+GMtwy0nERXH7/E5ZpEbeyYoXa96wKZlx31rh1FoAQ36lqT9YnLzvYl0Sv55F78bvldPMG10
	seSFcTFic8UTcDbkwRoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCQip-0000000DaAl-09gQ;
	Tue, 06 May 2025 22:25:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCLnT-0000000CnwM-1wc1
	for linux-phy@lists.infradead.org;
	Tue, 06 May 2025 17:09:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 98E206115D;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 4066BC4CEF0;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746551374;
	bh=FNA2gsRQTdJsloAcS3RRSgVH0l+51ZiDBDeK6njOiz8=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=bD8tec4A0etJw6u2v9BYQfdDu4z4+U8FKKfYI+sQQyoqCTwtGl5z91W4lkHQGojA5
	 VQI4JZTQyamjMzZyeRGfje0BkyBnHdLhEsf9xxIqSBBeUwFhd42sZLI/cENmB71L3q
	 zT7hBr7/SnEBJj8jcTU3BgOd/mzgBHI7JC3MrP0P0Sg5hWm9VrBH6AO9/l960amG2m
	 e/iGktH5Cki9ZlUUgqFkYlT9Upuq44FsjrYxP/WQMiQaFRbb/pd3cOTQ6zsOSC5Zol
	 SFrKnEDxjCKCs8oYAFHOWPOy/8m3VrdV5TYt4E92DHr8ymcbiwmLdoGIeroykSnuqr
	 9OX5kXOBB4GDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C584C3ABBE;
	Tue,  6 May 2025 17:09:34 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Subject: [PATCH v2 0/2] phy: tegra: xusb: Default otg mode to peripheral
Date: Tue, 06 May 2025 12:09:16 -0500
Message-Id: <20250506-xusb-peripheral-v2-0-bfbe00671389@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADxCGmgC/3WNyw7CIBBFf6WZtWMKpSpd+R+mC0Aok/RBQElN0
 38Xu3d5bnLO3SDZSDZBV20QbaZEy1yAnyowXs2DRXoWBl7ztha1wPWdNIYiBW+jGtGIVrNLc3V
 No6FYIVpH61F89IU9pdcSP8dBZr/1fyszZCilYTehpXatuw+TovFslgn6fd+/RSnzeq4AAAA=
X-Change-ID: 20250404-xusb-peripheral-c45b1637f33b
To: JC Kuo <jckuo@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1746551373; l=1076;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=FNA2gsRQTdJsloAcS3RRSgVH0l+51ZiDBDeK6njOiz8=;
 b=+Y2xZC3OosSjaAuY4rTFVw/J7gz3zpQ3FqXfBcXxUM2W6VcJmlJ40WuayQMLyyTmMC4TMJ8RA
 SWaNIMRmfzmDzYzt0EQkphgtJmhgwPVpVdguGVVDKbzt3j7q+lCQC2r
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
Changes in v2:
- Add new patch to document role-switch-default-mode in xusb padctl
- Simplify code change, per review
- Comment in code why device mode is default
- Link to v1: https://lore.kernel.org/r/20250404-xusb-peripheral-v1-1-99c184b9bf5f@gmail.com

---
Aaron Kling (2):
      dt-bindings: phy: tegra-xusb: Document role-switch-default-mode
      phy: tegra: xusb: Default otg mode to peripheral

 .../bindings/phy/nvidia,tegra124-xusb-padctl.yaml  | 33 ++++++++++++++++++++
 .../bindings/phy/nvidia,tegra186-xusb-padctl.yaml  | 27 ++++++++++++++++
 .../bindings/phy/nvidia,tegra194-xusb-padctl.yaml  | 36 ++++++++++++++++++++++
 .../bindings/phy/nvidia,tegra210-xusb-padctl.yaml  | 36 ++++++++++++++++++++++
 drivers/phy/tegra/xusb.c                           | 11 +++----
 5 files changed, 136 insertions(+), 7 deletions(-)
---
base-commit: 91e5bfe317d8f8471fbaa3e70cf66cae1314a516
change-id: 20250404-xusb-peripheral-c45b1637f33b

Best regards,
-- 
Aaron Kling <webgeek1234@gmail.com>



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
