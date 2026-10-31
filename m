Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF24606A321
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 17:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=c0UkYz9Z;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=S6yb+OVO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OoteBDbypSowK9VoBKqD0wQLZ/lXkF8ps/Ss/9uSQBU=; b=c0UkYz9ZBdsgitmuRl6o+xRwFk
	pmOQy5/goVDFGe25sVTJKMFeAZ3427SCuxr6lXlooNK4kdJ/CWpx6yNPcTXmDqH5v53aa3COCQY8O
	4v422RPfzPfcE557WLT9q0fsGEMj/ZR2xYESo5BnN6K2G22ESR9EliQJLOPDH3Vw44N77OKnoZX8g
	j1CoWlfITnb0oRbJKnuXscPrl0iwd2TEJ57k2pQVyZay6bBPu4LHLmqqv7GaZl6laszuvt9L8iRU6
	7PeDdi5nSBGmIcfzInP1+uHhmM+gxSvNx2NEWmVPPfdIZI2OBmpHWxTZ4uu7phLFicxEvoqIEOYB5
	bqNGl3Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNDDR-0000000DXQX-2qcQ;
	Sat, 31 Oct 2026 17:50:05 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNDDQ-0000000DXQK-2IZw
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 17:50:04 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9D60260DD4;
	Sat, 31 Oct 2026 17:50:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A0C371F000C1;
	Sat, 31 Oct 2026 17:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793469003;
	bh=PZDOH2I/gD/+/+PJnN1U4fYXiul/gCpaWgLKpOrV6LY=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=S6yb+OVOipiX+6nQcx7QI4sIoO/tL9tJvK52pvLEQm34lmvlq1x2Ns7VYzZY5xxWJ
	 ndD1n5qPTHHL+5DYf3AalJqPk0D/H60b77BiGvLOyY2xrKJjTjj6EVSMMbD5spdFNi
	 tUGNN2d8/yBfEDgypZX81rb01igOxAnZQplt2FJgD902xjrnYBjlzm8r2M+PSj1Y84
	 VIFWW4PZpav6YjNcf2pkfM2Ydh27oGa3yZnIqiDl3sKyRFoQT/KAWJP6J97/kBXcwg
	 iWk5G8DGOkbck06Ec1OrKO/sgG6cXpQoOtbYdca0UjBKssTtuDtT9KdSw0nDdDWcNC
	 iO83Vdk2K+1yg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v16 2/2] phy: qcom: add the SGMII SerDes PHY driver for
 SCMI systems
From: Manivannan Sadhasivam <mani@kernel.org>
To: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261014-sa8255p-eth-phy-v16-2-6310fac52e85@oss.qualcomm.com>
References: <20261014-sa8255p-eth-phy-v16-0-6310fac52e85@oss.qualcomm.com>
 <20261014-sa8255p-eth-phy-v16-2-6310fac52e85@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 23:19:52 +0530
Message-Id: <179346899212.7309.7446579634867562671.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=594; i=mani@kernel.org;
 h=from:subject:message-id; bh=geAUOk0sWOTd5/jSTUmW603SA8XjUN72YS4GODT1CS4=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5ipE3qevkG/n+wAfQ1pkqb3XH66VGUXHwCasW
 Oa6Fbu5upiJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCauYqRAAKCRBVnxHm/pHO
 9aUdCACqT06LXEkRiZ8YOgqJj3sKy0l32BSan0M99zjpbvL1XjLVLvpLlzFXh/8oR1t+TSO8dyt
 Djoax6KryKUMvnVQpzlc0KCzt0j8aTtHaIY+i8oL8zFMye2az6WIBH0XjRWm5LebANi9YsIIYgh
 w5FjE7jCPZ2CCPmWi9OksTafQvvN8X96vUpaGSgcnobJU63EHKUIMwikdmm2ond2J8bf6JrN1ZR
 ZSqBNMbldlgOL6aluoWvoKL7u61nzFdLvyyd7H2VC29RNnk8EaxZIzCY/XjKnPDX+jV1Pxvk3zD
 ysr8CxlWbDwwX5zoOE0p7/LtaoJe6RJkO3Ht/vujoHvqXBVg
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

On 2026-10-14 12:01 +0200, Bartosz Golaszewski wrote:
> Implement support for the firmware-managed SGMII/SerDes PHY present on
> Qualcomm platforms. Do this as a separate driver from the HLOS-managed
> variant as they don't share almost any code.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

I believe the OPP table comes from the SCMI DVFS power domain. It'd be clear if
it was mentioned in the commit message as there is no OPP table defined in the
binding.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
