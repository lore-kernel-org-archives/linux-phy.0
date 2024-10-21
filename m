Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5530D0E6C3
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 07:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYern0ESDDQRR39Bp2Jfjeg9nkHYQHp3ggUkNZqs53k=; b=EPC8xW5AEX5N5I
	tfh+TLTpdZiR3eMc65OQ6jbsLH5mBqi8+3bdiDtyFvsiL7XGQ8qYHWnOqvuTIaNlwUmKZxspjTQbN
	CouxhnBYEiAZZeT8qP2Acbpc0ohKh+AvwAHVzO6b25umXYccmSet3cYMBCwQj3BDPWLnHsC61GNoa
	fTMXj9AJKGzs6cTwrUWEPCJ95IHW7bpUGiD7tPEMQDco3pHNDEHJbDpSImK7Pv/Mcy9jumr61ZAi3
	rc08MTuCv+1T6SEJ1Wr0d4EIouFECgFqrIT6sig74gS26THkJpgihY5lk1Sj2x9q5FabLQAoGJcLR
	KbtxDf95L3o2Mdj4zdqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nKU-00000006TG0-13z0;
	Mon, 21 Oct 2024 07:59:54 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2nKN-00000006TCZ-2seI
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 07:59:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7F68D5C5933;
	Mon, 21 Oct 2024 07:59:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92C39C4CEC3;
	Mon, 21 Oct 2024 07:59:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729497586;
	bh=E7oSvUhYW6MNdf02zoVmwx/KBu5SAQgUaDf+IyzGsUI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PdlGZJXwxRSWyAIikk3HVjeAHjQQ5EeXWcTliV7GiLUQOADWparZjHjCHVOoK2rOP
	 RF77xQ8OiNC4w/05Vu4gV4XdcKqssqJhrzABOA5Dm2X5ErZ+MqQ4OR2y8f3nsANdEt
	 WVZj6GhPf4xbTVApUuj+CXlyl+lESQaloYavAxGh1ouPqgUA5OOBimkW833v+ak/KM
	 6MpmZOqJQWhyq+EofII7O/2ZYCx7NU5rUBTX+FOqcg82K5gBjCx3dRbJU/fdkTdK+9
	 z5aKiZg4zcvLj+h9jIKquHH2aNPD+hDvC8HEWLkEaU6/LpaMJIs+Gljbr/9e47uShH
	 NZgQxPdbalgPg==
Date: Mon, 21 Oct 2024 09:59:42 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, kernel test robot <lkp@intel.com>
Subject: Re: [PATCH] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Fix
 X1E80100 resets entries
Message-ID: <f4y7dyd3mpejha6vwpweena5g56ifchhzricqqfxvbk52ye4rq@kig2kukx4vif>
References: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241018-phy-qcom-qmp-pcie-fix-x1e80100-gen4x4-resets-v1-1-f543267a2dd8@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_005947_792849_E8E8CCF9 
X-CRM114-Status: UNSURE (   6.40  )
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

On Fri, Oct 18, 2024 at 04:37:36PM +0300, Abel Vesa wrote:
> The PCIe 6a PHY on X1E80100 uses both resets in 4-lanes mode as well.
> So fix the resets entries for it by adding the Gen4 4-lanes compatible
> alongside the 2-lanes one.


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
