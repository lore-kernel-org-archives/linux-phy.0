Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14E98C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HKcSWfryVuzuVjjzoVR8F1sx/l2icEn5Q9gLP46zo+E=; b=DONMBb8P3qyxF1
	xzm0QLwI2Fm9OkCyHSQ85ZYadym4TDxRgzPG3/R1paiF+a9VzPsJcaF/TRl/qGxC+FlSFvqwoUyTT
	34ekaeSJLZAjSakV6d7erFPTnlhalG7SGbBdWJYjWoHlm+BDvZT3gIh22I/koeND0rn6RbD3YlddT
	qt9uMBkyyoOWxHZnm1sPV7Qt3Zl5FZMnVeSljC1h/lhiNHzxRZRfXW2SFrxTuPEezqEON6h6TQGa1
	J/9Aszkh5xas5bMemeng4eOdetfDs2ea5gOMUPNGUiFg5CT29SFuf+QgUyyVhMo3ew+mVxc7OGdqs
	vb/TvxGmOW17mPwnk8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aaz-006Dtn-Gj; Tue, 28 Jun 2022 12:45:33 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aau-006Dno-K4
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:30 +0000
Received: by mail-ej1-x62e.google.com with SMTP id lw20so25552190ejb.4
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4lchPYP/IyiWYBGbhJ8z0BxhrlEHqQ8KwuAEVEe5qTk=;
        b=FI9azK4scCMVGjJ5RzqsXlmja0FGvySyeKsvw6EkplLZ0r1jZjFRNKW6WMPun+RQvw
         MWelRC3NRNy9F1p2TrlGm+65fFTZLKHnY7DGNYgRnfYF8Z3btEnCj8dMFfEmDq3wEMwO
         25xzTGyUpwSfo5j/Fe3YUUaLJXsJGjILD+/PGtleqYbE0EFthANq8x8azTeOb6YYUtRg
         pMh9029N5PxDBc/PT/CKRoi6sWRiXw+6GLfuZxMqAR56gTGBCMTdTQrWj6lr62ad2djU
         nip7s+OjWo/NIGcU9obly5d0L/RyXsZLZ8dIU4NFBqYWjnrmdPqc0Km3M+r+2HxKHphj
         qtqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4lchPYP/IyiWYBGbhJ8z0BxhrlEHqQ8KwuAEVEe5qTk=;
        b=LcrAzc1mKl2W/OXUdkFcTXGLhZhjgsnqM2NqlsulEAIT7B9rOXQmSb+jkyv+T+G7qq
         h6K/Bjb/PWgolXaxr/23oPGN77PJu1JhCv1vcBvV2x9j0ZFtgxTllOBWBzVXVz2dVjhd
         z8wbPcifT6RH/jvm3p1FQWrsPwzNxjVdrV7rF6YbMB/evC401JNgntPF3NDHHNPyv8V6
         bhTnq7A6T55wVjfnp3WAxflF2SF7zc2HilILB73iKYtaNHuun8cJI5tWB9gq/WcJpCbY
         +3MuM8mzaRP0FnT7ZeTncfNEjX10pOxuZnviF+nrCXQfPyHBfaDX5TgoGyAoT1w4cLAr
         5q/Q==
X-Gm-Message-State: AJIora/tIybLseMIxwGK/EnpvcHg4E6vp+uvNSC+qm9yBdcu7XPSFzs3
	7pos6seWmxJZ1CqkHNimz6/n/DVUiW4=
X-Google-Smtp-Source: AGRyM1tUbRD9qAr2Ml1BZh/r3lbTY8/lgIU0dZECXsAOpJChKuAGiAEdUiE1r2GCtLi2Zp6IbygNNQ==
X-Received: by 2002:a17:906:7482:b0:722:ea8f:3a12 with SMTP id e2-20020a170906748200b00722ea8f3a12mr18125775ejl.220.1656420325113;
        Tue, 28 Jun 2022 05:45:25 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:24 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	p.zabel@pengutronix.de
Cc: linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	vkoul@kernel.org,
	kishon@ti.com,
	rtanwar@maxlinear.com,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v1 9/9] mips: dts: lantiq: Update the RCU node to match the intel,rcu-gw binding
Date: Tue, 28 Jun 2022 14:44:41 +0200
Message-Id: <20220628124441.2385023-10-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054528_697551_5B34D5A6 
X-CRM114-Status: GOOD (  11.16  )
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

Use the updated compatible string and also add the USB2 PHY child node.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/mips/boot/dts/lantiq/danube.dtsi | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/mips/boot/dts/lantiq/danube.dtsi b/arch/mips/boot/dts/lantiq/danube.dtsi
index 510be63c8bdf..8ac806662083 100644
--- a/arch/mips/boot/dts/lantiq/danube.dtsi
+++ b/arch/mips/boot/dts/lantiq/danube.dtsi
@@ -57,8 +57,26 @@ cgu0: cgu@103000 {
 		};
 
 		rcu0: rcu@203000 {
-			compatible = "lantiq,rcu-xway";
+			compatible = "lantiq,danube-rcu", "simple-mfd", "syscon";
 			reg = <0x203000 0x1000>;
+			ranges = <0x0 0x203000 0x100>;
+			big-endian;
+
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			#reset-cells = <3>;
+			intel,global-reset = <0x10 30 29>;
+
+			usb_phy: usb2-phy@18 {
+				compatible = "lantiq,danube-usb2-phy";
+				reg = <0x18 4>;
+				status = "disabled";
+
+				resets = <&rcu0 0x10 4 4>;
+				reset-names = "ctrl";
+				#phy-cells = <0>;
+			};
 		};
 	};
 
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
