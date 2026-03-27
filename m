Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F9F110F2873
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 22:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNqgJjqpZr/qFEMkIZApJ0KEUh4TsrIzit2+JLixjAQ=; b=j8d2owBrLOCKfW
	2PZ5z/nGX3SVf6+MCvCnf1NwHUz+bveTCnjuvAFNDs3feEih9BaYMTFmzg8rHMd9LXuozS9ztHvib
	Kvb0wpaUB/lZmZqMh24bJnixidE7ncP6ENGKJZfkXbPVkPGlgK/PtGeK5fZfc9B81V4Yy9NRJwXYM
	NNbAUOyWna4GyWq/fSb1VkYF0PHmUeRSAF4/YAOnX2FBq7KgNSdwvUnUckQ66Pgl0QEF7KbZC05Qm
	te4RfyV51D7FI1R9ZYOzlXTb5BtZZ6ZEyhjcRqye+pfHL6U5/DV3V5sLy8dCy0NCoR6dFaDvk1GYm
	noSh6bUeXca8z/ysm3gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6FOs-00000008GmA-3nCw;
	Fri, 27 Mar 2026 22:11:30 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6FOq-00000008GlH-1P4c
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 22:11:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 47C4540C00;
	Fri, 27 Mar 2026 22:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1839DC19423;
	Fri, 27 Mar 2026 22:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774649487;
	bh=vWYAZh7Adzo7TC7luTIEYOTCpRuJPAjp6xiHK7UViFg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QskGPRmDJo1BFOXewlwxC6DKTnU022Vl7r4nAnJMQ3s+seqm6HC60pl2+8YtOgI92
	 boDND430EqgYskA+kGlTvTTPZ22ywIwDEu63uO+gOGT9GS94daeDSF8fmCQE1IMTJ9
	 Xit2up9dWq2BMVj623O3MVBQbSzrEZ7mvAx1OzwDLuqaqpdPzXhIJ7tPGJstBazKYq
	 WXekvbB8TIQ0LxMKTSVvpOQoIc+CJ5g+h1cBGpprKu/gmxkFWxD+HLaW1TOTPTjHAZ
	 0q3x0Bs4xKrbnmZ6HitsTxAXibkTg39VEbqLi+SLMpbzKoZaV/IV2+fo4uaIthpU4y
	 I8QPel4T6Z/Fg==
Message-ID: <6c52f934-1b08-4e93-a753-d4c90e827f1f@kernel.org>
Date: Fri, 27 Mar 2026 22:11:21 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 2/2] phy: qcom-mipi-csi2: Add a CSI2 MIPI DPHY driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-2-0c0fc7f5c01b@linaro.org>
 <aEe0uBeOge5s3CG521FGdJhY-snL7v7U2KXbg1IAqMn9oy6mslb2GJ9JfYCJ3RRE0L-Qr5opUYFUyBJp3qEraw==@protonmail.internalid>
 <62zcubxembr6iat4d7n3o7aecqtx3ne2a42ilxfoap65oaefhh@mecahghgrwrf>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <62zcubxembr6iat4d7n3o7aecqtx3ne2a42ilxfoap65oaefhh@mecahghgrwrf>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_151128_394761_7FEBD37C 
X-CRM114-Status: UNSURE (   6.30  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 27/03/2026 20:54, Dmitry Baryshkov wrote:
> I think, I've left similar feedback already. Please rework a single
> structure-less table into generic and per-lane configuration. It doesn't
> make sense to repeat the same configuration N times, just with the
> different offset.

If you remember you also said that was fine for a follow-on series after 
merging, and you asked for a commit log to that effect.

i.e.

"The register init sequence table is imported verbatim from the existing
CAMSS csiphy driver. A follow-up series will rework the table to extract
the repetitive per-lane pattern into a loop."

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
