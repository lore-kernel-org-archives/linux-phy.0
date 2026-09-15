Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42F1FC982C5
	for <linux-phy@archiver.kernel.org>; Tue, 15 Sep 2026 12:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	MIME-Version:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=3xiZz8PhGDZ79uU2bKp/VqHY1iFZ5t48TjhXOaQwjwk=; b=3Ho
	RNkWvvn7RJK5tv3wfWWGh6CdPk1dZM/oWO9jtHNmaRCM3Kmr4KXOA0kX6SGa7XfFOHsExt6F+Pbip
	4CPOSZ4wT+WfvrB6W3t9KW9ti60GbCny4tlBYAUxEOVMYT28sW5Tvulbfh+7TFGwPCFz3U2whCnBv
	fz/cpdP4YwPsSi3zRYFujurFQMl5wffLlZFPFYsfJpM7xlLdBuTcNucVb9rvS1QSdAHXFKV6e3o/Z
	uY9kjn3Urtpz1tkFbcwTRoxBA9eP5yW24IS6K1q3NUt13ux5wIvgKwmPD31Yc9/yZer/3kSuD0fEU
	T5w0ZCINEOd7+3U4JrNl0xEkas+Jc0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Shq-00000006d01-1hLl;
	Tue, 15 Sep 2026 12:56:17 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6Shm-00000006cyJ-3Ucg
	for linux-phy@lists.infradead.org;
	Tue, 15 Sep 2026 12:56:12 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-485984ebf5cso2539467f8f.0
        for <linux-phy@lists.infradead.org>; Tue, 15 Sep 2026 05:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1789476969; cv=none;
        d=google.com; s=arc-20260327;
        b=mgN1shLBmwc0hCnIHW1MVpMi7XBekFU3mb27LmJ/KaAq3PxZ7nhGH+D0uGdsPXKoiq
         UhbDq1cE09yWJVM63LGdif9Pm8zjTZADVYb782B4tCLru6SoXZbi5OjgooN6ZkSwXywr
         OD5jGMoqw/TENuLEa/Rk6sVzNFDHsOFKYzrtAZ7Kq44ESyZ5R9RhXoIx9wwkLv8WhGQy
         /xr3hrvheI9vprLnoRb4cxnMVYJ3cBhR4XrDUUWt/IRUejbkV6XbuaJLCLN8LrxQnQ/u
         +EKP+cka4z/QfLTFYGv1vAHmrVoIsRg7uDUkew8lCHFQR64oaeG0grVRUG45MFsMqOKU
         hLbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:mime-version:from:dkim-signature;
        bh=411sKqV2GJGQwqqWJ5O8YcfMEWWqnzCrZeNqnTXP5Mk=;
        fh=Dx+Ei0OX0rQQoRMjlElpqHrMKooVnYARmyQdzNjNK64=;
        b=GDIdBSMXD/eQgNFMCwuVkARpl1c70zl51A/DXiER3sPKyhpyV6xHDBtbc64ZqcB8IA
         n3/bWLLUVxUM0M5wfcxZljuYwxN8wKwvI4NmXkPRet5vN9CSMwmfAiZ5apof77pCu987
         YXeoxoEMLLpspNj4xRq2/7fYCGUG3QxB44y2y3o8DJqS5iccFyFinUv6YD13nSifD2AW
         oYhFS1nKmmNVTEvrujDrAfQqjRfw0Fbuzu5KbCJSO9poRN+Lgrz0eQGJy26NvGo+2Efg
         Sv1UN/6A/DUaens9NRS4npYLoZwM26uV5aIwshtA7UV8SoW4fwk5+aEw/tkgYIfhUZiW
         5ASA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789476969; x=1790081769; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:mime-version:from:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=411sKqV2GJGQwqqWJ5O8YcfMEWWqnzCrZeNqnTXP5Mk=;
        b=IMccIUEE51DNj1ltj7Xruh+c6iHCV+4meUeLcVR9WDmRsDhDENudaFp1E6X94o/9WU
         pwbqTL00qGe4I4jQXJFSLhGwQvzq1e87GYL5upCDH0MhVcscDQ403uI/2yPNAAVypBGN
         QuULvr8Q0jlASxBERhVfKNNW6rZQ4QrxpLoXEPTndM0uPP7FkQ/gdmQddJKp21Qq/74W
         iNNBp3qJvEygrlUIst4by4JIWyaU14wnJtFshP+11EUwggB1cqlE5flbK0le2jtoIpZT
         r3W+xbfjzT7zLaCoO0yQIZbVy7BRfO58JbBhRF5ftHzwT6EZ4M1gL1PAI6e01z5oE/3U
         Onqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789476969; x=1790081769;
        h=content-type:cc:to:subject:message-id:date:mime-version:from
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=411sKqV2GJGQwqqWJ5O8YcfMEWWqnzCrZeNqnTXP5Mk=;
        b=bwrEfXJWagNbqBX4GJufTtHu9yXNU/n24IIA4bPrtBUGvv9cG28QkY4+M8pJZ+wnj5
         j2be3w5Y8NMUvPUJMcYfh0hx1hxK+RLCA0s+rFkEskwSlmG/tg8PEvxbRbPjN5qhpdM3
         EEUQPGaDjIEePL5bvfI2YIJYk2MnXvGuBufffKBx/iG91VxZY7yvD1cIlvgboLz1XyMb
         tnTayUwiTTDwvVfxVCy2U0Nq9F2eLa2+t6XAAqdfs9Fmkw5GTVHv1TmmxJeZZ/0qRUot
         Ztt+GwIi8Sro43f0bcQmJaO4xE92Ez3hJW2x/AF8R7P92Wi4dkffqcNxPdZtMIp90mbL
         UWWQ==
