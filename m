Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40276C43219
	for <linux-phy@archiver.kernel.org>; Sat,  5 Nov 2022 07:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s5n1XgqACYpL6B1ABZLchNVOw8PwI7GbZU6F4lSV5z4=; b=yOUsaP6gPeUIEj
	0wM3U8zI4nvY4CSTV9rMimK7CsFj2j51n3htfuGPI3v30jXFUGzofKynlhY0l04hxmf+fPrdu8Ru3
	8es2Cy2Af6kXImyDG5zP0ye8lsczP+Mag3pj4f7mkSHvRkYMtIJdPCyyt3/ZuKFosuQ3FXlKX6dy7
	AL+IrBy18eT2qbIJe5uOsCdHHK9/sEVY6HMAGRGH+Bo8Zm9gwQF87fT//yWw0OCann1tnbCAlnmAW
	T0bfW3626X2VI5cpQBJ5Xy8sgwh67IQTxU8NuHAOMc09gelfykM9yOfeo3V/hD4iTm7WuvWmFT2Xd
	+gG7WNLNhmivwJ1YR2HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDcy-0060qR-Mi; Sat, 05 Nov 2022 07:30:04 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orDcw-0060pg-1p
	for linux-phy@lists.infradead.org; Sat, 05 Nov 2022 07:30:03 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 68708B80E8E;
	Sat,  5 Nov 2022 07:30:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 237B8C433D6;
	Sat,  5 Nov 2022 07:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667633399;
	bh=6IiMdbZsgzS37KjkCeoZ8h+9owxEr+PN946azyQzNAM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fA9h1nEpq+vOJ4PWoPZQS0kvdjBAPapRvLleNwYqh8Jb0/DIRjtmRFuynEEAenrg+
	 SGfkXINPccVxdA9Zgb7GcnCkxYeu1F1YapqjgzpBP5f5LVAFtyQ/S8cclkPCA+C9SA
	 qlxibe2ACNfRNFCBd8CKb8ORVAdaNTnRaKIEtj47x86U+MjE2fhSjC/pCOw8y6FP5X
	 Xu0xDlRBSi+pvtPhcGHKoMVoA3H4AA/uFyHvj068wo9JMxIjPkV9Wg896/OVPypsYD
	 YU5PT/tHAHNkhW+zui3t5xUZdenFz+z2OdX7BUW/idtZ0PBkUW16ucQGxiIXzfOso7
	 Z5sIUHXTdLUWg==
Date: Sat, 5 Nov 2022 12:59:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RESEND v2 00/13] phy: qcom-qmp-usb: fix sc8280xp binding
Message-ID: <Y2YQ8sut+wM8y2Z7@matsya>
References: <20221028160435.26948-1-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221028160435.26948-1-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_003002_256625_25F25660 
X-CRM114-Status: GOOD (  12.12  )
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

On 28-10-22, 18:04, Johan Hovold wrote:
> [ Resending with devicetree list on CC ]
> 
> This series fixes the USB PHY devicetree binding for SC8280XP and adds
> support for the new updated binding to the driver.
> 
> The first half of the series clean up the driver in preparation for
> supporting SC8280XP and its new binding that drops the legacy child node
> and the (incomplete) description of register subregions.

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
