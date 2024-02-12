Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F14EEC4829D
	for <linux-phy@archiver.kernel.org>; Mon, 12 Feb 2024 22:21:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2qprfpNcR3Pl8seggQvgVyXVvr0fSGAmq4++4AtnAw=; b=jD88M2ND9zXbZF
	ynIXTEozGOdGGS8CClhwTDUR7yBSrgJwmqtBc1U+/MF+K6BEsh0lzdeDFQ/6/VenKaXKuxzg+JeDg
	5ZZklOQBdHzWBvzT6psNHqT3yCuhREoiQEN/ywh2LBoFyZ++Exai6RQX3VvNg/EHhcY4+uQ7LeJF+
	s1/9+eO+5l4LiQda7h5ZYCqi6DHFljQ4/kTz8iinYT+Gf3SELgqEFbDomB9bxIP9WIEg5oVRqnp+H
	HGnfSMBZ3JXU34V2EeYmVkPrHtU0ZyKxhizGERt0M2s96EehSGvsnsLhn1jttGudTdt/1+089jSvL
	dGOwUX2DnVWsPHvFGTlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZefq-000000078v5-2dy7;
	Mon, 12 Feb 2024 22:21:14 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZefo-000000078uk-2pqU
	for linux-phy@lists.infradead.org;
	Mon, 12 Feb 2024 22:21:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EF9456117D;
	Mon, 12 Feb 2024 22:21:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CBEDC433C7;
	Mon, 12 Feb 2024 22:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707776471;
	bh=BwZIUGw5rwhWZMHBntEgD6evsLiGKtlOXbv6xGs3Uik=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jHGa4s3wLIvyZ48+8ZoMXJbUOtFhN9/WKiYUycimjDaa2jWq4/Q2rYPoHosSdpXYe
	 N33HualANFR1t/5b+2s16ERLdJ/OrqHCM+cYGKIiW5m/3jB8OZ7knyxvOd2gf1ATD3
	 9cYMzBDpYXHp4t6Yvilvj9RtzBeAD3WsZunRKiOI+x66eUtnmrZCUG7JQKz4v6OZVT
	 +BJE0jUdYqRgd7Md7z9O1qhUkUfwe5V6F4w/wBsPR6UTn2yDM0YlZhv2fa1YiOTFxG
	 6tf7FsPXip19YfYwCnnDF3RfGwsxZaV8o/EMI6+1V2zWKutRMwCVBliPNOExtBhkYF
	 SgK/lAKFauqtw==
Date: Mon, 12 Feb 2024 16:21:09 -0600
From: Rob Herring <robh@kernel.org>
To: David Wronek <davidwronek@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v4 3/8] dt-bindings: phy: Add QMP UFS PHY compatible for
 SC7180
Message-ID: <20240212222109.GA2655166-robh@kernel.org>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-3-f7d1212c8ebb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240121-sm7125-upstream-v4-3-f7d1212c8ebb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_142112_782471_A7E3753E 
X-CRM114-Status: GOOD (  13.47  )
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

On Sun, Jan 21, 2024 at 05:57:43PM +0100, David Wronek wrote:
> Document the QMP UFS PHY compatible for SC7180
> 
> Acked-by: Rob Herring <robh@kernel.org>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> index 8474eef8d0ff..5faa1cb3a12e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
> @@ -19,6 +19,7 @@ properties:
>        - qcom,msm8996-qmp-ufs-phy
>        - qcom,msm8998-qmp-ufs-phy
>        - qcom,sa8775p-qmp-ufs-phy
> +      - qcom,sc7180-qmp-ufs-phy

This doesn't match what you put in the dts which is adding to the 
warnings:

     51  phy@1d87000: compatible: ['qcom,sc7180-qmp-ufs-phy', 'qcom,sm7150-qmp-ufs-phy'] is too long
     51  phy@1d87000: clock-names: ['ref', 'ref_aux'] is too short
     48  phy@1d87000: clocks: [[39, 97], [39, 103]] is too short
     30  phy@1d87000: 'power-domains' is a required property


>        - qcom,sc7280-qmp-ufs-phy
>        - qcom,sc8180x-qmp-ufs-phy
>        - qcom,sc8280xp-qmp-ufs-phy
> @@ -102,6 +103,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,msm8998-qmp-ufs-phy
> +              - qcom,sc7180-qmp-ufs-phy
>                - qcom,sc8180x-qmp-ufs-phy
>                - qcom,sc8280xp-qmp-ufs-phy
>                - qcom,sdm845-qmp-ufs-phy
> 
> -- 
> 2.43.0
> 

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
