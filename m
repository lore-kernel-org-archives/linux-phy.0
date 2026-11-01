Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1318606A327
	for <linux-phy@archiver.kernel.org>; Sun,  1 Nov 2026 10:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=q4cNRUgq;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NJCKx8uU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=jVEAdT/EzTHn/wO6c8gi++/4MsxO2aEPkJm8ffdbe00=; b=q4cNRUgqX8mqFP3LQ7UWgyhcpu
	tL6HY/K4+T2KDcRfZh7LNcBsM16gwmVD7ICBVlH3DxZkhE6sn5o8LLBSwTOg1MlmyzC05JwIBOwnz
	3tq5HwP+JZ3JQSg8dNiXHuNYvAPliJZrQTB/hDN1xZpm2Rh7yQaFkUxysuOu4ovfrfe6+gQhhSV2T
	ewfbEc+GVUmGmIlPsyci/qmWoPljrag9paT0cESYVKfwsZvHxQrxZDU2X8zSORXod3xRbgsFG+qZ0
	Q2K/cmjMtVGxw90Btepm1OwKouAOUNib7JgzOq5KfghwmD6f6EYLs8mVffvQZpLroyjQZKGmE8bHk
	7tcfpZuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSq7-0000000E5ao-1S5i;
	Sun, 01 Nov 2026 10:31:03 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNSq6-0000000E5ag-36GK
	for linux-phy@lists.infradead.org;
	Sun, 01 Nov 2026 10:31:02 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DDD9243333;
	Sun,  1 Nov 2026 10:31:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 146281F000C1;
	Sun,  1 Nov 2026 10:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793529061;
	bh=toJJi+fh6W256+8bc0G/+hEUx0vkCgcTejgATIdl3t0=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=NJCKx8uU4/zCUiaBv9m1S1cHLZ0B4J14tQQ0JpO8r5D+SPZPolFD1PDew+i/nWvEp
	 AhubdnoGzDn3nyKonjZO8HW3x7PrLyjOEywTUeDmFo1x4RxAfTM5DwPnjjdcz2h7Me
	 wj+fRZ1X1ICOhtexRS7/jllV5XKK8dgyiPy+QsTr4Rxgm3KAcVTPjqwjG0wcWcPz7M
	 OvXI7DK8NjHYpkIa9zn/dQRsekcFtuR8xtrABZRJJE0Gw5py+MHUlQ/R3kCUz3k3qT
	 rykQwwNgfAP4lf5jY/+WuCaFIBunPiolAr/2J9mb/fq5JSXDftXr8SJqWQI+b4rCfC
	 b53giezSktqlw==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v9 2/6] phy: realtek: usb2: introduce read and write
 functions to phy_reg_desc struct
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
In-Reply-To: <20261016180314.31760-3-adilov@disroot.org>
References: <20261016180314.31760-1-adilov@disroot.org>
 <20261016180314.31760-3-adilov@disroot.org>
Date: Sun, 01 Nov 2026 16:00:56 +0530
Message-Id: <179352905617.2955.16793637507628987247.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=736; i=mani@kernel.org;
 h=from:subject:message-id; bh=KbM2L99ljPSnmMAYBOTA/P9ImHZBmY4HMhXrCrYOlic=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xTi3ThHMLGrsjcqmC2Cr5Ik9UsjRTGSryetE
 Zc05tTuZ3KJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucU4gAKCRBVnxHm/pHO
 9cOxCACZQEN+puqymiPLWpX07m1evhO+fB1+2BMrP4Df0CwJXHtNRqdb+beHEztLYFpeiZc4eIX
 xa7ayyIfKB/4fOSCQtaeTqg3QBnzNvZl6FJ8ekihwqsRQqtvVGjbhQs0blTbdBHSJ2WZSxiJncA
 3hp/r/nqsU1PIqyaKYL8dPTP1d5NMUCPAjByLclJdjO9PAPlvRRhZG1CZCjX5bYWkyISbkXoETU
 FfvJU3p9yZAOVxONFX+9EmD3n3aHaw/+QHXkxo3TZUF6cyjCItZQEbIL9jvrE0qeg4aLU2jArV2
 9pmARkfBGXD0lKmZZsNG8S8mzULKEMMJs0QYTNZ8yT4tTxu/
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
> RTL9607C is a big endian SoC with little endian USB host controller but
> vstatus register is from big endian memory region and thus existing
> writel doesn't work. It needs either __raw_writel or iowrite32be
> instead.
> 
> To handle this situation, introduce read and write function to the
> phy_reg_desc struct and add a default variation that is going to be
> ponted by the existing rtd_phy_reg_desc.
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
