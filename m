Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E72AC982CC
	for <linux-phy@archiver.kernel.org>; Sat, 19 Sep 2026 12:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2jiZMogwjNQmC4X/dWl3qk0eVKtoth5ApT+xAZK/kg=; b=FW0rzn4SB0xLnN
	9phwa+OtE5O+bHepAuW1ye6HgLKEIykBD81CmF+u/BMGYcjpS51Em+8zp6x/DZJ+E0z8vxdjF9iFL
	UUzDaILPh00xVGCmVuKqc+fwgdBfzgrnfYfIW5FGpF7XgMS2xbbgvBxWNcYYwf565ZQaFAazPLav7
	vpYJftl3b9Ctd1IVBCLEMDmbdQjQZMa5vVM4GIPywq0TWEnOpd+dtXVrm0JcsHG2zWpEj316pceFh
	GFaetCguCfrBuW/yiu+KgUW6m/kv5mlAEGvohOomxTeXQLnmMxpf6jUXdLLC1YUjR9EeWVSkcSwfp
	oxuKpKCoD4Y9bdA+h0Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYo-0000000GHgX-0Vxv;
	Sat, 19 Sep 2026 12:52:54 +0000
Received: from mail-pj2-x0b.google.com ([2607:f8b0:4864:39::b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7uYj-0000000GHbm-3G0x
	for linux-phy@lists.infradead.org;
	Sat, 19 Sep 2026 12:52:52 +0000
Received: by mail-pj2-x0b.google.com with SMTP id 98e67ed59e1d1-39569e136f9so1297178a91.0
        for <linux-phy@lists.infradead.org>; Sat, 19 Sep 2026 05:52:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789822369; x=1790427169; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=Y8moyQ+nPriRmjlpSoSkyos8faFnmEDvS52TJOYK+1HMYls8BVVKlRVdW1e8tdOC+V
         7REIRihLJPIFHhO5zydqmYYSRQQvRn6zwNN8NDx1sm4Eo7VcRkfrSXwwyioMix+B0unh
         BtNLnEYHHQuthYF7TfUVAxZDAgKNajJPidFwSH+jV6Ra6glN03ksBoyhSnS0y3g1zSp0
         mXDbaSj2F5vraK7g/lBa7MiMYX65DX0RkfyLHTVbFwcHTWn2g7T9UFushhFkOU/unjAF
         mHrhcOWTGtB+8Dwin2o6jnrewOSINQQ78j2JnSb16FsWACSa1ku0UE5rJVqqLIE9IWd5
         fcYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789822369; x=1790427169;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=ZMeI/WWLheWRnWdD+Vg8yymoATsttG2uuSMq0OFVudUny7mCNnKPR6hlU2kAhxWR2x
         hKpbkwK3i0WJapoGcm+1WjDwEVUhxdkOXHF05aKRODopp8RB/w7H9BA0o9bIE1RXYabC
         vMYQEWjPHywfeY9VQxO/y025iZXS19AxE4GbM6bYwV5WdoDIhz/wm1uv6N8Ppqlg9QWT
         I8OvcJacOYqzqIoEs55i+5JL+r7ASzb94mIkjq3HylTbJKfON35dSjRgOm5xVBJ/Y+vj
         EnAi3ySgrgSJ4juqDfi+BBEwr509qr34/G0OukLKJ8N3L8keDKNvKX8fFarGdafLAUz7
         FG2g==
X-Forwarded-Encrypted: i=1; AKwUvBxn6zZ/Xvao0dy0L7ThI7ovq9KQs5N8c1zCL2M5y85A3Rc5/7bPIBcZNTT9fY1WJ1rRppt7WibWdPQ=@lists.infradead.org
X-Gm-Message-State: AFuF++nzWpHoE/BRiign1GwGO2q3VHxyIGWcNw2kPSVq/DCnYy0kpbZZ
	Ux8/MMhQSMz5rEhQVRwwtEB5mAA23R2k9CnUAZ5ZJvX2sBxHSDBXWhJc
X-Gm-Gg: AYBFou3/fzs/6I3PFsn8uRnPcq8nXSFQAdYeHYwhExsC4h8oITN+35yqOMvoqTSX60Y
	VHpWKcH01hXXS561sa0LsFEqrCdLduESPwYj5+n0u0seTWO6ew4WrBM0Itkrm96VFL+bXhac+hI
	jdfEO+H3HdpSb5jimkaAs6NESSirxSV/9ECB4oMBzRUPtmEG2NHHOjqlIYZxcb7nt7dAYst6WJY
	0Nifq39ZcUssw9kN6l4t1V13C5QMMC/hy8xf9FP2W8k7hzQb0XvmzWNaob9IcxVq+vf6f8Zirux
	ZibgVxuisgmGcru9/YhjrsB6J+pLT3Vg6v/ENsNc8NWadNnR2gmwXhBz+6w2gCs1VUioM+MLrDT
	vLGMqdZukt0YvxCrpPY8BsZj7JpPzWs2vt3+aGtD2ylY8TJ5u0Fku/hnexNa1qd2Pmtrx30zmxU
	UcZoD1NLu3xgjIrG+5ol/cHX3MG9SQ+e4vzGVGfo0sdVCjco0ms35MJw/C+Lav6sz4P6TzUGy9j
	27x/4Jb
X-Received: by 2002:a05:6a00:2990:b0:869:9298:ba59 with SMTP id d2e1a72fcca58-874d84a6257mr9842225b3a.0.1789822368852;
        Sat, 19 Sep 2026 05:52:48 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877aa0026b2sm991805b3a.44.2026.09.19.05.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Sep 2026 05:52:48 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Maxime Chevallier <maxime.chevallier@bootlin.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Romain Gantois <romain.gantois@bootlin.com>,
	Heiner Kallweit <hkallweit1@gmail.com>,
	Coia Prant <coiaprant@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Russell King <linux@armlinux.org.uk>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	David Heidelberg <david@ixit.cz>,
	netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v8 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Sat, 19 Sep 2026 20:51:15 +0800
Message-ID: <20260919125119.2107089-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260919125119.2107089-1-coiaprant@gmail.com>
References: <20260919125119.2107089-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_055249_845692_AFC39F41 
X-CRM114-Status: GOOD (  10.42  )
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

The Rockchip GMAC binding needs to describe the PCS reference used by
the SGMII support added later in this series. The property will be
parsed by rk_pcs_init(), and a missing phandle fails the probe. Add it
and require it when phy-mode is "sgmii" on rockchip,rk3568-gmac, the
only SoC in this binding that has SGMII support.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/net/rockchip-dwmac.yaml           | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
index 80c252845349c..bb7540e838033 100644
--- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
@@ -120,6 +120,12 @@ properties:
     maximum: 0x7F
     default: 0x10
 
+  pcs-handle:
+    description:
+      Specifies a reference to a node representing the PCS device
+      connected to this GMAC. Required when phy-mode is "sgmii".
+    maxItems: 1
+
   phy-supply:
     description: PHY regulator
 
@@ -159,6 +165,18 @@ allOf:
         clocks:
           minItems: 5
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rk3568-gmac
+        phy-mode:
+          contains:
+            const: sgmii
+    then:
+      required:
+        - pcs-handle
+
 unevaluatedProperties: false
 
 examples:
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
