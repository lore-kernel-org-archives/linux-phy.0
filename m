Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1EC9C5320E
	for <linux-phy@archiver.kernel.org>; Wed, 21 Aug 2024 21:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3svgaC+Ug36abpSGiZsdYsy8rUZ/Lzo+0GvmPLoVnJ0=; b=qVxC2dxPaYIIcR
	kEcXb8TbbdgUyivjALrniT7YU4QbeOLqAmSZDrhKK2+WABkBid8yGqQshNoGqHNYprppPJsJiS4Qm
	EsNw/pCjTT898vmiOZBEWf+D+c5z6K7p2myx1uZtHUmBhrZc7jRuMTkb/iEizCMlrtsAWp5v6DiCV
	xgQK39rumeBWGQEXXTjMiJDL1xYvxbCI2Rbg0abajqazc/3B1KJMBJWCuifoiOOhd3KlQtmupLj+W
	LbtY0O6PeOHQ43GZ7RBJpjQcfv7JdWZUZpo11NVbNfGna4VQm5fovgX9GtK2gKJ6EBZiszfVch+Di
	6Jp7WMqLO39NgMs97u8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgtHI-0000000ATUC-4Ag0;
	Wed, 21 Aug 2024 21:54:05 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sgtHG-0000000ATTW-46ZI
	for linux-phy@lists.infradead.org;
	Wed, 21 Aug 2024 21:54:04 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5334a8a1b07so210552e87.1
        for <linux-phy@lists.infradead.org>; Wed, 21 Aug 2024 14:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724277241; x=1724882041; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rH+wXupdcEeWDpiy+UjjAtlMKoxWGKFGlfpWTlTHJhQ=;
        b=TnBEm3o8AASc456siNWPEbgKwa2LfFztUzppaW5GX09uImabw4WwZO6nQy2ulCoBei
         Y1PStluOBr4vxGQEh3OBFuNsQNwzrQ5C77CgLH8dLWsZNU70BA/cYdqMxWVo5QxFdSTS
         WcHMKCQomp5xShsA85tjdLVhmdmgWzzgbLJYjLjTT2+dTZz2YXC6SGKYqomN+kZRYRg8
         f1I9T4zUNY610JbMaUw51PlCTJgmKLx5z9KtYuLHO8y6/FcPQvGOjqKqA7OhqGHd2/lE
         RTwbdv5Vk89atMCr0+wfuKKrXEqw4pzR9LLCamOcZVpR6mDMPX2DCULvOWob/NgPoSKL
         WAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724277241; x=1724882041;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rH+wXupdcEeWDpiy+UjjAtlMKoxWGKFGlfpWTlTHJhQ=;
        b=BjoGiKPZQFTEQ2SHtwdhkClEGGGlPkTYkPIXFykx1B3V9D16MLeG91wUPKxAZ3bO7E
         ZhI2bC5eTPd5jBFgElSthmbrD+1u5mUTzhzXYUlymV4lrJQOHYOcetU1k/WBWHeMo5mo
         x/Hya+zgvlXYlY40PpRkorc8xbSQia7Af10S90ErK2j6ZjofNe8hm25BeZKonMp9+juS
         g52RQaTCQgdG5NcFFHWpm7FFcLUd1y09cJnACbEU8gkOInmmegxSs4ANoaNACfbZ29WQ
         11GTwLIWWB+nvrHJbqnXxts/NkC7lBwfLP6yg5wDIQdF2QAOG8daG8UHvLhx3RGkw3tB
         6DTg==
X-Forwarded-Encrypted: i=1; AJvYcCUWahVV7w9ny7Os6G3L9kpjaRSTcLT90/7607a9D7bS95LtDteKqdnySPnBq8sD1yw7Wm8JMEyLHhY=@lists.infradead.org
X-Gm-Message-State: AOJu0YxsyXhzVEwc6U0cSKIztJNdlrsyKECZSsOwqHhFk7dEZs7YsMeP
	Sw8lGSxgiYjvIRK+E3kM9JIJBOSdHSLyh5/0faWXzVsHSM6EXEAC
X-Google-Smtp-Source: AGHT+IGrRtTz0HBNaL45hxVnrFvxPbxlaVFlCrOhpoLUAniDrGhxVMVO4PJzIKURjs9bKHKKp+QjlQ==
X-Received: by 2002:ac2:4e09:0:b0:530:aa09:b6bf with SMTP id 2adb3069b0e04-5334855d450mr2500693e87.24.1724277239903;
        Wed, 21 Aug 2024 14:53:59 -0700 (PDT)
Received: from ilordash-vm.mshome.net (95-26-8-211.broadband.corbina.ru. [95.26.8.211])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5334ea89004sm15623e87.274.2024.08.21.14.53.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2024 14:53:59 -0700 (PDT)
From: Ilya Orazov <ilordash02@gmail.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Aswath Govindraju <a-govindraju@ti.com>
Cc: linux-can@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	Ilya Orazov <ilordash02@gmail.com>
Subject: [PATCH v3 0/1] dt-bindings: phy: ti,tcan104x-can: Document Microchip
Date: Thu, 22 Aug 2024 00:53:56 +0300
Message-Id: <20240821215357.20224-1-ilordash02@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_145403_037859_EE3A83EA 
X-CRM114-Status: UNSURE (   7.85  )
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

Hi all,

As suggested in the previous email conversation on this patch, I am
sending this new version as a standalone email. I hope this approach
makes it easier to review and keeps the conversation history clearer.

Thank you for your feedback!

Ilya Orazov (1):
  dt-bindings: phy: ti,tcan104x-can: Document Microchip ATA6561

 .../devicetree/bindings/phy/ti,tcan104x-can.yaml    | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)


base-commit: b311c1b497e51a628aa89e7cb954481e5f9dced2
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
