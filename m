Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 245B0C46CD2
	for <linux-phy@archiver.kernel.org>; Tue, 30 Jan 2024 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=snxfF2uPtgEcF3jU/fG/ZZZUslQDHVYtMRB8fOav5Cc=; b=eQNhfPtwbXVFhq
	3XapV7zejSmhHaLrB20qyelPLBBWzVGTgZ8iFdt5VGLEJ5WjYHKarLkJ+35byS2eu0y6buFSNg5Tp
	9ARmWmBxmuMYR4C0X4T56BFfBmfqrWOSjbEA0cZ/epQdBSSVYK8MBkth9Q5Ouq3iICXG7siAB3q3i
	6P/uk+/5V9Vab6U8MPsaP7BL/JD+l7nnZvFiDUvqrtQuXgGHJbIsdJ8/ABUDEEzEMA/HNwaCGaMuf
	wXmyF98Xe8GQNhToyPUFf//wv7rHYaiRSvBVtNC0H+80OP9c8j5YWzmK0hhDuc8ylqQxBtQwFjNiQ
	W44MuFPOaTIvXWF9ElqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5Q-0000000HavT-37iV;
	Tue, 30 Jan 2024 17:39:52 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUs5N-0000000Haur-3xZ5
	for linux-phy@lists.infradead.org;
	Tue, 30 Jan 2024 17:39:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9012D60E0A;
	Tue, 30 Jan 2024 17:39:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDE05C433F1;
	Tue, 30 Jan 2024 17:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706636388;
	bh=NcU+mdNlkKy//Z7WYZmwlRZRQjhVmvq+zS+39FzljlU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Pu9qtVtVW3O1OFkG/kEaAV5qNjcOo9zwqp9RmHe/fiiYNj3b+9EKdEne8qBWaIFi2
	 vz8dcyhxFebJvJHSa+FxQk85STMYSjJ/gKxZPnWYz3JWeeTAeUAk/eIB9NVRkybjR+
	 SqUGG9uJ1bCCpj2tBUTTaYcAOjHo/IDk+g13//6pQ9tQiv8H6GNxkUKHpoNgDV8X9U
	 7kAKa0F8GNfl6UcG3RJQ6enlnRzfPpxgGE/NLBzv7DtJf6/nPL7L028od8Gcd/wDuK
	 tSvXm4gzQ9eTpUxgXYw36l2r2Sl6+7IgZh5jxRgZ5YtJ0xSTKn9SnilSmNR9aj1wmC
	 LUleZShrPZj8A==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, 
 kishon@kernel.org, Qiang Yu <quic_qianyu@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, quic_cang@quicinc.com, quic_mrana@quicinc.com
In-Reply-To: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
References: <1703742157-69840-1-git-send-email-quic_qianyu@quicinc.com>
Subject: Re: [PATCH 0/2] phy: qcom: qmp-pcie: Update PCIe PHY settings for
 SM8550
Message-Id: <170663638451.685888.12123923812372214913.b4-ty@kernel.org>
Date: Tue, 30 Jan 2024 23:09:44 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240130_093950_122541_B7EDDA37 
X-CRM114-Status: UNSURE (   3.89  )
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


On Thu, 28 Dec 2023 13:42:35 +0800, Qiang Yu wrote:
> Align PCIe0/PCIe1 PHY settings with SM8550 latest PCIe PHY Hardware
> Programming Guide.
> 
> Can Guo (1):
>   phy: qcom: qmp-pcie: Update PCIe1 PHY settings for SM8550
> 
> Qiang Yu (1):
>   phy: qcom: qmp-pcie: Update PCIe0 PHY settings for SM8550
> 
> [...]

Applied, thanks!

[1/2] phy: qcom: qmp-pcie: Update PCIe1 PHY settings for SM8550
      commit: 06e34728827cb47026e80db22304d03ee83c73a8
[2/2] phy: qcom: qmp-pcie: Update PCIe0 PHY settings for SM8550
      commit: 80082fc89edde66fe61ab85d23ea27b245fe73cb

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
