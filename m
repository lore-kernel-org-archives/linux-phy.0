Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8998DD3B7CE
	for <linux-phy@archiver.kernel.org>; Tue, 26 Nov 2024 09:21:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M7DoxiLLDrswFV5Jt2EcTA0Z0zKEXRlDlKeskiH2snU=; b=V8LZycsVDmcKax
	P/Wt6a9V6JyZ3+lz9ftoUfu7yaXHwGpXYNsaGirIGUngO3CCUSrSJWpX8vnRHUqVW6mJr9SVkHnUB
	coI7TKINzASiuc5RB/8s9e9RyxaHG1uEUoqsl7RhArkpjq/lc/SPgHo5sf3JT9AktW/rI66swI/5C
	/70hTjY+hHLxyfLnAESFNvCDwiOO/EsEbPEcGofog+jpF/mit9gwdtShAHkzRBLJdONIV3ZK/wloB
	ihkxsbS8KAENuAHUZOPxqSLP+VYPWYEMWVhhGfhFxTHmXD023VXI3QfabxqG4fjEOBUa65cXAz3Hc
	mlataZ/ys1rafzqQ/2uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrlG-0000000A7LW-0IsF;
	Tue, 26 Nov 2024 09:21:34 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFrl2-0000000A79Q-3L1U
	for linux-phy@lists.infradead.org;
	Tue, 26 Nov 2024 09:21:21 +0000
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-3824446d2bcso4767492f8f.2
        for <linux-phy@lists.infradead.org>; Tue, 26 Nov 2024 01:21:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612879; x=1733217679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/jPyHfXjv1sKCq+VDx+r3KGfTA+9eZQsBfgYv3YFZiw=;
        b=fwlS8P/NSXeY9qCqYI6DBrWRZD0gLKaUJR9Db31DRpZt+B/UqCVEoKTKvbu/4S9See
         Jor3PJZ+BYAAOyDSEyAucU9bSUPSXz8Zd+RqmAQrNz6sYgIM76V18/4IYDw82LRZom2j
         NhXcJdhwg3hb47qoi4WMkh/cHJ10R16dSh9l+nl9lUBthVcnD8CRs6WB+ApiRexVYAy7
         /yXbI2Y6VBiFuo2bJSzaQAAMVlHOoYLHyvg3gT6e8V2vkixp+WzauURd75QY9c9/Dt/R
         oJy1HJIP1w2OiPdGMvspZ37AATxCW2G96nPAt1EFOKYMM72ahi4vgjBakGxJvwy4A3vP
         oSQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612879; x=1733217679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/jPyHfXjv1sKCq+VDx+r3KGfTA+9eZQsBfgYv3YFZiw=;
        b=kGr5eM90n/8n8fcu6wfM3bfpFxRvZrM05dQ3WOjTuUEhxkH22a/2j4jn9V1ggWXYWP
         iKPPlQZzw8f8nC/JBDB7Y/y9mphb1LnQ5Bwvu6uAAeqyMdf5YicmFXKxBHLXrMsnxL8x
         vhtgxxCXaRebix6LROxbpPPTynHs5w1UZk5rw5Nb2OM9TDqvHvwE49f1TrPZseZTQC3t
         DVkKhpsGdOtc13f85mqywcb2sfMkUI10aS7uXAB3F9pAJHTBI23Jtw8mEtmLsjk6e3AD
         SrQY8btpb4ONIUgq0MtbTtDSvwcnIZAPUtl4cv2tak+1Hh3x85bzJXE8MeT4H6fpVw/g
         bIkQ==
X-Gm-Message-State: AOJu0Yy0vJNHVjPwDUyjMM+N+MBOkvvjwv4XP3V8SZL02On/mLcvt60R
	QzKYSiKSg1Oh5dfmPLJLv2wy/am8tf6I/ocH4RB29hT/yRY+Pxju/nfA1o158rI=
X-Gm-Gg: ASbGncuiK3KP02jkpSkvRc9pcbu2rsF7Akrbhk+s6B7YujcKjh5+Y7eDt/FyFsNkOpR
	pU0sVMAJGhSAVdLYQUWVHDvlrNuchU9qnoU7HmpdG0DBUkHtqOmAdE3UNX1ISPb567TFr4cxoZj
	lqMEcH0lYQgJRZ9wtbQvChOvbixhZk5U8Z4DdTied8CPhDEucetVvSJMWuMgq8xpiJnFBf6o8zZ
	KuNxeHkhTlcfJnV6+QYlXwEEjsE+Et43BSP2WhwE1qyK6iJ6BSu6RrQe7j1nKyMHHIDgVPRw3rv
	AUg=
X-Google-Smtp-Source: AGHT+IEp0nHr3rTgVabZUcIb7+yLYE3qyOs/bjCx+FjVzVqxsxe18o0APHGg56PeptK8REX7Zr/0Jw==
X-Received: by 2002:a5d:64a9:0:b0:382:4fa4:e544 with SMTP id ffacd0b85a97d-38260b3caf5mr16113423f8f.6.1732612879055;
        Tue, 26 Nov 2024 01:21:19 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:18 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 08/15] dt-bindings: phy: renesas,usb2-phy: Add renesas,sysc-signal
Date: Tue, 26 Nov 2024 11:20:43 +0200
Message-Id: <20241126092050.1825607-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241126_012120_839795_3AB59C0A 
X-CRM114-Status: GOOD (  12.20  )
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

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

On the Renesas RZ/G3S SoC, the USB PHY receives a signal from the system
controller that need to be de-asserted/asserted when power is turned
on/off. This signal, called PWRRDY, is controlled through a specific
register in the system controller memory space.

Add the renesas,sysc-signal DT property to describe the relation b/w the
system controller and the USB PHY on the Renesas RZ/G3S. This property
provides a phandle to the system controller, along with the offset within
the system controller memory space that manages the signal and a bitmask
that indicates the specific bits required to control the signal.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 .../bindings/phy/renesas,usb2-phy.yaml        | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
index 2babd200bd98..3b8dcacc3740 100644
--- a/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/renesas,usb2-phy.yaml
@@ -85,6 +85,16 @@ properties:
 
   dr_mode: true
 
+  renesas,sysc-signal:
+    description: System controller phandle, specifying the register
+      offset and bitmask associated with a specific system controller signal
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      - items:
+          - description: system controller phandle
+          - description: register offset associated with a signal
+          - description: register bitmask associated with a signal
+
 if:
   properties:
     compatible:
@@ -112,6 +122,18 @@ allOf:
       required:
         - resets
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: renesas,usb2-phy-r9a08g045
+    then:
+      required:
+        - renesas,sysc-signal
+    else:
+      properties:
+        renesas,sysc-signal: false
+
 additionalProperties: false
 
 examples:
-- 
2.39.2


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
