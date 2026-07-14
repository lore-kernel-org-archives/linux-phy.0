Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6190BC4450A
	for <linux-phy@archiver.kernel.org>; Tue, 14 Jul 2026 19:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=819pWVi5J5Jvn54+gP2+IKNH0Dls9MIm2KCgyik6Q5Y=; b=MSyYHhHMk50kwN
	/7Dy3Nyq93MUuoyZpR/IpGA7FFIrz7R2z4zAvnxzBanQIQ2G9i8k7Wpmlxl59RDohJvqVckxdu2nr
	LFOvQfoIsGWEJUeDlcuLE2nFaWGO5oEepgPMOkF2IORfcQJZ0ip/PCPlxul3aJ1BucOnNs5Ca3Xv9
	QJ3m+2hDEaI0SKvuPN6qItYrUg4D/5/WziwSWmuPmFGByHndX2ACa3d0U67Xm/qw9NcoZK95T+ema
	04lNkrbWAxZtqxhkKNOWitb72DSITpPaGwFZ7QLPrCzFGp7s7us+Gpo/+spqyW6xODB5aaGyUBqR6
	108suqiCurNk7wZAeBPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjia0-0000000Czph-0V5R;
	Tue, 14 Jul 2026 19:14:08 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjiZv-0000000Czkx-3Pw7
	for linux-phy@lists.infradead.org;
	Tue, 14 Jul 2026 19:14:06 +0000
Received: by mail-pj2-x03.google.com with SMTP id d9443c01a7336-2cad83a0aaeso20232985ad.0
        for <linux-phy@lists.infradead.org>; Tue, 14 Jul 2026 12:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784056443; x=1784661243; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=8x8RDbcfDX0JdqW/clHRnOctzbZEE6whwRLBLDpw64o=;
        b=AuJo0FZCB3Zgk5UFTjg8GZuRh9DmqIduHrN7sUOG5jwOikPUp+PRGy9fTlcAUQ5pJd
         r1wPO21i+3ryUsPFVUcijkTGSzBd0no6RMVwhPjGJ/mTmEA2jlp/kKwN8gLXFraNl6QQ
         f9hTx7vnCwYXMRjqPp8uoYi2Txm6APwLBSgT9hAEMCfC3Pg1hDU//QUAC3DbExprHQTp
         xdKsfqaf8ioVMuR7gk5jcedpUZHF8VkFYCqYHdtBVHGq9NrCWkk4inxjGkzxalaJ5lqt
         l8UfUyOgaW1S87ZDWLZ1qvwSrhla7O3lmx/ipMKjqKhHfNYDdQlmSJb5jt3+PWHHjsye
         W0Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784056443; x=1784661243;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=8x8RDbcfDX0JdqW/clHRnOctzbZEE6whwRLBLDpw64o=;
        b=nfhjZVhR5O7JprX3RLVvxXYsjtlU0nH8uw3vArqIzP9+ZdkQX91vn3ms7HYm0Ra+10
         bxgIDEsneCvDcuoQL7ZeW4fdOX4J0GLf8Ncu+D6U9hhGs5VO2kcMB/MezmLvL6ECFawF
         ahftc8h8SPBAJjut1hGDiE5rSYhHvBoqClMh6IcXNEqZdouEJ1ts9+GH45+Bi+1ehYi/
         b0YIwRTsfiWnuvKHzgCVUMupF1x3fh/TqHIA5BbzGO6k0Vz5IGI/Dycp1fnxch6j0Y2A
         CCX16l1P6veg8WIu8E7ABDuDrEzxCUaTuJaLwnkd7deqlspMBHqZ9HMJeUnt34bNV33D
         K7XQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq58d+XNWlep2r2mkRLemKjE2lx5iztIDeP5mNXOueQxpexMua80ucDJeQZEJixWiDdcbiGAfYU+pU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxO3JShZtwQF1D6KwwtSN6DruaT4DRgdNVrhKAgO9FiRNQ2Ncu1
	xrC7lVj5MxOIA3GbNTFfz1HN9xbQvTF6DM1bezGTvrqFpX3RIMKa4LDe
X-Gm-Gg: AfdE7ckJae7Q59voaa9tiuLOQpxzbzb183/wV0Bmj1avBykiactoyaREsxUQooffkft
	dSMj6jC+qsPLTTim0Kvpct2wVoxTTQb/xr8+lq88M2tWwRgwa7UPZsomHoBgtwqhtWlOpd1kNfB
	G7K7/vbFPjEa7B+vUyT4qeLFNhqfHNWhEfhCNLWdHRcCg0mqAF/6kB+mMLsLvYPJK07Y+cgFoit
	acZVc/Lx8r2TXyrIKRHz2rhF7BNfMs8bqXuFC9kJWtDRhE0viFl0V7p9tL4wBU0NdrePnynEXaR
	3kXATT9Ak93CdoWIle8nkoLmp2EZ7dOEPZseSxAifg9YZXF1lZigmn5yezupIiXBQ3Vt3FVSQyM
	MDVlySKQjws4Z8CdVyzu6cQ/MKtXZNBGKGSmzioRUhVZF3ld6kjTNX//NkxRC09zmo9PTztksS2
	zUL+Dhg9enSgM=
X-Received: by 2002:a17:902:ffce:b0:2c9:97a8:8c1b with SMTP id d9443c01a7336-2cef1374743mr36739275ad.46.1784056442914;
        Tue, 14 Jul 2026 12:14:02 -0700 (PDT)
Received: from server.lan ([150.230.217.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ccc9d3d451sm120763245ad.65.2026.07.14.12.13.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:14:02 -0700 (PDT)
From: Coia Prant <coiaprant@gmail.com>
To: kuba@kernel.org,
	davem@davemloft.net,
	edumazet@google.com,
	pabeni@redhat.com,
	andrew+netdev@lunn.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	heiko@sntech.de
Cc: netdev@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-phy@lists.infradead.org,
	Coia Prant <coiaprant@gmail.com>
Subject: [RFC PATCH 02/10] dt-bindings: phy: rockchip: naneng-combphy: add rockchip,sgmii-mac-sel property
Date: Wed, 15 Jul 2026 03:08:30 +0800
Message-ID: <20260714191341.690906-3-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714191341.690906-1-coiaprant@gmail.com>
References: <20260714191341.690906-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260714_121403_875058_AD8A3FAE 
X-CRM114-Status: UNSURE (   9.51  )
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

On RK3568, the SGMII interface can be routed to either GMAC0 or
GMAC1 via the pipe_sgmii_mac_sel bit in the pipe GRF registers.

Add the optional "rockchip,sgmii-mac-sel" property to allow the
device tree to select which GMAC controller is used for SGMII.

The property takes a value of 0 (GMAC0) or 1 (GMAC1), with 0 being
the default.

This is necessary for boards such as the Ariaboard Photonicat, where
the SGMII interface is connected to GMAC0 and needs to be explicitly
configured.

Signed-off-by: Coia Prant <coiaprant@gmail.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml          | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 379b08bd9e97a..6173192e31ab2 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -80,6 +80,13 @@ properties:
     description:
       Some additional pipe settings are accessed through GRF regs.
 
+  rockchip,sgmii-mac-sel:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1]
+    default: 0
+    description:
+      Select gmac0 or gmac1 to be used as SGMII controller.
+
   "#phy-cells":
     const: 1
 
-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
