Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77642D3000F
	for <linux-phy@archiver.kernel.org>; Fri, 18 Oct 2024 14:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PzRlXVCyCRzn+Cc9FCKxmRKPEdecq4KmGYprYpyXJyg=; b=WM7JLazMPtJ/8Q
	4h5xICBumr2IoVFTvAtUSRlZMQNhvbf3GfDCZ+r83s1GKcWaqjl+ZGAPUobkU0Yv9+hBfz8WvntPn
	mxk0iuioiHqrafBa4SAQ4sAdK6e8esACIN3jcNCbKEjxViHvj3VTkb/1pttGPf3dFkmTo9xjFkWVG
	bwNpoV0+v2A+KeazkpBBqNll9knG8N3Z+QWeaGbz4HogVdRWt3iwHilJ4VKhh5Q64FzT/8t5pHIl1
	gEaJTggkAo6ucviJ20oEDUvxYoMlJjRS0PROuEC1CPKfm/r4Sd2qStkI7h/Vmpf4Mv0ozX/pHVisB
	A0Evpp6vG91L14Gc9Ayg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1nce-00000000zOx-0ajg;
	Fri, 18 Oct 2024 14:06:32 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ncb-00000000zOW-3wxs
	for linux-phy@lists.infradead.org;
	Fri, 18 Oct 2024 14:06:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0DD97A440F0;
	Fri, 18 Oct 2024 14:06:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89A22C4CED8;
	Fri, 18 Oct 2024 14:06:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729260388;
	bh=Mj/iyexBxfRCuYiXVkHqPW+rtTdpj3ONOaTfeF67GFU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Uem0mUIV9hqy8k5GJ0b1jautXF5iivKVCytpLXjKVdhgdRubFgE9dzSnTDs1EqrPO
	 GFxkDurBDxlLefU2zdEuklxFegbnjyUgb8KUUt6asrNZgZZ2MKr+WQ9xG2G5lDY7cs
	 KeV/c+8V9/tajfRmQuBg9jTekO/WX774JKiH9E8UUO/MDzRzEg7t1EJTBFxhSxks+z
	 rOCEOcm8msrF9nt5XrnOwB4Tl0ooAeDHoTWI8ZpTydWGGSJj/2Aki8cAfrXPRGcbY3
	 aOsKMF+1a+m6BDNrmPaHxt+xy7zKrcG9jRSH9+U+3WWi9UMkpGNrOy6ts+ljVVqF0M
	 vuQatNbbK1fKQ==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t1ncI-000000007Hw-00MJ;
	Fri, 18 Oct 2024 16:06:10 +0200
Date: Fri, 18 Oct 2024 16:06:09 +0200
From: Johan Hovold <johan@kernel.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
	robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
	sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
	johan+linaro@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH v7 6/7] PCI: qcom: Disable ASPM L0s and remove BDF2SID
 mapping config for X1E80100 SoC
Message-ID: <ZxJrUQDGMDw3wI3Q@hovoldconsulting.com>
References: <20241017030412.265000-1-quic_qianyu@quicinc.com>
 <20241017030412.265000-7-quic_qianyu@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017030412.265000-7-quic_qianyu@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_070630_066229_F2FB1075 
X-CRM114-Status: GOOD (  12.07  )
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

Please use a more concise subject (e.g. try to stay within 72 chars)
than:

	PCI: qcom: Disable ASPM L0s and remove BDF2SID mapping config for X1E80100 SoC

Here you could drop "SoC", maybe "ASPM" and "config" for example.

On Wed, Oct 16, 2024 at 08:04:11PM -0700, Qiang Yu wrote:
> Currently, the cfg_1_9_0 which is being used for X1E80100 has config_sid
> callback in its ops and doesn't disable ASPM L0s. However, as same as
> SC8280X, PCIe controllers on X1E80100 are connected to SMMUv3, hence don't
> need config_sid() callback and hardware team has recommended to disable
> L0s as it is broken in the controller. Hence reuse cfg_sc8280xp for
> X1E80100.

Since the x1e80100 dtsi, like sc8280xp, do not specify an iommu-map,
that bit is effectively just a cleanup and all this patch does is to
disable L0s.

Please rephrase to make this clear. This will also allow you to make the
Subject even shorter (no need to mention the SID bit in Subject).

Also say something about how L0s is broken so that it is more clear what
the effect of this patch is. On sc8280xp enabling L0s lead to
correctable errors for example.

> Fixes: 6d0c39324c5f ("PCI: qcom: Add X1E80100 PCIe support")
> Cc: stable@vger.kernel.org

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
