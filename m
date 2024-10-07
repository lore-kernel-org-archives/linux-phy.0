Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81218CFB446
	for <linux-phy@archiver.kernel.org>; Mon,  7 Oct 2024 15:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uk7BUP8qPehlDS4tLEjNsEWmufHngUYCw1wqviR56gk=; b=pdKLz2Rh6GZpMy
	amIaI1avvHXUk687y2MEqA5X+nqWrhsbN5i/HDCDNQLuUeCidWm6Q068TOJ+HiuwK3RWgbDPDCQFi
	nDXIlmFmz9FJdkoL4VE4saplsjEEKNDQH2oLbjyJsbKWg2Lsv0EkJCEnQWl3NQHuI4vp3jUIoKpPu
	l+Ipgz5xLkc1jNn83j2jrC7DRtKYQ2DM3xARMQ3iUliSJinbzIIh5AFGn2Kt4dh3xHnaeP5/WlzG2
	1qL+ugmfPwq8UyLul+ey50d4dsbN+FLnoODfhlr/Q+/T/M5bWvPrzW0Uv7bqQ3iT8vteb3nLlyi43
	+zeO2HaFjFnfAUIqEMFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxq2f-000000032WP-47Wg;
	Mon, 07 Oct 2024 15:53:01 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxpz6-000000031lk-0iuT
	for linux-phy@lists.infradead.org;
	Mon, 07 Oct 2024 15:49:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C8A8BA40E1A;
	Mon,  7 Oct 2024 15:49:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0AE2EC4CEC6;
	Mon,  7 Oct 2024 15:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728316159;
	bh=JZaodJsdbrVJ1iauYiNFyzN1+/9kUcGmGPzolkN7gTI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=nvftFzmrpfdug87BcW+9XOkVMBjgc5z2GWWHwvyj5o+l0MFwZzHd3PpRQKO1NxlJs
	 OlywJD6AkjfI7gif2jVIhWVfgQ5Tv/ogS9yEw45LOXW5CpNRLpJD3xRNsQe55StllM
	 RJlC7ZWLYcJ05IRp4MPImZz5lwDNmvEu0ktgaKCKPb1M9tvFXLRAcrRm+DGs9J/yqU
	 hI40BsM9WanCZ+/6ZnIFdU1N7lM6FFViwEq6TjbXxt0aKyGvWbzjiCkV0gMxi3ulSX
	 QjFbImwzbMnBy1DKYdUiU+ZRQ0hK0X9vhB2TcaEiHVH77PY4nTAqfUsLCpJnKlh0hy
	 vPT+eNQ83gQWw==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Aswath Govindraju <a-govindraju@ti.com>, 
 Swapnil Jakhade <sjakhade@cadence.com>, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Bartosz Wawrzyniak <bwawrzyn@cisco.com>
Cc: xe-linux-external@cisco.com, Daniel Walker <danielwa@cisco.com>, 
 Bartosz Stania <sbartosz@cisco.com>
In-Reply-To: <20241003123405.1101157-1-bwawrzyn@cisco.com>
References: <20241003123405.1101157-1-bwawrzyn@cisco.com>
Subject: Re: [PATCH] phy: cadence: Sierra: Fix offset of DEQ open eye
 algorithm control register
Message-Id: <172831615566.134651.5873217062618720618.b4-ty@kernel.org>
Date: Mon, 07 Oct 2024 21:19:15 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_084920_323323_EF02921D 
X-CRM114-Status: UNSURE (   5.38  )
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


On Thu, 03 Oct 2024 12:34:02 +0000, Bartosz Wawrzyniak wrote:
> Fix the value of SIERRA_DEQ_OPENEYE_CTRL_PREG and add a definition for
> SIERRA_DEQ_TAU_EPIOFFSET_MODE_PREG. This fixes the SGMII single link
> register configuration.
> 
> Fixes: 7a5ad9b4b98c ("phy: cadence: Sierra: Update single link PCIe register configuration")
> 
> 
> [...]

Applied, thanks!

[1/1] phy: cadence: Sierra: Fix offset of DEQ open eye algorithm control register
      commit: 2d0f973b5f1c369671d0c59e103d15f4f6f775c9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
