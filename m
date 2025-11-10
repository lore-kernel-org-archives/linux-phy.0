Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66CF0CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 11:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7p61Te3IiYMri7kUPb6CJcpj+zYbDwM0lh6Iqub9jlc=; b=F+kXEeWpKiizNU
	XMnE/Ng1OUR2XagyfCNAeTDYVVqSJYyrG4dE65XN5iAZQyJ/LrrBUUe7S5IakyKWn7S4sMNNNgBKW
	MnXyv7jX9QBJTgbfrdKr2hnXh4n7v6w6vF/VWMKnAfjUhsKI0JOZVSqMs5Yy3E8ksG424W2ayMwvM
	I8eyxxW8nEZULQsQGdlTVn0LfnafZ1CNfEIxDZcTcJGj2DuWM0cyT2Bhq0flAZWJUCW8GdG5BtOLr
	BXPgmvxqOw2IqDg8dCnBbvtv3GMYCrvsv6lRnEFX20j905anLv+72bf5pWpOGM4OVoILQCYn+TzsB
	BVV5qZF8j2iLPrZdg4+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPkd-00000005GYn-0lQB;
	Mon, 10 Nov 2025 11:07:59 +0000
Received: from esa.microchip.iphmx.com ([68.232.153.233])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIPka-00000005GXR-2R6E
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 11:07:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1762772876; x=1794308876;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=nY54tNQZRNsA3ET/r8aV0I4+8hBiMJ/ai9gOGg/UTzU=;
  b=v5NT8ZbHiTwkADXnbBIsVY9EXUeZwCuByMtbpf1urXMKfnWLqNoiC7+U
   jMwUoLiLyKPA/cIn18CswYHgEoYT4WBfhQhcQ/z9styjrbOHQjanxM48v
   jMBMebT4qM6hhPWjdAYs49gbxD6ZG25AIlJgRuIh9Huj/tUbGXTGWV3jS
   0X+zfG1FT/HhK1A23gQS6wHcVQ1Pzr4/jEMQe2Ng4bHxVOoRza0OvTzWz
   h9pl+EEmJbxMXtM1lBDzWAEd3ov7kFc1wfEYIjJ5LBDUuG0qACIOPeMuh
   XuMGPRdR9aGY3uxU/NFleye9C59vQiACcGtIrBvjnp6jndnL8cjNOBGMR
   w==;
X-CSE-ConnectionGUID: KW7TDCp/S/GQVmM2i4LhMg==
X-CSE-MsgGUID: Y0myGoTVSLqXvgm5ru5XdA==
X-IronPort-AV: E=Sophos;i="6.19,293,1754982000"; 
   d="scan'208";a="55314299"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Nov 2025 04:07:55 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex4.mchp-main.com (10.10.87.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Mon, 10 Nov 2025 04:07:24 -0700
Received: from DEN-DL-M31836.microchip.com (10.10.85.11) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.2507.58 via Frontend Transport; Mon, 10 Nov 2025 04:07:22 -0700
From: Horatiu Vultur <horatiu.vultur@microchip.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, Horatiu Vultur <horatiu.vultur@microchip.com>
Subject: [PATCH 0/2] phy: microchip: lan966x: Allow to invert N and P signals
Date: Mon, 10 Nov 2025 12:05:34 +0100
Message-ID: <20251110110536.2596490-1-horatiu.vultur@microchip.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_030756_774612_6030934A 
X-CRM114-Status: UNSURE (   5.68  )
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

Allow to invert the N and P signals of the Serdes for both RX and TX. This
is used to allow the board designer to trace more easily the signals.

Horatiu Vultur (2):
  phy: microchip: lan966x: Add support for inverting the rx/tx lanes
  dt-bindings: phy: lan966x: Add optional microchip,sx-tx/rx-inverted

 .../phy/microchip,lan966x-serdes.yaml         | 24 +++++++++++++++++++
 drivers/phy/microchip/lan966x_serdes.c        | 23 ++++++++++++++++++
 2 files changed, 47 insertions(+)

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
