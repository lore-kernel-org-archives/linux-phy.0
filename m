Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2F08C5DF74
	for <linux-phy@archiver.kernel.org>; Mon, 17 Aug 2026 21:48:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHViS3KV0TAedx0Y9qKh1d+rm3pSj78AKE7AxYhnyT4=; b=xMFGjG0i8C88YE
	+Fg+UhKP1J+WSOUvir+vB8mYNn1mjLNBOkhZyLIDeItlG6X/8Xg3mlp3Qr9OG+8qgiE78ZRyAo/Yq
	EQ5CCrqYtXnZqqUnON+rwZVdkSD9W3t5kTaL/+k+L3SPdM3gsQKIAbHiRPAU3md63AzWUWvL/bARy
	KzMt9XoZqvL0Q89dmj26TFIzq9C+9PmlyDqgMLOWKjeglJLm6OtBrRWN+O86mDvQJ361a4xTxm2NW
	B8ibK1iQHq1bF4WF8mRs1autRbrEi0GmQnrJQSaU/ivpY1BmD1BnSKHNgkycL899XuqepTwYPz8Ry
	oIGPzAczojWJOLbUM46g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5BY-00000006sNA-0FMm;
	Mon, 17 Aug 2026 21:48:00 +0000
Received: from mail-pj1-x1032.google.com ([2607:f8b0:4864:20::1032])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww5BW-00000006sMX-00cU
	for linux-phy@lists.infradead.org;
	Mon, 17 Aug 2026 21:47:59 +0000
Received: by mail-pj1-x1032.google.com with SMTP id 98e67ed59e1d1-38f57e312ecso460720a91.1
        for <linux-phy@lists.infradead.org>; Mon, 17 Aug 2026 14:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787003277; x=1787608077; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Shib2rntu2e/Z5UR8HQqW2K03GJsazba3W0OpgQm6G4=;
        b=TworFkAsyoajMkjssKMao7olxHhM8p4VyYGoyqspaRnD+iaI3M2DiL/hOZf8jg2/ZE
         D8O+miYSuwDzIAcZofmTmDCZEWJ8N3RtVo3m3ajbK9WAoQNJy+RnGiW8UcHusK9uEgI7
         VIJq/snQ/WoXaJydShoBYbhKuVQ5l6viugX7CmWS6quBh2FNa5MQaIlYcoLLZIrWz0mR
         2M/VhPejUlXT4n61txhiQ+nKTCHllhOPRgBHqvmvFjQsvz5rzl5kuOdoy+P7viGRKWJe
         mPjWXQsBez/fjuzUsxXX/ByqscLWKjQwQ3dd5MDR1liosOpBw1cE8xZnAd7oaCSARLvT
         I5TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787003277; x=1787608077;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Shib2rntu2e/Z5UR8HQqW2K03GJsazba3W0OpgQm6G4=;
        b=WH5Gbv4PQynFqXUfl251DrBo15kesBa1c1MdzT5OKme0P853FUwJHydzyzRqV2QYQ2
         2/ViidvlxXXdn7cbijE0ZwnheD5CohBhv7cS3T3apb52QcMKMN4Xe6tXafUeDF9FSPLi
         BzQXJiTsMLMyzqaDC5FVhtemO5XOlDjOzUNDwSL1I8HqtQJ4uFgPvt19mOel6nltavxx
         qtC9u7uyhh3Vy0o3Zvks5VewSMgnki/EJk2/FT1MQdI1Erav3lHqvxrgI8/ac5KnB3Gh
         VSHJ1c2FJ5CQZY0T1BRgL7RFjYqAl6qN/wERyhZvE3DblcDJVgm4L4VTHT9yYYr7Bgtx
         qy9Q==
X-Forwarded-Encrypted: i=1; AHgh+Rr3I9WQlBJu0HZH4amwRp0EfTLlBTua3k8wNAyOuax6iIkj4pIdgs93UGbH0MsqxgHSMy8cpsToHew=@lists.infradead.org
X-Gm-Message-State: AOJu0YwVNPLeXPqtP4PjaVqiC94DdhujyR8cHJjznbPEZo8NGv2mK2uN
	Hv8XxaHfgGOPE5dPbJk7J7Zmn0IiwUIYgA70nZBirH+MloGKTF2Ezv3w
