Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A5F7CCA462
	for <linux-phy@archiver.kernel.org>; Fri, 16 Oct 2026 09:54:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2vNONy8PBsrK14lyVXC5sTW2GOLFGlCqnL/+BcOfis=; b=VJ/ecDqac48LnP
	IWpG3Vhcr3qRczuMzpwQnorVMuwNKq/7fxI2NF5s19fJE2G3l8ZrvSw3kaNX0JCHu/YyLuKUVjlHB
	z17+31L1feUoR4bFuKfKZGx0YlUwDx0wRCnUyxRD9xO+NYdZOdOI5R9Ous/ISc1YKsH6W8gjB2MGR
	Po0+nUqI/0460MjSOWGVcH0WtUCjIk/H4vCBgtlvMe17W105kufVnf/vmh4sxEARQ1WXmNY/ILQ5S
	6OOltz9Tfgr5z/vHpDAc1jXm1nCBy26jAAa2PUKptFbobdVZSPJx/91ujIvYlYKRMmkLil2dV2tu5
	QzI5OaSWZmd/A8C8TLcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeeJ-00000002XuS-3vtV;
	Fri, 16 Oct 2026 09:54:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHeeI-00000002XuI-36A7
	for linux-phy@lists.infradead.org;
	Fri, 16 Oct 2026 09:54:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 3336A410D0;
	Fri, 16 Oct 2026 09:54:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3FC11F000C4;
	Fri, 16 Oct 2026 09:54:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792144490;
	bh=1LYuAnwQxjThq0bcnWdxYRswFEC5pOuk5XOjSf0KelA=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=Z6pKM2ARhe2PmJlQQA4GjGMeEkOqi4VEg+DLSe1QyAAM1a4JO3Azw+VW5Ye7eeOM4
	 D7guIf9gdBqFO6looMpN3jDW+KtQFD3RHXMGvAs1ZIx04Vhadn7qfBQr5mssOR7EXf
	 /2zHkDpWl91mSTZAoTN4k/I0iFgzrw1HfUDRCiibZ3uPIsPOnk/wOPpLtTKJ8LakJt
	 1Rc9DChinNBIs2dGjYIzEdyx2xZEbH6aFezfLRtDMvGxHxtFiEQNO6/kJqE4+zTf64
	 hbhOSjBXZ5TzraKk9gxQRaTwu7bvRIOzukX3UhZmX8OhAnV79N4oJsgf0ela7DotNx
	 fRvNvpVdMYLig==
MIME-Version: 1.0
Subject: Re: [PATCH v4 2/5] scsi: ufs: qcom: dt-bindings: Document Glymur
 UFS controller
From: Manivannan Sadhasivam <mani@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Avri Altman <avri.altman@sandisk.com>, Bart Van Assche <bvanassche@acm.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 gopikrishna.garmidi@oss.qualcomm.com, jagadeesh.kona@oss.qualcomm.com, 
 Abel Vesa <abel.vesa@oss.qualcomm.com>, Abel Vesa <abelvesa@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com, 
 sibi.sankar@oss.qualcomm.com, Taniya Das <taniya.das@oss.qualcomm.com>, 
 "Martin K. Petersen" <mkp@kernel.org>
In-Reply-To: <20261009-glymur_ufs_qcb_enablement-v4-2-9a6ce83195b7@oss.qualcomm.com>
References: <20261009-glymur_ufs_qcb_enablement-v4-0-9a6ce83195b7@oss.qualcomm.com>
 <20261009-glymur_ufs_qcb_enablement-v4-2-9a6ce83195b7@oss.qualcomm.com>
Date: Fri, 16 Oct 2026 15:24:36 +0530
Message-Id: <179214447679.106618.13395726363064166351.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1673; i=mani@kernel.org;
 h=from:subject:message-id; bh=xT2LBJqH0V2cIi0o5HP5JsWOT+cHaNnlyZRVk11zIdw=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq0fRfFuzHOmJ1zEbRe2NvhNARv7jbUwiBdCiyq
 YuCvgBsK7OJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCatH0XwAKCRBVnxHm/pHO
 9cHwB/0QDxC9RpCl15j1TBsqxmClzMTtsGJfD+kWTU9TRNlMH/0c/Y1N3j6QM6dB/3aU5ACLqFW
 ElRIvVFM6Mj5oD89A2FsaVulMM0UEN7Rv+6nzmLFalEwXF1QRA8tzYyO2COE9p/n7ixKgIHPHVk
 SFZnqz7gp66mntkSCferg3fnXe3eCBOWkw3B8sWEZcVmX84YocwTOjAs++99Go+9jKFV5Kdccho
 pqoAxP4ZE8uUy0PzZ5qj8fhjyNPEPFWL/p7CnYvqfEOYxTWDBe5m37ogZbRdsr3t2WKTyFHswG9
 DaIvTdUlco01MxI6IcTI6Slr3Ch3/Cws/w72ZvUpxs3Tpkv+
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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

On 2026-10-09 16:05 +0530, Pradeep P V K wrote:
> Document UFS Host Controller on Glymur SoC. Glymur UFSHC has a
> multi-queue command (MCQ) register range in addition to the standard
> one. So, both reg entries are required.
> 
> Acked-by: Martin K. Petersen <mkp@kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

- Mani


> ---
>  Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> index d03295806657..f132b1a9ebc2 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
> @@ -16,6 +16,7 @@ select:
>        contains:
>          enum:
>            - qcom,eliza-ufshc
> +          - qcom,glymur-ufshc
>            - qcom,hawi-ufshc
>            - qcom,kaanapali-ufshc
>            - qcom,maili-ufshc
> @@ -30,6 +31,7 @@ properties:
>      items:
>        - enum:
>            - qcom,eliza-ufshc
> +          - qcom,glymur-ufshc
>            - qcom,hawi-ufshc
>            - qcom,kaanapali-ufshc
>            - qcom,maili-ufshc
> @@ -80,6 +82,7 @@ allOf:
>            contains:
>              enum:
>                - qcom,eliza-ufshc
> +              - qcom,glymur-ufshc
>                - qcom,maili-ufshc
>                - qcom,nord-ufshc
>      then:
> 
> -- 
> 2.34.1
> 
> 



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
