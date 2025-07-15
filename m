Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EAB4C83F1D
	for <linux-phy@archiver.kernel.org>; Tue, 15 Jul 2025 04:36:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tnge8+3MLOU5OyNZf7GS/oJn0EqO+y7jTECT+UxYxUQ=; b=d0KDcV0shA6zSY
	DnAm3UXhButoKUrUWaUAoQ0h0OKR51D1yBiztVtnrIMemNwWB7rh5mFCDajL+NkhYx+JqhesrovLg
	DNrtn6p1gr8kqy0VsNZ1e/ZlK0W+pWCSoayIEcK0nO8qQLa4UR2W1WfOMAGKiOJnXyvUMNla2GOsU
	isFB+G9dFpHuGyzOkK72ljqguxqw9+YE7xJyDQAPF29mEIBlIH/kvJW/BxHJQh2c3Ntv46Gy8o0XE
	I+Tq2dyd0m+PEfoXwdneKIhVX/NGUuTR3VpSUpg8hEw8MIK0VAG8VY7SBjAx+dZcWjSRTAvHYgkTQ
	KHhhZ3T80/wxsoTsrFHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubXOr-000000041NR-2r6R;
	Tue, 15 Jul 2025 04:36:17 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubWtV-00000003xpe-04kH
	for linux-phy@lists.infradead.org;
	Tue, 15 Jul 2025 04:03:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6FFF15C568C;
	Tue, 15 Jul 2025 04:03:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D593FC4AF52;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752552232;
	bh=htHW6rtHg7NSjIcI/4lWhbhWmP6UNSBw9fjzNoVOG+c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=F6O04kvvIj2entXcpHjijwWVFKNbId5Ft7+2xkar8HPtwglWLAu3b62JxMSlHwvi4
	 zA3rR33pp+21x37MHL7RkNQJ1oFYUb6dMdO3TV1qebXQBqbcFZq4+bS9gnkzvdHvJg
	 MJFR8T5Dxoier5Q5BYDKb48TcCQRUb+k2+C5ux4V4pfkaPsTjHZ8cLFNtYpJYeLnhc
	 9QstN6ruwurdg9vK5u5h6MuH3Hks6QTCq+/7sAUIVdQfwEonZQKr5jez8ZXV60QpAc
	 c42tgrRMpCrn6xaXDmnWkXXrjhJo2fLQ/UJU+IjrYEuEIKipEwfyrUpK2xRB/N4pDT
	 +0cg5Obh6xFmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C405BC83F2D;
	Tue, 15 Jul 2025 04:03:50 +0000 (UTC)
From: Aaron Kling via B4 Relay <devnull+webgeek1234.gmail.com@kernel.org>
Date: Mon, 14 Jul 2025 23:02:47 -0500
Subject: [PATCH 04/17] dt-bindings: usb: tegra-xudc: Document Tegra210B01
MIME-Version: 1.0
Message-Id: <20250714-t210b01-v1-4-e3f5f7de5dce@gmail.com>
References: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
In-Reply-To: <20250714-t210b01-v1-0-e3f5f7de5dce@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, 
 Jonathan Hunter <jonathanh@nvidia.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Nagarjuna Kristam <nkristam@nvidia.com>, JC Kuo <jckuo@nvidia.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Mathias Nyman <mathias.nyman@intel.com>, 
 Peter De Schrijver <pdeschrijver@nvidia.com>, 
 Prashant Gaikwad <pgaikwad@nvidia.com>
Cc: devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org, Thierry Reding <treding@nvidia.com>, 
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org, 
 Aaron Kling <webgeek1234@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752552229; l=1146;
 i=webgeek1234@gmail.com; s=20250217; h=from:subject:message-id;
 bh=Jyy45qLdZDq9DiQVnsxM/Qp0gR79KFt6neXymT4FCWQ=;
 b=TcCa6TVpGjZW7jzTH8gjJ6dgjSh/2EdBKGUTbaM2ZDtD0kBy23zs1eI/CDye8JwKO2xOUgB31
 lQDc77DFvRuA+nPAP4zJoCewfmgWm9F49iS26kbUgAvOq9BDkIfHDPO
X-Developer-Key: i=webgeek1234@gmail.com; a=ed25519;
 pk=TQwd6q26txw7bkK7B8qtI/kcAohZc7bHHGSD7domdrU=
X-Endpoint-Received: by B4 Relay for webgeek1234@gmail.com/20250217 with
 auth_id=342
X-Original-From: Aaron Kling <webgeek1234@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_210353_227494_BBB48DC3 
X-CRM114-Status: UNSURE (   7.82  )
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
Reply-To: webgeek1234@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

From: Aaron Kling <webgeek1234@gmail.com>

Extend the Tegra XUSB controller device tree binding with Tegra210B01
support.

Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
---
 Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
index c6e661e8915ca4d3e905331299d981f4d3964314..4574e66e7c1d3d3c918991920bbf4f3ea0ee6ab2 100644
--- a/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
+++ b/Documentation/devicetree/bindings/usb/nvidia,tegra-xudc.yaml
@@ -20,6 +20,7 @@ properties:
     items:
       - enum:
           - nvidia,tegra210-xudc # For Tegra210
+          - nvidia,tegra210b01-xudc # For Tegra210B01
           - nvidia,tegra186-xudc # For Tegra186
           - nvidia,tegra194-xudc # For Tegra194
           - nvidia,tegra234-xudc # For Tegra234
@@ -130,6 +131,7 @@ allOf:
           contains:
             enum:
               - nvidia,tegra210-xudc
+              - nvidia,tegra210b01-xudc
     then:
       properties:
         reg:

-- 
2.50.0



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