X-Gm-Gg: AR+sD10BKzQ6etluk5+muRlRXbUMZj88NHX0NeYjQIANik/peDSv8s2eTc71JhK1G5g
	vyCwczm6H1aVeVZ6Uoez8mIKGyiMqNIDBLzcjFQe/sij1A7bkBRCJf9caEWWCcCUn6+XSsxxCcq
	s4prK0DFtQ/JMIZCFo4reeCVZTLj7cS46bAPqW0/C/3b56cLxqjzFGR5KYAipWFdZpBYmSu1est
	8fwUjRus5LuqqvJTnlOCHRtjOHB1dYfZxk1B8r68rtYLDLwPpDk6sg0fIHYR8OMh74544xO2CIS
	d0aBRuPKIkvu5Kk001+/iqz6lowVLiKSEajPpFRjMmPqbYfa+vcIz76rOoMVhDYSAdrzVV/GKCY
	kVYgDGj4IgrwT+XNa1PV9mDy5cJGsk+2VixsNE49Jr+a6HRTvH7rHlZHRNpAtO4R9AVrj7ei/60
	+EYUEtePY3Pq9G4PJTVjTPKRuhIZvbRB3gHb9MlH7zise7CECaK8xQYTgHjiR6ep7ESeFn5gJx9
	t8=
X-Received: by 2002:a17:90b:3b42:b0:38e:c140:2a0b with SMTP id 98e67ed59e1d1-3933baae9c6mr19716659a91.3.1787003277081;
        Mon, 17 Aug 2026 14:47:57 -0700 (PDT)
Received: from [10.112.173.252] ([2409:40c2:5053:3384:1c8f:aa2d:e07e:6d3d])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3267c388e3csm10153024eec.21.2026.08.17.14.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2026 14:47:56 -0700 (PDT)
From: Bhargav Joshi <j.bhargav.u@gmail.com>
Date: Tue, 18 Aug 2026 03:16:33 +0530
Subject: [PATCH 3/7] ARM: dts: ti: am335x: Fix redundant interrupts
 property in USB nodes
MIME-Version: 1.0
Message-Id: <20260818-ti-am33-usb-v1-3-69ac5f92df45@gmail.com>
References: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
In-Reply-To: <20260818-ti-am33-usb-v1-0-69ac5f92df45@gmail.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Vinod Koul <vkoul@kernel.org>, 
 Frank Li <Frank.Li@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Andrzej Siewior <bigeasy@linutronix.de>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Ravi B <ravibabu@ti.com>, Kumar Gupta <ajay.gupta@ti.com>, 
 Sergei Shtylyov <sshtylyov@ru.mvista.com>
Cc: dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-phy@lists.infradead.org, linux-omap@vger.kernel.org, 
 goledhruva@gmail.com, m-chawdhry@ti.com, daniel.baluta@gmail.com, 
 simona.toaca@nxp.com, j.bhargav.u@gmail.com
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1787003201; l=2514;
 i=j.bhargav.u@gmail.com; h=from:subject:message-id;
 bh=2zGPgT53nMyKtGN4bplmgmbVd+Cg1WvfyXIJuEqowq8=;
 b=J2aDNs1JbD5WHy4QICMYeixKDDwKXUIq702t65HPDqSG37dUVXssumHiJUZjcOf+0PeHyYsGR
 5w/krRlhbnHA8APgYbNaYQk/sTkjsf2Rt5UBG/QDaHSLSoX8bWnhSSs
X-Developer-Key: i=j.bhargav.u@gmail.com; a=ed25519;
 pk=IqNDwUZKECEA+n8wXctFLBbYL9NhFstZNbOznm/nX1k=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_144758_053407_80C8452F 
X-CRM114-Status: GOOD (  10.35  )
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

The am33xx.dtsi defines a single interrupts property for the MUSB nodes.
Several board-level files override the usb0 node to use
interrupts-extended instead to include vbus interrupt.

Since both interrupts and interrupts-extended cannot be used
simultaneously, Add /delete-property/ interrupts to the overriding
nodes to resolve the schema warnings.

Signed-off-by: Bhargav Joshi <j.bhargav.u@gmail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi   | 1 +
 arch/arm/boot/dts/ti/omap/am335x-boneblue.dts       | 1 +
 arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts  | 1 +
 arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi b/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
index 1d83fc116b66..c436edd98e10 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am335x-bone-common.dtsi
@@ -197,6 +197,7 @@ &uart0 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
index d430f0bef165..7da2fb782ab2 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-boneblue.dts
@@ -304,6 +304,7 @@ &uart5 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
index d21118cdb6c2..6bf388c4abbf 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-bonegreen-eco.dts
@@ -35,6 +35,7 @@ v3v3: regulator-v3v3 {
 };
 
 &usb0 {
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18>;
 	interrupt-names = "mc";
 };
diff --git a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
index 23caaaabf351..068ea23bbc0c 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
+++ b/arch/arm/boot/dts/ti/omap/am335x-osd3358-sm-red.dts
@@ -376,6 +376,7 @@ &uart0 {
 
 &usb0 {
 	dr_mode = "peripheral";
+	/delete-property/ interrupts;
 	interrupts-extended = <&intc 18 &tps 0>;
 	interrupt-names = "mc", "vbus";
 };

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
