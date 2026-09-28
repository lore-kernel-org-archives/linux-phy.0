Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EA09CA5FA3
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 19:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74yXukQcAXcrqvm/hcq/Xlc4LPMN73h6ezOZy5YmL4c=; b=G5GoDG5mwc+zEx
	AAyaPS/QaZxBTmXDPMnaJl0C++PKtBieOO5f1QhftSgxE6PtEsf/3RZPueaSZfZWlb1w+kl5ilpqq
	qmIPn3KgGvM31/MwS9T3pEaIDTMN6k9quxpv5g8I/WrSpiDMbCwNAtY626VJS2Q5Gt0cACMbVvpwW
	grCxryxQsIAR3TPUkpJ83mwjPNkTrb1/viu1SEyUbC+685mijmxvUD7ZLs/u6AUY/mos4Rm+Yfw9+
	Zh5X/l+9oX8wmixnZe3b2f541fBm5NfA3EMKEfFrVivHDDi5QyMV/We9USRQTwABZ1SfhfMaV8O5W
	/wohUOII3s6Yxnt56/aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH3m-00000001RBq-0YL9;
	Mon, 28 Sep 2026 19:30:46 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH3l-00000001RBe-0Y4p
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 19:30:45 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 9C8BC42BB2;
	Mon, 28 Sep 2026 19:30:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5451D1F000FF;
	Mon, 28 Sep 2026 19:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790623844;
	bh=kbsKQrsCbe+ud+MT/y3GQQRG2PEPjbBeZzhKMXzRQr0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=V4byGoJQ8LdQDjF6zB9FXT423NjL7dhDTPfrbb5RHZZLp0kcpL0CvtGY+NIVUaN51
	 zbC4i7hu2fr2rq1PWjIWibfx1VOvg5QWJzLQQ/qxSY1aNBUJ/XwYZfsQZCZ+HzAqTG
	 Zody2woW8dADOgEZia5YRTuH1u9sQ8eloGTOj4k4QoGRGcXLw7UyV2EdP+d8FmHk1p
	 CkiWTJEGOa4rTQqSm5hGUEpZBZkS1nCTqLLLPXJRpvjii09G0mnUTTMEdf7WHuTA8N
	 KP0bUqu+k7lUAmoZONPmxEZGTF7ez8c334TdqKUXn7OY/9UcnkxDtsXFXILf8B5+A1
	 NAY3LcPd5tW6Q==
Date: Mon, 28 Sep 2026 14:30:42 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	sibi.sankar@oss.qualcomm.com, devicetree@vger.kernel.org,
	Taniya Das <taniya.das@oss.qualcomm.com>,
	linux-phy@lists.infradead.org,
	Abel Vesa <abel.vesa@oss.qualcomm.com>,
	nitin.rawat@oss.qualcomm.com,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Konrad Dybcio <konradybcio@kernel.org>,
	gopikrishna.garmidi@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, Avri Altman <avri.altman@sandisk.com>,
	jagadeesh.kona@oss.qualcomm.com, linux-kernel@vger.kernel.org,
	Bart Van Assche <bvanassche@acm.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Subject: Re: [PATCH v2 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur UFS
 controller
Message-ID: <179062384199.404752.1741796801810335971.robh@kernel.org>
References: <20260918-glymur_ufs_qcb_enablement-v2-0-16619f7e36a6@oss.qualcomm.com>
 <20260918-glymur_ufs_qcb_enablement-v2-2-16619f7e36a6@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260918-glymur_ufs_qcb_enablement-v2-2-16619f7e36a6@oss.qualcomm.com>
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


On Fri, 18 Sep 2026 16:09:08 +0530, Pradeep P V K wrote:
> Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
> multi-queue command (MCQ) register range in addition to the standard
> one. So, both reg entries are required.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
