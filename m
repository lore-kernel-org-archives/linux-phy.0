Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB3F7CCA479
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jun 2022 12:45:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzOqiMkzyJOJ5dT43oCBhl6jT9grJgDZTFwG5RWgShU=; b=Vl8cXFm1J//a9w
	BN2VoPOjV/pe2dTMSmb70mBnzUrmR4IrJe7qHRQsBPVh/jLyth7xDblHslCQReVdA+mWWHx9eMzKf
	1heBLqm5bF+f38s0OpYEgjpbw2mcrFrRFLdRAzbcTkla6cs+C2roR5c8oEiiWXdittsFQvXX/Nb+v
	/jTxt5g9QHhrnyS2iZ6R9Hwam3DnRXmwNKv1UKgX+wtbIwjv2QVImmvxf990qb5t5tbUS4An62miB
	/QWmPyogTEVwN4v7tYrNWU5r6DHlTpt0oQgStBb6Tn8IZoaCtVNYhc7GADIm1erHykFq1FDHxhQiQ
	Tpk+ZA1D9axSDR36QP+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aau-006DpO-5i; Tue, 28 Jun 2022 12:45:28 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6Aap-006Dke-3J
	for linux-phy@lists.infradead.org; Tue, 28 Jun 2022 12:45:24 +0000
Received: by mail-ej1-x630.google.com with SMTP id cw10so25547837ejb.3
        for <linux-phy@lists.infradead.org>; Tue, 28 Jun 2022 05:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CKQyH9C8gO8jBo4jczcS1bhOdjsHy0Bi1N6w+JS8218=;
        b=LjmaQv+UaMIjunLurOL+z37Ha+0Ha5xCcz8TSNyiWiX4mT4KHEwjXmxN+fag+bM0Am
         yDXP1r7Xc6Zz5IsXYiUJh6k9bSR4DbvAQr6mvKlUF1GPcxRFliO3pFHhUdQEFvePNov0
         +UIkfd/sF5nx41cPYL1xor8DJo3YHYiF/Im0ty1E8n7A12RL/Zo7VOtUYSr4JgaddVhr
         z/ErA31vpWhM9EtFwZomRV3mkYkLBlX1ziGbMxFswIl2irSQ/jybJ9VUylYimIv8ArsP
         Cdo7e59GNGqfPv89fyweeII2sry/rHE+H5XvLiw7049ZtQJl/rkSJiEKUNwVsOTBCfSr
         dryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CKQyH9C8gO8jBo4jczcS1bhOdjsHy0Bi1N6w+JS8218=;
        b=dLKIwGRtyEEQJDXnSdGvUyZpHYE/ReAwxA8BlkpzYTGlL0Ka4GZH5dgmpxDGdlfCP5
         ffXTSPmRkweS/Hj/nS2CH+REmelLPfjYEp+jrY9yYGy/CR/8DcxZ0OAY47ashgH/vChq
         E70Jnveh2/HBJ6gKwObGDqvdMrGXyMsj7HKbA0vzd5xS2Ny22ukDczHn7/ubN4Cgshv2
         1jJ4E0UuIUu7c09xwX5vITyBbmXCZlaQnhBEOQFoinVygqxthjgphNVTKcJiNvmkxiIw
         8808+wvP7ixZus/m+9UqOau0waUR+fsV6snW6hFu8AkWKEeE7IqO6wfuf4QjCz1WqtJc
         6ymQ==
X-Gm-Message-State: AJIora8AxqNZKHh7vkF3iWhKN4EmeMH3+wmnmNnY1sJYvIHI9yk6fyxb
	V4dnhEmN0NzRbFUvyReBgboEvvEmVpg=
X-Google-Smtp-Source: AGRyM1uy7MEZIEthYVomXDaHu9jetS7Xdb/FUEi0ipDJra34TCTFPRGKmuJ7DXtAsyRDRkeBXtJgBQ==
X-Received: by 2002:a17:906:e256:b0:726:abd9:1063 with SMTP id gq22-20020a170906e25600b00726abd91063mr8552132ejb.741.1656420320598;
        Tue, 28 Jun 2022 05:45:20 -0700 (PDT)
