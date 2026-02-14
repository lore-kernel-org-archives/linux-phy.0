Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E71BEF48C5
	for <linux-phy@archiver.kernel.org>; Sat, 14 Feb 2026 12:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jj0sgSYSCLPFbEWBIw+6Szx+bpDHea+2rExKjinpQt4=; b=K+L9Q2/fGQwhnk
	TTaNjJKyU2R6C29mIeWLp+hstULB7fz4IDwMPms98QbJI2sJBewvcHVBYemL3wNbS6rIHGew1Vuzn
	DQNn5bfHEm576jK0Xe3+EWpPIWFg0RlG9h3JWNd7TniIKBS9qSsujUy/K3DexqhM+WFLLrmwhf0wI
	FhlIp/XkcgMSOPLerLVK7NNEGr4uJMyLNfIylThb4UVPRzCeC90gVNzplv3TX2n2PsPCTtBPNVQg4
	ce7ov9lIhfu2qbz8fkubWW93xNYfFLi+TJpY1Ux5ldpAZ4s5mSn9QlN+WGKXKJ9I2drjqfHpJ3K2C
	EjO6Zg84oeODFVXICZsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrEmN-00000004WxZ-0Aca;
	Sat, 14 Feb 2026 12:29:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrEmJ-00000004Wx5-3STa;
	Sat, 14 Feb 2026 12:29:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1A92043515;
	Sat, 14 Feb 2026 12:29:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 477C6C16AAE;
	Sat, 14 Feb 2026 12:29:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771072178;
	bh=FPSzeY4L8d2CCnRHcA+rC6sVrZLrbhPdn9q99p00ok0=;
	h=From:Subject:Date:To:Cc:From;
	b=Op5T2vb3Fvx8dW7A492rp3/OcjjOFfkLhFv6uX9Li5iLTWP4q2Y1xiQBY4qcWeYIR
	 x+0gxI+DiclmDKSsMiPNFXxA7EaIvRjxO9ZL98LXTq4VeGM1luWaOikXUJZg5R1fPh
	 gTdKodC7VJhZyEQ+dCNjSFFhbHza6+atcECR/6bWeLPOExwGOPO2pn5bIuPYpQeHCd
	 GvNAC0UnRCNMXXxpG5F56Hr45z8QrKtiaN1ZdsgzY3+waWT31Rdcxd+t6kln0+a0ZJ
	 GljaoiV1wR/cvYsbkV66GtKZoUQdb59vCW292l4Yih/2q+r+6YIHvOtnr+TNobU0WV
	 Ufyaa6HZvOv9g==
From: Yixun Lan <dlan@kernel.org>
Subject: [PATCH v2 0/3] phy: spacemit: Add USB2 PHY support for K3 SoC
Date: Sat, 14 Feb 2026 20:29:13 +0800
Message-Id: <20260214-11-k3-usb2-phy-v2-0-6ed31e031ab4@kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAJlqkGkC/13MQQ6CMBCF4auQWTumMxQUV97DsLAwQIMB0mojI
 b27FXcu/5e8bwMvzoqHS7aBk2C9nacUfMigGe5TL2jb1MCKS0WskQjHHF/eMC7Dio0uc2WqShn
 qIJ0WJ5197+CtTj1Y/5zduvuBvuuPYuJ/KhAq1HlxOhcVa1W011HcJI/j7HqoY4wfnN8moa0AA
 AA=
