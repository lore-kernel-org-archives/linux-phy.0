Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84DE7606A327
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 10:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=I+nRCwNR;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=P+nHu0+b
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=bEU1K48nv7oeD1S2xQa5vILrLtxjEkMxjuXINZIT+V4=; b=I+nRCwNRQlJvD06olTOu9WOzC2
	+bO+m9mcL/cb/jsdDgYyMTbw4NHtyRRL0WhbycJkNS0bTURN81iVBwtuz/dnJukmijJYe4k3UrZqB
	3vbMGOHhcPOeBT4ozp8aNNw3IZAzWW6oCNkPqpAf91Bn5jtWe+FBuLoEKts228yhNZjXdouT0Hl1R
	A7ivjuO2VsZSX9weyxC2t7WPkGO7WOxYYfgf1Kk5cmsuq5wvq4r3oozSuOE8b3MjWb1iLhF9hELDD
	11y0Q7W7aFY+VZUF2noDGythe498p2QQP8ttDC8hRuQDzXWdh6VnM5XLj0hyiU8tr5+dyRLjzR9uv
	jXNi45gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSfz-0000000E554-3QcC;
	Sun, 01 Nov 2026 10:20:35 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSfy-0000000E54n-2AVz;
	Sun, 01 Nov 2026 10:20:34 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DB708439A7;
	Sun,  1 Nov 2026 10:20:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25F161F000C1;
	Sun,  1 Nov 2026 10:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793528433;
	bh=TkstfqMwLVi3O9Geq9Sw8ekLhOvsr3GA+4QG8GJigxk=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=P+nHu0+b5rfK+aXhEmjWLD8w8GrD3O3uu18WH0lMRQ4sUXSIdqTNP9iyJ4GuAkxUh
	 OKppBIwkP5yaYkwup61QUAjbSRjAMdhnenQgRgWsuJiR1aVU4LO4Dvy2nevN6kSeIG
	 1XAY+SExgSVwzuL6Xkr5HF1msUj9+Q1xUCdw1TKVCPfa23YqGqSVMpuMZVc9bPv+O5
	 1ERct4siCLQ0LN4Byw825y83ABAnHVSCDOiUbrhEotRJ3e5weoovsQ05jWmnCrk3uf
	 f6zXV6ZyTRm4AAGnXNfbEhQOhCmH2xe68DRySVRK2+/kJLyGnDw1U9SCg9S14pydmd
	 mlZU1AD5kDDCw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/2] phy: airoha: add support for AN7583 Gen3 PCIe
 PHY driver
From: Manivannan Sadhasivam <mani@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261016071225.2092-3-ansuelsmth@gmail.com>
References: <20261016071225.2092-1-ansuelsmth@gmail.com>
 <20261016071225.2092-3-ansuelsmth@gmail.com>
Date: Sun, 01 Nov 2026 15:50:23 +0530
Message-Id: <179352842351.2955.1473721252992943972.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=476; i=mani@kernel.org;
 h=from:subject:message-id; bh=QM9ES64G5eMGECElOm5ezgzKCyheAyccn8+aOEbI0Fg=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xJuJhIJL80l+IydUaS6U2TPqyRHet4HuM9ew
 Y8yUhlL8CyJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucSbgAKCRBVnxHm/pHO
 9cm3B/4lSOxWPTXOja4ew2u8cVg06zJcuAYJtyd1F8s+DgKJYRb/B1bbKu46J6EBaFvhD8dkusG
 pcCDP0OrFyTRKlw+FiuRDAMAgLJNCcm++Wl/D5OwNZc8AV2u4FBl0ODdi2Q3AmcA0Fg2bL+jHRT
 aqfRlc9I7f/RIp9Y/EA2vjkpNSQhwwBV7oKkUIZHM7+4AOx6z/btmXejbTjP+489QOMsQX/h8wb
 zRTi3PsLctWQXlGFphkM/6sxo69nFcwSxtLyYtGKa81zp/QBkNrXkFU57WcNLtSwsDFltQ5/bFo
 QvqNmaZFUdzw09RtlMFijjORR3sArnDcZMpHn7SSgJV2pxoq
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

On 2026-10-16 09:12 +0200, Christian Marangi wrote:
> Add support for AN7583 PCIe PHY driver. This is required to make the
> Gen3 PCIe port present on the Airoha AN7583 SoC correctly work.
> 
> A different setup is needed compared to Airoha EN7581 where the
> calibration process and the register map greatly changed.
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
