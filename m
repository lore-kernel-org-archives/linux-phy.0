Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45780E77188
	for <linux-phy@archiver.kernel.org>; Tue, 24 Dec 2024 19:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wnTtFggaIbyTbuvnJ42us90wkL4GvnSDJOuhp6ZMNcI=; b=anc5eHItA0bDlh
	Nx2B9wjRt/yQhzxBo16pmf2AV7ilnX8tKDoPk7DE70qFNjN24gQq/DT6aXtDxI0DRWZNCv97aXA1s
	PuktYrA5zAwPDAbF/dSmWHkWpW0gSMTwF45hFPQ+J9OZwekWlhbW+b0izfR5Uw17GHeDi4PfEaatb
	+C3OyQQfm4Gf44OpFfMPwXhYkGRVlUY0aQ0s7WIi7Kui9wt0VjUW6eymWLy3bp2epBxXpTZamvtTL
	7bOJbAB7QyDTJowI3PVD/I3G8HICeDLQ3JP1Ya7E8VLRToCls5JkdylZTCNqPYMj5s898yOR8r4vX
	K8/LGhRMcZhZFY+LWLsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAR1-0000000CeqP-1QdB;
	Tue, 24 Dec 2024 19:19:15 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQAQy-0000000Cepk-3AKS
	for linux-phy@lists.infradead.org;
	Tue, 24 Dec 2024 19:19:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 9206BA41658;
	Tue, 24 Dec 2024 19:17:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C4D4C4CED0;
	Tue, 24 Dec 2024 19:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735067951;
	bh=/S6xr0AyVMFjE/yJ1Flixxto4mjlZUmMMHGYCrP+lLM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YfjQ3GKhGZVLE3UR5HFV+NpvXj5HPnKhJylH9pJtVmu1zTV9qU/AZesuc9qlzyFIX
	 QbaM4VMwFXxSRQwQOBzkG9PTofdyI8NkXGx+2CXC9qp6OQaXoD53CqlF10FCc1fRT6
	 4gF3u6Kx285+EQ1VPoxat4Awpsi08an+78nmthff0p2sRhqyWiXhuPYHUvFoMrysAp
	 Ewd/HVvDLaJQp3d7g5sLvz3HHFkylcR2PlE87kI2yFP41MWxbht7yh6w4n1x+GqIFk
	 i2UO72TOzM3WgwDn4ORdgw55GMNOla3OtypvnXZXV0nAvadHR1NcEYt2YhrO2a/5jB
	 vEY1App0k8+Ew==
Date: Wed, 25 Dec 2024 00:49:07 +0530
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
Message-ID: <Z2sJK9g7hiHnPwYA@vaman>
References: <20241224084621.4139021-1-krishna.kurapati@oss.qualcomm.com>
 <173505391861.950293.11120368190852109172.b4-ty@kernel.org>
 <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <anfqf3jvh7timbvbfqfidylb4iro47cdinbb2y64fdalbiszum@2s3n7axnxixb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_111912_859109_6CB19ACB 
X-CRM114-Status: GOOD (  13.48  )
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

On 24-12-24, 17:38, Dmitry Baryshkov wrote:
> On Tue, Dec 24, 2024 at 08:55:18PM +0530, Vinod Koul wrote:
> > 
> > On Tue, 24 Dec 2024 14:16:18 +0530, Krishna Kurapati wrote:
> > > This series aims at enabling USB on QCS615 which has 2 USB controllers.
> > > The primary controller is SuperSpeed capable and secondary one is
> > > High Speed only capable. The High Speed Phy is a QUSB2 phy and the
> > > SuperSpeed Phy is a QMP Uni Phy which supports non-concurrent DP.
> > > 
> > > Link to v1:
> > > https://lore.kernel.org/all/20241014084432.3310114-1-quic_kriskura@quicinc.com/
> > > 
> > > [...]
> > 
> > Applied, thanks!
> > 
> > [2/3] phy: qcom-qusb2: Add support for QCS615
> >       commit: 8adbf20e05025f588d68fb5b0fbbdab4e9a6f97e
> 
> Is there any issue with the two remaining patches?

Something wrong with b4... I have applied 2 & 3
Patch 1 should go thru USB tree

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
