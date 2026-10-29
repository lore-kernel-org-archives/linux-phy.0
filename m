Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1EF560A2624
	for <linux-phy@archiver.kernel.org>; Thu, 29 Oct 2026 02:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=2JcVFq7d;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=m83POaf7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=yggxtwODRGjA/4GdeWzKWXl5TpeYmKrAmXQXicYQENI=; b=2JcVFq7dPF9O55usmvO265Ac+8
	+aspKAO9RfebsDH2DhhHiuxFqVpj59v00CEqrenR0qYwBBq+QWCEylG8SjYZKQZioxla7Hb6zM0Tc
	ceDtpd5C34NFBleHjUCErjC+pQNanC4esQHPV9bjOy6FMEj+fYnoN7FecsGnYPiX5OAenEO7K7YNq
	MkTyKk2iiVKl0RefcfyP/1VXkNkcNk4IjdBI9sn7cZ02fZ8OAJzeQ7tMGImoqjXpttdlM3gPXRvSU
	W7iAK5w4QjHBTgi/mvj3oSHVgbE6AV2GJTymEus2L5lPbSHY9qXKhKzqhFPmQTS4xQlw+5sqx9/Kq
	BXMV1XfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFU8-00000008BCI-1cfC;
	Thu, 29 Oct 2026 02:03:20 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMFU7-00000008BB2-0YaH
	for linux-phy@lists.infradead.org;
	Thu, 29 Oct 2026 02:03:19 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id DCF1F44009;
	Thu, 29 Oct 2026 02:03:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E9831F031E1;
	Thu, 29 Oct 2026 02:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793239398;
	bh=nloenklXV41sAe2Qb7vhaRtqVy0cuZ6og1wsgUkifo8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=m83POaf7re5Zyzk+EeIRf6CNfBQGKJpLVAoF8xJIHQN9JDiW0D9fjZU7YBAW72NsV
	 Mf15bPfZsiqJdZ84gE+LdFaY/GAN0O967KVIUJTbKdFtnXOx9U+N35dOVOVO99mtcB
	 ILIi2uLSepVaDzr8r+svuNto9o5Wt5fzD3R2cKlcpbDdkUYpEeJADrJK6PvRSgGd+t
	 F8O2Z0PFzxY3tyNA4CfX+ZWGm8qGLgfmFhP0fqJD3kASmqisQn1gxum/pNhDjkc5e7
	 0oInenXHvpordn0mMjbKhL6GgoiLFBL6R6UNOxdU3DZ7rBkpdI7dudrL7uNFxUxD5d
	 c3aUxStiHTn5Q==
From: "Martin K. Petersen (Oracle)" <mkp@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@sandisk.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	gopikrishna.garmidi@oss.qualcomm.com,
	jagadeesh.kona@oss.qualcomm.com,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Abel Vesa <abelvesa@kernel.org>,
	Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: "Martin K . Petersen" <mkp@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	nitin.rawat@oss.qualcomm.com,
	sibi.sankar@oss.qualcomm.com,
	Taniya Das <taniya.das@oss.qualcomm.com>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v4 0/5] Add UFS support for Glymur Qualcomm SoC
Date: Wed, 28 Oct 2026 22:02:53 -0400
Message-ID: <179323465371.491807.4239694363801616676.b4-ty@b4>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, 09 Oct 2026 16:05:52 +0530, Pradeep P V K wrote:

> This series adds the DT bindings, device tree support for the UFS PHY
> and UFS Host Controller, along with the required PHY driver updates to
> enable UFS support on the Glymur Qualcomm platform.

Applied to 7.4/scsi-queue, thanks!

[1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Document Glymur QMP UFS PHY
      https://git.kernel.org/mkp/scsi/c/e6c68aac2f7a
[2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS controller
      https://git.kernel.org/mkp/scsi/c/7cd44f40fe19

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
