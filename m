Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 084B4E7718D
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 19:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AAzmSoFa6LiJBzBbcXNKC0kqObzbaG53t8B6PrEB888=; b=BVsjUKHnxmElEf
	x6pshHSWB6F4NgkrSfFoa6nXIN0GGJukLWWvzeDnEUPh+cOBWn4gEiutbBvr3puvsOTcs6XQ+q1zr
	FDdWcmUHLP66mzk/3ah1zDANMr2/nAYUFw1QxbVcVkwL2O3xPtAckBW0I5tOatpdyI9aRyzt9w4lX
	9t9Zsq7elDO4zFGtvvxkSLiUkf9L81eU9ShvgO8oRTxNy891six6VZwRrFR0EtoSXVL0F8pbBmooJ
	MXXWUPmeKqeYySwM1Mt58HwBfobbpYXeHJ6HpHcd5Ek1dZVRGO6OVDPwdu7KQ6mofbLYJPiuhFJFc
	5Ukhn9ZWn2eppC7I86tQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAnO-0000000Cgjc-3IVf;
	Tue, 24 Dec 2024 19:42:22 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAnM-0000000Cgj6-0Fpf
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 19:42:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A9A845C57B0;
	Tue, 24 Dec 2024 19:41:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6DB85C4CED0;
	Tue, 24 Dec 2024 19:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735069339;
	bh=JrZT6Hk1aPlHYydr+/4h5NOAxAcjwjSCgl97/aJtbwg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R1Niv7LRgpX1zrJavq1++z7ooV05u6dnjP/6+41g/K27CvwJgzUan3LHDP4U7jVWP
	 jwXDa6TZQAIIHaqJOezU9lW1vnUg6VMLQfgSbF0R7OtcmwLdpXmk5UA2GgJs0mI2l/
	 k1buHJMS7rUtwppUmgBLinf0Tss0ayTpYZumoXkKMaq74NKzQwtBrM0xZJ1EHFahuy
	 H4kgwzLCdcrmVFi99U7R+1esQ/4PjHQSGMgBF9p99kmj+z5+7PJRchGPqevtfC0QHO
	 qS50yzuj30km8q8Zhw/V8xyKlOrQrK82+hSlnrrPrToPl+uS2ueDMAfzsgsFAi7aD2
	 TUulHmhpqQZWA==
Date: Wed, 25 Dec 2024 01:12:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Varadarajan Narayanan <quic_varada@quicinc.com>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, quic_ppratap@quicinc.com,
	quic_jackp@quicinc.com
Subject: Re: (subset) [PATCH v3 0/3] Add support for USB controllers on QCS615
Message-ID: <Z2sOl9ltv0ug4d82@vaman>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
 <Z2sJK9g7hiHnPwYA@vaman>
 <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <i7gptvn2fitpqypycjhsyjnp63s2w5omx4jtpubylfc3hx3m5l@jbuin5uvxuoc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_114220_145778_77869546 
X-CRM114-Status: GOOD (  17.30  )
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

On 24-12-24, 21:33, Dmitry Baryshkov wrote:
> On Wed, Dec 25, 2024 at 12:49:07AM +0530, Vinod Koul wrote:
> > On 24-12-24, 17:38, Dmitry Baryshkov wrote:
> > > On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> > > > 
> > > > On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> > > > > This series aims at enabling USB on QCS615 which has 2 USB controllers.
> > > > > The primary controller is SuperSpeed capable and secondary one is
> > > > > High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> > > > > SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> > > > > 
> > > > > Link to v1:
> > > > > https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> > > > > 
> > > > > [...]
> > > > 
> > > > Applied, thanks!
> > > > 
> > > > [2/3] phy: qcom-qusb2: Add support for QCS615
> > > >       commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e
> > > 
> > > Is there any issue with the two remaining patches?
> > 
> > Something wrong with b4... I have applied 2 & 3
> > Patch 1 should go thru USB tree
> 
> Hmm, strange. But then, please excuse my ignorance, do we have bindings
> for these two patches?

I see to have missed one!

This one is documented see:
d146d384222e dt-bindings: phy: qcom,qusb2: Add bindings for QCS615

but, the third patch is sadly not... I am dropping the third patch

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