X-Change-ID: 20260124-11-k3-usb2-phy-c4630b990b1f
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Ze Huang <huang.ze@linux.dev>
Cc: Junzhong Pan <panjunzhong@linux.spacemit.com>, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, Yixun Lan <dlan@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1021; i=dlan@kernel.org;
 h=from:subject:message-id; bh=FPSzeY4L8d2CCnRHcA+rC6sVrZLrbhPdn9q99p00ok0=;
 b=owEB6QIW/ZANAwAKATGq6kdZTbvtAcsmYgBpkGqhv+68CuVQu0sNLX7qFVvE4UzfaxiA3N7Ib
 rc/KZWB4imJAq8EAAEKAJkWIQS1urjJwxtxFWcCI9wxqupHWU277QUCaZBqoRsUgAAAAAAEAA5t
 YW51MiwyLjUrMS4xMSwyLDJfFIAAAAAALgAoaXNzdWVyLWZwckBub3RhdGlvbnMub3BlbnBncC5
 maWZ0aGhvcnNlbWFuLm5ldEI1QkFCOEM5QzMxQjcxMTU2NzAyMjNEQzMxQUFFQTQ3NTk0REJCRU
 QACgkQMarqR1lNu+1isxAAhK4p6SCbFpn2lkAnY8/iGriAjK2qY5eQLdciI9Id1Wgx8nh1+bSJ/
 C4In+v9trr4v7i7spKxTzvXsMDL4DgE8WoIFYg1ToCVJ9HujzWPoLoAhUErhP0emAMEAHF76fZq
 zSbCYphbM1Oz/X1t+kf4MUD7uKk1S4hFR+tG6m8Uj2m1bTCITul7d4HHPpW1T7AWJdJdMdHoSHM
 LtC3sI+KnmIznGeLiFCBoASfUO2/bbAqqk9+k9SQ6nO67ImPTY4cJMHxJiu8LDh25YWs5mhEm/z
 DdtKUyoODcnP3N/GjBJEDsJPshM0242hUZ20HQceBEJbrBU/MPWv238gO8YHAef7Eji4JHzY9OV
 VT4qWjLegfjb6QBVTEmtqpZILwDZZlBz3U07ECLdqVf5CvVwWD+rBQxAR7mS5k0frxULDy7LkHH
 SEoGgkj0vgs2bYQ2ngiRYriMGGE5BmN770Fbwz4ZpJcKv/TW74EafHStJb3sQtMQNvvSMgO2qfy
 Xr/rEzlsu07QateOzRODjsZcC5xMdR4SqfJgxjZTAPZNnw9ZAQUgwAXf4q+PKsLt1euOqy1tQEN
 oZSWp9HYndKmEUQw3TLCqXpdk5uXLXJ4JyAOZf3ABua3KjiTy4IqW7FR7+FLOmKUXDG3M7nQUM3
 pSih1cJGkbXV81NsT9TImPPcQcUoTs=
X-Developer-Key: i=dlan@kernel.org; a=openpgp;
 fpr=50B03A1A5CBCD33576EF8CD7920C0DBCAABEFD55
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260214_042939_932539_10034949 
X-CRM114-Status: UNSURE (   5.82  )
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

The series trys to add USB2 PHY support for SpacemiT K3 SoC,
while patch [2/3] implement a disconnect function which is
needed during next connection.

No DTS part has been inclueded in this series, instead I plan
to submit while adding USB host support.

Signed-off-by: Yixun Lan <dlan@kernel.org>
---
Changes in v2:
- collect ACK
- add Fixes tag
- implement separate phy_ops
- Link to v1: https://lore.kernel.org/r/20260212-11-k3-usb2-phy-v1-0-43578592405d@kernel.org

---
Yixun Lan (3):
      dt-bindings: phy: spacemit: k3: add USB2 PHY support
      phy: k1-usb: add disconnect function support
      phy: k1-usb: k3: add USB2 PHY support

 .../devicetree/bindings/phy/spacemit,usb2-phy.yaml |  6 ++-
 drivers/phy/spacemit/phy-k1-usb2.c                 | 44 ++++++++++++++++++++--
 2 files changed, 45 insertions(+), 5 deletions(-)
---
base-commit: dd39930f3d9c1d74a40b79d368e1f3d1555e919c
change-id: 20260124-11-k3-usb2-phy-c4630b990b1f

Best regards,
-- 
Yixun Lan <dlan@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
