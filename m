Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1D3D606A31E
	for <linux-phy@archiver.kernel.org>; Wed, 25 Nov 2026 23:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lMeEiWH+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=jannau.net header.i=@jannau.net header.a=rsa-sha256 header.s=fm2 header.b=ds6odARo;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=XSa9A3ES
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KnYlwQxITweF9vPvcICnh14i6eQhFtIYy8ypSTMQidI=; b=lMeEiWH+2rnzstr4cZLMwLobuH
	CTcvsbKN+Tfs9iTd9x9ic/6w3rAQCxOrD7UiVIfgXJd8XEzXtb8vMDT6aRhKPzLSxvXZ6ui2v/Q9A
	XZFl/6DTMdgIxRzk88ULduIH2Gha1FzWerKxy9bKgIgaix1jWbyfcEBejvnL5TKea5qh23GI8kHTD
	wP7xr+MpxOEmuYwxnbvVeq7or9KJyBskCOfEIqKeyrBM90jpEO3y+1MkYKjRrtfkitL0yAa9W4OrV
	QSh+hw/H5geREBiA4AHPWll6A6IvChZjafZpdz/1hzlelMeI+seA+uBinNVmrvy444eUKvP6xZ1FB
	a+wxFbQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWMf0-0000000BbE2-0Vv0;
	Wed, 25 Nov 2026 23:44:22 +0000
Received: from fhigh-b8-smtp.messagingengine.com ([202.12.124.159])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWMex-0000000BbCk-02TP
	for linux-phy@lists.infradead.org;
	Wed, 25 Nov 2026 23:44:20 +0000
Received: from phl-compute-05.internal (phl-compute-05.internal [10.202.2.45])
	by mailfhigh.stl.internal (Postfix) with ESMTP id CA07D7A0527
	for <linux-phy@lists.infradead.org>; Wed, 25 Nov 2026 18:44:15 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-05.internal (MEProxy); Wed, 25 Nov 2026 18:44:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jannau.net; h=cc
	:cc:content-type:content-type:date:date:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:subject
	:subject:to:to; s=fm2; t=1795650254; x=1795736654; bh=gWKFhFOVNU
	QkCwAeCX9zPleQTK8nCcAL4DJhcvfldJ4=; b=ds6odARoZobKA81khzKoKoDtWR
	KNwKNsTrzpKDEIlD9ks8d4+Gn/fR7tW0JaHDawO+jsFSRZFdjApzGnLDeWc1BggO
	IF+vfXoF7PhYPqBLg11rTPaq6aZylVm1fDQZff3OtmAHKuMnb/0tpUs7uTox3ub1
	8iivJ1GHye5LbEAk+lejmaxnDWooLqQXuzuwrbiL6gGoH3Cu7xrOucRNxvwFVX5C
	xMoRvP9uMmnJCHXePHwEUoj6ciNEHx/cq1PvMBQCxaT7nYr5UVe/syrxe3MO34Ji
	YE5KeP98cxTQrVhGHxHdT9rSEsZYecmYSNJtcxjSe1L2aFatT6U4sHdQUVlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-type:content-type:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:subject:subject:to
	:to:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=
	1795650254; x=1795736654; bh=gWKFhFOVNUQkCwAeCX9zPleQTK8nCcAL4DJ
	hcvfldJ4=; b=XSa9A3ESv1U4ZcW/XRtZQBvSwAM4rTTr9WEv6GjoTy9rUruwrO3
	DR09VsDLtSol//O4hk/FMZs1aL0bpRUJE6+YcY2omlqaN4lV+Cw39Hv9AOI3a5eY
	T7SdmBYoXsGgEpmV+e6Mim1OIWaPkLm/YThD1CKqCW318fzzkoBsEv0Ge60rv6do
	RzNdTRYMpspxowjrF5Co3QkzTeNETqz07E5VP6Kor4Y5z6DPp5A5yiUETJOusQ0D
	irlvCWgXfBOpGWr7HON+zLLFKfsZz6pMJ4CFRzhowSl4Z0YISEUq4oVaOWoEAkZM
	bdgFTzGl0IaGZpF+2BzPbC2a+kw2ngaQCsw==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=jannau.net a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795650254; d=jannau.net;
	mf=PGpAamFubmF1Lm5ldD4=;
	rt=PGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnPg==;
	s=fm2:rsa-sha256:LHTbr/5LZpgIWEXqC5Rd2WSX4z/phciYKYKTK3IdruPPpEr
	R+eFDvgP0dLsmwWTlkRnz7rh0/PPAh8hWaV7yzba6GBldUXoxI8GSL3uKpzRwJEd
	uXveK9IFtB7MbKqEMtYDod92f7iwdCiud20Xys0WutwfGhmCnykqyp9wyzT1qLl+
	BeRhS9NeekvP7I+4LrMbJ8rD6FiOQO1pbykoSu49p1PN7tCg6p3TPl1T+DrqpV31
	1IZ3/WGQ3pp9E/hfR8Xo/cD9lPbHF07kzyolB+45h4GaBC60txdg4ssa/gwhhCM/
	Qy7PZfIzqEGG96TXG6HFuPyA64y/JpmJ/TmJbRg==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=12;
	hn=cc,content-disposition,content-type,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:9BkdY+LRpa1a4CLEazedbhqHL3hB5JfhgZTVWsRmtdM=:YQE1qOrkCrAjZVOPTlIxAkPWaxIbX2klxeQ+RmLrnhg=;
