Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A76AFC77B7A
	for <linux-phy@archiver.kernel.org>; Tue, 16 May 2023 14:19:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jE6Xk8UxTBnoqx+sDcr/8+Rlld7anP8iOC1RdH2We4s=; b=huD3nAWHu1AiTb
	VgUJThpPFfiW9gbAaSLW50yBKsK0wWzp1/mnMxgpMKfijyKuP6snXuLeEMGDIIww7VWCWOpUZgku9
	Hvyl+g9kVqFbOBFlzLKGy2ERYi6nn5euqNZzrSTYMcxAyC8/sKGz0WBmBxZpZ/VxXanP+a7xB8KRN
	WHD9nx3eOj+XBWT9T9istz5OtCmSIk/G6MXdnBiU1vSqNIK7THQvsLR8u6THPrRiDHYGR30kYr3y+
	KlNNjXBZbNQxUivJSQlBYt4e2UCEI27+giHoXACuf7+DERZWOzkybP9dFouQb/Fh8cngSiHBPTAPA
	1+EdS7PAuHjuH9BAmekQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvWB-0063eq-0r;
	Tue, 16 May 2023 14:19:11 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyvW7-0063d8-3D
	for linux-phy@lists.infradead.org;
	Tue, 16 May 2023 14:19:09 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 5830C63A9B;
	Tue, 16 May 2023 14:19:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31991C4339B;
	Tue, 16 May 2023 14:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684246746;
	bh=MJyyMP9np2jIc+G+hDnN3CRXHy4kHK0ZP6EHijXOVLQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=MXHvxvexi0ZmdqcvRgvYHTDu5IJRm9UvjO7sPnzF+4wmJhziuotbq5oeR+Hi84NAV
	 uEf0XJ0ou4d/OIjq7iu4/83hZXCPDi014OjGrdL/QLtarRLbrdEq87+qoXlP8as7Ti
	 DT27nFb//dLi8oGeGi7fmedcWcYgZDXUfiBnseInTyBbbDUgmKY7VbToq8OrUiK4GN
	 vi7K0sy7VlBIfHMkjU6PLDnrRslE9nTfpqk79HhL/CCiwA6sdWCiT6d68dHTd+tEWJ
	 Z6Swj2agkMwRBEDAzKOaJ/KV1Ft5p5LW3lPJTuuis4aJLNio1E5hGZredLEjWy20Zm
	 oIOfJwRFlBLDQ==
Date: Tue, 16 May 2023 19:49:02 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] phy: qcom-snps: correct struct qcom_snps_hsphy kerneldoc
Message-ID: <ZGOQ1nCT54+i/4i7@matsya>
References: <20230507144818.193039-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230507144818.193039-1-krzysztof.kozlowski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230516_071908_073855_30D9EF2C 
X-CRM114-Status: UNSURE (   7.04  )
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

On 07-05-23, 16:48, Krzysztof Kozlowski wrote:
> Update kerneldoc of struct qcom_snps_hsphy to fix:
> 
>   drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c:135: warning: Function parameter or member 'update_seq_cfg' not described in 'qcom_snps_hsphy'

Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
