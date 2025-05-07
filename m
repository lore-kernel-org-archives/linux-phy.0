Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74561C3ABB6
	for <linux-phy@archiver.kernel.org>; Wed,  7 May 2025 05:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mYoedepwHoDPs7seEXDoogW8n6NAT3PGWAqh9U95zsM=; b=2/v687GzX7nuIO
	HlCKotMrgfaLKXLZk481QjeumNbLk5gVJapLZYk/+mYfvKdd5hqZCQfTcMxUcPWyAylMfQik2Kgqu
	9EpSWtdIIbiReCldl6leHOmXInrJSE3WBVo99P1oaF2aa6GVoYWGZ1v1LIQ0fc8ltuJmQa7oSVfgc
	x0uFVwpbcgpPnFNxuP5yuvDBYEmbqQtPzf5ojs9tHmNcTuFqded7Ca4abBvDbPS/yUamOkXuEcYO4
	B0c7ixD/89gbfm7xXelJqicnhiKMiaGSM1djzWAzmbPyRAUhl8HsBFnyDvq2amnssruebdHmkjEpy
	WGZ/pRQO8BydjrbTrExg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX1w-0000000EEA2-0vQo;
	Wed, 07 May 2025 05:09:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCX1p-0000000EE8t-14rT
	for linux-phy@lists.infradead.org;
	Wed, 07 May 2025 05:09:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0A1605C5C0B;
	Wed,  7 May 2025 05:06:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5196CC4CEE7;
	Wed,  7 May 2025 05:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746594545;
	bh=TalQ9fNo/fQ1mqCr92hlP2SsV2ldrs0zdknJaR4RNWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jr9Zc5KYxpfcMufoPI3V7XOQRc1ocj+dmaEiDqVZra+axaK0NwtB3Zty9LIRJArwU
	 j11rij1/5p63xwZpsWOa69pdBz0EVSQwkVL08f3l8GMjkW74cqMwQjzkMjfuClWGe3
	 TgTDfzXt5I07h4y6P4E42Xf4ClP5xybfyWo5IU16BrMP18oFP+pKBViGCWbVy78t8+
	 W4cIzwqBmOQ+OvScIXY6shDOwTBmPvYk/Fe2Nvv+BT80eFpc7EjRYPRpG/CIeZSPqI
	 EMjvqlVxnzAIL6DXh9OQ+S11XgNf0oGVzswlM7pzTUBOEPJ6QVNZnYduKIBkIgSVXJ
	 nAC39XwgTwgbg==
Date: Wed, 7 May 2025 07:09:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org, 
	neil.armstrong@linaro.org, abel.vesa@linaro.org, manivannan.sadhasivam@linaro.org, 
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, andersson@kernel.org, 
	konradybcio@kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
	quic_qianyu@quicinc.com, quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v5 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for sa8775p
Message-ID: <20250507-obedient-copperhead-from-arcadia-4b052e@kuoka>
References: <20250507031019.4080541-1-quic_ziyuzhan@quicinc.com>
 <20250507031019.4080541-2-quic_ziyuzhan@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250507031019.4080541-2-quic_ziyuzhan@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_220909_334984_BE522E64 
X-CRM114-Status: UNSURE (   9.15  )
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

On Wed, May 07, 2025 at 11:10:14AM GMT, Ziyue Zhang wrote:
> qcs8300 pcie1 phy use the same clocks as sa8775p, in the review comments
> of qcs8300 patches, gcc aux clock should be removed and replace it with
> phy_aux clock.So move "qcom,sa8775p-qmp-gen4x4-pcie-phy" compatible from
> 7 clocks' list to 6 clocks' list to solve the dtb check error.
> 
> qcs8300 pcie phy only use 6 clocks, so move qcs8300 gen4x2 pcie phy
> compatible from 7 clocks' list to 6 clocks' list.

I don't understand any of this. You just submitted the bindings not so
far ago. Does this mean they were never tested?

What does it mean that gcc aux clock should be removed in the review
comments?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
