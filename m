Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56331606A337
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 11:20:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=No2VyyDK;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=O9B82kd8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=UvCwlbtZ0vpnoE9Zt4KQmVPgTYxW9TJHwPpOPytPhPs=; b=No2VyyDKN3gsI1qbDCiS9g8yDm
	RRtCEMGM8Cup4E4ybxeom63yr86HGm3PDYKVs2+OjXAlif+nafmtTv526kIkaxdYB5nbKokw2Maau
	9qS+RDMRYi/70zro/osBKBSTth1SwqkgTw9U70P6wRh3vbMU+p1fhye4ddYo9fx4bsH2KPMKQsi9n
	ZWRVP2WcOY4R1Xo5V/plrEnVO6zdlKd0D3J8OgAsxHrVGbk10BSrOaj6XzDQbfiuS1uVLPH+/fdx3
	WloORkuPvK9G1DqZ6Ni9uZN30Mn0EdID6RD3Ty3IoPGvXk/T/8Mk5m/+IbxOzTjyKn35U8FZfe2jv
	bfM5/hAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSrL-00000009fIq-4Aj8;
	Thu, 12 Nov 2026 11:20:52 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSr2-00000009fBu-47fT
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 11:20:33 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 6CB24657B9;
	Thu, 12 Nov 2026 11:20:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 953891F00A09;
	Thu, 12 Nov 2026 11:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794482432;
	bh=hAfL/WFmB05akBiWgGs8l8XrwU7+jMrFoaHWisRpDqE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date;
	b=O9B82kd8G3xrpV7RRBTWam1Xbr5BivytF0MyJC0hZPGsQTfR2S6JIx9WTBLucYoEh
	 eTrPgMRUvFY9s4CMw+AQ/HMrXIVCwhrVk/qs7uXt1a/ofmJsL9L1VX9IvlYPQObpJp
	 ekBo398K8SVCEO75zGzCbxtaUqpvrb2niUUSvjDw41/MhP45sFWq6flqfa4+DtbmOA
	 1VxAxZ2Knel6Qe107ru9mBRtye9E5wJ+3pqySdSOHdGJCWQjU0VL3u8/sO11PTNfKP
	 PsyOiqeWIMkP56w3YInIhb5zK9Kc9eMGPVboa8IRkKrXDV0YAw1SH5uJfaM9Jfz3c0
	 tkhIPklAbSsyw==
From: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, Abel Vesa <abelvesa@kernel.org>, 
 Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com, 
 sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
In-Reply-To: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
References: <20261028-glymur_ufs_qcb_enablement-v5-0-09cda5e3bab3@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v5 0/3] Add UFS support for Glymur Qualcomm
 SoC
Message-Id: <179448242524.492462.1764919670468855498.b4-ty@kernel.org>
Date: Thu, 12 Nov 2026 16:50:25 +0530
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


On Wed, 28 Oct 2026 17:54:45 +0530, Pradeep P V K wrote:
> This series adds the device tree support for the UFS PHY and UFS
> Host Controller, along with the required PHY driver updates to
> enable UFS support on the Glymur Qualcomm platform.
> 
> 

Applied, thanks!

[3/3] phy: qcom-qmp-ufs: Add Glymur support
      commit: a3ed89addd954c5c2ab6f745da93559612392d7d

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
