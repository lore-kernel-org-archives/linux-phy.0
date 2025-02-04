Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A82EC0218F
	for <linux-phy@archiver.kernel.org>; Tue,  4 Feb 2025 08:17:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=38LupjiIFAlItkwWKz2R2toNp+irAnN/IBji0FB7Uxw=; b=yPxPaExkNyRVno
	JS6JTBwCXhBu5gIg27X3nY/ND2GiuHCtW7ctFutdHs+SlFqYeGn1N6zudD758++PbYKNmkj5JN+HJ
	jlLGrooTMrJ446jjJushAYfcH19ngEWvBlPHjun+Nl/X4Uf0yD+saX6jxS8fYd/4bpMuGTB10VBes
	gYOhUCnPHfsH+Ldu+/tsePN2IGkEnTJb8V8Leg6OD7ZrbBev9vgxshdzagzouk+oyQPHdNjBWMYCm
	7XtWPXtbBLEQyWs7nkNJGG4hsKSp/42PhxNrlylvCltmB6gTEVwuwIM7dZex3ChFA9v+L4V0j1mNz
	vAoJOB74kY8lLTEEJ/zg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfE7A-0000000HVm8-0NSj;
	Tue, 04 Feb 2025 08:17:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfE6p-0000000HVjX-3sZy
	for linux-phy@lists.infradead.org;
	Tue, 04 Feb 2025 08:16:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7908A5C5908;
	Tue,  4 Feb 2025 08:15:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41182C4CEDF;
	Tue,  4 Feb 2025 08:16:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738656999;
	bh=Pi4BJRcpD6+2mbP23U6gIcc0347RKELu0h5A8ao4hSA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=reSEqKtrACbPg2BAoaF7yJA1Lasml46N46AEwM75iLEB8PMKTQb5WjtnHvQenZrD8
	 4rMJU+mHr8NgfXV51wpr+Nh32K+SsqNouy5IekiW4QCLMR8JevavNbppTZpA5d+t0r
	 SXYHK5vKHtQSP56T89LLxWTJdIwVsRDf5sheZ/7ctkMaEvW7BUOgbVSBXdx4GKBoUQ
	 tlIsjEDQAYWbkQvgLJPe2uHJCiE1EpQKPkA/Md9mXFO9MYqse3ORbhAeEFow9HOVtF
	 TRAuhvPWMqrNqrVFOgIKwscczyd0KM5YAqs2hgy7DK7YnJ7wrn1ZGnJijcvrvBljEr
	 hts5dCnJDxKTw==
Date: Tue, 4 Feb 2025 09:16:35 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Marijn Suijten <marijn.suijten@somainline.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/6] dt-bindings: phy: qcom,qmp-pcie: Drop reset
 number constraints
Message-ID: <20250204-terrestrial-condor-of-sorcery-bede4a@krzk-bin>
References: <20250203-topic-x1p4_dts-v2-0-72cd4cdc767b@oss.qualcomm.com>
 <20250203-topic-x1p4_dts-v2-2-72cd4cdc767b@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250203-topic-x1p4_dts-v2-2-72cd4cdc767b@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_001640_004831_5AB268A5 
X-CRM114-Status: UNSURE (   8.96  )
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

On Mon, Feb 03, 2025 at 03:43:21PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> (Almost?) all QMP PHYs come with both a "full reset" ("phy") and a
> "retain certain registers" one ("phy_nocsr").
> 
> Drop the maxItems=1 constraint for resets and reset_names as we go
> ahead and straighten out the DT usage. After that's done (which
> will involve modifying some clock drivers etc.), we may set
> *min*Items to 2, bar some possible exceptions.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-pcie-phy.yaml         | 6 ------
>  1 file changed, 6 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
