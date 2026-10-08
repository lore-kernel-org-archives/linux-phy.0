Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B8A6CA6017
	for <linux-phy@archiver.kernel.org>; Thu,  8 Oct 2026 22:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baWe4VCTmf0UNde/uDwDgounIsedqvvAZ3y/DQLcodM=; b=Cb2o0cBzhQj77I
	VY9nANbY24ig6CSTWuWyLQkKs+S6YsAwSsTGTF5zPKs4gt0ImjlTlbp2jgZjxYgWzS6nsDL9bDtqQ
	PIK1R+yOyGOg2DeEJ+q34jw598I2nflNBdYxF7JcStWjhgNqnCqPs6jVrFFWTEvsjCmOI+TutfR/b
	NfawfWkRw8er6p8KxbkMNno/EoRq7P6B3d930MBeT6AULYPMQSBuc3Gt43QQck2N/k3UWZiNdbw7S
	v3N4P0LT6LzuqB9tABiGqFldV7kXmVSjH7BHQfh/fDdbM+HDFi15LKfkCfVrsp+CxWaWYtTftejZa
	3qtdnpmzgW5rShKf6GBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwI0-000000057GL-2aU7;
	Thu, 08 Oct 2026 22:08:36 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEwHz-000000057GE-2i4w
	for linux-phy@lists.infradead.org;
	Thu, 08 Oct 2026 22:08:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 1B519437DE;
	Thu,  8 Oct 2026 22:08:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE4FA1F000FF;
	Thu,  8 Oct 2026 22:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791497315;
	bh=hi6Y1jF7rzkDox6iMM/GOuscnU90KBUVydmrsxYU/oU=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=cJTy0lzxj3UqFePIMni0r4eDUHfydXPrE963w6xx2lD7fzRv1L5EGCuBuQEaki63v
	 E4fxtO7Dzbv1eknKOHshe1QSbYjbihmnvvMgRwbXBs1lAnrDlV6uAGqx7LStsWjccG
	 SHLFxxfymv8sthB6GK4g8SENHqCBJNAoNCPopfYrvhl1lunT3AKqAkCE7/N7KediMB
	 OInbAwwhpsMgObOOgaGtRSpW1avwPU3cdoTx0Z64OsSELdzQsLhZZm8CZ9EBkbdMLW
	 m6+SU9+Qzc8kwV2c4IJB3uZABy5qTmMh7ooDWzA+3YCFjaTmyQByhUsgKieUlhKZ0k
	 Rkg3OR9nbu2ig==
MIME-Version: 1.0
Subject: Re: [PATCH v19 02/12] phy: qcom-mipi-csi2: Parametrise the common
 status register offset
From: bod@kernel.org
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Loic Poulain <loic.poulain@oss.qualcomm.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>, 
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com, 
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <20261008-kaanapali-camss-v19-2-b2c583ef50e0@oss.qualcomm.com>
References: <20261008-kaanapali-camss-v19-0-b2c583ef50e0@oss.qualcomm.com>
 <20261008-kaanapali-camss-v19-2-b2c583ef50e0@oss.qualcomm.com>
Date: Thu, 08 Oct 2026 23:08:28 +0100
Message-Id: <179149730801.2577499.10468166672933780845.b4-reply@b4>
X-Mailer: b4 0.17-dev-3d1b8
X-Developer-Signature: v=1; a=openpgp-sha256; l=723; i=bod@kernel.org;
 h=from:subject:message-id; bh=eRblbaaMdD3qYzSuBB3wPhjAunn//Cj4LtEGCA1rFPg=;
 b=owEBbQKS/ZANAwAKASJxO7Ohjcg6AcsmYgBqyBRc1xaZXqej1CMSNuu7LGI2oPqMKFtT1aFsA
 1yjdUKDboyJAjMEAAEKAB0WIQTmk/sqq6Nt4Rerb7QicTuzoY3IOgUCasgUXAAKCRAicTuzoY3I
 OiHsD/9aU1jMXunv8pLcm8hoimvz2tW594L0B+QZQvI/FvhUCQyBZyHU5LdFReGHVhn7IQ13K9G
 O5fnAX9LKeZ3APXoC5Z98apIjmZWS0oMfy9pGoJ0LVJdKZFFtxYDdRr6AfD/onEPSCBzAY6GCfT
 TCvGX8bIQHe4ZVTcmiz/dJy2kAkRWHRRomBKQ/uIYFWQF2DURCjJMBGlAOU7cRVOaId8yXoZwzj
 Vn53ggtu8/8pxF0wl/Jw64H79ABTEx90N6n+2AgX/yso9W1qDst+KLdd7Lgse/kVVCXV3RCc0s2
 ETWv8iYuft0OMCTHtbQ5iPNfSo3hHONrja8JxBhoqluckbhNNL4ACrLKAq8m/Y5h4XmoD99Vg5W
 W5o2BgGdyAJqmq8jTH1NZrD/nkXND5a0hHfTx8WTNEqakGvh4aVpCHlXfgiMzmBeARrg+ktsCEw
 mIiuRLgHXB9TSL8OncIXx7lPoj6OFUWeFr/GE1xr2XIHWfq5dcjPSc63A0Ru9a5anQrFDF8AUqa
 kDiYjgPFtKWMLToDN6SquEWa7AVbfmLhxrqfl4PwlBQGCnzufAZwoGXlNW8AsSuSvUs3T5Z4aWB
 LLppmN9hO+VWm7iOnKuz+4I7UMIigFuASrptPOMULX+eR5fERt7ozRi5dbUX251Tu/iBp7PMKtk
 92WESRGLGUNBMlA==
X-Developer-Key: i=bod@kernel.org; a=openpgp;
 fpr=E693FB2AABA36DE117AB6FB422713BB3A18DC83A
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

On 2026-10-08 00:14 -0700, Hangxiang Ma wrote:
> The CSI2 PHY common status registers are not at a fixed offset from the
> common register block across SoCs: x1e80100 uses 0xb0 while other 3PH
> v2.4.0 parts differ.
> 
> Replace the hard-coded 0xb0 in CSIPHY_3PH_CMN_CSI_COMMON_STATUSn() with
> a per-SoC common_status_offset field in struct mipi_csi2phy_device_regs,
> initialising x1e80100 to 0xb0 so behaviour is unchanged. This is a
> no-functional-change preparation for describing other SoC offsets.
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>  	csi2phy->hw_version |= (tmp << 8) & 0xFF00;

Reviewed-by: Bryan O'Donoghue <bod@kernel.org>

-- 
Bryan O'Donoghue <bod@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
