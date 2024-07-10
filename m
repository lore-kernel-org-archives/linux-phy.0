Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD83DC3DA41
	for <linux-phy@archiver.kernel.org>; Wed, 10 Jul 2024 16:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ixoUGM0YfmyNqJ/tPe1mPqSmyqwPFE2lwbP3hS6ANO8=; b=nPSisD2srwTOjW
	Kk3lQyTmgGTrvNBIeNap6xYF5WkYbbsJESzCQX3X56yRjXwuMsafb6y+8U0zElXtFHqNXnsQ7G+sd
	cZn6xDVPV3HEHjTBAh7PVsj0RzkUwLCdzfneYfqyknJ/t0i6cfNXDSgFTozarP1XZ7eXnBZ22rsup
	oCCKFmegYLv4YgvnQG0CEFVDVDyERQqkMNZg0XTDngSXFcIgvBaim0F2eC8OGn3enpDkEz4TMuaoe
	yc5Fz5WZtRM6v3l3KFw8bgMi0nSWSD4TYiOrYGIXZTpTKKQyS1xt9xX+bc9j+tuwM1mQXubzQp5W8
	r51miFvXq7F91wpLCGKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaB1-0000000B9Ya-18N4;
	Wed, 10 Jul 2024 16:28:19 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRaAV-0000000B9Oq-22Jc
	for linux-phy@lists.infradead.org;
	Wed, 10 Jul 2024 16:28:17 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 54B7F61B41;
	Wed, 10 Jul 2024 16:27:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F25F6C32781;
	Wed, 10 Jul 2024 16:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720628866;
	bh=TaQWp+cfnQ4j1Bv5I03np4F0DZRpYrtGyDGXjqfU5eI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gG3tV/qNFxAOaFIVb8nvkjnNJs1m+LnG/+148o/J/s0l0Fu5XK71oplaIKs9jOhtr
	 poW2L2TsEhdss3jbmP0LuPiRH6rF2gZV7YenfwhOA2cQIA179BFAGv9MONpezpahAy
	 gMWicTb8KTiijROIKBn3t6e7sP9yPN5LqGcHe6AZ5e5Xz09aTM46ieqlnt46ZdelKg
	 +6iMJzpUqikk/fqbKWIBNAbxYk12kLi2077S/I9TWq8ttUUB3+fXDaaycEiAdgVbmS
	 vEJUBzMpu2HnD1sBOB212BI3HLweH99zn6gDQK28gAVPS9dv/Fy8nNP8Gi44etWQyd
	 JRfi+x+/j/hAg==
Date: Wed, 10 Jul 2024 10:27:45 -0600
From: Rob Herring <robh@kernel.org>
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	kernel@quicinc.com
Subject: Re: [PATCH v2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 bindings for QCS9100
Message-ID: <20240710162745.GA3212156-robh@kernel.org>
References: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240709-document_qcs9100_usb_hs_phy_compatible-v2-1-c84fbbafa9d6@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_092747_583497_DD6F04CD 
X-CRM114-Status: GOOD (  16.32  )
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

On Tue, Jul 09, 2024 at 08:46:19PM +0800, Tengfei Fan wrote:
> Document the compatible string for USB phy found in Qualcomm QCS9100
> SoC.
> QCS9100 is drived from SA8775p. Currently, both the QCS9100 and SA8775p
> platform use non-SCMI resource. In the future, the SA8775p platform will
> move to use SCMI resources and it will have new sa8775p-related device
> tree. Consequently, introduce "qcom,qcs9100-usb-hs-phy" to describe
> non-SCMI based USB phy.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
> Introduce support for the QCS9100 SoC device tree (DTSI) and the
> QCS9100 RIDE board DTS. The QCS9100 is a variant of the SA8775p.
> While the QCS9100 platform is still in the early design stage, the
> QCS9100 RIDE board is identical to the SA8775p RIDE board, except it
> mounts the QCS9100 SoC instead of the SA8775p SoC.
> 
> The QCS9100 SoC DTSI is directly renamed from the SA8775p SoC DTSI, and
> all the compatible strings will be updated from "SA8775p" to "QCS9100".
> The QCS9100 device tree patches will be pushed after all the device tree
> bindings and device driver patches are reviewed.

I'm not convinced this is not just pointless churn. Aren't we going to 
end up with 2 compatible strings for everything? SCMI should just change 
the providers, but otherwise the consumers are the same. I suppose if 
clocks are abstracted into power-domains (an abuse IMO) then the 
bindings change.

Why do we need to support both SCMI and not-SCMI for the same chip?

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
