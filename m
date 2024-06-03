Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32EAEC25B76
	for <linux-phy@archiver.kernel.org>; Mon,  3 Jun 2024 12:43:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PgbPN/P+phNLNmFwWsi7gFHQpAHPh5wmsaDTdRE+BEE=; b=VZjv5CdBRgVxVc
	9aifgHXGW+u+SayRJoCfFGdEzQqP3zA+ZUGqXB0YH11cu/izEQing5jpPXtDPf0Pk4eM0kC2zszOz
	G5f6a15YnXQ1PRe/WPbizj0ltv8xEasZHuugAwZ0+djDwqOSZ6S9DUmZgTdQtkGIUfgRdvemhKuAK
	ZuNsDAQyF3nepym/Duz+K7/tyFj6iuM+kqAs/2yHWlh3usQQ+ah0GHyhIxdb+EFYAZLhBZwRyrUG9
	0RAoGyhm7OE1gylIN8EXbZ7hWTZ3NnrJ8rQABiAImx4iUgEootucqgKWFQIIc0T7ZM/1uI/jvHIku
	o4Xl07QoongpAQ4dnSiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE723-0000000GjRE-2o7F;
	Mon, 03 Jun 2024 12:43:23 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sE720-0000000GjPx-3PRE
	for linux-phy@lists.infradead.org;
	Mon, 03 Jun 2024 12:43:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 64F11CE0A53;
	Mon,  3 Jun 2024 12:43:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16362C32789;
	Mon,  3 Jun 2024 12:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717418597;
	bh=i3lDKw5djP+fp83cE4kSzg6UdwUoiQZr2LDyo4bms+8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=pNyzT3G8I584aMxukYR+m/77Zul0hA0vZzt3Us/VprrUcEJv2N/66PX7gSM4JvNAK
	 V1gCR99VlB+ECWzZ39Rl4MEz97JiI72VUE1r1VoK9wHBaBHgApciO1GKJgIlZn2M2g
	 mvNd+GRYmbpbEqExwFsdoD/JUW2NuzL6qPReTqNZJk6Ac7x4BQcgi4c5fAkykObqqx
	 0uoGdwk/Ga4KNhpu3lKAdXx4Y/nyvAlTEM6JDIIoKzLadeYK1MFof0ejWchwHOfKiN
	 qf0nWw9HRlhmwCFQsEKju9pWEphCJLU8o+v0nkU7TXaOmiTMwcA75T5Z34FC5U6Ioc
	 ROYrBz460yfdA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1sE71v-000000000hP-0EBr;
	Mon, 03 Jun 2024 14:43:15 +0200
Date: Mon, 3 Jun 2024 14:43:15 +0200
From: Johan Hovold <johan@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x4
Message-ID: <Zl26Y0VklPmiirem@hovoldconsulting.com>
References: <20240531-x1e80100-phy-add-gen4x4-v1-0-5c841dae7850@linaro.org>
 <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240531-x1e80100-phy-add-gen4x4-v1-1-5c841dae7850@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240603_054321_045804_741FCAF7 
X-CRM114-Status: UNSURE (   7.09  )
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

On Fri, May 31, 2024 at 07:06:44PM +0300, Abel Vesa wrote:
> The PCIe 6th instance from X1E80100 can be used in both 4-lane mode or

nit: s/PCIe 6th/sixth PCIe/
nit: s/from/on/
nit: s/both/either/

> 2-lane mode. Document the 4-lane mode as a separate compatible.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>

Johan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
