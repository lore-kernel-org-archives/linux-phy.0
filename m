Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 127AFCD128A
	for <linux-phy@archiver.kernel.org>; Thu, 11 Apr 2024 13:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TwJntAdsDuucI3T5zGL2swP/EUQPW2KZRWdVT+Ad4n0=; b=uaVMUyX477X/F8
	EAOn9Hb2pkRwZzAHWb7RTXdwm7QSFAdD6yRTLzfh6VASJQn6jo9yu+LtIm0CQMEG5Sa9kw/kS9Gnm
	kGNzgADnIBuoR5Z3AJeNTmsizu5Y7CNLV/5HV1l+k6wc4Cb9EaPlndF1CAMyi5Lsg9zld82KjJMuD
	cx6FcMjSRRK9EW6Dyd82E60SL1JuvksAggWaUQd7pGUiFnfzas+ERyYDkI0ixzul3vmWxO/7bk6H4
	qLxxgU2cPMwzUn3PM+N1ly6U7qkc98nWrwjXI6PghU8vxXwPpvYuPbIKjb+ygJ7bNvEIUcO5tyrQq
	aVKPsU5CzoJUrGVl/Q0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu4A-0000000C3sD-23ax;
	Thu, 11 Apr 2024 13:02:10 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruu44-0000000C3oQ-1CRl;
	Thu, 11 Apr 2024 13:02:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 58B34CE2F08;
	Thu, 11 Apr 2024 13:02:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CB70C43399;
	Thu, 11 Apr 2024 13:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712840521;
	bh=qArvCH0loValMvQRklgm8B3LhtKJu/iCEN816zFGIGc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ajlmh5HCGLK6fVFUczGYBXA+AV9/+dY89VDGtD8yQgC+ZQ/W9G6u6nLshRRVtGbrF
	 IqDZ0GmrOuLgLdcC4yzzLHnefopsjLmOo7cNx0BVGZYvYL8+/Joj/CSPiskNY1376D
	 +1BRi4Rgr2wMImxCv+EjufVDqBsDeeCMr41PR0KRmyoQFoE4T8wnfiiAaxIxpD5iLO
	 qCdo7CSS3N3lBV3HPEXg6/6ikSVi9cUGg+54TjNrLqtU/X+oWQ8GwdTfpCGpC87Jmr
	 +5MSSKy+oN//PW5AYcPy+6zwi2EmF0dFW+6FhZdS2A9/6PPfd93clMwhVJEkIhe2wr
	 Nl6E4KjbZUxUA==
From: Niklas Cassel <cassel@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Michal Tomek <mtdev79b@gmail.com>,
	Damien Le Moal <dlemoal@kernel.org>,
	Jon Lin <jon.lin@rock-chips.com>,
	Niklas Cassel <cassel@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH 1/2] dt-bindings: phy: rockchip,pcie3-phy: add rockchip,rx-common-refclk-mode
Date: Thu, 11 Apr 2024 15:01:47 +0200
Message-ID: <20240411130150.128107-2-cassel@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240411130150.128107-1-cassel@kernel.org>
References: <20240411130150.128107-1-cassel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240411_060204_574642_4B5DF37E 
X-CRM114-Status: GOOD (  11.26  )
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

From the RK3588 Technical Reference Manual, Part1,
section 6.19 PCIe3PHY_GRF Register Description:
"rxX_cmn_refclk_mode"
RX common reference clock mode for lane X. This mode should be enabled
only when the far-end and near-end devices are running with a common
reference clock.

The hardware reset value for this field is 0x1 (enabled).
Note that this register field is only available on RK3588, not on RK3568.

The link training either fails or is highly unstable (link state will jump
continuously between L0 and recovery) when this mode is enabled while
using an endpoint running in Separate Reference Clock with No SSC (SRNS)
mode or Separate Reference Clock with SSC (SRIS) mode.
(Which is usually the case when using a real SoC as endpoint, e.g. the
RK3588 PCIe controller can run in both Root Complex and Endpoint mode.)

Add a rockchip specific property to enable/disable the rxX_cmn_refclk_mode
per lane. (Since this PHY supports bifurcation.)

Signed-off-by: Niklas Cassel <cassel@kernel.org>
---
 .../devicetree/bindings/phy/rockchip,pcie3-phy.yaml    | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
index c4fbffcde6e4..ba67dca5a446 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,pcie3-phy.yaml
@@ -54,6 +54,16 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     description: phandle to the syscon managing the pipe "general register files"
 
+  rockchip,rx-common-refclk-mode:
+    description: which lanes (by position) should be configured to run in
+      RX common reference clock mode. 0 means disabled, 1 means enabled.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 16
+    items:
+      minimum: 0
+      maximum: 1
+
 required:
   - compatible
   - reg
-- 
2.44.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
