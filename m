Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9B3BD46C1D
	for <linux-phy@archiver.kernel.org>; Sat, 31 Jan 2026 02:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg5BFSOMMOOPAJKOXffbaIyPN3t/hqIe46m+wzxObF0=; b=bv3gOyPR2Hyul/
	Wl00wORJdDNFVNHQshP9S2LSz+tHcIV2IsJTUehpjmVSImKG/OaXiVK19bWqebxfeJjJpxutbN6P9
	5bBnkAms8RlI4In/1afXZriRgoWDhCdsn++EY3tTg/E4eQ0ZZn3nGKqcamAmxrh8oqYJ/1azzlGUY
	T9IfYRlPdgXpZ3kK6xsDnhhzl5p3j0oDbFsV/YjYYsyJiZ93PSXTAhby6vis806leD8TeCjgyTIHd
	0SAyLhc1XrXRelUYqr9e4r6tsZRlvi/08NVo5v1KssEoriwOk44rW0RTBXiSeJvRKwxXP26FVP4cw
	VsPXg92/hjjBCcyzIyVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vm14u-00000002FMP-0d6P;
	Sat, 31 Jan 2026 02:51:16 +0000
Received: from abb.hmeau.com ([180.181.231.80])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vm14o-00000002FLs-3ixj
	for linux-phy@lists.infradead.org;
	Sat, 31 Jan 2026 02:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=gondor.apana.org.au; s=h01; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:cc:to:subject:message-id:date:
	from:content-type:reply-to; bh=zHrmQwFLqA3OLiwbqOe/h4SuxVGBdkNc6DkN33Q2rhs=; 
	b=bS7F/nbdMYLt3Bs8D0c9yg4djWYLv7cpXsdW3jahmAHVbcm9vR/EYuWY6+cjmYKKO7L7IevJO5c
	uSwhPL7dPgEEXO3hyshrJuzl4H+RLnxZrM/nW8hNfdwlvbLHvZu6EtzBpDEcxOSn8ZfSYCzEBQ3Fc
	IqWGqSgRkQjoj6wf3MxFIhAW2dJSrkhud0GHa4NLx0zB4+lSLaTHOXsG5MdyBnlsx9mijQomzW4d9
	nTH9yyU0c4SzDra0tftXwTNEE8HCOs7a1yTC3vvYhyWz6k9pNu0IXyGeZJ+aY6NUbLV4z93YFcG28
	nfoHo0XAM147lFuM6SLWYzDHEMx1/JE0sdRg==;
Received: from loth.rohan.me.apana.org.au ([192.168.167.2])
	by formenos.hmeau.com with smtp (Exim 4.96 #2 (Debian))
	id 1vm14N-003Rv5-15;
	Sat, 31 Jan 2026 10:50:44 +0800
Received: by loth.rohan.me.apana.org.au (sSMTP sendmail emulation); Sat, 31 Jan 2026 10:50:43 +0800
Date: Sat, 31 Jan 2026 10:50:43 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: crypto: qcom,inline-crypto-engine:
 document the Milos ICE
Message-ID: <aX1uAxZmO0ZR8c9e@gondor.apana.org.au>
References: <20260112-milos-ufs-v2-0-d3ce4f61f030@fairphone.com>
 <20260112-milos-ufs-v2-1-d3ce4f61f030@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260112-milos-ufs-v2-1-d3ce4f61f030@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260130_185113_906248_9F9F7E46 
X-CRM114-Status: UNSURE (   8.05  )
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

On Mon, Jan 12, 2026 at 02:53:14PM +0100, Luca Weiss wrote:
> Document the Inline Crypto Engine (ICE) on the Milos SoC.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml | 1 +
>  1 file changed, 1 insertion(+)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
