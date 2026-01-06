Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34D6AC47BC2
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 07:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6pr9L5h70qAMTxUw390kuutvvzxuc4w5LhdnsMFHA5U=; b=ENspMLaazfKc6D
	JyAxd7U8UDxIq2mHqZW1RSy0ZrTrLyEk9DF2QrNNRZNx8uqXDNbj8AMIzvUC8nAYig2TTw31SQt6I
	uNZ1J/dFp5zO2g/+jxlF6XAue9+4FrruzL2Iphd2c+tbjQWeJEX9jmP90JDpyyClOyMB8bgrAaVk8
	YM6kc0Fqec+6I/8t6vHwqjP7MpPVbsrj1l1NFvxGWW1hL8Od2n/OCA83S8ooXDovqUo6C8lZDXMz6
	Xy4FVfvnwnWWbHIMHlqz/JDNGuPsHVf75ZORyQ9D3UXYsZFDMn7ghlamnYRega+VBD702bZOZYH5Y
	1HnDt8v0m6acN0FyD5uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1aA-0000000CWQP-3viZ;
	Tue, 06 Jan 2026 07:34:22 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1a8-0000000CWPj-2bWv
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 07:34:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 5837F44091;
	Tue,  6 Jan 2026 07:34:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A48DAC116C6;
	Tue,  6 Jan 2026 07:34:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767684856;
	bh=1+5IaY7xoiAk/BM78Y40LMMDGt+LUOh1ShmSFG/Nggo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Yt24FCGb+SPbEogUgJcbYcAkNOOKzMeoSOR9/1e82dbOnQF2uEH7wEVz0obGkHGaD
	 tT63R300p/k3veRzL6aImLBESVGyZFTxCLjZOzqLEXuh9MlIWHKVIdwWmgAKl6jGym
	 tQTBxvyTHue+KtrxXqD3Spe151Dxab+BtuoRX6litdbCvohQRzBXk8j8VjhLDMENL1
	 AH4r9ViKUtqrIo5Aus+gUTIilzXIeWMY2E4Ixuw3TjwTo0+hcSGVxClU7/3IR6R7je
	 eIbF5F7nc714BcZGRa4/OjOE1oSi5do7QaNb4xsIY0I+qvxQ4xvC6UcMizLlTroP1r
	 JKIdzZsmj25YQ==
Date: Tue, 6 Jan 2026 08:34:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 2/4] dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC
 compatible for x1e80100
Message-ID: <20260106-tremendous-tuscan-boobook-fbfa20@quoll>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-3-pradeep.pragallapati@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_233420_676555_05C3B74D 
X-CRM114-Status: UNSURE (   8.66  )
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

On Mon, Jan 05, 2026 at 08:16:41PM +0530, Pradeep P V K wrote:
> Add UFS Host Controller (UFSHC) compatible for x1e80100 SoC. Use
> SM8550 as a fallback since x1e80100 is fully compatible with it.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       | 37 +++++++++++--------
>  1 file changed, 22 insertions(+), 15 deletions(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
