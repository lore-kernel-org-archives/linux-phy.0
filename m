Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD14606A32A
	for <linux-phy@archiver.kernel.org>; Sun,  8 Nov 2026 18:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CCHjIL1D;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EpOJe8fu
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=FgFX7dUdhqIOdV/3HFTP51FL4XR8EwL/iaetMCIgxHM=; b=CCHjIL1DpWwObiUNNyQw+sSP/b
	vhCVGbOro1i+Wqbmuq2ZACxzI2Q69gO9qr0bvc5A/bNrDVKhzcrd2PnfWgpjryQ9uFU+eg8UkYCBc
	XptOslpcW0CsTgP11m70IzSWaNs9XLeLeczxm3/QwsrQ1/9HhLHq9I5ybcPaCfY5BKVD8dULUC4J8
	AxOR2nPpXhOIHOeaQzoFDTnLOfKCJDTRMLegCNRqlG+G/5ZwCa+A6GZNEL7QJCBJx+jwYaQYLrtnm
	AksiCpYS+EnnI8jh3d/vVX75IaNfWgGbU/YYxtb3Nmb6xz5cQSY1/4lN+Q7moB1WLKGFdy8j5WqN7
	d9ow4Y8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7Ql-0000000GSnZ-3zDL;
	Sun, 08 Nov 2026 18:15:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQ7Qk-0000000GSn6-2aSV;
	Sun, 08 Nov 2026 18:15:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 182D443F05;
	Sun,  8 Nov 2026 18:15:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1A13D1F0089F;
	Sun,  8 Nov 2026 18:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794161750;
	bh=9XXKh7vT6Q9jU2uqPmQkXruUZ4A17pBIXI6HbC2dxI8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=EpOJe8fuD462bWokak//lTzCAvxRzr/1+rYPgEcxh6qM0WkQFziwQfD7EZRrWOK0B
	 KQusSYWyp/GOrFqo8nIalkTpyDoj4vbHw/t+dpp90XILSplXDo8kHwU0671KBULaAr
	 RQAXYwtaqkspNvWVcNsFoSWiTDQfzCVwnQfnHb+Tpu5hcxwiVuRo+g5nAD43diZrVT
	 zUMCtRghKc+aqiSWk/UctFlsGMsyj76lXzCEksXdekiLvuMEh60+7ign+ztb4ct3ec
	 bX1XgDkmlpXC4YFTaoR7x8oHAu7000cSocwSegkNVGzEJBs646yD1p7RdTTIZhWZ5s
	 gHKAWwG9+egig==
Message-ID: <2ec53558-07d8-4824-821b-03e39da672aa@kernel.org>
Date: Sun, 8 Nov 2026 19:15:43 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] phy: apple: atc: Add initial M3 series support
To: Sasha Finkelstein <k@chaosmail.tech>, Janne Grunau <j@jannau.net>,
 Neal Gompa <neal@gompa.dev>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20261108-t8122-phy-v1-0-c2783b2a53a8@chaosmail.tech>
 <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
Content-Language: en-US
From: Sven Peter <sven@kernel.org>
In-Reply-To: <20261108-t8122-phy-v1-3-c2783b2a53a8@chaosmail.tech>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi,


On 11/8/26 16:43, Sasha Finkelstein wrote:
> Adds initial support for the new t8122 phy. USB/TB only for now, DP
> will fail to negotiate
>
> Signed-off-by: Sasha Finkelstein <k@chaosmail.tech>
> ---

So I wonder if it's time to split this into multiple files now.
Maybe something like atc.c that does the core stuff (probing, 
phy/reset/etc. interfacing, mode transitions, tunables, etc.) and then 
atc-t8103.c and atc-t8112.c for the hardware specific parts since 
especially DP seems to be quite different between the two generations now.


>   drivers/phy/apple/atc.c | 382 +++++++++++++++++++++++++++++++++++++-----------
>   1 file changed, 297 insertions(+), 85 deletions(-)

[...]

> diff --git a/drivers/phy/apple/atc.c b/drivers/phy/apple/atc.c
> index 45f1280a6faa..256a08499646 100644
> --- a/drivers/phy/apple/atc.c
> +++ b/drivers/phy/apple/atc.c
> @@ -100,9 +100,15 @@
>   #define AUSPLL_FREQ_CFG 0x2224
>   #define AUSPLL_FREQ_REFCLK GENMASK(1, 0)
>   
> +#define AUS_COMMON_SHIM_BLK_BIAS_REG 0x0a00
> +#define AUS_COMMON_SHIM_BLK_BIAS_REG_BGBIAS_OV BIT(1)
> +
>   #define AUS_COMMON_SHIM_BLK_VREG 0x0a04
>   #define AUS_VREG_TRIM GENMASK(6, 2)
>   
[...]
>   	atcphy->mode = mode;
>   
> @@ -2201,6 +2387,7 @@ static int atcphy_probe_mux(struct apple_atcphy *atcphy)
>   
>   static int atcphy_load_tunables(struct apple_atcphy *atcphy)
>   {
> +	size_t tunable_count;
>   	struct {
>   		const char *dt_name;
>   		struct apple_tunable **tunable;
> @@ -2216,8 +2403,14 @@ static int atcphy_load_tunables(struct apple_atcphy *atcphy)
>   		{ "apple,tunable-lane0-dp", &atcphy->tunables.lane_dp[0], atcphy->res.core },
>   		{ "apple,tunable-lane1-dp", &atcphy->tunables.lane_dp[1], atcphy->res.core },
>   	};
> -
> -	for (int i = 0; i < ARRAY_SIZE(tunables); i++) {
> +	if (atcphy->hw->gen == ATCPHY_GENERATION_T8122) {
> +		tunable_count = ARRAY_SIZE(tunables) - 2;
> +		atcphy->tunables.lane_dp[0] = NULL;
> +		atcphy->tunables.lane_dp[1] = NULL;
> +	} else
> +		tunable_count = ARRAY_SIZE(tunables);

nit: I think else { .. } looks nicer when the if already has braces even 
though it's just a single line.



Sven


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
