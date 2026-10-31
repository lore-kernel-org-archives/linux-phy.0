Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA8F3606A31F
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 17:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=E/WfY7/T;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eK/By4OU
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ij8WAkwIL0HEivOBcO6KiYdLI0iKHrcDQ85rAIspiD8=; b=E/WfY7/Tu2N4MTae/AxnoIyaN4
	NzWzlrpgvLZCM1axeQuclLOH2/v9QzhtLgwv2zi/E2dEWoSFlmrj3v93SifRrIMJJEkF0yyJuCHgL
	IlNR/IbfCyPr1WfM/N8A1GpmllCRfRWoB72PLqcxa8wdW6UBhxz03T6oj6UWbGTvd/MOZA21UYORG
	ad9N2haHb0IPSfcchgsZm+ctpG5uN2FakjKBpovqmFwleSPZ/yPu6Uo9MYsyJQoFvNf8vfc8P4+73
	xKa+47xvVoW6O+JYtjpDmTUVPvm1I27ekul1x9jMaEqYniIUeZMQi7vdcQ4MTrM4vCcznGXNGSDjt
	awi6Hl5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xND0R-0000000DWzS-1f60;
	Sat, 31 Oct 2026 17:36:39 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xND0Q-0000000DWzB-0c45
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 17:36:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id BCE114163B;
	Sat, 31 Oct 2026 17:36:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 548CD1F000C1;
	Sat, 31 Oct 2026 17:36:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793468197;
	bh=A7rYZZhwITcyDhu205txGS/XFBdfhwiSbkwcizPA/fU=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=eK/By4OU8NQHwhrsUUc27O6LqNU307PvE+OL2tDL5GoLSSEsyROeB+HzE7qG7M+tp
	 WmfP2E5ob3kZ87IWbMlUoOCHNJdyK+aoxoAozDCt5PQBwNu5ZF6DtkXzbxkWnL6D4Z
	 PpvT6tBBynbAzHOah3b6AoPeLgy6ml7rSV3RuCxHq8v01kuvOvDWSSnIsclKBxCPtW
	 sTe5Tt8jfIVmiyd4xsrEBywOZ14Ppa39r6zOf8LTF1G5HxPiV3gSRQZWThYcbgalUC
	 ny3eq/DsQDK0Yt3OL1hBnFgZQFPg9kmvku2dbus+EXFww9RtVY0QSkNsc13JWpKrBj
	 XuqC20JiXCYwg==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/3] phy: qcom: qmp-pcie: Add vdda-refgen supplies
 for Glymur
From: Manivannan Sadhasivam <mani@kernel.org>
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
In-Reply-To: <20261013-phy_refgen_1012-v3-2-f28305289499@oss.qualcomm.com>
References: <20261013-phy_refgen_1012-v3-0-f28305289499@oss.qualcomm.com>
 <20261013-phy_refgen_1012-v3-2-f28305289499@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 23:06:26 +0530
Message-Id: <179346818618.7309.6736144761934692738.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=530; i=mani@kernel.org;
 h=from:subject:message-id; bh=4vJv4VvRn9nmwAnO3sqpule0BEnd6l7ULaD/bgA2Qvo=;
 b=kA0DAAoBVZ8R5v6RzvUByyZiAGrmJx2gSnyZs2kCHDIM3Mcwo54hnPe/+x8mQ71tx1ewV0vEU
 YkBMwQAAQoAHRYhBGelQyqBSMvYpFgnl1WfEeb+kc71BQJq5icdAAoJEFWfEeb+kc71RE8H/jzK
 mHuwXJFNqIEpPTyTmmPe/GwhYsq4MGS5tjIR2d6zx+muon7RT4D6pAEBb7kQQx1BC8P5UHpwefB
 Hu/YFJS+XhvWuU5r/Jm5jzE+ad9AwRyIQrOlSYyRwVUFG6mXKgs6OHYKi/IzHL0DKYBE2YZ7VeX
 R9U9vLz/B0Gvkv2TOh0L9SzYZV1l89oHi00yw+XoQ3dEiPvcW9GLPDjqkaaaoYu902ttts7IsL1
 geydkwncOjSfzhg/HccSGFg32KO8ZJOGAuOk+ba9OufKKDavKRRaBavwfC5aA5vbxG9ucjuIVZs
 Z3pXjyHEQa7SWpCnjJ6DC4IK4+HxeM4L0gBEn8A=
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

On 2026-10-13 03:16 -0700, Qiang Yu wrote:
> The refgen providing reference voltage for PCIe QMP PHY on Glymur requires
> two power supplies independent from the PHY's core and qref rails. Add
> support for vdda-refgen0p9 and vdda-refgen1p2 supplies with a dedicated
> glymur_qmp_phy_vreg_l list.
> 
> Update both Gen5x4 and Gen4x2 configurations to use the new supply list.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
