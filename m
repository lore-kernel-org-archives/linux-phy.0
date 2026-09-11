Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F64AC88E4C
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 07:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:
	References:MIME-Version:In-Reply-To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2khJq1UuG4iVz8jVC1/VUxl7FqWPRYXMNFItuI42HwM=; b=TL8TouEev5B9PT43tgqc8OrMSR
	x7JgP960RRVXJX3UdDGDFnDdkKiRNlQt1UTpZyzG/JIUJFvV3oUc4eHqUov6tQ+IDsUKoh3o89w5W
	HyD/l29E/8Q7deWm3d+BFq5Y7Lf7ilhKDM4D96okFw6OFxna1GoBpwpo5Boarwb/c0/+trQqY7Ej3
	4MomSRl5ySZBIIN9d3PCzXTTJ5zeSP8gpLtR+dTH7UX/ZUO0OicjDrnAqPLLcYKl8HhvjWUzWSxDK
	966rBeCXJ5pyNqsaYCyJo/rj5niIHJ/ePoBCbyAxOlivkfl4bwf+X2xGGSX/Hk8BNIWxowAdmBW7P
	DlvgeHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w3x-0000000G4Wc-1UoL;
	Fri, 11 Sep 2026 07:52:45 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4w3w-0000000G4WW-1wDN
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 07:52:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FD5C6022F
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 07:52:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 156591F008AB
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 07:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789113163;
	bh=mAy/mjo9ky8p0zKdUD9C54wYiJlR2G9xib1258FjWlg=;
	h=From:In-Reply-To:References:Date:Subject:To:Cc;
	b=nBCejXNQsWQR/kbP8ofYrcVfv2aqnR/3tYIIQUNpPeUU/OvtlVDSgmWDJN8kto6zT
	 WjZ7krJVZ75zGCFIpW1Sn03CQhjNWofZQyPD7gvktU7uNfWxymEyLEu4lrwtm5fclM
	 pCpsZM+7a4Hw7C2c4JhTqEDh4s50/Z1V99+0m1tVOFgytvKNW6uLLAinunCFH7QxWt
	 qZINxZfKBI4bD84Qm6jzD8TkEDuXYWMOY2rcSsKIJMS+bRGvsxVIUhPjN8M2CEZxV2
	 DNyJwOF4FWXsAfAX8YuBfhkvM7s3UXYq7qpmOwJ001w5/HVHv7wEp64Zt7VCFhiZ6m
	 6B69oVXtJzFDQ==
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3a2b4743936so4672091fa.0
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 00:52:43 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AKwUvBwCwZmBdl1849XvDvhytiUYmdVjIJh6IL2M7IiVxemrJPs4byZeSOvqYHojr1qUkvtsITx+YvXYKCA=@lists.infradead.org
X-Gm-Message-State: AFuF++kWSu/j61zh852BitptZI1Qi81LpdqWAgwtaU+VgrW7VYq0iO9q
	y0P4XR29dpSL+v/NjdwXhgYG5DNq1pqbeVPOXBYXNi9KBOt6i2ewAH2BsOum4z6E2vbTJot6BJS
	rqcd1R2SGS2cEXc4TOTFeiuyW0s/wr682XWEDS7L2tQ==
X-Received: by 2002:a05:651c:43c4:20b0:3a3:7682:49a7 with SMTP id
 38308e7fff4ca-3a5a5291cf0mr2127591fa.28.1789113161739; Fri, 11 Sep 2026
 00:52:41 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 11 Sep 2026 00:52:40 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 11 Sep 2026 00:52:40 -0700
From: Bartosz Golaszewski <brgl@kernel.org>
In-Reply-To: <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
MIME-Version: 1.0
References: <20260831-shikra-upstream-v2-0-406661d75afa@oss.qualcomm.com> <20260831-shikra-upstream-v2-4-406661d75afa@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 00:52:40 -0700
X-Gmail-Original-Message-ID: <CAMRc=Mf=s2Q8z165ufJjj70TZPv7TFFF3b8QaTh1Uiz4r-64Og@mail.gmail.com>
X-Gm-Features: AcwNN1WYfbMG0innksiJiNzSA1WdoA4NxNphoNZxr1Iyd160wvFBkOcClMlPLKs
Message-ID: <CAMRc=Mf=s2Q8z165ufJjj70TZPv7TFFF3b8QaTh1Uiz4r-64Og@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] phy: qcom: qmp-pcie: Add QMP PCIe PHY support for Shikra
To: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, Bartosz Golaszewski <brgl@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>
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

On Mon, 31 Aug 2026 09:26:04 +0200, Sushrut Shree Trivedi
<sushrut.trivedi@oss.qualcomm.com> said:
> Add QMP PCIe PHY Gen2x1 support.
>
> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
> ---

Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
