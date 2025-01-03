Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10BC5E77188
	for <linux-phy@archiver.kernel.org>; Fri,  3 Jan 2025 07:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8slZkRhxYxgqUf2LiA5xzwK0qznY6awKSPXqKDrZ4ho=; b=RKPqcmbUG/PiRP
	pQdzrbrnHGsbWGqZXH3QcWeYU/guZosLjxFVk5hmCeAU/P9/2xEs0t+vKKnjrYh0bpTiVaP7c4g4J
	rv9wwqko05z9BEPEpm8C2t//yRJbwPgrz8rFMDF7MB5zRlOdr7NZq1gR1tTcuaw7+N9O5IVVxSqcQ
	I3oKABb7IBxJTnq3DhTyCGnT5OvOElQ+Kf2Qyn6tHbrZztbtSlGR7F7rs/imNatQ+zUfHk2Z1nlii
	+fIB6jlNEEHydshEKjaWyCnqsaty6PLvq3S5tn0isxdSQK65AlIgLoNeQOk7hqgKOmrPwrGbFSkwH
	IJJdsGnupno4womypzwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcKC-0000000CNmy-1IKw;
	Fri, 03 Jan 2025 07:42:28 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTcK5-0000000CNlk-2QqR
	for linux-phy@lists.infradead.org;
	Fri, 03 Jan 2025 07:42:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C22615C6276;
	Fri,  3 Jan 2025 07:41:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 00950C4CECE;
	Fri,  3 Jan 2025 07:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735890140;
	bh=Zo2LGaP6JfpLkthOZwDrMvwqIAlhxp2dBRQ4A8GvYO4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o1OLao/ugA7pp5i1/BY+iqZ7FeX6FjrJv5aDpAkZcNwPbnK7AkKanAtZ2aNI05Ha6
	 RFloi/jZrc6n8dugCCP5bgnGK0TElnhYW81DeUU7GAELRD0A9/iYMKpywGZRs7RXN8
	 iiLMmjDupMJtMcxLgQbfV7KB/7otCzSElkkdXDIojDD0WnWSATllJaevF0aIG7JvRU
	 wx5fA58BQvK491fQDhEP6GM9mOslKkIVFYaF7yWOc7pa2O5aI47FL8nppyCRFDoa8P
	 5Uy9bHhKVP/w3B9xtLsrtHHVifSsUzi2EIP14wpraFJQvBdfarWHDPKE6IR9TqHbNP
	 4sdbLT+fAUQng==
Date: Fri, 3 Jan 2025 08:42:17 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, dmitry.baryshkov@linaro.org, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 1/5] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <ihjgmi6hd5dzv4kxskerc7px4u4tynwxa6edwa2mozzczdar3b@xdplqfwme3lm>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-2-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-2-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250102_234221_655100_452C966C 
X-CRM114-Status: UNSURE (   6.92  )
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

On Thu, Jan 02, 2025 at 05:00:15PM +0530, Varadarajan Narayanan wrote:
> +  "#phy-cells":
> +    const: 0
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  num-lanes: true

$ref: /schemas/types.yaml#/definitions/uint32
enum:

or this should be moved to some shared schema.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - resets
> +  - "#phy-cells"
> +  - "#clock-cells"

num-lanes should be required. How does it work without it? There is no
default.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
