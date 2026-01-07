Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F606CF6BF1
	for <linux-phy@archiver.kernel.org>; Wed,  7 Jan 2026 07:41:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXVKQ5MtP0EBCL+jvC6nFyie7obaYxZB+WqbAsTui18=; b=26/Dm0VsMl+Q7d
	UxyqDMip4fXPoQpNtih/lNq/EBQDTt9p+L8g+NDjw2SN6p5ec8NjRkf77dCVmNgLblBgXH5aZJbN9
	jjH2Wer+ZE4Qlwt4rB2WJDsDHPWpFEbUdW6CgW/2C+cnD5wUSWfjBtilr9adgKrrO27upOAq4XZ79
	h8FYx2X6p0B6TWNfqoZhI2D8Q9y2MSPa31bCGMn775QRvv85VODtcVAR8FQ71wG8porKD7798VaQD
	b4DrMql2Kvu6UOH4NvqfDpE1j/NY3aomIttOYMu0T6nQdzvHwQBLBtrBsp5HGh7C+pVY+6CYV9Tq7
	re1WQzzvCBQ66HVrMc9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOAp-0000000EIqX-0CNG;
	Wed, 07 Jan 2026 07:41:43 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdOAn-0000000EIpe-22sU
	for linux-phy@lists.infradead.org;
	Wed, 07 Jan 2026 07:41:42 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id ED3A94338F;
	Wed,  7 Jan 2026 07:41:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 456D1C4CEF7;
	Wed,  7 Jan 2026 07:41:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767771698;
	bh=062mbyctiZ/C+iC+h5bxLMpRUbFmO3ltrsYXbgQHMvM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vI5cX/dXfRf54Bnk0FFA1CBTY6nhy+X2Rc3N20bIHYV2VPbi2QifDWiJNMbJriHlw
	 tmd8fCP5wJJtzWV7deXfVxN7gabb+TD9AUO0nsM3h9FQPLoTJ4Bi6J92xo9g683auq
	 Jb07ghmWLmcz2Lpc/tgGKUMGxhtlj6AAo3Z/cbFI5mo/nRSfrk8J6m5AqUSz5YjdSZ
	 HQIxGyARwWHuI7/cy1A9HQAoDYl2rgWz3/okq+KdqfFNnaLyKCEETSe/kKxKReF+8i
	 a43GAAk8lW3a2dmd/KqTCBTGbbA/gnN62GotAxFMo9OJDrrki5Q2K3GHoHKmfm8S3n
	 8zifQXq9JI/DA==
Date: Wed, 7 Jan 2026 08:41:36 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V4 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <20260107-lush-bison-of-competence-de27dd@quoll>
References: <20260106154207.1871487-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260106154207.1871487-3-pradeep.pragallapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_234141_545428_6205B1AA 
X-CRM114-Status: UNSURE (   7.65  )
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

On Tue, Jan 06, 2026 at 09:12:05PM +0530, Pradeep P V K wrote:
> Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
> SM8550 as a fallback since x1e80100 is fully compatible with it.
> 
> Qualcomm UFSHC is no longer compatible with JEDEC UFS-2.0 binding.
> Avoid using the "jedec,ufs-2.0" string in the compatible property.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
