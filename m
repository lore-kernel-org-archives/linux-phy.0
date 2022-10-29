Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B49BCFA3743
	for <linux-phy@archiver.kernel.org>; Sat, 29 Oct 2022 08:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nm5I258D2EF9ZKZI6Q7XhMwRPvtxxfn5O4e5QhwGCxY=; b=G/uEw9ifsXljm2
	KD9pP1aVPR99ggTn8FnJcJhDyBWUCJlhGiIZ+BnoGQHw8QHaQLgQHcMlSJFTDIRfYsnylDve21yjY
	8+ufdYgJWt5Cp8AxBoMrafDsNbjFtvAhyIbwVL/2GUlSjbvnF6mGiEDLWbTetZsYy8G+DaaVv1mre
	geHSXnLUoDCXtiiYjAnlm1KAxUZfeIhNRAdcqzUQNLiQ5p6tBdcGjzeuuvOQyhzgP6JOIXpP1Bv9k
	NKqgoIFAIIbpAD8PrjPnv+hTuv7yGaisD7Rh+KSlP1bIyAwxbwPxkTBOHKKdCz+1ZYHX4EaX4sXQx
	zxB2UsixMghDSFM+yFdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oohVj-005J1q-1F; Sat, 29 Oct 2022 08:48:11 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oohVg-005J1K-Fs
	for linux-phy@lists.infradead.org; Sat, 29 Oct 2022 08:48:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 55014B80B18;
	Sat, 29 Oct 2022 08:48:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAF89C433C1;
	Sat, 29 Oct 2022 08:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667033284;
	bh=qAB44AW9l7MBg3PipZA9gp8hcRBcbWZ2uPxGK7uAZ0k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hj9EHjO9OTXV1nd8TMHapdEkPKuS1I1SAr0E/MPHdkLWnjuijP2cgi5Y+Acm4SJFF
	 1TL9TQq/s9gK0F7VTDHiksxoom9bHUgBvHxY53QFEec6nwxKVamuNrs0eJ7spw6HU1
	 luXDV39kM/dbJ9W7mM2VLTDnFomcfHRjkWqaT0OlB/TzrXZoLfYV06UVLkb2tVKlVl
	 ATTVHRZ/dTomj7FtA5al8cvUvfBxBnZ6BKnqxR4HjJZhxQ6LUTtrGBD/0YSvih44Co
	 PcW6+B/uUxtMkkd5YIhXnFbmS1KoDQl2JUeMHYZo8H5NnXiQx+Z8xDvttSyZF2n5N5
	 jnpwTAVdloU0g==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1oohVP-00008o-Av; Sat, 29 Oct 2022 10:47:51 +0200
Date: Sat, 29 Oct 2022 10:47:51 +0200
From: Johan Hovold <johan@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 10/16] dt-bindings: phy: qcom,qmp-pcie: rename current
 bindings
Message-ID: <Y1zot8aJ1WXnbrwF@hovoldconsulting.com>
References: <20221028133603.18470-1-johan+linaro@kernel.org>
 <20221028133603.18470-11-johan+linaro@kernel.org>
 <33b13789-33d6-a22f-82c9-4c5691d0737d@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <33b13789-33d6-a22f-82c9-4c5691d0737d@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221029_014808_711404_EEAF4EE6 
X-CRM114-Status: GOOD (  20.68  )
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

On Fri, Oct 28, 2022 at 05:57:01PM -0400, Krzysztof Kozlowski wrote:
> On 28/10/2022 09:35, Johan Hovold wrote:
> > The current QMP PCIe PHY bindings are based on the original MSM8996
> > binding which provided multiple PHYs per IP block and these in turn were
> > described by child nodes.
> > 
> > Later QMP PCIe PHY blocks only provide a single PHY and the remnant
> > child node does not really reflect the hardware.
> > 
> > The original MSM8996 binding also ended up describing the individual
> > register blocks as belonging to either the wrapper node or the PHY child
> > nodes.
> > 
> > This is an unnecessary level of detail which has lead to problems when
> > later IP blocks using different register layouts have been forced to fit
> > the original mould rather than updating the binding. The bindings are
> > arguable also incomplete as they only the describe register blocks used
> > by the current Linux drivers (e.g. does not include the per lane PCS
> > registers).
> > 
> > In preparation for adding new bindings for SC8280XP which further
> > bindings can be based on, rename the current schema file after IPQ8074,
> > which was the first SoC added to the bindings after MSM8996 (which has
> > already been split out), and add a reference to the SC8280XP bindings.
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> 
> Also missing cc devicetree list.

Yes, I know, but as I mentioned in my reply to Rob on the QMP USB
series, I do not intend to repost this series unless someone insists as
there were no binding-related changes in v4 (or v3).

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
