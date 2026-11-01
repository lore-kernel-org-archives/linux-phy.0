Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 782C4606A327
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 10:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0/3tf0Z2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=jXO0MNtU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Gky+crHIKkgWulN9NsA3Mxh8hTpBw1D6ofqrRqQefeg=; b=0/3tf0Z2OjHc8OO9voou40ceSS
	wROU8b/MaO3waRaXxsT5vbGwd88i92hAld22YDRvBGEnhLYUdWdT/ifrMpEWRic8aY2R5LPLQwDjc
	Hfl1HqPiXzKbSgHIQwPixH6eZjFqN6aBOU9CI7ex0mD1HhcyzuWs+2QTsdY5X3uz8mnRB2fpqdSW2
	CtKofhyrfPhevZo/oJOcvfeSP/LKfsliqMnt747O/cGaJYbg7qrDo46oC2zeDDFAPIBjxgWq5ED0k
	xfE4/7u319OUfdmNCQ2QcQ2mQnIu+7oAOyP/YOcFGWEQGVBvayyBtmOEi2/ea7OhXwZT3fBkblkzg
	nseINcbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSnI-0000000E5XM-1zbu;
	Sun, 01 Nov 2026 10:28:09 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSnH-0000000E5XG-1ybk
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 10:28:07 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 7591C60054;
	Sun,  1 Nov 2026 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A26531F000C1;
	Sun,  1 Nov 2026 10:28:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793528886;
	bh=HLYIqwxJ5WYlJPpWkXyQBNJeKHSfq/1+H4q2iamRMWQ=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=jXO0MNtUe65SEoyghzmFa/MdwUxIwKj9CveDEeif3oDJNQ+OX+ITWVsT3Tk7FDUDg
	 ujipNkc7UZWU0WAQwTIEn32yFh7m76ZJtVk5AItxgH3k0dXwmJO49//LA4UrdLm59g
	 ZDzpHj3CTv5JydpMPrsI0wQYMR8TjZJPU8YH7/5wabRMdjmDnXhKOFtj3/2LQVSO4G
	 M+8ARwkdiaE6xrFUQW+wlde0e0YOmkR0lud97G8HPjxR2J+K2Iyfp5WMeCEVOBndic
	 +4nizcWdv9CyiApCxHZ0HUYppezrTHKjEMG+p8bAXeoK6MQiwQ/yqS/tGP7dQHLkp6
	 foA1XxUPPT79Q==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v9 1/6] phy: realtek: usb2: introduce phy_reg_desc
 struct to the driver
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Stanley Chang <stanley_chang@realtek.com>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Michael Zavertkin <misha.zavertkin@mail.ru>
In-Reply-To: <20261016180314.31760-2-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-2-adilov@disroot.org>
Date: Sun, 01 Nov 2026 15:58:00 +0530
Message-Id: <179352888089.2955.16034514830661487022.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=778; i=mani@kernel.org;
 h=from:subject:message-id; bh=YhsgLzpm5B4kL+Ankc4Htk9KGAusE+s3+PIjBAX7d1M=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xQyKootva6MMYJMdrwgKMExBJDsNC9UePDCM
 pzr2QMBm1GJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucUMgAKCRBVnxHm/pHO
 9QUtB/wL/oOxO69Gco7DrLvUW5JXpedgSTfYEBgXIrhy7Ch08zsI4B7rvIziAqcudMKQOrSHjdR
 ZkV3ANEylVV1OX9x5up3sjwRXh2sSx4CqhFYsa4AhZYa+Q1Ti+wWItEjuiBw2ghn9Siv+wB10QU
 xrHZ4OsA4eeN0pMa9MfRZ+IKcVEKdPVqC8k02M20MsnOattzz/3exu26r15sF+YMcaXv5clcijH
 Djb5f2tDbbf9YuuII28PquiFuKas3QzKM+Kc21C7u736s5T2SHjKRpW4RMwslB5hejJ+s55WiRb
 9OOPYFez9IHRYJHXDcBT/fxzzlYBGx00jUdKfvdjCGSBWGEM
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

On 2026-10-16 23:03 +0500, Rustam Adilov wrote:
> In RTL9607C SoC, there are a few differences in usb2 phy compared
> to existing RTD SoCs, like vstatus register is at certain offset
> from the base, busy bit and new_reg_req bit are at different bits
> of the register.
> 
> To avoid duplicating these variables across phy cfg and driver data,
> create a per-SoC struct that would hold them and with that add the
> default rtd_phy_reg_desc to which all RTD SoCs driver data will
> point towards.
> 
> Co-developed-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Michael Zavertkin <misha.zavertkin@mail.ru>
> Signed-off-by: Rustam Adilov <adilov@disroot.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
