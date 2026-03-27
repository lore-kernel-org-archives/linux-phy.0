Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD66910F2871
	for <linux-phy@archiver.kernel.org>; Fri, 27 Mar 2026 22:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j3Aw0q1YKOq5Wo42KtpFlZ9/6lFPTlNQJ9ZCOL6KJCc=; b=mH4qH2hUv5uKOy
	TjaHTHrE2ZI15bDIG5X0hBcNiY9v7X1NrtGjSWwaKfgyxAEqh2kho3zUAHUiy/eNqYyaQDlonQNhK
	k1aY7uKBaxKHjmwFXZN/C9riHCA0fFVESw6akxCKzOlSrQE0k5o/HGMD7WrPVM611rJL1xgL5T2nh
	ubO6zrGyXGSocOwkBatHHJAYPAENO2HWBvwF7cI/s4ER7n6hz8wezdG0xz9y8D5rEANQuseT9C7og
	ysXOxEiiVWvyN6aM3YWGUuzwO/ZOVXs2ZOom/iyEHIA8E2fFPbR9nvDtNhIV0s1bIvPfnTKdHIPMc
	LrVMqX+KKOcvZvleo4qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6Fgy-00000008Htw-1BL7;
	Fri, 27 Mar 2026 22:30:12 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6FgN-00000008HsG-3zbO
	for linux-phy@lists.infradead.org;
	Fri, 27 Mar 2026 22:30:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1344342DD2;
	Fri, 27 Mar 2026 22:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1767C2BC86;
	Fri, 27 Mar 2026 22:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774650574;
	bh=MWLSzIJe9AuKNoTo9mT6+5GhH3vrEtsD8Cd/U+3cTDs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=PjPYQUz6yI2+byIgjR4mCmN8sB4dNkkENbh7GYPimIFOMQaIdDN1P9IHf9oNV111a
	 7uE2uY8KAxwK1iGLV+sS+x7sIAUuk+8HT2gfkFhkjWGIETugCKa4N1/tk8ZR6Xngwm
	 gJZ+BnGQ/7Fux/PTune68NqBsWgNGz49+2LTt4ZcpCi5AVWI1c/V7fGTsPiU8vvxIr
	 4/lkMexAZch9uQOBGyjSibtIPsW5LuP38E3nkvbfOnw1GeCbEmULNI8q6Rn/kkaFiU
	 JpXTZs6lvEGUUM4B0r7Rr9RGCuCsXLKUe2znx4XOMVhtgs2n7YqZOA+H//LRnTy5xi
	 l/guDR+vq0O9w==
Message-ID: <556a6736-472d-4551-b5df-15e809e7e20e@kernel.org>
Date: Fri, 27 Mar 2026 22:29:29 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: phy: qcom: Add CSI2 C-PHY/DPHY schema
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Vinod Koul
 <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260326-x1e-csi2-phy-v5-0-0c0fc7f5c01b@linaro.org>
 <20260326-x1e-csi2-phy-v5-1-0c0fc7f5c01b@linaro.org>
 <72ef6c9e-feb6-4e57-b8cc-7801bd748698@linaro.org>
 <f1c8c412-1d27-4c83-8c5e-76b9369ea6e9@linaro.org>
 <VwCtoebjwHqLTucsrGruvBpedA4k-Melt7C0DA0aHSVld3PeotwZdtMUm3EFpvQyScrl6yejmLaK7bY1avT1zQ==@protonmail.internalid>
 <8ac55e5f-72ed-4331-bf42-92ccf97507dd@linaro.org>
 <5d7d5bf8-4420-4d75-b928-820bb9233e52@kernel.org>
 <CiKTMNVmEm3LXForJ4o-DjuXFxbKkiaLtqbFPYyA0rC-Ij0hJPmCw_LUixA-dZe2douOwy2Jxizna8qBRvUjPw==@protonmail.internalid>
 <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
From: Bryan O'Donoghue <bod@kernel.org>
Content-Language: en-US
In-Reply-To: <2houacfdkozzk35ky5xtwe3utkvyx4lroyrhvibb5lg6lad2g6@56akvtqigaep>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_152936_034871_FD210580 
X-CRM114-Status: GOOD (  10.36  )
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

On 27/03/2026 20:51, Dmitry Baryshkov wrote:
>> That's just not true. If you read the camx source code you can see
>> split/combo mode 2+1 1+1 data/clock mode requires special programming of the
>> PHY to support.
> This needs to be identified from the data-lanes / clock-lanes topology.
> And once you do that, there would be (probably) no difference in the
> hardware definition.
> 
> 
> In other words, I'd also ask to drop this mode from the DT. This
> infromation can and should be deduced from other, already-defined
> properties.

It still needs to be communicated to the PHY from the controller, 
however that is not a problem I am trying to solve now.

If I can't get consensus for PHY_QCOM_CSI2_MODE_SPLIT_DPHY then so be it.

I'll aim for DPHY only and we can come back to this topic when someone 
actually tries to enable it.

---
bod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
