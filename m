Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 473E1CFB43F
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 14:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHTEjX6W1gxsBsG8Vat8qslC0TWSl1fZsgphHDYR8Ls=; b=d+3pSH6425kqpG
	ati/S6/W7iJcPSbgl/B8mPHUvhZoFWwlbF3r0DXgvadqJ6zlpvJI3xoSkzVF5BkelKSKjgoNHH2c1
	mfcdPADAckkbdEyQ96mFxxBptNo6HDFch9S4sSiDN8u7jGUjj5hEPHB5ZAhfHMJPUc3iWoAmqtgQa
	fMG5UQr0z1q47OZbPcbT8mCT86XuBX7ky0NvbVe5vFC3QqKEzlh+ljuUdh3x7SzGP4b48odLldX7B
	2kptso/GFhLKavLC4a9ZZZu05ennGUNVzngZ2QK5b2hgkfQnKPGHb40trNOyGLPfc9Gfse2F1ZuYB
	amvbr775wbRA61BM0QjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoqM-00000002ksz-3i2o;
	Mon, 07 Oct 2024 14:36:14 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxogo-00000002iLC-2eSc
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 14:26:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B89CC5C5BD8;
	Mon,  7 Oct 2024 14:26:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 794AEC4CEC6;
	Mon,  7 Oct 2024 14:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728311181;
	bh=u/sC0j1r6dkF3Ofq61qc26FtZZ6r7jsNxEjDqqbDV4c=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l1+zP1dA3zr+/NZG6oGp+3lZGfDfliJJAbiPV7l9u3wsLukJV2kEdhZhwzrZiimdc
	 88HB7OiNg7Qu0P11VcNqN3anHuK2Jy6ANQkVKnWeqM7mrimVHiv243z3zMutwy9QI6
	 3R6Cw+U3XjjkiDvTkA8S7DGXPEKTyNBVBakWIW4QbkR/7yPpA99Pyr2D8jweyOB+HO
	 1SzM1/RqR/6MCoCQsjFZRVyPBGGjT2MiWcZsfHyMywIdFVxs+VRCFfYXbNNVyR9GBs
	 Iwz2r0Ch7eJSERdnqieaL6LiqqVGBZA6hWgpMpfUoGKLg7yU+R2yAlPmo6q/D1FuhF
	 b+Ib/1b5ylMCQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH 0/3] arm64: dts: qcom: x1e80100: fix missing PCIe PHY clocks
Date: Mon,  7 Oct 2024 09:25:54 -0500
Message-ID: <172831116165.468342.17489268002228008386.b4-ty@kernel.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240916082307.29393-1-johan+linaro@kernel.org>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_072622_743519_154F7504 
X-CRM114-Status: UNSURE (   6.68  )
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


On Mon, 16 Sep 2024 10:23:04 +0200, Johan Hovold wrote:
> Add the missing clkref enable and pipediv2 clocks to the x1e80100 PCIe
> PHYs as needed for functional PCIe (e.g. without relying on boot
> firmware to have left these on).
> 
> Johan
> 
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: x1e80100: fix PCIe4 and PCIe6a PHY clocks
      commit: 27727cb6604e0998d03d9ec063b517b239d2bb0f
[3/3] arm64: dts: qcom: x1e80100: fix PCIe5 PHY clocks
      commit: 0b80b3c0f6d20f1bc1f7fea6176a8df15619e884

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
