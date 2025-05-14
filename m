Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99F03C3ABDA
	for <linux-phy@archiver.kernel.org>; Wed, 14 May 2025 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UQa2+a6lNmEMSIbecTO3PUFe9WqMgGMDRQo0knO+bFA=; b=VTZ8mE+BgHkx3V
	nTCnfHIaoi8Mzgzd8yV+EOqfE3VM/wcND0vWDQP1blagm49EQFLiYMJKZmvwvRmK0JzsicYvDMM4F
	BYEckdQ+j0MIMOnqsUT855c9oPalI0y7kplE2lxbKe5OSk0Hx4k79uYcD3/4Vdc/ifPqtDDv5YnF4
	O6nmwY4W/cPmGKkyJqiWgfn2jlHQKR+s3488hfaU+37HR6YF2Ls9MkCECmox+Cf3Z3xUgRLNq63tn
	o9q8W0OIg/8g1hxUbLGU1I+mbial0JU0lRjR1M81qTiZbLSPUOMvJpmUOZ3JE8gOwByXJOlVb+/qq
	SNSuJzbmXtRaSqo1pkLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF7ov-0000000EZ5H-1WmV;
	Wed, 14 May 2025 08:50:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uF7Ih-0000000ET21-0V4X
	for linux-phy@lists.infradead.org;
	Wed, 14 May 2025 08:17:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C79FE5C582D;
	Wed, 14 May 2025 08:14:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47568C4CEE9;
	Wed, 14 May 2025 08:17:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747210633;
	bh=JE7c7dHTC0wr4G3gxjd9IM4XsXNvb/SXQbeYFeLqSs8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=amf7OeNo0hIwVItoRs3D9pZfvv9/aE2gKUXY+sSCakfmnnMKSE7QkJzfGSZgK89vD
	 9HTOpwes1qZbonfw+mN4XCi7B9j/CveB4Gz/M+wmhbPfB6Kf5YXSJQkvngeqzpPDlf
	 UYL4RBhVA2XKajMojcEMOTNYPPagj5UNxTB9em1FJJ0RkqqB21wno070xuJnccboM7
	 aOS0fq2sFCoiDvh5uWEWNNU6QoMmdcR+A2YyfV0GQYR8buSUxHyR54rWTsKXd+GrH1
	 ckb0yNNDyY82Ig0zHX1PJJ8pPN25IIUjK/z8NdVfAJ/a4VZOgBytgynVCTEhkXk07b
	 WrVAXfXpG3BVw==
Date: Wed, 14 May 2025 09:17:11 +0100
From: Vinod Koul <vkoul@kernel.org>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hans.verkuil@cisco.com>, linux-media@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] dt-bindings: phy: Add Qualcomm MIPI C-/D-PHY schema
 for CSIPHY IPs
Message-ID: <aCRRh2ipYD8vYtBJ@vaman>
References: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250513143918.2572689-1-vladimir.zapolskiy@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250514_011715_199895_44E8A720 
X-CRM114-Status: UNSURE (   5.96  )
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

On 13-05-25, 17:39, Vladimir Zapolskiy wrote:
> Add dt-binding schema for the CAMSS CSIPHY IPs, which provides
> MIPI C-/D-PHY interfaces on Qualcomm SoCs.

This should come with driver support as well. pls post driver as well
with it

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
