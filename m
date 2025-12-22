Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80F35E677EA
	for <linux-phy@archiver.kernel.org>; Mon, 22 Dec 2025 16:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QzKKPfTxjrS4E+SjDnE+/wXJFEAXWiImVWY0qXlcSPI=; b=J8lb+971WMPzgE
	Kn0GlBQ31RXX5rlesuVS5RxuKf8PS09UQ7RebHcBvEv/0KdQ4vEP3BPX+xe8DbF0eYrRmE31h932p
	oAf74OXY6KJTGuvhi87+IBRHfBKl//GJcD6l15uJpNI1fzyrP+eXW3wVYcVpeAi2hx1HjONeSGf9K
	D/+RS5b247LQ7jBww0A9ek32mKjfVmy4+CpkOUkxXcqZiiVQqKKIFZXgyeF0GP/6cGD6Thwka7x1E
	K4Ia6pKZTva1mInI+3wNJFwRCKwrtOcRKAVmMGdnhSHcCfFwm6/1lPexZl33dWUFyUTgEhla5/bIS
	P2h5DAisAbK3VrSutiKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXicb-0000000DxfF-3dt6;
	Mon, 22 Dec 2025 16:18:57 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXicZ-0000000Dxev-2KRo
	for linux-phy@lists.infradead.org;
	Mon, 22 Dec 2025 16:18:56 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-47a80d4a065so21068695e9.2
        for <linux-phy@lists.infradead.org>; Mon, 22 Dec 2025 08:18:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766420333; x=1767025133; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6Wn+1o5H5M2D3/1CjW1oNLSmHryy2WgYugla7KkAVPw=;
        b=iQMBkuPS21MgSU2NsU55i8X2UBthuEXtFS+xw3NwQZQ5qxrIlO+XxuFVStkyasclWg
         UYjo4a9iG1FBF+JcSMD/S5c0McuolG83+cyJNa01ZVjbv3JDQoTJkrRCVwshOfPD1eWS
         a/6JxJrpFaQdLm9xvX1h+t/OY4HVmZ73aXGikj2Ig1RHg3Dbh4weNH4KFrtg1XOQb7+S
         uwgWXw2DvVMxq7pCMLvXAlyaqlgEg3DpMyXczAxEaF4WdW7Ov8cnE8H9XyrNhK6QWbDz
         8yj/t3SCQOIDORbTWzGE7X0F8UBQT5azVQ74YEKzWr3FP5jaodam+jOd/OxTgDiXIBF7
         Sw7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766420333; x=1767025133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Wn+1o5H5M2D3/1CjW1oNLSmHryy2WgYugla7KkAVPw=;
        b=tkVM89B5G9FM31H+sIMjGoNd9e7c8xQ72mUSaCl9DQoJc9sRJo5o63rXh1A81dq9ov
         9MBUMz/H9/ThJ87Czl30lYjKj+UORQ01Ff/dcyQYVXsDSW0L4Uml69yR1Rw0YZd9BDas
         xZKhI+yyjaeAcZKQPuEZx6o8bavZYwyGNljDXXGy+qoAwp9GmcKsRMeUvVF1rIpu9bjF
         c55xXFYxfnusTLqHkXf0g8HD8M3fErrUHisxnprwJD7EoyB1VYCVWN5vdidCNfBIDMTg
         pNCNAwWLrOuEHhsrY5QaU9hmeXCioTlk5Hn9OUzk37qpTeYacK5hANnNRVzOPoLPj0vk
         JIOw==
X-Gm-Message-State: AOJu0Yy822DF0krY/c863Uai7nZ8StibzKadOt7gsGsO4E4gU/mkNMPT
	VVpYcBVwQqqN0twF93ZjwE4XNO5Fnt/KZ+y1l7rdbe3ykmBoW17mEuDW
X-Gm-Gg: AY/fxX7jsMqqPEbD6eMzQHnkkyKxFbPSxTTa2Aj6Z5T8wvlUNP9IrTmkVsGF07N96nn
	hSkx6m4qaB+S47dxwEkPsBkxtw+FpiYHlWftlcVWHujY5ngB6vVhvtXDDTXAtP5OyWaiuv0B9Pe
	zoD1qzmmqPFb7xKVAjQqqVgIXXG66J9sw62WAzdaM8vyWL88bb+1e5FW266KQ8COwGBHO4xHFzS
	FzVP75V+tyIs0vDpFyXNndCr9/T0Cm6ghGGD61y6Z7ToYBCKiacsOkXU4XBrv611ZkGsj7ScS4Y
	EGfEVjyyrQ85U2cpKti0CcAy+6niRKrC1Q/8GSc34+yT37KfGDuy4KTAtFTnJcDZuIjIkgRDg54
	DE/uvgm9Zam/Uc6GCgJ9NOlGB/ZwE5XXReC8rHApc0t2tpmG2xHjHTB1WAk6PYRe5IzJYLXek0M
	I8N5pFU23JVusFKkac2mWmVCojvdJqX25VHgIx5sJFzAjFhjcrXc6tJ8Hi8hNgijMKHwC6E3L03
	YDs3MkzxwbixbPAyHEBEpTn3q8QwHTYlg==
X-Google-Smtp-Source: AGHT+IG3GUrdE4PQHrsdSst16Dgk6RAbxwgJpO7Qwn77alrqhBYIPCIPtLmfjtOzLdRdyTl/fZZyVA==
X-Received: by 2002:a05:600c:35c4:b0:475:dd9a:f791 with SMTP id 5b1f17b1804b1-47d195869e7mr135907925e9.28.1766420332821;
        Mon, 22 Dec 2025 08:18:52 -0800 (PST)
Received: from iku.Home ([2a06:5906:61b:2d00:4dd:df38:7864:a996])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47be279c637sm238662805e9.11.2025.12.22.08.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 08:18:52 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2] dt-bindings: phy: renesas,rzg3e-usb3-phy: Add RZ/V2H(P) and RZ/V2N support
Date: Mon, 22 Dec 2025 16:18:46 +0000
Message-ID: <20251222161846.152952-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_081855_614405_1055C238 
X-CRM114-Status: UNSURE (   9.22  )
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

Add compatibles for the USB3.0 PHY used in the RZ/V2H(P) and RZ/V2N SoCs.
These SoCs integrate the same USB3 PHY IP block as the RZ/G3E, so the
RZ/G3E compatible is used as a fallback for both.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
v1->v2:
- Added Acked-by tag.

v1: https://lore.kernel.org/all/20251118180712.4191384-1-prabhakar.mahadev-lad.rj@bp.renesas.com/
---
 .../devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml  | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
index b86dc7a291a4..6d97e038a927 100644
--- a/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,rzg3e-usb3-phy.yaml
@@ -11,7 +11,14 @@ maintainers:
 
 properties:
   compatible:
-    const: renesas,r9a09g047-usb3-phy
+    oneOf:
+      - const: renesas,r9a09g047-usb3-phy # RZ/G3E
+
+      - items:
+          - enum:
+              - renesas,r9a09g056-usb3-phy # RZ/V2N
+              - renesas,r9a09g057-usb3-phy # RZ/V2H(P)
+          - const: renesas,r9a09g047-usb3-phy
 
   reg:
     maxItems: 1
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
