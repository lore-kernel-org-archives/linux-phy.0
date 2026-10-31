Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C701E606A31C
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:53:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X3F3nHCt;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=KeplfHwD
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=k4Dqphn5EUzkwk7xc2k6HLhZZiDw99zNi53mNJ6Y5Tg=; b=X3F3nHCtovIlG7q442aLIAfNxw
	f9D6TM9Qd6CsGLYx570SvdBrwyzqEMM9idirPFqPBmvlwqrjLOG+Oz+ihznDQc/EjICyjg5dDtmB3
	Y+fzC/BrEnjkZyElvyBhmHBbqulue74n9BzpR5M85pacNILbtCBTaf45TXdcQV0y6VmvMd7gGQCX+
	H2pVGXTkMhLTXnKkU/FAXk5l8rWshePUNIu+jRpw6hPYKRSC++/IzhTxrg6BSKVuWWX02US2qOK+W
	lnUqVDJu+WqF7QIHAwn8T8GShzY7lgHJYEXOgnCYXw7HmPfOvccPPFs6TOAypR6rLjyLUrcdru9on
	nhevB3UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7ec-0000000DHHw-2IaS;
	Sat, 31 Oct 2026 11:53:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7ea-0000000DHHh-2n7Y;
	Sat, 31 Oct 2026 11:53:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 202B8600DA;
	Sat, 31 Oct 2026 11:53:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F2D1F000C1;
	Sat, 31 Oct 2026 11:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793447623;
	bh=JOLjpjQ2PzwW1G++HftIrCffQhTQyx3QF57ARXdihNk=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=KeplfHwDacxN09p6RZ87ZReV5dFbNoxi+MXS55C4m0yBNvF4gPBRYkcDaB56Uyvvo
	 Mjlmy9oxsmhBP/b9fFMEb56S85a9w3Cx65bPThdmcJSsbmK5wz832BfDEwNoVmsM9m
	 TtwrH5aB6Bsozbd/Yy3n4S0pRq+FaayTiemS6MZhb2whxHhC9Lm2hTMZnklGv2i4Uc
	 5o3nwulxOXOToIJiselVKG6Ggj3HTY8YWrxS/dX/g104xkDUWLzvOML7BKY8RBHeO1
	 7GGIkxR6uxoBttSjZHS+Ua2tmVFNvujFdnqZp41hqiu5WCiCi9mSiUfPKXa1w5kBvN
	 FpinQZe29LqUA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: phy-mtk-pcie-sphy: Remove unneeded semicolon
From: Manivannan Sadhasivam <mani@kernel.org>
To: Chen Ni <nichen@iscas.ac.cn>
Cc: linux-phy@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>, 
 Vinod Koul <vkoul@kernel.org>, linux-mediatek@lists.infradead.org
In-Reply-To: <20261008082242.3890614-1-nichen@iscas.ac.cn>
References: <20261008082242.3890614-1-nichen@iscas.ac.cn>
Date: Sat, 31 Oct 2026 17:22:55 +0530
Message-Id: <179344757591.5901.8879970568493834974.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=320; i=mani@kernel.org;
 h=from:subject:message-id; bh=MQOIrikRe/5fBtAvJ0ptn4/jlssNLex6NGRBJySWcE8=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5dbB0ioEX9pEOaVyFAznCTc+n4mE5haxVta1U
 BVL02Yy4BWJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXWwQAKCRBVnxHm/pHO
 9Q1bB/4zsqX+828iPQKJK/OSquUkpjHuQL4vPmIRdALlPfDwGZwMUtOUh1nTXYiaM1jq35aQ+Fv
 smVlfLMr0Czgf5WcOkibOXzk6gfmK/HXd5NyVVvUe3Sx6RpU5Ckjq5LRFIFnis7rJwwTS61Ygqk
 rvNQ3lMZiDPtN4xp8a0qzuJa/XIt2XK1/1sSYzOsjIncz4DxZcDpNIEsEG8hfKPIAL5TQJqEbUg
 GrMW5V1e+aFsKTRnEzIsogQIiJmzXMIQBF6xKzNz5ULdscNJoLLmBHU46lNH0CTbxvUGb7gP+f5
 cJ7f59/IhOlCPP9C+8ucakwJ/kBvr1+qvUIGlp1K2a2G/ILC
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

On 2026-10-08 16:22 +0800, Chen Ni wrote:
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
