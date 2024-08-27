Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FB9FC52D6F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6tXARU5EE59OFiXYPswdWH5+AWubAXlb6pSPx3FVMk=; b=ZN2tW8iMsHw+/O
	IIilm1fXghBy1EgMMaOd2IrqrcAX0gs40cTVAAXBmgpoiwTwwKp/0MmOUX5BCwqvLa59sTRlQI4M7
	fbrUG39PjTfzl314trpAdffRlqsvqEhmp2BymdmKaGTeiAum0w5nq/QCsWbn76L3Z6lWxormi50Xg
	yxn8AOKS7s1qYcM15l8fbCFF7w1WY91pxnc8lA5SLb7b6y2/4uiISUN2b85RyXG0/npdCuqayFXN9
	f3x6iK5+KRx7f6egJyu1v3evWj47xnIw/nNUyZR3iJBNItwkQl/WWVWashn4V8kfC1LiuxRCrfikg
	9kd2+pccEISPCtein5Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipuW-0000000A42B-3P6s;
	Tue, 27 Aug 2024 06:42:36 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipuT-0000000A40P-0HHC
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:42:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DF9D6A415F7;
	Tue, 27 Aug 2024 06:42:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 754B3C4E68E;
	Tue, 27 Aug 2024 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724739874;
	bh=eiyBCHlvira5vozuY4SS6oQOMVMr3NqhAQQh4AhxF8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z2gL4dQOC+6Pa8coExiUQ62UkHTnr0v7NVrt4TDtf8rM5IC6FB4HPW39qU5a7R9nB
	 VZUnmGhOvtnZP+4w/XFkIIV1JxfQhAKItyOzIkfK82ftI9zjB991tZjs8dsH5zi8TE
	 GH2jg1OFqHKIDRkAPYbzvK15NX7VxAly1Fu+uRGEtvwDr65bz65i1VdgENRDO9ymQM
	 dDfdGN7UN3izcnzpkfAJuT/zUwbGUEGrOHh7K/qL+eIrgukPZlTLctBvH+8yOPvtB7
	 QYcl2HqVyw02l59nr3XSlf9MY0ZA1jeH7TXFz9rZ9kvzCbtfp8mZa5Rue7Qyf5QVnW
	 mVgygtRnyIyRQ==
Date: Tue, 27 Aug 2024 08:24:30 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 0/6] Enable IPQ5018 PCI support
Message-ID: <wq5mfkqvvclubmacu5ogptdeaahxr77hk73dpmcvcelno5ylpv@4q4hfuolzky7>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-1-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_234233_173517_520FEA94 
X-CRM114-Status: UNSURE (   7.92  )
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

On Tue, Aug 27, 2024 at 10:27:51AM +0530, Sricharan R wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> This patch series adds the relevant phy and controller
> DT configurations for enabling PCI gen2 support
> on IPQ5018.
> 
> v2:
>   Fixed all review comments from Krzysztof, Robert Marko,
>   Dmitry Baryshkov, Manivannan Sadhasivam, Konrad Dybcio.

That's not specific. What exactly did you do? You must list the
changes.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
