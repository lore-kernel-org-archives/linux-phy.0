Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1545FC0218D
	for <linux-phy@archiver.kernel.org>; Tue, 28 Jan 2025 07:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjQGTNKm1QZAUVAo91/HSyFcT3UZbSTi/CeCVL/CeZg=; b=dWpue6bOgmtcA9
	+PGV/AFdWpt8whmhVfvJEes+CU77HPHywzBKgLUSJRwOreE6y9CU62bO//MWr5xOVWXuIH7LSlHoc
	mP2mlZYmN2qa/P55YNbaKyNcnQ5+LrtLVcYv7RMpEz94sqPHe/NpF/4o3QwT+jh3DqMF2YC9OD+x/
	sYyVNYbBY0EbbHJgoXkHP5RONNfTr3xuDaVTcriJlmJkc/CWkOa50+cJRzgQrD/btjbZT40KYzq0W
	6w5KW+7I/QT77se7pnS7zQowUNm+s+5w9AnXgmOCEfgoty8BH3xGd9GZyobc27cE0hBOC3aWdHiey
	ADc2PEEe+wHxsuASYY0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcg0b-00000004H1W-0aew;
	Tue, 28 Jan 2025 07:27:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcg0Z-00000004H19-0Hxv
	for linux-phy@lists.infradead.org;
	Tue, 28 Jan 2025 07:27:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1EE7A5C5BBF;
	Tue, 28 Jan 2025 07:26:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11601C4CED3;
	Tue, 28 Jan 2025 07:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738049257;
	bh=+sa8ABbz7eaRoFnDc8THWn9YGk3681ZYFZ8XGntL9lU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iXeAVvjmyuQzKycAAB4vYhkz618HYojLKROyvVNIz6gW5RbcWYRCqTJCjUB3ZdHU8
	 5jX+bGVaTjIns86RhL+l5RtMdsQIhjmvkpQJqDarfFPIkMDWw8lHoXiITg6fxytWh6
	 hY3gV6aXcbTSmmWyWOp5FRAcQInjLf+UymGZAp9JjyusvT0bgUUvBoPOLV6kdt9YVT
	 T+KIAgbNyhxOjTgwSur+7Wi2oqWFtq7BqAKAwG8AchHOfDUeQem6FY1/BSYeG29/Of
	 XrKXKnTgj5OzdcqZOpTJZqvi4U1h3OsTcCnUh5uflGgWCy49RDQlnwjK0sbg2YjftJ
	 IrzEXJAu32ROw==
Date: Tue, 28 Jan 2025 08:27:34 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v9 5/7] dt-bindings: PCI: qcom: Document the IPQ5332 PCIe
 controller
Message-ID: <20250128-astonishing-kingfisher-of-skill-babe3e@krzk-bin>
References: <20250128062708.573662-1-quic_varada@quicinc.com>
 <20250128062708.573662-6-quic_varada@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250128062708.573662-6-quic_varada@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250127_232739_156644_65DE1BDF 
X-CRM114-Status: GOOD (  11.49  )
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

On Tue, Jan 28, 2025 at 11:57:06AM +0530, Varadarajan Narayanan wrote:
> Document the PCIe controller on IPQ5332 platform. IPQ5332 will
> use IPQ9574 as the fall back compatible.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v9: Remove superfluous ipq5332 constraint since the fallback is present
> 
> v8: Use ipq9574 as fallback compatible for ipq5332 along with ipq5424
> 
> v7: Moved ipq9574 related changes to a separate patch
>     Add 'global' interrupt
> 
> v6: Commit message update only. Add info regarding the moving of
>     ipq9574 from 5 "reg" definition to 5 or 6 reg definition.
> 
> v5: Re-arrange 5332 and 9574 compatibles to handle fallback usage in dts
> 
> v4: * v3 reused ipq9574 bindings for ipq5332. Instead add one for ipq5332
>     * DTS uses ipq9574 compatible as fallback. Hence move ipq9574 to be able
>       to use the 'reg' section for both ipq5332 and ipq9574. Else, dtbs_check
>       and dt_binding_check flag errors.
> ---

Same problems as ipq5424.

What's more, you are doing the same, so this is a conflicting change
coming from the same company or even the same team.

It is not the open source community's job, not the maintainer's job to
coordinate tasks and teams in Qualcomm. Qualcomm people should
coordinate their teams.

It's merge window, you and your colleagues keep sending new versions of
big patchsets with conflicting changes, without any coordination. Amount
of patches is just overwhelming. Lack of coordination and any reflection
is just discouraging.

Can you slow down and actually sync to send something reasonable?

And not during the merge window?

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
