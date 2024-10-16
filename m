Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B46A5D206AB
	for <linux-phy@archiver.kernel.org>; Wed, 16 Oct 2024 07:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9+oxir002nVTsMEG3G/EtqgKj4VetNdI5hewy2lplCo=; b=M3KUbsRUE4RkcW
	vaMTfPp0ltx/O8L7StOWCt070LmGK3LIUzRI9i4o1Bgmor/lh4t6OdU7+WlQixe+FkfvjB0uAQEX9
	+/Wjf/dfleeDsj4ytuEVEi9YknHpaRHo/M36yQnySSmQUsg4DQCte1rzUqYYnB5iFsfb/YeQKwH4L
	om0sqBh86NHVfT5ZyVxGVLDOM5WvrwhCpNXa+hrKfmoT745eWhbSLtmXS8wzQ2rCtdahgfYtbUxad
	3BSgj6kd4fI8297RX2k1VzSXXlF8uKsyHdazPFCfI+yzaVn3qNQ38B9OabOWjtAteSQLySyjCnFp7
	1gVmgD5OPBi66a7KPsQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ymJ-0000000At1r-0oeW;
	Wed, 16 Oct 2024 07:49:07 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ykq-0000000Asl9-0JDV
	for linux-phy@lists.infradead.org;
	Wed, 16 Oct 2024 07:47:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 1AC21A42567;
	Wed, 16 Oct 2024 07:47:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B6DC3C4CEC5;
	Wed, 16 Oct 2024 07:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729064854;
	bh=jf4OwaxHcdsO0QCgg9KFcZKV0Gr1jLc6IZPiKDRY5gk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=USO8bjomVqGAS1r4X3ZCZqktD74PWGgdFNF2X40IJrMoV5L4zoHmcU3E3sFr0UcIl
	 Q/j0r7WFdIj0Si350gu4yKbKomyq0dIZvn3k0YrxJ/vVEzMv1brjDfpTrZXyaiSJIw
	 bCWtbtudVjbcz+27BegwIVEZvY8VExRZDCilpPYPQY3XHUI/GIfaGrQDJ/ac8k6H1B
	 Cjza1EHwAnZXcKJ/T/UzeX5SKo9Ub/aUNGSwvXV3+naemhNXIGNopyCd54ql1808mn
	 aVTUbp+9BrHWXOVGkcHQmvOMaI4MdmyEWgISvB0PZ1MGHwH5eiPRMohgPUevOgb6ft
	 gtmYYOb3RZcSg==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1t0ykv-000000006Jl-10dx;
	Wed, 16 Oct 2024 09:47:41 +0200
Date: Wed, 16 Oct 2024 09:47:41 +0200
From: Johan Hovold <johan@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Rajendra Nayak <quic_rjendra@quicinc.com>,
	Sibi Sankar <quic_sibis@quicinc.com>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: add
 missing x1e80100 pipediv2 clocks
Message-ID: <Zw9vnXpzyzLmZA4k@hovoldconsulting.com>
References: <20240916082307.29393-1-johan+linaro@kernel.org>
 <20240916082307.29393-2-johan+linaro@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240916082307.29393-2-johan+linaro@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_004736_200573_8F1E6C75 
X-CRM114-Status: UNSURE (   8.31  )
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

Hi Vinod,

On Mon, Sep 16, 2024 at 10:23:05AM +0200, Johan Hovold wrote:
> The x1e80100 QMP PCIe PHYs all have a pipediv2 clock that needs to be
> described.
> 
> Fixes: e94b29f2bd73 ("dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the X1E80100 QMP PCIe PHYs")
> Cc: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Bjorn has now picked up the DT fixes for 6.12, but we need this binding
change too to avoid checker warnings.

Could you pick this one up for 6.12-rc?

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
