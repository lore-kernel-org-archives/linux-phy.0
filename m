Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDFB1C05027
	for <linux-phy@archiver.kernel.org>; Wed,  1 Feb 2023 17:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CKMhZwSEE+ndHXtyyyiOmus3fogotRo1SfF7mSLbx+g=; b=eFFlaDfcQKZxdz
	UhgUnyjRLrf1UeF2QaENKDOE9KFHiNCK2xhOoX4H0qs7lrsPP1V9n3rag2cvLMJkKVoL6KwflGEqj
	KGysUOEeMt2zxbrTinIQ1x5uNVwsPvGOTlL/4ESe4qaPgu8TRqirEwIJEcxrdd1dYRZIJ2MCLu0NX
	Wu+k7xyfSx5Ssi/M5TQKA56DU6p2oQCd2/QXhrntEhAEsFrx7a++mXD8+ElOke+VDJ58yQkuzBX2J
	6AccGrPfIEIglG/lURNfcAJOhfDwD2kDQdSCMwL9vDCETJg12od3C+hV9YjtQ09Sp00/U5zcPUoCs
	DWt9Jxdw783t9zmkMdVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNH8k-00D3Jp-6H; Wed, 01 Feb 2023 17:43:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNH8h-00D3JE-E0; Wed, 01 Feb 2023 17:43:20 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pNH8c-0005A3-4d; Wed, 01 Feb 2023 18:43:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	vkoul@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kishon@kernel.org,
	robh+dt@kernel.org
Subject: Re: [PATCH v1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
Date: Wed,  1 Feb 2023 18:43:12 +0100
Message-Id: <167527337748.374583.11647809096785895837.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
References: <99794484-d67e-ee1f-4e76-200de20a879c@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230201_094319_485656_0BCB0C18 
X-CRM114-Status: UNSURE (   8.51  )
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

On Thu, 29 Dec 2022 12:39:17 +0100, Johan Jonker wrote:
> Rename phy-rockchip-inno-usb2.yaml to a more common format of
> rockchip,inno-usb2phy.yaml
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: rename phy-rockchip-inno-usb2.yaml
      commit: 0f48b0ed356d8868f62f7c6814fc2edcd70d1816

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
