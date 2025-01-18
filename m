Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76045C02185
	for <linux-phy@archiver.kernel.org>; Sat, 18 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ymxgpt6CIiLWOYdvaBNOEI3Dzhq7XEn0lP2fs8poFh4=; b=vI0hwMKHNJ99YS
	9NauSKZX6rXRuLylzTsMJw9lENm0oQ4s7qFt+psPBCk7oI5Ehpq4Il4nTl4peBMD/zCEL+LPl79Pp
	1aNos/+bM4NQd2NmMS+b8vUUdmQQaqtc3StgjEvNsu1ew+KVvOVdPwvalYgN2tFY5lucUSG/QriLA
	diBc++DBKiC4i31+jXkoo5+z+GVK7bjnvVoeriKOg+Z/i57PfdnzICwGtt8v315swwUmyhhPulfZi
	mU/P9+GzqCASHG1g6PVUHlFxPy/2BrKcQXvyKCJoWQ1+T+vTKi5UcP6DuhTgMl9/V1MqZFjqdTcTB
	x5QPZ4DHqE9CAcOVYBcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZA5B-00000002YhD-0uOW;
	Sat, 18 Jan 2025 14:45:53 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZA59-00000002Yfs-03NW
	for linux-phy@lists.infradead.org;
	Sat, 18 Jan 2025 14:45:52 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 3D3D2A41603;
	Sat, 18 Jan 2025 14:44:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA2F9C4CED1;
	Sat, 18 Jan 2025 14:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737211549;
	bh=UVYF+ImoZ8RLdWLsucuuSH9TQgAlv3l/NXIkVeacLq0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YlHrloemHqG5AL/at6zEr50bhQ8zWO3FGdCBtUQfNivICg6G74s7XVjksIwycpn9y
	 1K/q7qKJZN9bhBp9he3x3ZlJJk+o36GAuItz45Z58YrnZmZnsTWCvg3cJ1DtLfhPMv
	 JpMhrUpqQuEV2QN+xVJbfk0Hu+wupd6KSDhSWJ0+tmGaC8IOQCa6YiXHoG+AGSkSeI
	 SdFgBsQEoqN25tP+fAOc0JLzydygCK42M8bOud5d4NNrZ9p5l/uHocG6Qg6ymIomh/
	 xpOZ+pBZyqoyvQf4eWUG1ZgcH8dy4WEBzBSO7AGRUunjmkl1tP3ulsKITl60GWXE0l
	 3J7a0/tzBLSsQ==
Date: Sat, 18 Jan 2025 15:45:46 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Nitin Rawat <quic_nitirawa@quicinc.com>
Subject: Re: [PATCH 3/5] dt-bindings: ufs: qcom: Document the SM8750 UFS
 Controller
Message-ID: <20250118-vagabond-sparrow-of-merriment-beafbd@krzk-bin>
References: <20250113-sm8750_ufs_master-v1-0-b3774120eb8c@quicinc.com>
 <20250113-sm8750_ufs_master-v1-3-b3774120eb8c@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_ufs_master-v1-3-b3774120eb8c@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250118_064551_117580_E9AF3F1A 
X-CRM114-Status: UNSURE (   7.63  )
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

On Mon, Jan 13, 2025 at 01:46:26PM -0800, Melody Olvera wrote:
> From: Nitin Rawat <quic_nitirawa@quicinc.com>
> 
> Document the UFS Controller on the SM8750 Platform.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
