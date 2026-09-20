Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EEBBFC982D8
	for <linux-phy@archiver.kernel.org>; Sun, 20 Sep 2026 17:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q2jiZMogwjNQmC4X/dWl3qk0eVKtoth5ApT+xAZK/kg=; b=x+J2topLrNKm+8
	KkjRKE3Dn7NSaCCarhy6P3ZVAEhuEFmaxCCCtdU9oIZy3NtUhTRIXhAFXd0zt6MGJJOlvZm7qyiFK
	2WXm60AdvmgLx1fGXRgxuEwvhRmEgdfc+CQf1eJHPVUnaTemkWQvuyc35485GUuLFHY8faWWg2I9b
	TO9WoYXEbJVMuMLdrcvfOO1DmmV5gvAgYaCW+S0pwhf/O0l2FL9HNDqYAcXOLrjcjk+sI015JyssJ
	EHlZuInv5Cdtgr2AdIeaOPxV8w1RdlSxVGwcCkhQLiqYhWXv08LAGu/CWu0TOUe4t/dCw+IMGRi9w
	uMj0iFaV7HPLqSFSuYuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kwv-000000009iw-26Tj;
	Sun, 20 Sep 2026 17:03:33 +0000
Received: from mail-pz2-x04.google.com ([2607:f8b0:4864:3b::4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8Kwh-000000009SM-1b1X
	for linux-phy@lists.infradead.org;
	Sun, 20 Sep 2026 17:03:25 +0000
Received: by mail-pz2-x04.google.com with SMTP id 41be03b00d2f7-cc4c181b42bso1622859a12.1
        for <linux-phy@lists.infradead.org>; Sun, 20 Sep 2026 10:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789923799; x=1790528599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=sgHEf02jSsY0Ltxt3ApYE7B1lbx0aisyEK9laAupHg4DftIWJEtas7ovIigUjHvcz2
         XLSzOx8ud4uNSvOcxy59+x+rhor3TFctREgdSnM8bJk1bPt9Na2ygYNK5wCoDM5ZbFel
         NlG3kQpWK1DXoWsZzWS9rcuXog20DeTlVXmEJptVKr5i0Kx3Odgnm/+jdoP1/+a42rlr
         g+tOX8u8pjSUgatfkd/EjzyTqDHkLYoWNBg/QEcvl0QM+B77CTT0MuCU6XwfnUNaBxtW
         NZnCebRj5t/QZKN59ryyQqr6rz0fdwmL85HkpFUlS0zgQ8o6Sx6gzgichPLMKcKulSVb
         CfFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789923799; x=1790528599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=HWO0yYxZDPAwCYSgicIL5MDEtp9MsL193ldKBirIieA=;
        b=iYBsJkmWq90EynzoQOmHKyif9aId6NEpB2stsBAZUKp7Jb072sc1swcRujpeq4nkMD
         smTkCLZfXNNmjrjFJbaI3g4x30ZIVx5NzeGqH0euKfUbilNQ+f+582+ZtUVgcdHnAk73
         OUOZXBEp55shqd8n/Jy8P/HOWOrhbavRdFs0G+8WY4zDtDQ9bAKBewB9mDnU+TxdF2NX
         Kde7bUFgS9s/NKvnvphB8pop8YjqUAe2brNkzW6ijajUnH7VqogUyxGnQqM7nHO1MkHO
         OSlKXiToPYLDChISDwVMfZ8s+p5C1n8zEBF/KSece8OPNgajLgBhLBL+JdoNy5EJWrDE
         wxQA==
X-Forwarded-Encrypted: i=1; AKwUvBxHqMjukpOo7a0vlB2s6kaKNXEE43VmbGiOX41kdmwoZcTpGvhVvxyMEtP1aTGX0Dl+berp6fF0x9A=@lists.infradead.org
X-Gm-Message-State: AFuF++mAizYx6eJt0NURUV23MgH/paRgIfHwIAmlyYfWr9E+UpT51NSf
	XEl4DMCL5+YQpzksUfglNDx2xPpOIfcfRKVYoBEqhoE8O4Ha6vqUAB1C
X-Gm-Gg: AYBFou3cNTAe1hZeQZdiWFo2GZjzX0CBTFrP+DYTpuoI1257NeBwCbb+msrNSvMX+0l
	9LgkGwt/Fc8yK5l8ayE1y9Kc8slAQced2bS+o7cbSRjasmN73oYjk1atLQq10YXgsBpjgH9VG6d
	A7hhGD9Baw6xFryURPDS81J6zF4cXvdsK3Jtg40IjEMI2QSr4CWHxeuHL+ijbuMomdS22EEPgp9
	JBwz/P7aPYwBHr80xOcmqUxKY7+0D6w0UFwB7LcGNlnvYxZsF9ZcN6tJBzBjxSHiZWLf/yuGZVT
	mwZW5aE1/yhxJuo+IWg1zmMoQpXOVEF2C09H4xjlLJwRpg0s1utvR96JpxVV1oZHIyWqBK//hV3
	78mosKSiKeycs6sl1mABnfyALinx2AxSioeD6lp3eBQxqNZqeep4RihBNG7wKl0FGQm8uYbFdyl
	/wlAHxqrchVQSULrRUGZYql38aCJBTMMEJdx0WSTIkoULvq9D43wQRiKYwCjODfbrrqdGq6Q==
X-Received: by 2002:a05:6a00:4b05:b0:878:34d7:6a33 with SMTP id d2e1a72fcca58-87834d76e0emr5109717b3a.39.1789923798674;
        Sun, 20 Sep 2026 10:03:18 -0700 (PDT)
Received: from server.lan ([168.138.199.194])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-877a9d07425sm2140646b3a.42.2026.09.20.10.03.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Sep 2026 10:03:16 -0700 (PDT)
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
	linux-renesas-soc@vger.kernel.org
Subject: [PATCH net-next v9 08/11] dt-bindings: net: rockchip-dwmac: document pcs-handle
Date: Mon, 21 Sep 2026 01:01:12 +0800
Message-ID: <20260920170116.3624104-9-coiaprant@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260920170116.3624104-1-coiaprant@gmail.com>
References: <20260920170116.3624104-1-coiaprant@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260920_100319_583946_83420198 
X-CRM114-Status: UNSURE (   9.87  )
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
