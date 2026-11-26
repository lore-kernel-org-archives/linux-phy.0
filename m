Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25C1C606A336
	for <linux-phy@archiver.kernel.org>; Thu, 26 Nov 2026 02:38:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tWt+G8bs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=bQ0PGikm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:References:Message-ID
	:In-Reply-To:From:Subject:Cc:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=lisMqQNUVG6zta0Dkg4A+UwW6S3Sh9Yem1cIZAUlKcE=; b=tWt+G8bsT9zs7qjRjsPo434NGb
	ytgeKf+nPlq8fYHTKfiSoPhgJe6g5tDuxRbOeSMqlNBnxQyk1VROIsNT3kqySOZ9MehUz2SgwJfkx
	66TVG8R1Pz/jC5dk1GQOO1Vweuk7m+unWzekX1Cfj4r5PSt7D42DHmzPRCjuxbqlbJ/bnIvuimfIO
	BjnVoZ1FZ+adWzLidx+HfRDkMW1cxGFuUiZ4mreyRXexmC362DUd5FmEkJOnvLsw9BHjaHQKau4k9
	cTASgIG4mtpUnV3azv2cA6MOZrwiQNKD09T7hHEgJ12Pr6y1o8Y27pElQzyES/x5l04B1DduyTtgv
	UfxA8uCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPNk-0000000Bv3k-3n8F;
	Thu, 26 Nov 2026 02:38:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWPNj-0000000Bv3V-10md;
	Thu, 26 Nov 2026 02:38:43 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 4F1E76022F;
	Thu, 26 Nov 2026 02:38:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69E091F000C4;
	Thu, 26 Nov 2026 02:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1795660721;
	bh=FrsA9VM2RRDYw3dIWHPlcPU2Tzr0ACPscINTsZ3wYKU=;
	h=To:Cc:Subject:From:In-Reply-To:References:Date;
	b=bQ0PGikmMVpCXzr2+ogQGCzmWiJsDojV8YuLw94SOoEP+6af4SDkg1Hz05ayFBKaU
	 T2Kkn6ace5P/sBOVer3k6SEGH0Ev/B4bIxNUbkMzLaVWTX2m84EjwxigZ9zr7C5ta3
	 Io/6ySL6xk7/Wb0+RLCQabC0jimBgxFCnQtIxULviz7f7YZ0WX+nGUMUl+NqjmIh09
	 S4gN31qaEurmnHa5pYbcSItay35YwpXukelvdSK/KB8u3jxbJ51CUjMQpidqSu7hwC
	 vP12nZVTa+DWYWW3MwC5TGg10y40os0eK+YRpCmXvbizboj6O+CuHCfcEKzmPUCQZF
	 gIUMuxcOfUvVg==
To: Stanislav Aleksandrov <lightofmysoul@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,  Konrad Dybcio
 <konradybcio@kernel.org>,  Abel Vesa <abelvesa@kernel.org>,  Rob Herring
 <robh@kernel.org>,  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor
 Dooley <conor+dt@kernel.org>,  Robert Marko <robimarko@gmail.com>,  Guru
 Das Srinagesh <linux@gurudas.dev>,  Thomas Gleixner <tglx@kernel.org>,
  Radu Rendec <radu@rendec.net>,  Will Deacon <will@kernel.org>,  Robin
 Murphy <robin.murphy@arm.com>,  "Joerg Roedel (AMD)" <joro@8bytes.org>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,  Wesley Cheng
 <wesley.cheng@oss.qualcomm.com>,  Vinod Koul <vkoul@kernel.org>,  Neil
 Armstrong <neil.armstrong@linaro.org>,  Manivannan Sadhasivam
 <mani@kernel.org>,  Alim Akhtar <alim.akhtar@samsung.com>,  Bart Van
 Assche <bvanassche@acm.org>,  Bean Huo <beanhuo@micron.com>,  Stanley Jhu
 <stanleyjhu@google.com>,  Herbert Xu <herbert@gondor.apana.org.au>,
  "David S. Miller" <davem@davemloft.net>,  "Rafael J. Wysocki"
 <rafael@kernel.org>,  Viresh Kumar <viresh.kumar@linaro.org>,  Amit
 Kucheria <amitk@kernel.org>,  Thara Gopinath <thara.gopinath@gmail.com>,
  Daniel Lezcano <daniel.lezcano@kernel.org>,  Zhang Rui
 <rui.zhang@intel.com>,  Lukasz Luba <lukasz.luba@arm.com>,  Georgi Djakov
 <djakov@kernel.org>,  Sibi Sankar <sibi.sankar@oss.qualcomm.com>,  Ulf
 Hansson <ulfh@kernel.org>,  linux-arm-msm@vger.kernel.org,
  devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
  linux-arm-kernel@lists.infradead.org,  iommu@lists.linux.dev,
  linux-usb@vger.kernel.org,  linux-phy@lists.infradead.org,
  linux-scsi@vger.kernel.org,  linux-crypto@vger.kernel.org,
  linux-pm@vger.kernel.org,  Krzysztof Kozlowski
 <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 07/14] dt-bindings: ufs: qcom,sc7180-ufshc: Add
 Halliday UFS
From: "Martin K. Petersen" <mkp@kernel.org>
In-Reply-To: <20261125-halliday-dts-v3-7-5c8311c0b70b@gmail.com>
Message-ID: <yq1tsl4jp07.fsf@mail.kernel.org>
References: <20261125-halliday-dts-v3-0-5c8311c0b70b@gmail.com>
	<20261125-halliday-dts-v3-7-5c8311c0b70b@gmail.com>
Date: Wed, 25 Nov 2026 21:38:40 -0500
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


Stanislav,

> Document the UFS host controller on the Qualcomm Halliday SoC.

Applied to 7.5/scsi-staging, thanks!

-- 
Martin K. Petersen

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