X-Gm-Message-State: AFuF++k3+M/9B7cV4lP2eWLbG8PrgdztJ2pwvEb/s2UY67wZKrYuAaNQ
	wJvkAmtNou2Z8mr8AxpVbkLVyxQdQdySzRAsxRtZ5GIBk+dfEF9oeDp0RTkdrjnfN4mkMDTxZK2
	WgUCn0l3oCZdcT52IqwVYLXvyFXnH0K0EIt1iTWPcL7Sm
X-Gm-Gg: AYBFou2mHgwUTbLrXLK9c1rP8jMwGk9j7mqJtEfJZ3rbWMjfq1U8MMvvkmw8MSkC/Td
	7KoC4rXmuzXRlMFBeh99Ov0Wo2DxKO+0KxNY8Z4ttOLOmlqR2rIER7M+GO0d6KdY4HvbHyP7iQU
	8RXKEGzGKRd27cODZJI39QeKQgrQG9rlVikRuSQn+BzlvM2a3W6M+qrPQXjqig8HMCAk9TRVkUI
	Wtn+oX0VjB2pXZJ8IqoFJIM9zR2RO2kOGUn3lr30fgNRlBFoBDHjULwLb0DlNUoUsJWocVerXhx
	VKog/x9WieNAVb/vR5YOwORMHJLakrHyKKnKaVyOzIq0woyESH5QLw==
X-Received: by 2002:a05:6000:2c10:b0:486:fe41:804d with SMTP id
 ffacd0b85a97d-48702b19b2cmr9034859f8f.47.1789476969107; Tue, 15 Sep 2026
 05:56:09 -0700 (PDT)
Received: from 830778650420 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Sep 2026 05:56:08 -0700
Received: from 830778650420 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 15 Sep 2026 05:56:08 -0700
From: Ruslan Vagner <rusya92266@gmail.com>
MIME-Version: 1.0
Date: Tue, 15 Sep 2026 05:56:08 -0700
X-Gm-Features: AcwNN1Vd1DWI0fUV0KOoGrS7bc-p4JmZv8omHUSOcMVJjZ9XiTgZ0xLzw7kCeNw
Message-ID: <CAF9RqJ7iqOjXqX+95eM-0Hv1o=ZTJZaF8cMePGi7_NFnmsptzw@mail.gmail.com>
Subject: [PATCH] phy: omap-control: fix comment typo
To: linux-phy@lists.infradead.org
Cc: vkoul@kernel.org, Ruslan Vagner <rusya92266@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260915_055611_869015_2AC5D12D 
X-CRM114-Status: UNSURE (   7.71  )
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

Fix the spelling in comments. No functional change.

Signed-off-by: Ruslan Vagner <rusya92266@gmail.com>
---
 include/linux/phy/omap_control_phy.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/phy/omap_control_phy.h
b/include/linux/phy/omap_control_phy.h
index aec57dd784f7..5652aa2f4915 100644
--- a/include/linux/phy/omap_control_phy.h
+++ b/include/linux/phy/omap_control_phy.h
@@ -12,7 +12,7 @@
 enum omap_control_phy_type {
 	OMAP_CTRL_TYPE_OTGHS = 1,	/* Mailbox OTGHS_CONTROL */
 	OMAP_CTRL_TYPE_USB2,	/* USB2_PHY, power down in CONTROL_DEV_CONF */
-	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & seperate Rx/Tx power */
+	OMAP_CTRL_TYPE_PIPE3,	/* PIPE3 PHY, DPLL & separate Rx/Tx power */
 	OMAP_CTRL_TYPE_PCIE,	/* RX TX control of ACSPCIE */
 	OMAP_CTRL_TYPE_DRA7USB2, /* USB2 PHY, power and power_aux e.g. DRA7 */
 	OMAP_CTRL_TYPE_AM437USB2, /* USB2 PHY, power e.g. AM437x */
-- 
2.54.0.windows.1

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
