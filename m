Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12AABC531C9
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jul 2026 03:19:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VPOFU6571KpEvwXGXLNMNath7FnVnqtTEV31VKNLFKA=; b=2vgk+H1Qsp5Qq6
	yU5GnNuVrlz7i08PxlKohCN99XzSfnTwPpv7y/nHGEnL9J2TMExcCc3npzcbWwf5R2yja+TmT5qZo
	J8d+umowJvOjqrmKFAxl+BXwqiEe8+lVje8L6AYhtSDs7pWuhaH+OJfBs0NqEFfq8dq7hve9ipUbo
	EPpzYTIx8cAZCA0qCRV6cKgycbt5CbkjEDOwnskoGNA9TxVrAOytePP7ZApdnXFYEMR5k6yLDaxKX
	9Xv5M7jn0VAK+vwC07WtTKnLNKzstVT6LWrOget12Pyn76Bmfruy25KOOC1nWJunVzmyxjiUydZuo
	4xFWjJbzbHhQLb6QEvlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSvJ-0000000HY33-3219;
	Sat, 25 Jul 2026 03:19:37 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wnSvH-0000000HY1Q-1knU
	for linux-phy@lists.infradead.org;
	Sat, 25 Jul 2026 03:19:36 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-ca24d39d8a4so635039a12.1
        for <linux-phy@lists.infradead.org>; Fri, 24 Jul 2026 20:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784949575; x=1785554375; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=TSv4z6+j0ETigrrBAdkCkvY/jDNAOWHrT+gEbT1n1Mw=;
        b=eDbjJKk0vAH03Z6ZtjRFJ+CAPt+vjg+jM49y6yPkVSzDwWgAiJVAKXTpSf30vgWFcy
         FHyumjf0LcDNtU47MZGQaO4PiDQAEnYPkaqRpPc5bkrWtO/Z9w6fgs+XfoLD89pwFvM6
         cox8/GdKfh9u0P63Jfz0bV1K2EoqOAk8sJkxWWWfbeqjavfowKg6m/vZKMrHqogypHkN
         qlMFOyl+PFXlNNeg7WFo9h+T2Sl2X/5KDvk9nOzNOjSJ+IlY3+qbFxCK4KbhtsL9JpVE
         xFN2hsA2kMROC12n8ig8x+ocSTBTf6SPCC9pKAlq5hjE9dxAMerusqAli7F/4rFsIuFS
         2t0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784949575; x=1785554375;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=TSv4z6+j0ETigrrBAdkCkvY/jDNAOWHrT+gEbT1n1Mw=;
        b=AGQ54g6+cXifqBiUbKxV090AY5mMdnlQ66G45Ch5PAhDbF4ACkrphMTjHLjwz4EaXp
         GLi0+pUpdL6haj/NkOrYxzFvz0rm5pqaUwcpJcF7v9T1tcXUbAZJ4m19N1ulvQcfKvuP
         uAZSNyVLkt2wL4Q1Y8bTMRiLwf81aYzsawi+Hc2KNdn/2sG+y+QtXjrVSOLWAXb+U5Kf
         c1i/MDQCyrLdglJNFa7YakQ7ffdbbCPhgEckGeFH3JZsRLTjdrPFzzb9EpgC1arwCpam
         LoiDd3yJ8QPjgW5hJexueemYcDhbxygXaB0uz56u9ZIoFOm25xoBhM9jTWhsoKfGlmOC
         L7cw==
X-Forwarded-Encrypted: i=1; AHgh+RrQ5oK454OrgTDZ7IlgHLrvm3hKRyUe71ZOjj5pNdYq/eUwy5n8YlkDK9DJGzzgsTKWZ0SYlsqTBpo=@lists.infradead.org
X-Gm-Message-State: AOJu0YzbcB8AN0JtEV0WhGAFTMfiGSsJ91Z+2L6dvrKIwmN+qSye9Lyj
	D+sEIGc3rQ5AI9KlVjmt4iWfJyhP52uap9xtxcXRwT5VELdMP08a+qpr
