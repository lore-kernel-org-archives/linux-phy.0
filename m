Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C24C2FA3726
	for <linux-phy@archiver.kernel.org>; Fri,  2 Jan 2026 11:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TxVD9/krhTajkKKqHj04k7cJCqLeMeRc2RQpVnvntc4=; b=MxTI9e36215HVt
	RbnSt9p7OCJjfXxOtLJpjEEFDbmolbb7zrlNPvP1EzlrcFSCTaG9hDSAA7aXQtyixi53i/8JTX3W3
	3r2rk7kaArxWcUR2GJeU6SF8m3Jc3DuTyQ03qM4a1rFS0/TCUjhLWZh2xroPeEGUrQw3XsLvAUZON
	8o6Pl6WEwss7nhBaeb6/UUsoNGr2hfUJqv049VaIfSaBnsqG4HQKcZ765U/FhRt1wAuH9SuPONmvM
	k6wZQwEXFuDnfc8JdNPAfEXvCrBlK4s+Ij/dTfG8HUjyzlpouJ7eh2L0HUrNl0d2vuUxfMG39LNvD
	JM4mXXt56wmRb9Yb6Utw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdIB-000000088AX-1uDv;
	Fri, 02 Jan 2026 11:26:03 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vbdIA-000000088AR-2wdj
	for linux-phy@lists.infradead.org;
	Fri, 02 Jan 2026 11:26:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 979C760017;
	Fri,  2 Jan 2026 11:26:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA066C116B1;
	Fri,  2 Jan 2026 11:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767353161;
	bh=irxz4kGO/ifwlc6J21n4NxZquijGUgmOe+Gdf3NvF+o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H9xzFqat7t5rznCncJVk7UDgr96JHMk+T2NDAHDY57kVAc2s8UpJOYQunlJIQXy/6
	 wf4fc6ZDN6CP9UR0B8pVMze2iPj5qsVd8JpDbydyrl8/xZFKAGUe5WuxLs37aw2Ou2
	 57Ktb5MUdY/PRQ4LYRPoJcxj4rvpL7mw7y4wvsUhipt0TKpJLAheE9hPXsiJUK/Gnp
	 3F5PaOwU7agtJBjM+v2hrr710CO40kA87LCJ+Tm/+FBiGwoEXVZfnywQ+qwNT4sI5D
	 T6ByGtbxXLzqh2U1LaCWvAu6Z/piYCd/8gpYb8/WHwAblQMgB3zy/bFgF1ZMGNWlZw
	 ndPZS9AiDU49g==
Date: Fri, 2 Jan 2026 12:25:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V2 2/4] scsi: ufs: qcom: dt-bindings: Document UFSHC
 compatible for x1e80100
Message-ID: <20260102-rapid-abiding-parakeet-d0735f@quoll>
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251231101951.1026163-3-pradeep.pragallapati@oss.qualcomm.com>
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

On Wed, Dec 31, 2025 at 03:49:49PM +0530, Pradeep P V K wrote:
> Add the UFS Host Controller (UFSHC) compatible for Qualcomm x1e80100
> SoC.  Use SM8550 as a fallback since x1e80100 shares compatibility
> with SM8550 UFSHC, enabling reuse of existing support.

Your last sentence is redundant. "Make devices compatible because they
are compatible". Why are they compatible? Or just say that you add a new
device fully compatible with SM8550. Write concise and informative
statements, not long elaborted paragraphs where only few words are the
actual information

> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 38 +++++++++++--------
>  1 file changed, 23 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> index d94ef4e6b85a..0f6ea7ca06c8 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml
> @@ -26,26 +26,34 @@ select:
>            - qcom,sm8350-ufshc
>            - qcom,sm8450-ufshc
>            - qcom,sm8550-ufshc
> +          - qcom,x1e80100-ufshc

You don't need this.

>    required:
>      - compatible

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
