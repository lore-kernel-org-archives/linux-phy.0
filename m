Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0B99606A33D
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 10:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=mBZzlUJR;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=NU1i7krp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=X2qWEOoqa6czla0Ps1Hhujz3WblOJsFsMoJs0igJ3t0=; b=mBZzlUJRqsh/Wrzkew6tL993FS
	5M7fZ3+5JFu3Oheh14jH9eD5ElrsWTo3UexfG5YkjAXAEnLID8026k8x5wDl10MyzeohorvNazTHq
	5cxXKqyx4+vNhhC3k241aECaHY/RlzD0GlHHel8YnMSF8ueMhZBNDgnr60Hv4eL6bJIPdpUWqNYQP
	1HIwJ0phvNDa9qTiSvjOsZKAhcY+VF2lc9exKhFGdwzFYJzM3uxZK0BoWaKmnIb0tEdY4apMylDpq
	FV3sTX0VnNUv40Vx2ldbw+u+1IlLMRg0ycG086uNO6dZpEhhUt59N0vlw6ucebu7NdU4N9gXCiHWm
	cWh3NYtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSUq-00000009bB4-2QHI;
	Thu, 12 Nov 2026 10:57:36 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRSUp-00000009bAx-18Yt
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 10:57:35 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A199F631F4;
	Thu, 12 Nov 2026 10:57:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96B931F00A05;
	Thu, 12 Nov 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794481054;
	bh=EpsbxHvOdknqVMxZxp6Rs23AKxnAfeyCb2MfnBs6W20=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=NU1i7krpUkLv837uNLTHluVU8yoXpG/UernHHa4P+vFyU8O3pwTEzveHzOyJHMucn
	 uosuZYshFFEe1dhI+e94V+nd5oW2H86/tnPMxD305PwrcN+yKUFLMtpAFnO1fl9D35
	 GvhdBl5oGMBqxyQw1gvQAAYXM/6rGslkflmf1qJdtHECju9Vb9CimFcQXlR7XrLfq8
	 MVhgOX2aOB22gggHA66PLtXpV2QDead70gXi0T9SiEdK2lXux63ELyz94/GuP1MAHA
	 yxSb9EIwr8TteYaS2mDpx1F4p/bCgKCwf9OCGcp68N3raA0L4Z7QW6i5UsEteDZxhw
	 oxbXnpUv8mgqg==
Date: Thu, 12 Nov 2026 16:27:30 +0530
From: Vinod Koul <vkoul@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <avWbmsjkYo2LMJKs@parshuram>
References: <20261021022446.3619435-1-robh@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261021022446.3619435-1-robh@kernel.org>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 20-10-26, 21:24, Rob Herring (Arm) wrote:
> For the QUSB2 PHY binding, keep the three regulator supplies required
> except for legacy IPQ6018 nodes that do not describe the board rails.
> 
> This relaxes the requirements for the IPQ5210 as well as if it is
> compatible with IPQ6018, then it shouldn't have more required
> properties either.

Hey Rob,

This fails for phy/next I see vdd-supply has been moved around..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
