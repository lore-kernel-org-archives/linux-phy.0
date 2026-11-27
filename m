Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDB87606A324
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 11:44:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DXx+wsYM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=hVtAIhKT
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=NPHmZgm3j8o/m7KmdSbI5L5wXVaBaYdAceYsjzdW0Nw=; b=DXx+wsYMx78b1dOSFVJ6X7K8H7
	EDhHgTrh4rRhKFFYrJMQVynJk6YcTpd6wVOiIUK+3D4c1Hj70ki+3zFcVYze2pq7UnSglzX4lavRb
	vO4UobBYcgdcK0bMJpB8Ebauok+nkHKmiSiT3lteuRrPl1F2Pa3WJY6fSrKk8kthhobbHBpLFG78P
	vxxFSDslt/hBnuAVg5TqwvfyzjMOr786bqDcDw7kIAnsSwObUdfH2l2GQyONFI6mpTwfR3hd1dT/P
	QNh30Ox+YomCjEtnGzR4K0lS/76nn58v0AJCPat0EMyAR0yuKjlX0hjLibnN/f2YMUEA9Y1/YQHcY
	w7y+5EMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNi-0000000FsWE-2MIy;
	Fri, 27 Nov 2026 11:44:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWuNh-0000000FsW4-2a4q
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 11:44:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id B8F77627A0;
	Fri, 27 Nov 2026 11:44:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A5191F00893;
	Fri, 27 Nov 2026 11:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795779884;
	bh=whClQKJ7bilwLLcVXchgxYVKnvUQImcedOodgOWy20Q=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=hVtAIhKThEF0buv2a4dNOWJKjK8VSh1H/obscDvnse7JWoE6BgK/AX9d4fv8kgVFf
	 CEoeGNFxtv1cUu2B6iQnyTEVmu5K24CJgqSz5N8lFb3oYAy3pgqdMW18/JsD8N/i+6
	 rqXwrAhPtaCbRWyh4IghdyQgvMGscdkQKMkioFK5bDNAiPgGMwdgRzP/E3Gkfa2ZS2
	 DSnr0OZiKgXsOSu8GtW7HwsW8DK9ZfFxBnCRHgGAFna/qpQkje2Eic6hx9YfMoawKh
	 8S6iuXBAav742iqR6e2fYvvUl2fvYUa3PTeFjD349X5/o3iDkxUkfvymHakN5a6mda
	 kDOBDFPvb9ytg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: ath79-usb: fix the suspend override reset name
From: Manivannan Sadhasivam <mani@kernel.org>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-phy@lists.infradead.org, Alban Bedel <albeu@free.fr>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20261106011142.516478-1-rosenp@gmail.com>
References: <20261106011142.516478-1-rosenp@gmail.com>
Date: Fri, 27 Nov 2026 17:14:37 +0530
Message-Id: <179577987749.13164.3981219899044180404.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=753; i=mani@kernel.org;
 h=from:subject:message-id; bh=k4r3F9uNkJHA54pn7+unObljLT9MHxgoO6rb9JuAa+4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBrCW0ozuBOiQ6/3amQf8E4xn+/ypf5GromKFHCV
 7iWFLdlztaJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCawltKAAKCRBVnxHm/pHO
 9ShkB/9429HCrug9mkge5t/UM8prguPgQMDShIIqrqvP5co34oUjd5BvfriYwgcPjMu1IZl8jgH
 p1VYVAnEgclnonaujDLDm2rd18ffY+mWH2H+8/fd3qVbVbVo9Gx7Bv6vDYULE3VVrFTIo1DDja5
 iGLWNZbekjPJ4x4elE6WsOxNj5n9lOK5JYIQhJclKwSmdOtkYPMpgOCiRpeMhLCs6UBnWm7tDUn
 D80SG4zU7NCgL/ZDmalAzFpN9VDRodBjJNwFDHp+dY2JcA4xQ4icQKilREz2RvOnjGHPpLGv3xq
 jt5JHOmibcRrbVwq757q8Wdpf76yfi4wnxOLbbWZjMq/dRbk
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

On 2026-11-05 17:11 -0800, Rosen Penev wrote:
> The driver gets the suspend override reset as "usb-suspend-override",
> but the binding and both device trees that use it call it
> "suspend-override". The reset is optional, so the lookup silently comes
> back empty and the suspend override has never been used.
> 

Good catch!

> This is the same binding update that commit 827cb0323928 ("phy:
> ath79-usb: Fix the main reset name to match the DT binding") followed
> for the main reset. Follow it for the suspend override as well.
> 
> Fixes: cd3bf368aa7a ("phy: Add a driver for the ATH79 USB phy")
> Signed-off-by: Rosen Penev <rosenp@gmail.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
