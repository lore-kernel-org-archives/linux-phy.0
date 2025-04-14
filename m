Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36567C369A2
	for <linux-phy@archiver.kernel.org>; Mon, 14 Apr 2025 15:09:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2guMmT+3y5bQU1ta7QMThWHvf/VZQuwq6kMM95kK3s0=; b=x+epVT8q+lrRDA
	7HtUtQbawTLUl9KGeKWgSPGtFQACIBcfA1l2hSKdxMvnreRO33JYK6cGeja2is/EmQaCEncL+q+OJ
	mud5pQNebEC4lgxZEwrnq/wAFxaesvHLdstmlSvJOn2cns4p8KC40FaK+UOVdLi2O7oStKLdB6Rd7
	PoIswNJRJYYHLwndhQLtaNSLujo1Fx3OvReA1oR/AGpIJeS7HWoGYb3crGcUl61E5XLotrX05sBPS
	B9386nF4jHRLpgnGjbkUtABmmuAmJ2DefHoOVK5ov690uWjKDdvEe/TXFMXgqj9wDuVpy/KbQdM/w
	beDrjwZCJUVW8C7x5zOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LQz-00000002Ynb-3aRV;
	Mon, 14 Apr 2025 15:09:17 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4LGA-00000002W6d-02si
	for linux-phy@lists.infradead.org;
	Mon, 14 Apr 2025 14:58:07 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-43edecbfb94so47966795e9.1
        for <linux-phy@lists.infradead.org>; Mon, 14 Apr 2025 07:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744642684; x=1745247484; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P6LNIjk4+CQR7WYivVqEj1OTKKERr/w582iehRk3oAk=;
        b=VADqt26ff74RG4kXNGNbz2e2lSYyCpXj41scjDBnHjfXynLAXGIh3ZuHqCER2ODMrS
         fDY8xayPJ7Fp8yHMz3bJReuvYVqKXZrxQG5nANjxpdu/Rs5WcdOii1AZlU5oByxbugQx
         coaJycmz7W/0CTyNlEu68e3iO3CCcMgo7qbV+1FBhh43f61KPCBa5rJRnI4c9T+p3DHL
         ZwOWA18mt/CIwEQEUKtdj1X8amjRsnZwj9tZNEAgHHutf2/Tfg0sDK0NIK8clDLxgfZa
         6ceK7hnkDmIb+En75HLcIy6z01Kc1qp7aOd2nkba7SKQlCT/z3jwA+fXppREWaovwon4
         Lq3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744642684; x=1745247484;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P6LNIjk4+CQR7WYivVqEj1OTKKERr/w582iehRk3oAk=;
        b=rGH9O9GjPnyfK0vgf2RrWts4NSS6YMNefaKx4zQVdALaWPq/TuWCm2Figq2cQBoa5l
         RvdINGUCytiFzfiKsssK2m8tI/IwvmxIXzuYbgl3qM7/8gQpNaNYfhTVutNbqxdgK9dx
         VHIacFYT9I6afjmn8HOYEgc/8U50PSBWisn8FV7T1W1rT/MJU/jxDoVAczKasB7C10Wo
         PslZKveqFJclY6U1YM/l06Woe2Z9CvlBjltYHJdu0D15zB1tZbFz3SNDm+z1yafwiKFG
         MhSnc66y8Hgi1KhRoW6JJwGfoa250TaDmzp9+0pOBgNv2iuO+ft00DBrAB98vKAFAy+a
         1skw==
X-Gm-Message-State: AOJu0YyxkRzRlL7dXfkERTzm8y/E37iG0IIoOs0MwJYZkpdSwp8ypXc7
	mljeMkCQbH6+i8rF8CMeqHSNYgZ5kaBYfvf0D51uDj9WNXsLmiJr
X-Gm-Gg: ASbGncsKxmeTgXrOCddK5ZeOuBXi01WY9p0BSnTXjK/zwiXRLeyGZF9coVRxaEsije/
	CqgJU4wWMDW4hR6X486PDt0eDWJy1zTSp3jVi9UpB9JTw3ol54Ctru6kKVHkTAsfBwNoZvF0cgR
	5UQdwuwSQztogtIii9z56aVtTiVS3CGD2fVGlVFTFjR/c5yPwly+eoPTnD7DPGVAak6YmgeFrqD
	Fd9GwjDXRX2i2g7bCc8P+wqZ2/NAGMxdOJn9akOp4iCn2J/LGIhPp+l6Gd4I/7R58UwUKE7gb88
	98XT17dEJqRrsGAVDp0GMu3/fM85y7ETjeiW/FluBDKGUOSgwtK3Bex1Hs0tVNf5
X-Google-Smtp-Source: AGHT+IEPz5C0J8GbuZJl8OnkFachiw/6N2wZesYOBPtnyjvfbgxyv2oJ2wOoDuHtbMr02fQDOmG88Q==
X-Received: by 2002:a05:6000:18ac:b0:391:2d61:4561 with SMTP id ffacd0b85a97d-39ea51ee713mr9265668f8f.6.1744642684379;
        Mon, 14 Apr 2025 07:58:04 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:eb55:397c:6c6:e937])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39eae96bdf9sm11067041f8f.22.2025.04.14.07.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 07:58:03 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 1/4] dt-bindings: phy: renesas,usb2-phy: Add clock constraint for RZ/G2L family
Date: Mon, 14 Apr 2025 15:57:26 +0100
Message-ID: <20250414145729.343133-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250414145729.343133-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_075806_058080_7ED8DA82 
X-CRM114-Status: UNSURE (   9.08  )
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

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The RZ/G2L family requires two clocks for USB2 PHY, which are already
defined in the DTSI files. Add a constraint in the DT binding document
to ensure validation with `dtbs_check`.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index af275cea3456..f8d15f239b18 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -107,6 +107,9 @@ allOf:
           contains:
             const: renesas,rzg2l-usb2-phy
     then:
+      properties:
+        clocks:
+          minItems: 2
       required:
         - resets
 
-- 
2.49.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
