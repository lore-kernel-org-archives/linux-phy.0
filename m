Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF29C606B5A7
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 11:20:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=AKl5OvnF;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=Jo/HQb17
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=sEX0sYRh247Pt4nJr0/KVbfq8xAdD9FJKak5RRp9q6I=; b=AKl5OvnFSSZyOJbI408yUGyi7G
	8RgsxDSdDmu168b+v7Wbw+w+ErJJTPEPygS3oRSK6HDKpBW9QdBEwFG+EHwYJJhHosk9DP2xkEnbu
	2SxTVfLFgXe52x+RtlFnMsM6a6oz4JygvPiVOh8U1evnB72u8IW8gVdmTvdlNjef8JR6lt8uPXIfc
	QBF+ONit6G4cBnuSjCLPOq5XkZDfrGVDax6lkxD3DHj3MGH8U5daO10a+ZjI35ZhyXZ+yN0Q24Gae
	OO5YnKqFLKxXkX5Z/Ni1evlCqCEpTT4cp+XSZQVwwZTZYIiAlQtBIw1QuQWR/bAjUZUPMmOj+1Xp5
	/mTekDhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSqq-00000009f4F-2YS9;
	Thu, 12 Nov 2026 11:20:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSqp-00000009f3N-05v9
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 11:20:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id D9B9B479F6;
	Thu, 12 Nov 2026 11:20:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 64B6A1F00A07;
	Thu, 12 Nov 2026 11:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794482417;
	bh=BXzZFv1rViA+t/kvS8iAtCAtd1WIdvaY0MOKVvctdWU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=Jo/HQb17E0i8jEZbQEXkjWKCg/LQKfPCSEM9JA6Gm0rDmS/I3ESUCninPxzJNnJBz
	 YzP+cgVGD9/rVDFkLdBJgXSIVpHC7buwyHCBUSfqinFgIMHrOZqtsHLZR7g6Saj/uY
	 u3rQDKPOda2zHYOrLdB43qK9/NrMzMs/p/J64838H9kRXk3G6jU3Jl5rESOPpP4NRf
	 RRSsUB6gV5/ugibkJPdUykpx0RSWzw8PB/SOYCRFj0/NZ2fb+NCswbCMWaHOwB3L4M
	 NVsAWiSD0JqaweWMrnV7zqPWMRwi9+TSxc9hkPpO9QCupsVoWaPlruCIZOTLGskaGj
	 is/VOboU3j0Dg==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
In-Reply-To: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
References: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
Subject: Re: [PATCH v18 0/2] phy: qcom: add the SGMII SerDes PHY for
 firmware-managed systems
Message-Id: <179448241404.492462.11258139095481555571.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 16:50:14 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Mailer: b4 0.14.3
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
X-Spam-Status: No, score=-6.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


On Tue, 03 Nov 2026 11:35:51 +0100, Bartosz Golaszewski wrote:
> Vinod: Sorry for the noise but sashiko pointed out I forgot about one
> comment from Krzysztof. This still should be good to go, there were no
> more sashiko comments and this is just a rebase + a commit message tweak.
> 
> Add support for the firmware-managed variant of the Serdes PHY present
> on the Qualcomm sa8255p platforms.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: phy: document the serdes PHY on sa8255p
      commit: 0eeaa6e65318b14cfecb3e7e4338f4eca7070c48
[2/2] phy: qcom: add the SGMII SerDes PHY driver for SCMI systems
      commit: 4cc9f70c3dc187cd45eac2815117ea81b101a1ee

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
