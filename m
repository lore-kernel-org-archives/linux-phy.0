Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F10606A31A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:52:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LznvKXAh;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GcRiIuNN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=hqOaakHJklsgwmub9qil/IlYcd32iFlm+wTDEQ569kc=; b=LznvKXAh9H05OzjG8VUI6juEHS
	F3Ii6jkrO+b48uyZz99v/f6DNHEXejvfJb3CyOBanxU3INscPiHBmUQqLjy+6jWdFMjXQvfxMjX8I
	TE4mo9AWsN5XqHW8ZmAQu0XCqC8rlkTzc1QhsnSaSE7CBGLZsapmtKHvivG5hM8sKYPW1PHfdW9BV
	Kik2rR8C6yNIGXXxIO+h4DHHIS+eF4TxlDyUr1syti9X/tHZ9oXJeJGkBXg2PvOYHCvRs8kU2OJiP
	OuwZ50rDzNDW5NewK6pI4vU8vzhANTN87eQZWOVnlzNSM/bOSzNDfY9/G2j1Zofs/ksum51epAI7l
	BSwrrePQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7dC-0000000DHEb-10Ne;
	Sat, 31 Oct 2026 11:52:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7dA-0000000DHEM-2emh;
	Sat, 31 Oct 2026 11:52:16 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id EA5CC600AA;
	Sat, 31 Oct 2026 11:52:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 814181F000C1;
	Sat, 31 Oct 2026 11:52:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793447534;
	bh=9Ay0Uphyqh8pBNJsvyLRjiYJfSU/4vk1J3U5tmO2MHU=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=GcRiIuNNl0HeIP5f0ocr5B5AwGe/wxh8l+wWIz2WFbEewlMbRpOBHYfc6adSFElnc
	 fGo8ZWrZyab4HgJ5vz1qZrPJgnWJLwhWRjT+SqLedQ9Qn0bIEVRLY+DZBLFTupJrIl
	 3/AzrQ66KkQdGXBbKlrhlWU8HS0slB/fjlUl0KlpCjErKxu5xnDA8S6Ne1ROoedEhM
	 hFVonP0bc/jTmg7x08bv6Ok2afrDiXPe0l5IIsn/luChaaPDHwBGC2ZsaYmXFCTJLD
	 pBJfuaCGfPUhJcfBdqqcTk9vdn3tidoOQJ2j9mGiQEetPAH8cpAap+s5XFtK2HwYt9
	 UUkF7UI088L9A==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: phy-mtk-dp: Remove unneeded semicolon
From: Manivannan Sadhasivam <mani@kernel.org>
To: Chen Ni <nichen@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Vinod Koul <vkoul@kernel.org>, linux-mediatek@lists.infradead.org
In-Reply-To: <20261008081027.3889413-1-nichen@iscas.ac.cn>
References: <20261008081027.3889413-1-nichen@iscas.ac.cn>
Date: Sat, 31 Oct 2026 17:21:56 +0530
Message-Id: <179344751650.5901.11148512383768082586.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=320; i=mani@kernel.org;
 h=from:subject:message-id; bh=rab7DdUGsGS9plB7qneqQ3mgbyjErDCPxoDTeSGLuko=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5dZqgrMVtdnS9kzOowGn33ooCaiwcVb7eqt+p
 txjfLYDKGaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXWagAKCRBVnxHm/pHO
 9SX5B/480UmEBz93EHI2RRwYRqwnD/hV1EcXol0hCljHKqycsTGTwwJlEt0qfX2HgALS6xzxWI2
 TQETMjyTdLH+D3Cr+0uQ95mupb5a0o0m0LLHmNxroRv1e4WYl/wX5YTIuBDiXpK0TBJE7fX6Awg
 mGG30oZ1RtTBYQZsYdoU82OwaYcpRB2I4TS1zTAjM5+rNLMNiATpRkS/s3HZSGHe8ILFHyVUcyC
 aztpOVC30R72qwPYZ+3cMS309szhUjnhDP/rvfFevW7asoEQiqXUeVE52dQPEXlgwuNvGjvgjjf
 DznqPAZAlw3l0zNMJjKXhrdk04Ed+9QI+8b88hsQ7/We8+tX
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-08 16:10 +0800, Chen Ni wrote:
> Remove unnecessary semicolons reported by Coccinelle/coccicheck and the
> semantic patch at scripts/coccinelle/misc/semicolon.cocci.
> 
> Signed-off-by: Chen Ni <nichen@iscas.ac.cn>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
