Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B17B5CF6A86
	for <linux-phy@archiver.kernel.org>; Thu,  8 Jan 2026 08:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqmcp8sA33zTxBNyXSevr/N+noKOLMrBTdXNeMnAfz4=; b=nPqX2m2nyemA6E
	JnHXPFEYR1fh2PeFLszKC9X8DRbHoYVLAvomp1/cbVkPpWk73tDFLEhPZR9YApoTeo7ozOiThH2RN
	QcItp8d2Cg/nXplWCZCLUaStxl+1rnLe4OR0kRUSDCYIT4lw947NbiFY2VLNfboPhfs+BR9awtOPa
	uoJBQgIDXfJulq+fny6L/sSK4gavtxuqUpMhd+nUfdZ/Dt8trD/2R9j5T7gpyK+M61FNKs0CN9zbF
	xewKBb7uSWBL/FS9Qv9HhkcnNRkRluTFMPzYLTBEmkllzYZ2F95g2HPHWmn7S1vdkruyWRKs84p5f
	g7x1kIAkh62yXQZ5BD3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlkD-0000000GLsQ-1tis;
	Thu, 08 Jan 2026 08:51:49 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdlkC-0000000GLsE-1CNK
	for linux-phy@lists.infradead.org;
	Thu, 08 Jan 2026 08:51:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 465A36001A;
	Thu,  8 Jan 2026 08:51:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65027C16AAE;
	Thu,  8 Jan 2026 08:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767862307;
	bh=V7W+NQGt0vybJ+WuTB0cOraNUQuW+LI0LarzZ5orrxo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=R/WPAav2GiSwRoj2IBVdrMwpx6icanUFEkJUd76htnM5SlUxTNpPFtV6XQke21iKm
	 AlQ/GCJxi+IdUAAkqnoi/RR5+Z9yeJYBClSu0cGA5mLHVZn8uZZ076lOHxSOzXCrEj
	 VxCnO7LvYAX5BQAF6ZIrjZIvlIcHm1O06BVfzDI6ngBfXkJM/IuV9+/4frjJvD4E1J
	 Ltq7uY5FiAVeogXPgoX2pqguQYvVWdeRQ1GkG+fbzYBW+poZ5lIDqpz2ejQbnc+lr4
	 zqaN4sH6WzeqwbGmkPB7Yqmf3HsK/1yxtyW9ykH+xWu6Ghiq1NrHrzFHjSQYWbfsVt
	 5s01oP2sRtYRw==
Date: Thu, 8 Jan 2026 09:51:44 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	Ronak Raheja <ronak.raheja@oss.qualcomm.com>, Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: Re: [PATCH v3 2/2] dt-bindings: phy: qcom,m31-eusb2-phy: Document
 M31 eUSB2 PHY for Kaanapali
Message-ID: <20260108-paper-wolverine-of-agreement-c7dbcd@quoll>
References: <20260108052459.1819970-1-krishna.kurapati@oss.qualcomm.com>
 <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260108052459.1819970-3-krishna.kurapati@oss.qualcomm.com>
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

On Thu, Jan 08, 2026 at 10:54:59AM +0530, Krishna Kurapati wrote:
> From: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> 
> Document M31 eUSB2 PHY for Kaanapali which handles the USB2 path. Use
> fallback to indicate the compatibility of the M31 eUSB2 PHY on the
> Kaanapali with that on the SM8750.
> 
> Signed-off-by: Ronak Raheja <ronak.raheja@oss.qualcomm.com>
> Co-developed-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/phy/qcom,m31-eusb2-phy.yaml | 1 +
>  1 file changed, 1 insertion(+)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
