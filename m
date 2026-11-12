Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21BF606A8B0
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 09:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=MK859ff4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=TKMPx+yy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=wRC+udlkq9R3K1XZtByKnPtWBc4eUZOdBeB2AJ2ordE=; b=MK859ff4pMIcJcZCuAPtcaiuHE
	DI54tRtG6HX7aa5/zc7/8ZXPNTck5Iddps3IZQrQXTQxeKU5rZIKe/MPRnhrWtrWKzb+7NyRDKqhy
	ZZgr5QAcEHTeYBWnYFDn31aFTzGE0EUFHstu2z1MiHbdca077Qa65Hn9hce+kPK4sVreOVpEYIs2q
	x9hcgr66H0AzYDMK7mKGgA31pKVq4gRV0WLb1o49QUG7XPRDmCrC+K//SZ6B/MIIex58jmY3p5y91
	oZQJkVgn8ueOrXkt+xCLUSeANngGP6McbZ574Ic385A8ohfKfFxqJEFM8DwqCB1n5DlfGsMM28gwB
	nvVYUJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRR6m-00000009NN4-1sta;
	Thu, 12 Nov 2026 09:28:40 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRR6k-00000009NMt-1o6X
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 09:28:38 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with UTF8SMTP id CAFE74006C;
	Thu, 12 Nov 2026 09:28:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id 340691F00A07;
	Thu, 12 Nov 2026 09:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794475717;
	bh=KbuCzE0byKrCqNBQq3LoAsHfLXabBhfbTAhCl8zjbwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TKMPx+yyqE6y3ZOzeXSPsNoAzxOG2USiaLHYaHfyR9cg5vIUQumBRe15h6yS5cR3x
	 FVZnNPJL0Bx/Fndef5b5qMdbYf1riQhYWjcpvVsGObnVPj/82NGgI8uQ3JW/hlc4Pf
	 eg9QQaDyrdUJNKa/kvYtya0saHYhKK754EH8R+1JlRKFKArBLKfeq6E2dySTH4Dq6G
	 4sMBC9tDplocbPJgqRlWoKKH12TTGMN7rhfhtuFUQa5c7oToT6ohNaHHRSVlOjeqiN
	 yhHlSctVeRzcWLnbBF0dKTE3VSG6zmVGpSL1WB7lSfGrP06dtmBK5LVe+tI0/9ttru
	 R81d42DfGZ+SA==
Date: Thu, 12 Nov 2026 10:28:34 +0100
From: Bartosz Golaszewski <brgl@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v18 0/2] phy: qcom: add the SGMII SerDes PHY for
 firmware-managed systems
Message-ID: <rrwzar7uq3sxkwsio727mt3sgxg32m4beewjswboklk5mcnggk@iv2yk3bbqraq>
References: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261103-sa8255p-eth-phy-v18-0-b00cc2fa0404@oss.qualcomm.com>
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 03, 2026 at 11:35:51AM +0100, Bartosz Golaszewski wrote:
> Vinod: Sorry for the noise but sashiko pointed out I forgot about one
> comment from Krzysztof. This still should be good to go, there were no
> more sashiko comments and this is just a rebase + a commit message tweak.
> 
> Add support for the firmware-managed variant of the Serdes PHY present
> on the Qualcomm sa8255p platforms.
> 
> Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> ---

Hi Vinod!

This is now reviewed and has no sashiko comments, could you please queue
this in next to allow us to proceed with associated DTS changes making
use of this driver?

Thanks,
Bartosz

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
