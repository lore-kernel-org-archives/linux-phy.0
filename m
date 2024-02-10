Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B449C48260
	for <linux-phy@archiver.kernel.org>; Sat, 10 Feb 2024 20:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Af5sI1gfdPUpNCQUUSnL7hiaKp/0ZlrQJ73MKFqux3o=; b=JkTX1kNQbX0xdT
	FBajUPI4wZVlTrrSRA41M/+OrprTzuU/84WN3s22NsaxvoTmYOgpLeMRYn6DFaCAFwCBaAgp34uev
	c05OU79HOOPIBTnsTZjEjW3srNXx7biKxmfN6QwsfY0lvotWP0hYR7UfFMvxMBeCfFlsJKdi6eCPq
	r/yr7w90Ld96Gqhd+jomVSK8pLK8xEFmJzERDbL7wc0ZDOYGaZEU6e8gkL2Ev6HvwC96ZWOH9/CPe
	qpgkcaJo7gnoTK5FvsJaH2o+eiX87g8XB+Sg0HH8nWSccRaeiXlEMiOZGCl0tRe6FApb6APKzFcSc
	JDjSuDy1C6qo2FQQeg5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuFH-000000020DZ-15Mu;
	Sat, 10 Feb 2024 20:46:43 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rYuF7-0000000206b-1bTJ;
	Sat, 10 Feb 2024 20:46:34 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-604819d544cso20932327b3.1;
        Sat, 10 Feb 2024 12:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707597991; x=1708202791; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jMNqmGpCpYRyGD3lm2gu6alF/32hYvXVEyCc/US0g+U=;
        b=AtcBcUC7DPusaqdCtlSmD6PdUAmIPpl8/+pJITSsC64K4YFbbHgOdtthl6UIJKbtNe
         XdRWqT2HVvp+F8h7g6R53BVjJY1x+hTOiFRcbzPNpp7X/XXWIddqvdRtuemYZbZhFhn7
         mphrpFWjg3kkfyFCsX6EUqGuH8Yj55Um8y/Wu6AYyfhpdRQKbb51fXCz7SbJzvna3QFC
         ivzHbgXUGeCWWDip9B6oGCpuH1pVbpISZWoMuNsWpD8NlWMAh2v3FhtZSD/ZM3LJH+pY
         2klHmjZNPfBx8QZoDvaiBFhUgqFpe7sraZHB90ZP63OJYe/u8PguMAUHqdJHHhkiQ8jx
         OgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707597991; x=1708202791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMNqmGpCpYRyGD3lm2gu6alF/32hYvXVEyCc/US0g+U=;
        b=M1ft7hw48/9AXT3Kjxo9ZJwH/2pxFlPH8wwtP6UroAHyI6UfekEqszCE5iHGEExcYi
         o6KV2eIoNFUTL/Wjb2AuufDfaJKs8Z8MaPPkQJ+TSCp37FxgdbRdsXVqqBNOJ3HOIxGw
         o1rokkU0FGg4FVNqY8zvzn4T2XqymEyJBPh7aMcU9Tt4fzDMy6aZAgqZ9KHLKnynv37s
         +cNjAoCtUbXK8irFb7ZL2qlMNklUhk9ZSwKYVe2WUnc1vKesCrMPhZHP4Xp/uJBgiVBJ
         UwpEd80vonacC7t2wCjp5aQ2hvj87KBH2R6NhQ/xdrKWGOQ6YHg5rXF0nP42seWW5vMY
         PZ8Q==
X-Gm-Message-State: AOJu0Yy8u6TE133PZ3IX2Pt/r+gD27v6dFdqEEeiJ5GvGdNZ4xg7G58Y
	EA/A2ekMzI86FWRh4ngL6DDVUmAqPGIlHOOpjHsd+gDQ6boO//Ijgw20tG5D
X-Google-Smtp-Source: AGHT+IHgx712Qt0uPzY3BKOyK91B3LD/rc1vFptzX160m43q2KsKblVYhW7VrPbTHGq3SN6LhllN8g==
X-Received: by 2002:a5b:b0f:0:b0:dc7:49da:5f4 with SMTP id z15-20020a5b0b0f000000b00dc749da05f4mr2754107ybp.11.1707597991484;
        Sat, 10 Feb 2024 12:46:31 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVR6ncD88zt1yVh3P2jEjcgsr1octwT0Xcboct6HI+KW6uiASuYizor/YMwjA/4YBU7J4v1FeUR88pazimK2bL68tdOTAyYfSb/ds5aUAx6J3lpvN3WYqFOzuEeXHYB/W3ViaxfIuTRqjI2uvi/EBLHTtfOj7ukXeSOYe1Nd6tfJNwG+43UDTCvXyYVRfkTq8BLyrBa4y7J7BXkjqZlYUozI8x3Pn1Fa328zhGAdvkbzCQg6n2atr4pRUM/Bo6q7Z1GvJIbLKbsZsceiuOZwRdXAeKDfpwXlKYkI9ShmjInX45mUX/lvzwd6ZLlSSKsOq4duF7Mv7R6AChrWWH4kc1+DQrVPF8XXaLdwJe5ieaBOhg8CBmluRLRab9eqRpBLPcKu2woU8laW3ZtwQ+kPiYgBjdaqeNIajdZScZFNL97YFE15YmF3+VYdJdWan39AGaKOBxKWqgT+7q/r6Hq4ul8ujbaV7NessyP64Q6NDVjKWYiQJByNU+/3U3FKwgJVt7rOsuA3JbY+VvQc3hub6I6HP2RhG3F2vkTGZmC2z0bn6UsuSW3yw2H1Nfw5hOUnNJaitQv9JhExulkZufn1RP6CfX1xcepclF61Hg4s8OU0g==
Received: from aford-System-Version.lan ([2601:447:d002:5be:27d7:3989:2897:88a7])
        by smtp.gmail.com with ESMTPSA id m20-20020a0cdb94000000b0068c9db26ae1sm2079526qvk.41.2024.02.10.12.46.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Feb 2024 12:46:30 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Cc: marex@denx.de,
	aford@beaconembedded.com,
	Adam Ford <aford173@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Lucas Stach <l.stach@pengutronix.de>,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH V4 6/6] arm64: defconfig: Enable DRM_IMX8MP_DW_HDMI_BRIDGE as module
Date: Sat, 10 Feb 2024 14:46:02 -0600
Message-ID: <20240210204606.11944-7-aford173@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240210204606.11944-1-aford173@gmail.com>
References: <20240210204606.11944-1-aford173@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240210_124633_456358_92F07F22 
X-CRM114-Status: UNSURE (   8.32  )
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

The i.MX8M Plus has support for an HDMI transmitter.  The
video is genereated by lcdif3, routed to the hdmi parallel
video interface, then fed to a DW HDMI bridge to support
up to 4K video output.

Signed-off-by: Adam Ford <aford173@gmail.com>
---
No change since V1
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f44b3abf3cef..03ba9e89a0a5 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -886,6 +886,7 @@ CONFIG_DRM_ANALOGIX_ANX7625=m
 CONFIG_DRM_I2C_ADV7511=m
 CONFIG_DRM_I2C_ADV7511_AUDIO=y
 CONFIG_DRM_CDNS_MHDP8546=m
+CONFIG_DRM_IMX8MP_DW_HDMI_BRIDGE=m
 CONFIG_DRM_DW_HDMI_AHB_AUDIO=m
 CONFIG_DRM_DW_HDMI_CEC=m
 CONFIG_DRM_IMX_DCSS=m
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