Received: from localhost.localdomain (dynamic-095-114-061-215.95.114.pool.telefonica.de. [95.114.61.215])
        by smtp.googlemail.com with ESMTPSA id f13-20020a170906824d00b00726e108b566sm622871ejx.173.2022.06.28.05.45.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 05:45:20 -0700 (PDT)
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
Subject: [PATCH v1 4/9] dt-bindings: mips: lantiq: rcu: Remove binding documentation
Date: Tue, 28 Jun 2022 14:44:36 +0200
Message-Id: <20220628124441.2385023-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
References: <20220628124441.2385023-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_054523_157780_699E1AB6 
X-CRM114-Status: GOOD (  13.18  )
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

This is now part of:
Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml

The PHYs are still using sub-nodes while the reset-controller is moved
to the main RCU node. Also the system reboot is now described directly
in intel,rcu-gw.yaml which makes the syscon-reboot node obsolete.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 .../devicetree/bindings/mips/lantiq/rcu.txt   | 69 -------------------
 1 file changed, 69 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/mips/lantiq/rcu.txt

diff --git a/Documentation/devicetree/bindings/mips/lantiq/rcu.txt b/Documentation/devicetree/bindings/mips/lantiq/rcu.txt
deleted file mode 100644
index 58d51f480c9e..000000000000
--- a/Documentation/devicetree/bindings/mips/lantiq/rcu.txt
+++ /dev/null
@@ -1,69 +0,0 @@
-Lantiq XWAY SoC RCU binding
-===========================
-
-This binding describes the RCU (reset controller unit) multifunction device,
-where each sub-device has it's own set of registers.
-
-The RCU register range is used for multiple purposes. Mostly one device
-uses one or multiple register exclusively, but for some registers some
-bits are for one driver and some other bits are for a different driver.
-With this patch all accesses to the RCU registers will go through
-syscon.
-
-
--------------------------------------------------------------------------------
-Required properties:
-- compatible	: The first and second values must be:
-		  "lantiq,xrx200-rcu", "simple-mfd", "syscon"
-- reg		: The address and length of the system control registers
-
-
--------------------------------------------------------------------------------
-Example of the RCU bindings on a xRX200 SoC:
-	rcu0: rcu@203000 {
-		compatible = "lantiq,xrx200-rcu", "simple-mfd", "syscon";
-		reg = <0x203000 0x100>;
-		ranges = <0x0 0x203000 0x100>;
-		big-endian;
-
-		reset0: reset-controller@10 {
-			compatible = "lantiq,xrx200-reset";
-			reg = <0x10 4>, <0x14 4>;
-
-			#reset-cells = <2>;
-		};
-
-		reset1: reset-controller@48 {
-			compatible = "lantiq,xrx200-reset";
-			reg = <0x48 4>, <0x24 4>;
-
-			#reset-cells = <2>;
-		};
-
-		usb_phy0: usb2-phy@18 {
-			compatible = "lantiq,xrx200-usb2-phy";
-			reg = <0x18 4>, <0x38 4>;
-
-			resets = <&reset1 4 4>, <&reset0 4 4>;
-			reset-names = "phy", "ctrl";
-			#phy-cells = <0>;
-		};
-
-		usb_phy1: usb2-phy@34 {
-			compatible = "lantiq,xrx200-usb2-phy";
-			reg = <0x34 4>, <0x3C 4>;
-
-			resets = <&reset1 5 4>, <&reset0 4 4>;
-			reset-names = "phy", "ctrl";
-			#phy-cells = <0>;
-		};
-
-		reboot@10 {
-			compatible = "syscon-reboot";
-			reg = <0x10 4>;
-
-			regmap = <&rcu0>;
-			offset = <0x10>;
-			mask = <0x40000000>;
-		};
-	};
-- 
2.36.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
