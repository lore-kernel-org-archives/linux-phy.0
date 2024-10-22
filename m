Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B746D1CDA3
	for <linux-phy@archiver.kernel.org>; Tue, 22 Oct 2024 05:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EUPfN/fAtCO0JvQlOKkDyx8cYVORRsLbXJvdu0zgAg=; b=VhLEWnhw5il7oG
	meMOR1wMr7/rO61U5bdActbGdxXduaXN5gsCJSCFWTRqZrEe5yEnkBJI8Zs1WvhRjpvaOFua8kqms
	xVOqQLpBOxYQgzghYJKNY/S/JMYohIUWQ/tcJfIQIKD5TCzCnHd7ytBuST4rPgcbWofyMRqmbIFkf
	4eq7UvlDZqvSeovz88sUC8mJSwVjATvznCBgjdsQKl7Zp4yPFr2gqME7CbWwjfkxolumYsbcg5zTp
	oudPgHKqfQOzfIrZM8SCzSAlkLpc5vR5O3bIeumZC+hyOt5qzsvjhOFTbXPgyq/LpUMrlSlqtNb2l
	WXNXg8Bo68CK1t8YOe+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t37YS-00000009fuG-3ZcN;
	Tue, 22 Oct 2024 05:35:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t37VC-00000009exy-0DLP
	for linux-phy@lists.infradead.org;
	Tue, 22 Oct 2024 05:32:19 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id F36265C5497;
	Tue, 22 Oct 2024 05:32:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5349BC4CEC3;
	Tue, 22 Oct 2024 05:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729575137;
	bh=6pdKu0R5DU7xBdvkPQVF4MFji5daPjJvJvF/nx/iZTY=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NiYOgB0S6LWSVWNJ+V+KTNcDrBBERN9FT0kGFNfJAn9n5bPDPjwNH9s/qP8llu8bb
	 iq5+Nx02AMz3XJrpoBXPtIxv005cPhPDX4Ita0Jkb/Cxfsqhyryav/z28AacscyShp
	 bf95t3je7apJtC6o6M7srSQFyfOSpckWlFYJ2LewUc1dB6l3jd+X1KoC5gP6RwUDzC
	 LirbcFd3b/zR9sLYDNzEDCyKKGhHSSl67+HyY7E5D3nf0JzMDWeOrqIdS2/kszomTv
	 4lBCAGfenjZl83t2YAVrd4h2XhJdJID73rH5I5/c7iXrvAdMPM4tN2XaWwGbUvdV/t
	 ilXRAaqrjSzMQ==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jingyi Wang <quic_jingyw@quicinc.com>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Xin Liu <quic_liuxin@quicinc.com>
In-Reply-To: <20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com>
References: <20240925-qcs8300_ufs_phy_binding-v3-1-c1eb5c393b09@quicinc.com>
Subject: Re: [PATCH v3] dt-bindings: phy: Add QMP UFS PHY compatible for
 QCS8300
Message-Id: <172957513423.488852.1097223397140343310.b4-ty@kernel.org>
Date: Tue, 22 Oct 2024 11:02:14 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_223218_173523_6276AE78 
X-CRM114-Status: UNSURE (   6.32  )
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


On Wed, 25 Sep 2024 15:34:32 +0800, Jingyi Wang wrote:
> Document the QMP UFS PHY compatible for Qualcomm QCS8300 to support
> physical layer functionality for UFS found on the SoC. Use fallback to
> indicate the compatibility of the QMP UFS PHY on the QCS8300 with that
> on the SA8775P.
> 
> 

Applied, thanks!

[1/1] dt-bindings: phy: Add QMP UFS PHY compatible for QCS8300
      commit: 30c280bc8e4555d55d7de7b85983990356c1e8e9

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
