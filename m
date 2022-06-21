Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64DA5C433EF
	for <linux-phy@archiver.kernel.org>; Tue, 21 Jun 2022 12:26:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Fzy6xtODbfAMwSm0kTMJyuArhC/csEZPQThNOMMZ2Wc=; b=JZe6G/H8G0XMwS
	9Y1wiUkLOZkppI+I8RoaYUtEEGScWbg8RjW0+9LO/3dk/9YOfZCx/Jno4RDwIVuc5AqIiJomenssH
	im67UMWYdubxmre8k9+V8SFTq+7K2u6518tL5GR8OOza/OIp1+UT2YoziyFN+vBCXFpjj/CVcuGyx
	rF4iFBjZotEIHjpu7PPe92yfLI6nl+A2Z851eZS+xYf+i+Mb39Lu0cYqnTrviKe0lOxHrBGoM1QZW
	iEcBbDg4rWgzu+ucjME8HhOP+3ma1pmxOJNFR/zW+lDbZf7+JsshlR90zO80yl1HUoY3D5uCGDx+e
	yqADxbxFxYRzmXsSr8fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3cy8-005LMW-PC; Tue, 21 Jun 2022 12:26:56 +0000
Received: from smtpbg136.qq.com ([106.55.201.188] helo=smtpbg.qq.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3cy2-005LF4-SZ
	for linux-phy@lists.infradead.org; Tue, 21 Jun 2022 12:26:56 +0000
X-QQ-mid: bizesmtp68t1655814248tsg3wlrl
Received: from ubuntu.localdomain ( [106.117.99.68])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 21 Jun 2022 20:24:03 +0800 (CST)
X-QQ-SSF: 0100000000700050B000B00A0000000
X-QQ-FEAT: dpyQmELDBxGZZGGMb7kRAH5LZZ0E9bcGybyJwXeI5Ux1xMw/S+RgxzsMBKN4j
	9TSlmwNroBUtec6Z+fHFCTOoB6F/3YZBTOVZtcp0SG30hTD4xn6Ed8kPJTCWQkHsjwx23Iq
	nGoLPi1Mcc19wofPJgcCQvug0c6H2qEMPc6y9Gm19fBVeKwCE7w+wQmWtsSd31dxUsC3nsA
	y5+eYioWyuTVfvkAWjZAf0Y9XBI+2JDgYgPOYoTs2e6pg6eKRrLgBCZXsps7zLoaHLZEw4Y
	wqn3A2MhoNItmeC+hVIJ0osb8gBFvQ8tnNHFKWneouSu43hdy3CHzIwDcCppU8Wun7tjmPS
	pGwy9tNogolY/c0OvPg3AQJ4zdKyw==
X-QQ-GoodBg: 0
From: Jiang Jian <jiangjian@cdjrlc.com>
To: alcooperx@gmail.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	kishon@ti.com,
	vkoul@kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Jiang Jian <jiangjian@cdjrlc.com>
Subject: [PATCH] phy: phy-brcm-usb: drop unexpected word "the" in the comments
Date: Tue, 21 Jun 2022 20:24:01 +0800
Message-Id: <20220621122401.115500-1-jiangjian@cdjrlc.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybgspam:qybgspam7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220621_052651_308207_9DAB4FCB 
X-CRM114-Status: UNSURE (   8.02  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

there is an unexpected word "the" in the comments that need to be dropped

file: ./drivers/phy/broadcom/phy-brcm-usb-init.c
line: 864
 * Make sure the the second and third memory controller
changed to
 * Make sure the second and third memory controller

Signed-off-by: Jiang Jian <jiangjian@cdjrlc.com>
---
 drivers/phy/broadcom/phy-brcm-usb-init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/broadcom/phy-brcm-usb-init.c b/drivers/phy/broadcom/phy-brcm-usb-init.c
index dd0f66288fbd..dddcbd3cd5f3 100644
--- a/drivers/phy/broadcom/phy-brcm-usb-init.c
+++ b/drivers/phy/broadcom/phy-brcm-usb-init.c
@@ -861,7 +861,7 @@ static void usb_init_common(struct brcm_usb_init_params *params)
 	brcmusb_usb2_eye_fix(ctrl);
 
 	/*
-	 * Make sure the the second and third memory controller
+	 * Make sure the second and third memory controller
 	 * interfaces are enabled if they exist.
 	 */
 	if (USB_CTRL_MASK_FAMILY(params, SETUP, SCB1_EN))
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
