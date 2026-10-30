Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A1BF606A320
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 17:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=IoesPRDe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=EVZEjJgx
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Vj5WLXZ9kLMcMJi3CqZCmfQVpL0yw6RJoqUFc59o2w0=; b=IoesPRDezksZkS0fxvkLpPRmxv
	921W/W3smaqoZYPiIH6PE4z/vXdDM0esXFNhqSwwnLNMpwfwk7HTaynjE2aKtX5tSX/o9sdv58ZUq
	4GvPDJBMXdoKtuT8mLzUA237E+0y5am8jT2n+dhycPTkMrJzEvSfk2KEHv8Yj8pMTk9stNj22JTfM
	K5IK7av/H36ZygaesTlOnysREjwRnIcd4Q2KfYDYtkQfRpodKPfsY3433FURkFbr544k4If/arZEb
	QlbhoaQVfPwFKL9TipTAHcPNtNeuHhZh8zQil6lWzkWX9YNpgWfUiU/T4NuNAzHBq+gjkU4hKJagi
	OH89cTSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpyr-0000000CBNX-0xXf;
	Fri, 30 Oct 2026 17:01:29 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMpym-0000000CBMo-3Ny1
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 17:01:24 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E71C943073;
	Fri, 30 Oct 2026 17:01:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8FD11F00A15;
	Fri, 30 Oct 2026 17:01:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793379683;
	bh=DNr7OLUBSCbML7hIxgDudpyYYElYAev1OqTZx9LmESE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=EVZEjJgxFjp77aRkeTOGzxfcthGvnE0LjQ6Wio0xTI8wgXmIl1FwXtRjVhYjMtcdz
	 vWPM0Is2dyRtX54rJSy9/NqsN5DGzUIdk8HgrhwY/yDVWGy+HBe5LDIv7CetyoxXXi
	 dEUTQx+yu/AIF/iwi95xKuG62eidslE7o5UmmLt2VBZS9N6aoD9pGR5xEcimpSmHzE
	 BlaZ1Gdo8plzyhtVY++dXYhaG4kgUuS9CikRNBaN8h8IbXJ8/E9EAKAvZavNvi+wOA
	 XC0Y65Z77gsRffE3hU6mlMx2VVankH2qR6Ph0o/Y6yiscLjmpib+LkM4DakYArx9Vk
	 hCg77b+zemkSQ==
Message-ID: <dea88756-39d3-4c61-83d9-939ddb9336fa@kernel.org>
Date: Fri, 30 Oct 2026 19:01:17 +0200
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v23 08/15] media: qcom: camss: csiphy: Add support for
 v2.4.0 two-phase CSIPHY
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
 Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Loic Poulain <loic.poulain@oss.qualcomm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abelvesa@kernel.org>
Cc: linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, jeyaprakash.soundrapandian@oss.qualcomm.com,
 Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-8-95f250b18612@oss.qualcomm.com>
From: Vladimir Zapolskiy <vz@kernel.org>
In-Reply-To: <20261028-kaanapali-camss-v23-8-95f250b18612@oss.qualcomm.com>
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

Hello Hangxiang.

On 10/28/26 17:20, Hangxiang Ma wrote:
> Add support for the v2.4.0 two-phase CSIPHY found on Kaanapali, where
> the PHY is driven by the standalone phy-qcom-mipi-csi2 DPHY driver
> rather than by CAMSS. Add the mipi_csi2_dphy_3nm_kaanapali configuration,
> which reuses the x1e80100 lane sequence, clocks and supplies but selects
> the v2.4.0 common status offset, adds Kaanapali power domain and register
> the "qcom,kaanapali-csi2-phy" compatible.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
> ---
>   drivers/media/platform/qcom/camss/camss.c | 47 +++++++++++++++++++++++++++++++
>   1 file changed, 47 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss.c b/drivers/media/platform/qcom/camss/camss.c
> index a64242c66cf0..b0b63dd3d958 100644
> --- a/drivers/media/platform/qcom/camss/camss.c
> +++ b/drivers/media/platform/qcom/camss/camss.c
> @@ -38,6 +38,51 @@
>   
>   static const struct parent_dev_ops vfe_parent_dev_ops;
>   
> +static const struct camss_subdev_resources csiphy_res_kaanapali[] = {
> +	/* CSIPHY0 */
> +	{
> +		.csiphy = {
> +			.id = 0,
> +			.formats = &csiphy_formats_sdm845
> +		},
> +	},
It makes no sense to bloat the code for no good reason, especially if
these empty tables are to be added for every new supported platform.

CSIPHYs is not a part of the CAMSS on this platform, hence resources
shall not be statically allocated for CSIPHYs in the CAMSS driver.

See also https://lore.kernel.org/linux-arm-msm/20261026224957.1115370-1-vz@kernel.org

-- 
Best wishes,
Vladimir

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
