Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CDBCC79FA0
	for <linux-phy@archiver.kernel.org>; Tue,  6 Jan 2026 07:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UgeGXp3HU8LcInJXukxwuQBmAhn0xDWHvVFA/10knU=; b=k4i8evLEQsv4xa
	5K2dW9eDDbBQGCUlA062EPInVuEFxq37ZY+RUg/LgXm/Gbna5hvoA6hjP1UAmfSwurYjwyVf+maB+
	aI4lq/2siNaeiQqHXcjS00NCx6sPn3WHud7GtLvI7HgHnvizPcZO6pBivVU6W7x+K1aXd++EnOJx5
	CYX9sqaP8pK60CuCKe57ePasr934bnqDVu5d3rJnsD3m2CwciCrk98kQ6pZF0Ohkz6hUNraoeO5ud
	EkgybzAtypiutA9UgoaYIWQL5+5B+w95MvXIgwc2cv6xSbwv5gXdnm0lHJLvQcaIrBEfsAGtE4+Uw
	EyMmqlETXdfRfI+PXouw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Yn-0000000CWEQ-2Ll2;
	Tue, 06 Jan 2026 07:32:59 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1Ym-0000000CWEH-0R6K
	for linux-phy@lists.infradead.org;
	Tue, 06 Jan 2026 07:32:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 381546011E;
	Tue,  6 Jan 2026 07:32:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5D426C116C6;
	Tue,  6 Jan 2026 07:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767684774;
	bh=BGcwdH2AZcgbbKhfbfSssEoXRyTGTHTkrAq0xNhjD7w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bur3yb8kv1ugmxkILUn4SkfX3o/VzevKXIbmTgWm1a4fqlduq6v3plPILSf3gy+iZ
	 HV/DI4UAlAzKIjkgvobS6xIG39CXWyTD8E/4JTHTxe5p/vrGLwtLmFTbXvTuAc2oeY
	 ddnywqdqBZKeVZwT7EZjz1bRuzKg/2Vm1j1DxAqjRUGT+lPrnEXnYTl/5zoxWYOIVA
	 IuB1DAeOrc2fDT9oNxuNFyfmQbU/7GHFgN9RChNz3+8nyAkLypecuwM5bf1KFIJYR9
	 NS6la/EA8XDKusir1ORjxXhDtjWCjbYtBq0qj6iwGar982fe3VKg7Rq2PivD+amjju
	 R+MEnH3MoUk1Q==
Date: Tue, 6 Jan 2026 08:32:52 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com, 
	andersson@kernel.org, konradybcio@kernel.org, taniya.das@oss.qualcomm.com, 
	dmitry.baryshkov@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 1/4] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add
 QMP UFS PHY compatible
Message-ID: <20260106-huge-radical-bear-aeb732@quoll>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
 <20260105144643.669344-2-pradeep.pragallapati@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-2-pradeep.pragallapati@oss.qualcomm.com>
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

On Mon, Jan 05, 2026 at 08:16:40PM +0530, Pradeep P V K wrote:
> Document QMP UFS PHY compatible for x1e80100 SoC. Use SM8550 as a
> fallback since x1e80100 is fully compatible with it.
> 
> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
> ---
>  .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
