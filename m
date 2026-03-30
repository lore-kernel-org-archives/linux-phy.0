Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E827810D14A2
	for <linux-phy@archiver.kernel.org>; Mon, 30 Mar 2026 11:41:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OPWtHMkBQAokQDYsfPoAxk5ErMPFEGv+sj69aitlQg=; b=BrwE6MjVONBuLz
	x4x5t6CaELBeP5HQ5Jq2s6wgxb9td/aoCIkN7sEsUrtEzINVlosNuedXve59/GnYhwz8BoQP/azWS
	qBa5LVw5o75BndS1XRDyDK1uCJdF15ok0r/nRbyMp/2N5hGidXI8Tbmc37c1M+LtXzYoK0fLGxYEw
	4+1AmI8Hw5yBS4ZwYMJ4t5Cyb2qR3QWKz8Ra3GbCy6LwJYrRlUHdIFsvxvjZgLjxALUyZGM9FM45X
	lXAYOtlUgWL7kIEVxbjutA3LZcFE6qvTcOoOJcDvRBB5V92DTc4PVZwyapHTxzL39H2XLvPQcBiDS
	yyvlsS0UxNU38TROT6mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7B0H-0000000BBBt-2Efd;
	Mon, 30 Mar 2026 11:41:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7B0G-0000000BBBm-3mE5
	for linux-phy@lists.infradead.org;
	Mon, 30 Mar 2026 11:41:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5727D6012A;
	Mon, 30 Mar 2026 11:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22243C2BCB2;
	Mon, 30 Mar 2026 11:41:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774870916;
	bh=EOIraZfT3LaP1D8hYweBX5dLmcXzYF30cAdNPSQCC2Q=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=tUtyGXBos9E2kXQ+5HdLG8McmasamfKnl9dYARbBogmVfzz9GcyRGRe8LVdCFbKme
	 NaoNWbLPPBMtsuWj92M/JxDDEbSiazsngt39lGpjtTyvzTZjmJoPRdvtM9mk9Aei1L
	 WulxCoFXEuvssF7/TelFfzD9O+KfZdigxxItoygaXWAALCCoSvuSqj7APNKc4aUIhK
	 BI5cUMYiGqFBW8rhOquKY1LR/Dfo9f3SMu+pFPlF0Rd+NW8YG6q4XSCscR/AJeRM8s
	 7T8mORrYyLxr9Rl0scKJ5rI7GnftQX1/wZdUjtarBud/MEy/QqQp6eaBHvYzHQKq4/
	 0KRhEtzxPay0Q==
Message-ID: <6ea214cf-e68e-44c6-ba0c-38aa0a644ae9@kernel.org>
Date: Mon, 30 Mar 2026 12:41:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <7712fbdd-a225-49f0-aeb9-ebcbb9d5abac@oss.qualcomm.com>
 <da3ed78d-fb5e-4820-95d6-527d540cf03e@linaro.org>
 <1f38187a-9464-4aa9-b70a-03b767349d56@linaro.org>
 <c5278028-dfe9-4d09-970a-a25977967bdd@linaro.org>
 <016c03b8-27c3-41dc-a630-8e7095db1f88@linaro.org>
 <456ded59-d13e-4b61-975b-97ca48b5e771@linaro.org>
 <RAPaPhpxA39W0ykm-Cr1KaDiJKpRqdQTXUeEmt5mQn4lJBHEGaIS010ejjmhUYEBsHjzrTX41Ek9zLU2bae_YA==@protonmail.internalid>
 <76ea03d0-d41b-4880-a48c-06570eb089ed@linaro.org>
 <0101d8bc-1ae8-475e-bb9e-cc1e16db87ec@kernel.org>
 <U7Oj0BBSw7MWOWSCyP3-GGypXsAALySEpjzoCVQD3P9O_ZWJqO4GVKLhzQn5JD4I3okCCp2F4YFckFRJ1duvCQ==@protonmail.internalid>
 <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <6d5ebab6-3c4e-4a1c-9578-6e926cbd96de@oss.qualcomm.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 30/03/2026 12:34, Konrad Dybcio wrote:
> Let's take a step back - since any CSIPHY can feed into any CSID (at runtime),
> the resulting nodes would either look like:
> 
> // hardcoded, m may != n
> csid_n: csid@1000000 {
> 	phys = <&csiphy_m>;
> };
> 

Well that would be wrong they can connect to any CSID. We'd be churning 
the user-space ABI and imposing an artificial constraint on what the hw 
can do.

> 
> // determined at runtime
> csid_n: csid@1000000 {
> 	phys = <&csiphy_0>,
> 	       [...]
> 	       <&csiphy_n-1>;
> };

This I think works well and actually maps to what the hardware can do. 
This would be where to talk more about Neil's mux.

> 
> or we could store them once, centrally, in the "CAMSS_TOP" node and
> pass handles around as necessary:
> 
> // camss "catalog/manager" driver/library provides CSIDn with PHYm
> camss: camss@10000000 {
> 	phys = <&csiphy_0>,
> 	       [...]
> 	       <&csiphy_n-1>;
> 
> 	csid_n: csid@1000 {
> 		// no PHY references
> 	};
> };
That could work too.

Either way I think this is to be hashed out when doing CSID.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
