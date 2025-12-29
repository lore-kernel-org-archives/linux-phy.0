Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E6ED3B7E5
	for <linux-phy@archiver.kernel.org>; Mon, 29 Dec 2025 07:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bPL0Rc8wrbt4hszw8YonGn7myEpeyQNPYjnLwy0e6CI=; b=jPjGvyZ49GDjbrFtE8LW9yLS5w
	LtmMpKJlD1EsYjPpUobaCDrI+YwhF9JpHxK+A21y0l2wlbQ9RuNhP6z0kLSu02w4FnsdBIUIN3l3R
	CxEMpflTt8VYbeAzzoku0230F4aJ4zICySram9tHIdIgSFDRMiEGaN4LKxpHU3QHME4nPH4qSit5r
	Y28p0FvdQmPRG7gH+de5/DJCIfoFlHS/vGwiGrc+NxqbWlqEs6pL8gXut8wtYo04LOFJn69x4I8N8
	wwRSG8JvzdD6VQHIDnWMX5/zelVYEY9SgjnQb07cP0opEB4hywSW5EwZj5pnX4w9fXroa3Pei9k9U
	n5ltwhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va7mj-00000003RA6-17X8;
	Mon, 29 Dec 2025 07:35:21 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va7mi-00000003R9q-1spl
	for linux-phy@lists.infradead.org;
	Mon, 29 Dec 2025 07:35:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 42C1B60010;
	Mon, 29 Dec 2025 07:35:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CCA24C4CEF7;
	Mon, 29 Dec 2025 07:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766993719;
	bh=9gGsY8j2iqa8tDRFxRRfXgvI09YVE/FYZqJ+DuGo3OQ=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=YoFkSicraWcgpoHFTi8BXEa3xPeWRLnN4ppMRKEdjaD1P9kFQcXBbdVj/REH7G9DQ
	 AOxhgmBJjjWrUU05REicYgs8nbrcmB3I5wLGv/6givFHYrUiwQxwvTf8gS5zsHVeNk
	 S6U440YjxlDQw/dzYvtu1iRKFP77XuHavJFh/U/c7X6z+hqCHvNNWBgG1JUVkL+TEB
	 x4nWOiHN6zft5Jfks0+KbZWQLeIHFE+49TIIPNPpZL1LZfgL+fte31W700ll5KuMNV
	 4YhNrOWcYH3B8qyZWkUdp/rArAmjFA7aCyDiXrpQhLqMhROY1oQPYNRj/66222xAb1
	 M5vr3fG9BUTPQ==
Date: Mon, 29 Dec 2025 01:35:17 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, conor+dt@kernel.org, 
 martin.petersen@oracle.com, andersson@kernel.org, 
 taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com, 
 krzk+dt@kernel.org, linux-scsi@vger.kernel.org, devicetree@vger.kernel.org, 
 vkoul@kernel.org, linux-arm-msm@vger.kernel.org, 
 nitin.rawat@oss.qualcomm.com, konradybcio@kernel.org, 
 linux-phy@lists.infradead.org, neil.armstrong@linaro.org
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com>
Message-Id: <176699371795.453334.1254086534957374498.robh@kernel.org>
Subject: Re: [PATCH V1 2/4] scsi: ufs: qcom: dt-bindings: Add UFSHC
 compatible for Hamoa
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


On Mon, 29 Dec 2025 11:36:40 +0530, Pradeep P V K wrote:
> Document the UFSHC compatible for Qualcomm Hamoa SoC. Use fallback
> to indicate the compatibility of UFSHC on Hamoa with that on the
> SM8550.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/ufs/qcom,sc7180-ufshc.yaml          | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make dt_binding_check' on your patch:

yamllint warnings/errors:

dtschema/dtc warnings/errors:
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/ufs/qcom,sc7180-ufshc.example.dtb: ufs@1d84000 (qcom,sm8450-ufshc): compatible: 'oneOf' conditional failed, one must be fixed:
	['qcom,sm8450-ufshc', 'qcom,ufshc', 'jedec,ufs-2.0'] is too long
	'qcom,sm8450-ufshc' is not one of ['qcom,hamoa-ufshc']
	'qcom,ufshc' was expected
	'jedec,ufs-2.0' was expected
	'qcom,sm8550-ufshc' was expected
	from schema $id: http://devicetree.org/schemas/ufs/qcom,sc7180-ufshc.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.kernel.org/project/devicetree/patch/20251229060642.2807165-3-pradeep.pragallapati@oss.qualcomm.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
