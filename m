Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDC3C77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:24:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7FIk+EAXBOUZYgTck18EA8q0VFtMfanIohZ+YdzJ4A=; b=bLN5AvHSvvwWZI
	0R1YSYuR1+StN5+OtHLYTYh9+qOeIESPrjQen10rndwz7JX8TT2lJmWO0/kSDAhxI1VLk9vOrsd6t
	K3MBzuSq7ZU+j7QdRG9N0c9wLAOHvxK4cWmM87Fm/d0Y3/T5OaLNn8ve6JO6Pt8nBq1XM0pYHByOp
	Y5De+3nzk13vA0z1TcmABd/oUhEiv5xgkOLWoWfc9E+snTho86YMzKAARtwgjoa44agtO9upvgM/I
	heJr+cwFq+33nX5k6a1rxPZqJIzWRvPX2TPSkS3M4WehU20qLmTa94FGSUW3w8mMy0ug8t9hIIwQX
	p7huB/C+v4q1Xvuagmag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvas-0064p4-1P;
	Tue, 16 May 2023 14:24:02 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvap-0064o0-2b
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 14:24:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 077D960A07;
	Tue, 16 May 2023 14:23:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6150C4339B;
	Tue, 16 May 2023 14:23:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684247038;
	bh=PcwVUUITKY/O/qO722wrvpNOAEQAzpJRIdCPk2unTOY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bY82g5MTrH6hp5Q1RQNsstyUWpf8rwxYFh7Gfb/0CzSU7DhjhQWZTd5Qgv0Ac8Nyq
	 Jxj8fUna8FXCg+4X3SqxKHiEcGTlcdYAajhPz14zL4fy8lcUQcbgwFuV/LAGnJOSFM
	 mQDii3vwaavba6aD4YeoXaY/4mYgmeKsvBhoC/x3RxFmUgsQ0spr3ybL1QbQlGsq95
	 UFr0U4DFupHAUnAmZevrd64lLEWTGoHymC843ZKvp43rB/zAK2TeSUMWlqPaEHDZe1
	 2jVwsYLc5NPB4nNoJQAXBTHO6WHwJ/wpu/RKxevHx95eXk+xyEyWnGSeE7LTHemRfG
	 CsMuhXRoucIkw==
Date: Tue, 16 May 2023 19:53:54 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-phy@lists.infradead.org, agross@kernel.org,
	linux-kernel@vger.kernel.org, andersson@kernel.org,
	bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
	robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v10 0/4] Enable USB SS qmp phy for Qualcomm SM6115 SoC
Message-ID: <ZGOR+hvLMZLxl8fh@matsya>
References: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230502053534.1240553-1-bhupesh.sharma@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_072359_885935_CD1EC4A3 
X-CRM114-Status: GOOD (  10.93  )
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

On 02-05-23, 11:05, Bhupesh Sharma wrote:

> 
> This patchset adds the support for USB SS qmp phy for Qualcomm SM6115
> SoC. For the previous versions of this patch there were conversations
> on irc as to whether this was a 'qcom,usb-ssphy-qmp-usb3-or-dp' or a
> 'qcom,usb-ssphy-qmp-dp-combo' as per downstream code and hardware
> documentation.
> 
> But after a careful look at downstream dtsi (see [1]) it appears that
> this indeed is a 'qcom,usb-ssphy-qmp-usb3-or-dp' phy and not a
> 'dp-combo' phy.

Fails to apply for me, pls rebase

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
