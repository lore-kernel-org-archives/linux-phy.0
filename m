Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53445CA5FA2
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 19:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eWUHK2Rk2s6holCk8SoxJueiX/wijxhNVoQvMN5WMEM=; b=0iAhxCO/8CIRjR
	89oFewA3PQ+OBqxo2YnZ488/cna5QuOthmNmrgyVi+nWrRgRmC3viXTXvvvJMOlcC7O+Wko/2iBXJ
	/p6JnAAuIac0hHyXSI1aC2Q5V/Znq7zXhzZ6wokbSEYf/wu8r+G3EidSIds5t1nVwc7shFswYi3z7
	LNC8eHHDDjUJK1sPy+XtKF8TlaNYdkKtIfucxrhCo+u0GaXs5o9vE7VnnHvPSmZWhFGw3tCpwyDJF
	/z7CY+vdC7oQQ9tNf4ShVghKWwciPEr78Ys3SLz9wQy6wC4SPVrmduOCQZWGVDv5VdMxwwfldY2nj
	4SGkD7Hg2IOZc5iUjpJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH2r-00000001R6i-06IG;
	Mon, 28 Sep 2026 19:29:49 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH2p-00000001R6F-3uto
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 19:29:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 1722D601EF;
	Mon, 28 Sep 2026 19:29:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96DC91F000FF;
	Mon, 28 Sep 2026 19:29:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790623786;
	bh=n+jDmQgRat9NDDI5uzAJtEm9Oa6XAnXyFmH0bziUoq8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=R1uW/jpQm0e0YaSLYOyLLp95EnOdOMOA3CNMdDvWLS2uSD4mJuSEztKePuvir6X4e
	 uvTOHCrXhvimza9jJGWNQJX6RnrY9UrI440XKiRMVFsgHMb88JJYDfRYqAwSug15GG
	 h2nP3QE3tzEtx0FXc1Vm/yAtWSRZ87T+EFZVVYAN86BJHkDyAqLYXfpYbLdAlxDxLT
	 zBH+8gxXBK4kYC/adsdoCd1h7LtxlSnoIy3fpCzxsC7uVISaqN5r0kWH74jc1qRFQF
	 G/1dZco0a2xwFYiPcjuOqyK8TKckVxth0MDYCIp27hFE0eU+szoKb30vWakdThjuX7
	 ivrFxzmueSNIA==
Date: Mon, 28 Sep 2026 14:29:45 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, jagadeesh.kona@oss.qualcomm.com,
	gopikrishna.garmidi@oss.qualcomm.com, linux-scsi@vger.kernel.org,
	sibi.sankar@oss.qualcomm.com, Bart Van Assche <bvanassche@acm.org>,
	linux-kernel@vger.kernel.org,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Avri Altman <avri.altman@sandisk.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, nitin.rawat@oss.qualcomm.com,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Taniya Das <taniya.das@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 Document Glymur QMP UFS PHY
Message-ID: <179062378451.401860.6157589865548275713.robh@kernel.org>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
 <20260918-glymur_ufs_qcb_enablement-v2-1-16619f7e36a6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-1-16619f7e36a6@oss.qualcomm.com>
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


On Fri, 18 Sep 2026 16:09:07 +0530, Pradeep P V K wrote:
> Document the QMP UFS PHY on Glymur SoC.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
