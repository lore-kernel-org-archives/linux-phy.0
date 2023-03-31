Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0317C76196
	for <linux-phy@archiver.kernel.org>; Fri, 31 Mar 2023 13:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQXoX4b/F/wLTnbEgrLv+nUFTjNNrqw8zjcXdkgmGpY=; b=O5zwKj4Oc8O0cq
	nCAS3mglrvRFh449ryq69x1Eul/+JkHMZAxfqyWQJ/Nnkyo5BDQJIhJa+Tx6iw33m5+z1QDFWvJaV
	y9zmROVC+szHtvVE45vLZznw2KSIsSSeV1B0ttIZUYURmAHIGmiRu/IYRry4wKhnaZb81GqeVSJVJ
	iQ7esak7GWk1vXasLJ0sxKvVOl2r2jWzcr5csZta0wIL05dIHTABceqVfZXVu+PPWLAj6Tj24fXad
	5It6YI5eZDRiegfbTLRF5U4OyUMCGOlNaDDcXtweoCBvkMK4d4123T2DueYG6Y0HjUwuHT6lz1lFM
	x6TkJ2yrJkp+pL9qa2yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1piFDH-007bo7-11;
	Fri, 31 Mar 2023 13:54:43 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1piFDC-007bmi-2O
	for linux-phy@lists.infradead.org;
	Fri, 31 Mar 2023 13:54:39 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 1434B62958;
	Fri, 31 Mar 2023 13:54:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89164C433EF;
	Fri, 31 Mar 2023 13:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680270877;
	bh=ShYnQF5sGPRHsnfF+6Il0ZMGhTHQ6CjbrVEJ8a5DiWQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eEd7lMx4zWzXFf7MKFXQMTXkO4hwvPwKXvO2KCsL/RuOFFneh+YeADbS93K1Xi9i/
	 3xwPL/+iKOAsYUxzFJlrA1GufAWQr0oTRV3zS6XPeLODbBkpINv2e+mMbKr+nq5zEX
	 kOQEpZl1y/DXh2OrNAbKfDd7RtEeteBfIv4B+mxkpA4H1d5HWvcZGzKzQbVBfgEJW5
	 dm1PGTi3FX2/0Ae8r9amXHpY12B5wJuMJDOyS9+OvhVPbWNTx+hAMfNAZjtTIRvdK3
	 3Bs4//h1VR+W+BMRWenWisR3SDUqV8+ac07/zdtJQ4Bs2RxzMA8UzjYecE7tT5SFqv
	 PS9QjSq6gir9Q==
Date: Fri, 31 Mar 2023 19:24:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	kishon@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, manivannan.sadhasivam@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/2] Add support for PCIe PHY in SDX65
Message-ID: <ZCbmGPfIup4YuEF0@matsya>
References: <1679035114-19879-1-git-send-email-quic_rohiagar@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1679035114-19879-1-git-send-email-quic_rohiagar@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230331_065438_818253_B6CE64FA 
X-CRM114-Status: UNSURE (   9.21  )
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

On 17-03-23, 12:08, Rohit Agarwal wrote:
> Hi,
> 
> Changes in v3:
>  - Addressed minor comments from Krzysztof of removing redundant binding
>    usage in commit message.
> 
> Changes in v2:
>  - Addressing Dmitry's comments and adjusting according to new bindings.
>  - Rebased on top of 6.3-rc1.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