X-ME-Sender: <xms:zXIHa-asTg-4TBpv9BSqJP4lBT17UjV3I0oVVM7OFqTcbMmXXC4JuQ>
    <xme:zXIHa2mJXjzGCfzR5dPyE2iB-bi8YormgxMrUz8pRSZPo8MqncYBUwWi2rJXKnOnv
    VH1ysbxytyKouXu0QdSNKJ63ApVH87cykmJ_4jYOBRXmjKn3oHyMKpE>
X-ME-Received: <xmr:zXIHa8Vf630M-JLKPOaNjNqSuXSqz8jWYysKetfv_TlGwryq0wlMH9e66WJGCm838y821x5qgtvssexpHNXrRLRK0zsz9vKViwY>
X-ME-Proxy-Cause: dmFkZTG1Ag0iR2dwkQsFua3Y2PlvL776Kj9hZumBUwCXUhpq84p5VwF85u2jZOoFTF2p/n
    DWK+77HBIugwVI03ZNUFeAB8S6chqasWckA+xy3Bk8bS/Q+3d3IoEICOeBMiafT8YVPToL
    3WQsCGhrzHU7rSOD1aSqKpUQBksP6ISXn9T1/V4dufCPqedqKRAe3OQ+pi7tWvPv9zGCAm
    G9pdRaLEVtgHAlcsuKUx31/BbAkqSKUDNAFw29ZgGTr6nVcLI8VkeQG+wb82JcmDORC9m7
    +6Ud31o8ZIzOIIxdHjMJ3jW23cz+P4lprNDSzCMyeOwOpcYuTR8lgw3wKK9Uf3hDb4wFim
    iOZOa7GOLiip7o2aHyuYe01NhjPrx6Ays4or4yvA/ZAN7Pi1ldBoy9H/7Llyo9upfccgan
    X6kHnvIIu35HWgq9hqAimtmlB5F26dlRrAhefMW4iORzgUV3TfJuN2txH0xD/cy3cVGcF8
    76pB8R8n0gyQpeuFt13QNHISPUya1V7NsoOMo1iUPnscR6qq4FV6uETrAdyX+y45c4obDp
    exBrHbNLJfKCHdZSA5Wq6JmefKh/R7RzK1fLlFo9uApZmrFx9MPspJu8J63mADX2oKbSat
    Rfa5YFLybqnreTOFRaCdPsp6YclNb5UoVRWi06fCt+S30u8hxajqpCftpUtQ
X-ME-Proxy: <xmx:zXIHawIE_dKE9j0p1gcstwAXW4lbNkxarpdQ0PBLne5ixRtLlZbPLg>
    <xmx:zXIHa0sUqHeUDe4oc20lBGKvbZbPD8gJEV_zA01--dpabhgjF5k94Q>
    <xmx:zXIHa92F0PQ91bBuOOBsMxcyvlvUvZtfYFq3pnGWI5AsMOiVUa4JlQ>
    <xmx:zXIHa0MeheVkpXxG9rIGv_MUxIt4mJWIRYBQLaEVHGs5MdxHyh5YTg>
    <xmx:znIHa3JPyLWJ0NprvdTT2xMwe_6RPSMhzuh9xBnWeW-ajWk2yyFgm3Aq>
Feedback-ID: i47b949f6:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 25 Nov 2026 18:44:12 -0500 (EST)
Date: Thu, 26 Nov 2026 00:44:10 +0100
From: Janne Grunau <j@jannau.net>
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Sven Peter <sven@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/5] dt-bindings: phy: atcphy: Add M3 series
Message-ID: <20261125234410.GC372978@robin.jannau.net>
References: <20261125-t8122-phy-v3-0-196e20b3537e@chaosmail.tech>
 <20261125-t8122-phy-v3-1-196e20b3537e@chaosmail.tech>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261125-t8122-phy-v3-1-196e20b3537e@chaosmail.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_154419_175745_43DDCE65 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Wed, Nov 25, 2026 at 02:11:45PM +0100, Sasha Finkelstein wrote:
> M3 series SoCs have new phys that are different enough to need
> a new compatible
> 
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
> ---
>  Documentation/devicetree/bindings/phy/apple,atcphy.yaml | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/phy/apple,atcphy.yaml b/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
> index 0acac7e3ee67..4dfb3b68efcf 100644
> --- a/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/apple,atcphy.yaml
> @@ -54,7 +54,14 @@ properties:
>                - apple,t6020-atcphy
>                - apple,t8112-atcphy
>            - const: apple,t8103-atcphy
> -      - const: apple,t8103-atcphy
> +      - enum:
> +          - apple,t8103-atcphy
> +          - apple,t8122-atcphy
> +      - items:
> +          - enum:
> +              - apple,t6030-atcphy
> +              - apple,t6031-atcphy
> +          - const: apple,t8122-atcphy

I find this ordering confusing. I would list first both `items` lists
and then the `enum` with the single compatibles.

Janne

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
