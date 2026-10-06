Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA950CA5FFD
	for <linux-phy@archiver.kernel.org>; Tue,  6 Oct 2026 02:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JFnJ9cCYCom9I8x9+RSeFaAgjT6uCLn6zR7qx0sPabY=; b=roC8SjiRd0VdME
	VaJbYW9sISo1B0tUny7Q5pRTLRI+6tlHyDNOGEFoH2QLQvKCaaHw7E/NCPkUIMUgdIyPjyVFEWVsk
	DWKyiehEyXyc8mU9/wI7d4nUpuGgejaKlyBLgztlP0y7eNadGw8G7hMCI9xmLNEkIgete/Jfib/kI
	4io1ztjThokfBgGpIi7mp7DpJYO9nxfVzJgZny7yscEVeHj+2hpjWtTmgjqmswr7JFXk/4MzfAo57
	rXieA5BPlobwC0tvCLfRi7ncw8kDKl/MZ8Zpnz4RwNPKfo0NAeQHdlLja+etDjgnOcIgEv51MLbuK
	LT2fM/+YIPh9f63V2Ttg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDvMC-0000000HXF7-0iSI;
	Tue, 06 Oct 2026 02:56:44 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDvMA-0000000HXEy-1q8q
	for linux-phy@lists.infradead.org;
	Tue, 06 Oct 2026 02:56:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 85A48601F1;
	Tue,  6 Oct 2026 02:56:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDB4D1F000FF;
	Tue,  6 Oct 2026 02:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791255401;
	bh=9zHK8j23wbr7hC5wphrEJ3qYPUmzN5TFe/Q39Z5TS9w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=AL6zupBoHJ8ld7liOmebku7uVBpd6mml8pOeBOYa3rZvGWZteN/ghO61e2qCSiLwG
	 wwbeu8eHcqXOJQMG84KSVQOfz1hvCDas+HYzbFTKZTzLprkIJcx+X0sdI/0LSHqcPV
	 RNlc3SwOpaR1vsHEC6oPPobDMQJW1NDQvmxAhS2ZT8VOnMTTjW2reEfsXdmrUD8qtY
	 mwfl/ceLtadFr0I7ZPUMfVe+LZXq8BnWshDJ+73AwGd+NnCiVRIrONpVRDPTVsn3sl
	 MsO34r/xHXmbLvMzWxs6zbfdwfSigRydoN2ALvfT9iE4oL0JSEVLG583mB71hsuhet
	 bPWbApNUH7reg==
Date: Mon, 5 Oct 2026 21:56:40 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Abel Vesa <abelvesa@kernel.org>, devicetree@vger.kernel.org,
	Loic Poulain <loic.poulain@oss.qualcomm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	Vinod Koul <vkoul@kernel.org>, linux-kernel@vger.kernel.org,
	Bjorn Andersson <andersson@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	linux-phy@lists.infradead.org,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
	jeyaprakash.soundrapandian@oss.qualcomm.com,
	Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
	Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v18 02/11] media: dt-bindings: Add CAMSS device for
 Kaanapali
Message-ID: <179125539959.3457124.1576210148320223378.robh@kernel.org>
References: <20261003-kaanapali-camss-v18-0-87ba4ebe0db1@oss.qualcomm.com>
 <20261003-kaanapali-camss-v18-2-87ba4ebe0db1@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261003-kaanapali-camss-v18-2-87ba4ebe0db1@oss.qualcomm.com>
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


On Sat, 03 Oct 2026 02:02:13 -0700, Hangxiang Ma wrote:
> Add bindings for Camera Subsystem (CAMSS) on the Qualcomm Kaanapali
> platform.
> 
> The Kaanapali platform provides:
> - 6 x CSIPHY (CSI Physical Layer)
> - 3 x TPG (Test Pattern Generator)
> - 3 x CSID (CSI Decoder)
> - 2 x CSID Lite
> - 3 x VFE (Video Front End), 5 RDI per VFE
> - 2 x VFE Lite, 4 RDI per VFE Lite
> 
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>  .../bindings/media/qcom,kaanapali-camss.yaml       | 303 +++++++++++++++++++++
>  1 file changed, 303 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
