Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6086F606A31A
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 11:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=frJ2ycxA;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Ek1ThYRR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lTC1PuCu2ni/hNuosahutUeKNtHreeyMW+tiaoa34K0=; b=frJ2ycxAC6yx7/d5nYJzoHp7KG
	rmyJjqnJcV6HE+F1wPMHU6PZsWnQDmUuzSN6rsNsJ3ucBcP9vV1Rh0CJ2857u+AgjlaaOcddBin6T
	QLfhdASZQYCsiZeqRUOKBPe3EypkX3EzChwWZ7ChqzkmSwR1R3j6GvhiaeEQnp5CdCLzzlTXVHG3f
	5s0uU53WFeZPFgm/B8zX37stK9rDNzQVGSRowYbgrlbjAvGH1dllltLPJW4o98RBaJ0txVk1BBdeY
	PlPkgy22p/wON6bUDVcF9s+1pmvwnE+k0lqxL9g8hiN/mdwF7a5oTmoky7sdgOfzFK1mI/hFE6JqE
	QZ2N96hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7cI-0000000DH8o-41RI;
	Sat, 31 Oct 2026 11:51:22 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN7cI-0000000DH8i-1QiI
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 11:51:22 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id CCEC643C3A;
	Sat, 31 Oct 2026 11:51:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 401C11F000C1;
	Sat, 31 Oct 2026 11:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793447481;
	bh=XTsFWD8CdqjC0DlCbCKRlM4mNdA1XJgLD08GfRbIogY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Ek1ThYRR/+D2I8vDpQT19Fu6SSDjeIoL77tvwa7NxLZ/rV2oL+x8tkzU7jmrFGcAu
	 GAzI+w1uSbWzjGTgdx9iAQqPh4m9x7YTJUMdwl8CoXi51mv5PAKE5INhN6HULP3rQe
	 KjWyvWn1a71YwQlMnN7s1AKWZMyUNfmELYceNMZWnrtyEXVhA/tHJ/BTDEVXTAug+S
	 n4nt0VPB3YjWRY8sDpzvILYv+8lyHg6rpEvYEIYz2O4g+fKVSlr4gqHkeOHZ3tzQl1
	 3MKn8GNMGmyY+Ljze5jNsPAJE4LwSvva/IPM3w0OK2Q7Ic78RhTFT3xsU+MYLdYumJ
	 VPI87YXwX9/LA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v7 4/4] phy: nuvoton: phy-ma35d1-usb2: extend to
 dual-port with OTG support
From: Manivannan Sadhasivam <mani@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Joey Lu <a0987203069@gmail.com>, devicetree@vger.kernel.org, 
 neil.armstrong@linaro.org, linux-phy@lists.infradead.org, olteanv@gmail.com, 
 vkoul@kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <sashiko-outbox-163689@kernel.org>
References: <20261008060629.2736806-1-a0987203069@gmail.com>
 <20261008060629.2736806-5-a0987203069@gmail.com>
 <sashiko-outbox-163689@kernel.org>
Date: Sat, 31 Oct 2026 17:20:56 +0530
Message-Id: <179344745657.5901.17902875495433364285.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=689; i=mani@kernel.org;
 h=from:subject:message-id; bh=XTsFWD8CdqjC0DlCbCKRlM4mNdA1XJgLD08GfRbIogY=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5dYu2WR/1P1I5QPdRp5DDPNJSWuzt6R7r9w+l
 nkuSQ5RLgGJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauXWLgAKCRBVnxHm/pHO
 9dmWCACqPTI+tV98FsN85yzBoBIOEvDnzBLvPK0STY1pFYmj+jzHwXwnQ8wBKaa/eQuoyZcROw7
 m8qf/34BXEa4rwnewMIXU1c0ztb0eHupudTd/cEYwrTLqHI9XWRsGSSKXESn3agAU83E17JKRn6
 Zw58w5TkTgCoH8Vle5jQANfNwhUUhI63vS8+VfV+P/swgOI84KZhK03AMRDNq/yz/DLRRbvUP0f
 4HuzZBf4LzO4PkpBRNWtG7W5UM79B/JB2juWJeMYc1dDmzwpikSWyMllWBX6n/7sMHmzYczFfNH
 o854gQzPJem1UaOn/lxELmw1S6hiz+rnSATlOAnWeoWMF8y/
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-08 06:26 +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 5 potential issue(s) to consider:
> - [High] phy: Kconfig missing USB_ROLE_SWITCH dependency causes built-in link failure
> - [High] phy: DT backward compatibility regression for over-current polarity
> - [Medium] phy: ignored regmap_read return values cause uninitialized variable usage and info leak
> - [Medium] phy: regression in PHY reset fallback when clock polling fails
> - [Medium] PM/clock: PHY permanently holds HUSBH0_GATE preventing USB suspend

Except the comments about regmap_read(), rest of the comments seem valid. Please
take a look.

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
