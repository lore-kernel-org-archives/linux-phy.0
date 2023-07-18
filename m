Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6575C001DC
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 05:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c0arfIWOnn3Wu0tDLMTpZB8UBlBIn9mINZzaavFad0M=; b=qWJQnD5VlsRsZc
	JFzVmp4XVxNOQZZ3vQgcBW5HlzjdNRYfZ5xJno3guBgSvxQzuYow2RXbzQfG12TGxqGyvDgtp2Sm0
	zVPURP5Sz42S7+FD1/wz9GtTKBXkpbpsPI9GBNfzzgN9UYQuni5n8/okS7Wdv+uKvDqtVTO1rdyzR
	fLgZCIbaUbJZ0vBgd49NEXHg4MpcNemf6H8fwpV2TkWn0GvQgZgoO0Is63Cdc3JLrJmpYigQV1XXs
	3qMIx2EoT2ZzpgW5sTHEyLq2Bg3psVB3bKT47QLaYUG8l0NJfquNr3sIRSWdEnIxHeOxvNoun+j/k
	4MC+4ja7NyTGvLSVOA6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzZL-005D0c-1G;
	Wed, 19 Jul 2023 05:17:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLzZJ-005CzG-0r
	for linux-phy@bombadil.infradead.org;
	Wed, 19 Jul 2023 05:17:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=hyd+ADRvCdJA7FRtkd+aRfNTHzMKoBd3+lM+4LpqNqA=; b=JCY7GL+dTHylYJQwCPtkm808Xn
	wb3lI2/6AF2pPgYKPF5N21RZ2EB26k/N89GKCSFF1WnV4Jm0WVEkIsWkkFK/4uW7gtcN8HAj+0jG5
	F26Js/Md6orxerPlRS1YEIzhkP4Px6t1Gy3rYfKQc8B5Q2ZnNndbuSqTlIc6qOKXnkh3FxyaPzWUY
	aK2oE6FtB3a7XEk+P92gTRWZJL4vYgifkIkYaKX8UOTqaQc51Sjpy03el8eT7tzWk3t2uSDyM5JC/
	3h4ttY4Lw+D2KzuFzqD99aZiQcx9xA9L86k4fgJlVRO3PvzBA0ptYvX8vMTkhDf68FzWeo41Q78zQ
	TF8RMLYw==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLe00-00BDBm-1h
	for linux-phy@lists.infradead.org;
	Tue, 18 Jul 2023 06:15:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 53A0E61464;
	Tue, 18 Jul 2023 06:15:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2AD86C433C7;
	Tue, 18 Jul 2023 06:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689660936;
	bh=pIDYFv2ZkJ4bRQ7wTGYVbgGEKPWGKq3xt9sih1qj7QM=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NpTtlamI7m1trWo+6u3KW79p3V9twD1Crf6/L9cvZGFm8JCRz6UUUZ/4v61wmGyBS
	 cw0nCmLkRjZyea4e7+AZ70d+3LZ5g4VPS2NF/r31EFnCWCV1DekXqlTqYbIsivsPb8
	 aoT5IDQavozjtDXfjXkdUlejoa1m81Kov+fLwCK0SmKalgacoczQp+XXWJcsLRb1TE
	 26cFnTi4LiIP2lAIOi8q021LXKDC5mrN3SzH/rKwObP1KCGQg0vFXlrN/2LMBaUwg7
	 Egerw7XB0SQLmyb//29uRlV4Z9FfewBYDrQvTREIK7MnqjS92cyMFo0hBFEJ86a3at
	 gx0c5zrpULfuw==
From: Vinod Koul <vkoul@kernel.org>
To: agross@kernel.org, andersson@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
 konrad.dybcio@linaro.org, mani@kernel.org, 
 Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com, 
 quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com, 
 dmitry.baryshkov@linaro.org, Bjorn Helgaas <bhelgaas@google.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org
In-Reply-To: <1689311319-22054-1-git-send-email-quic_msarkar@quicinc.com>
References: <1689311319-22054-1-git-send-email-quic_msarkar@quicinc.com>
Subject: Re: (subset) [PATCH v2 0/6] arm64: qcom: sa8775p: add support for
 PCIe
Message-Id: <168966092968.340315.2461852657981161685.b4-ty@kernel.org>
Date: Tue, 18 Jul 2023 11:45:29 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_071554_949931_B00F7409 
X-CRM114-Status: UNSURE (   9.68  )
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


On Fri, 14 Jul 2023 10:38:32 +0530, Mrinmay Sarkar wrote:
> Update the relavent DT bindings for PCIe, add new config to the phy
> driver add pcie and phy nodes to the .dtsi file and enable then in
> board .dts file for the sa8775p-ride platform.
> 
> v1 -> v2:
> - correct indentationand sort compatible in qcom,pcie binding
> - correct clock name entry and sort compatible in pcie-phy binding
> - sort compatible and change commit message in qcom pcie driver
> - change offset name, added tx2 and rx2 offsets and sort compatible
>   in qmp pcie phy driver
> - correct ranges property, added MSI, dma-coherent, cpu-pcie property
>   removed iommus property moved pinctrl and gpio property to board dts
>   and correct the allignment in pcie dtsi nodes
> - added pinctrl and gpio property in board dts
> 
> [...]

Applied, thanks!

[2/6] dt-bindings: phy: qcom,qmp: Add sa8775p QMP PCIe PHY
      commit: fd2d4e4c19864fdd400d961de899163323ab7fa9
[4/6] phy: qcom-qmp-pcie: add support for sa8775p
      commit: a05b6d5135ec3e65520ae0eaa1b24d4c6549424e

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
