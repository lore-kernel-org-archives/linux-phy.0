Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94BDCC624D7
	for <linux-phy@archiver.kernel.org>; Thu,  3 Sep 2026 10:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3wASdwNeIx5n8NcMK0pwEauoc3ZytK8CdULoi3YZW1Q=; b=HYvKbOvhnRdwzr
	n1hRFKgaf55bD+/SWy8rl25XfzQthY7eN8AoYj9FVb+UxUqwEcTOSPo+yK4SW4mNKP0zf/0ptpOj/
	n9XJJMQtCr217baHca/sNw4VU4xXm+20m0jyLbr8Chh2ERLkDLj79PKcj+NyFNW1tWV6yC4xbDBzv
	vYvWmFUzmzl1MXWC24EQiKblHsMtuClRO3FI/gkhEj8kqjbj7eZKfXJpHMx97Rdv8erEXohMxfLOX
	QwPiX4x8TWEhNaBjJIFUpjwA4gwHNyuvzyp9eA3r4cg/n4SWdMgk+BkdQ9AwixAavTpbrcfMENUYd
	TJS7dnIKq8BH+HqYHeXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24Zu-0000000H4np-1I3R;
	Thu, 03 Sep 2026 10:21:54 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24Zs-0000000H4nQ-2YOs
	for linux-phy@lists.infradead.org;
	Thu, 03 Sep 2026 10:21:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 9FCEE600D4;
	Thu,  3 Sep 2026 10:21:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2778A1F000E9;
	Thu,  3 Sep 2026 10:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788430911;
	bh=DG3ETLwpvZWp9G6uVKYwVMayCE+2qGPVkiCIO+D2qoc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=UdJCgRYiGxgxofgPmmnRe3ybxL610Eti6L6W4wjMq4wMiRZ4cwcdpjXLelFl85FOd
	 MEyThvM30/9u/aMPjxvqTRcu6YS12Jfrrjq47M3XHYaGV4//oys9PrZoFXZn98lbnH
	 LOXrfYOWRbIkur0g9wLKmHv2270Hgn4NKDxFP1j4RDkb/abnjmNvewofs6ZNM6BbBZ
	 GbOF8BGf5teK8QXRqWWZyqtWDEJ1Kop4ufYCiFy+91G4/RvTk5DSFBQfGXANZUYlbO
	 TpFveq00szdIViG9NZnkiOK/ALct2t0DVDp4D+OGfWX26JE3vx250NUup/ijCcC/Yx
	 ZzOLWB+ZY7pTQ==
Date: Thu, 3 Sep 2026 12:21:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
	Manu Gautam <mgautam@codeaurora.org>, Stephen Boyd <sboyd@kernel.org>, 
	Philipp Zabel <pza@pengutronix.de>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: qcom,usb-snps-femto-v2: Add
 IPQ9650 compatible
Message-ID: <20260903-legendary-gay-cockatrice-8bb8ab@quoll>
References: <20260901-phy-v2-0-cc93d2f3b1bf@oss.qualcomm.com>
 <20260901-phy-v2-2-cc93d2f3b1bf@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260901-phy-v2-2-cc93d2f3b1bf@oss.qualcomm.com>
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

On Tue, Sep 01, 2026 at 11:34:20AM +0530, Varadarajan Narayanan wrote:
> Add qcom,ipq9650-usb-hs-phy to the list of supported compatibles.
> Unlike the existing SoCs, IPQ9650 does not share a generic
> "qcom,usb-snps-hs-*nm-phy" fallback, since it requires its own
> tuning/override sequence, so list it as a standalone entry.
> 
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
