Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D542D21268
	for <linux-phy@archiver.kernel.org>; Thu, 17 Oct 2024 09:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T+JtkVgNPGEik6Qyxp4qKEPzEvlj66fkx4Ti7HPcc9g=; b=bVmlBHOGscGN2k
	jYWVsXqdyOe7N/8psqDGFr0LPbppRRBZyERw7/0jwnY0d7UhpvETW5ME7ZvOoTjEg5qmQE5knyjir
	8FLCkDhqe9A3yooZSbT9lMJrmfXae6Mxgp2Z/IQ7KTJ/aIZTjgX/UlD9Hu7wDyFm8EC+pN8ReZaMH
	GH4Dxm5ha5+cqf9v2nBsGwzc+4GSvh4x2ywGTorf4cnNqP3WuEOAI6M3CZBDLg+3XpGQ3TpIu5Set
	0auVGTihC7WAj6JB+zLkPCv39UFwyKmSoVIHF0fpVG2IZokl0xQXVTPKOKSOYgSExjDmkF/dU+LGR
	1Lle8Hzewh5RpSH0rHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Mqk-0000000ELvu-1XGR;
	Thu, 17 Oct 2024 09:31:18 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1Mis-0000000EKFG-37cc
	for linux-phy@lists.infradead.org;
	Thu, 17 Oct 2024 09:23:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id D2DDAA43AED;
	Thu, 17 Oct 2024 09:23:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D072EC4CEC5;
	Thu, 17 Oct 2024 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729156989;
	bh=roQk4+wPKL6CoQaJxy8dRC1Ol0Eh/tGU7Px2YnAC39w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JBnYrPyNIbZZnDizykAZRFvRIAyK3Ok1tvA22uQwrpUuhH6Ry6OJN87yzsO3/MiBY
	 WTxtETbnpbyyU31Ri4UNrSz+P5OnM3/KZFQ+SuU8CkePNx+v3f6PScEL1pUKl7eNTN
	 ZxLtCKW+gccfgAnv1UyL8FADLHwg9U61Je96CPR9f1dsYDm0vahDTVio0w++9F7wwj
	 C93vVzV2ge81UlKpHhYj2NvCAJrJubGg5XcgQjEvb8N8elkgerLAJh270I1jqM1aUl
	 loGKV9pavbLbmSJGcyOrCy0bcuE9AtbdYbsZHCq/9GDPKYBlYi/MgfRdnN14XcILod
	 Sr/1vyEn6UIGA==
Date: Thu, 17 Oct 2024 11:23:06 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Xin Liu <quic_liuxin@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, 
	quic_jiegan@quicinc.com, quic_aiquny@quicinc.com, quic_tingweiz@quicinc.com, 
	quic_sayalil@quicinc.com
Subject: Re: [PATCH v1 2/4] dt-bindings: ufs: qcom: Add UFS Host Controller
 for QCS615
Message-ID: <rv3ukz6rhgp3x32s74nbftmoqmdxjxmoii3zsd4wipmhudyq7q@ha4l2svl5lim>
References: <20241017042300.872963-1-quic_liuxin@quicinc.com>
 <20241017042300.872963-3-quic_liuxin@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241017042300.872963-3-quic_liuxin@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_022310_956193_4C4E279A 
X-CRM114-Status: UNSURE (   6.11  )
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

On Thu, Oct 17, 2024 at 12:22:58PM +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>	
> 	
> Document the Universal Flash Storage(UFS) Host Controller on the Qualcomm
> QCS615 Platform.
> 
> Signed-off-by: Sayali Lokhande <quic_sayalil@quicinc.com>
> Co-developed-by: Xin Liu <quic_liuxin@quicinc.com>
> Signed-off-by: Xin Liu <quic_liuxin@quicinc.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