X-Gm-Gg: AR+sD12008j6VRraSnR9mHsGL22M9uEyi7Romzfd6MDDPJBYuJa7tC1aHmt4WvkZg03
	3jXarNj5SVGLludQQCdqtUZ/DO9TdPN7AeLY4mRR9gp4v91ktWvvUD9Fl9etqtRQvgH6MjtDdRh
	vOpInlREYY7rvcdITfqHAjY9aVvVaDoC+/EHmWJSRXKyDYYJob9wm856ET3Zv/azgoCDxYGCcdy
	YjvJsH4EYLE012tZCVOyI2D876Okf91VuciGD/kmCuMuELcYMDAaLSV3Z+Fdy7Cxz1vy4IK8ynj
	ceXk+qX5r+KSdUoFnYFYl5jcUkFOzgTKedc8RA7lJpDQ6noX3ODTpV8pkt48pFw9x2XkWFyuWKZ
	rKMaXiVj9Iv9zxvCcLjMinfm5MFDe3OQs35VGXEPkqDYOzt4xDzLjXEE=
X-Received: by 2002:a05:6a00:298a:b0:845:c906:5ff5 with SMTP id d2e1a72fcca58-84e5944d694mr613698b3a.30.1784949574747;
        Fri, 24 Jul 2026 20:19:34 -0700 (PDT)
Received: from [127.0.1.1] ([2a12:a305:4::403c])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84e53432834sm640542b3a.50.2026.07.24.20.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jul 2026 20:19:33 -0700 (PDT)
From: Cody Kang <codykang.hk@gmail.com>
Date: Fri, 24 Jul 2026 23:16:48 -0400
Subject: [PATCH 16/17] riscv: dts: spacemit: k3-com260-ifx: enable the
 DisplayPort output
MIME-Version: 1.0
Message-Id: <20260724-k3-display-v1-16-f22a10a52867@gmail.com>
References: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
In-Reply-To: <20260724-k3-display-v1-0-f22a10a52867@gmail.com>
To: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@kernel.org>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Haylen Chu <heylenay@4d2.org>, Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Paul Walmsley <pjw@kernel.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Alexandre Ghiti <alex@ghiti.fr>
Cc: dri-devel@lists.freedesktop.org, linux-riscv@lists.infradead.org, 
 devicetree@vger.kernel.org, spacemit@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, Cody Kang <codykang.hk@gmail.com>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260724_201935_487982_165B7AAB 
X-CRM114-Status: UNSURE (   8.81  )
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

CoM260-IFX carries a single DisplayPort output, so the second DPU and
the DisplayPort controller it feeds are enabled.

Signed-off-by: Cody Kang <codykang.hk@gmail.com>
---
 arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts | 11 +++++++++++
 arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi   | 11 +++++++++++
 2 files changed, 22 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts b/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
index 238bb03d0e9e..114d0e02fed9 100644
--- a/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
+++ b/arch/riscv/boot/dts/spacemit/k3-com260-ifx.dts
@@ -5,6 +5,7 @@
  */
 
 #include "k3-com260.dtsi"
+#include "k3-display.dtsi"
 
 / {
 	model = "SpacemiT K3 CoM260 IFX";
@@ -19,3 +20,13 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 };
+
+&dpu1_crtc0 {
+	status = "okay";
+};
+
+&dp1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&dp1_3_cfg>;
+	status = "okay";
+};
diff --git a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
index 2f36eba20f1e..dbe8db4a8b76 100644
--- a/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k3-pinctrl.dtsi
@@ -22,6 +22,17 @@ dp1-pins {
 		};
 	};
 
+	/omit-if-no-ref/
+	dp1_3_cfg: dp1-3-cfg {
+		dp1-pins {
+			pinmux = <K3_PADCONF(72, 4)>;	/* dp1 hpd */
+
+			bias-disable;
+			drive-strength = <25>;
+			power-source = <3300>;
+		};
+	};
+
 	gmac0_rgmii_0_cfg: gmac0-rgmii-0-cfg {
 		gmac0-rgmii-0-pins {
 			pinmux = <K3_PADCONF(0, 1)>,	/* gmac0_rxdv */

-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
