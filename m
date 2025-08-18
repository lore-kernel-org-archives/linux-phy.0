Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59026CA0EE4
	for <linux-phy@archiver.kernel.org>; Mon, 18 Aug 2025 17:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1fT0U/mrx1H5e1CimUyKTmxXwbg9VY6RC+8TPmSLDOw=; b=mY4eVex36PegX/
	iHk7eGdwhA1cYUHZ0VMkKzOd6RP6bFs7z4091zQdKYYa+SEukyb0k2lKEgbZN9dAstVsDGVTQmap1
	6sW5ZDwVxGo+9DeDFwDt5QO1ajl4pV1uax6QHfxVxcHK5PuKJZjbruR6X/8ykq7JXJenNRCgKy36G
	/JjQyqhx3W7BXwKsTqnxSq0L9XetaVCyECtzFxYPUaB28E35jQLIKpx6VGaEt/+qeQF9apCWGtTFa
	IQtz4PyTYhE8h1Z0w0Ry65m4b2MZLNl9o1HH6/KJvyKOP1mAFn7xoUTuAMHbZBPi8nE0iSgsdjmg4
	E/Tpg5m3KX9IEdzZp9Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3hm-000000089Qn-0BDZ;
	Mon, 18 Aug 2025 17:31:34 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo1G8-00000007rIj-0i7F
	for linux-phy@lists.infradead.org;
	Mon, 18 Aug 2025 14:54:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 73FF85C5D6D;
	Mon, 18 Aug 2025 14:54:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED5DEC4CEEB;
	Mon, 18 Aug 2025 14:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755528891;
	bh=cuZ1pa9bmDYPYfV+jIPPjvIT7gQMFovHPkrwyoJxtVs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GNlWJ/O/Q9mNZZxVdOxN36kc2Wb8xQlyD8sQdQMc9boQzjkddfNyqDREgvi82T4WE
	 Y/NXGhdUdvQ2L+f2gKz9zYAyTtR2F66evnQ1o3DmM7dn63trsb+5DrEfiek+CJTwmG
	 WtKT039P9KdoARyi/NrvQywbZcpbRcLmuQVUnqsGPhGRkH8wjdRsHDQ5puS2DPqaY8
	 4p9MgLtMn/8HJhXZIw2W/d2iuziRosoQYwkayfF/QwmuVODvoJXZ7dptIyeifcAWzj
	 Zlf4YKlr6kBP5Fp9xmqmh8SbHmFOoPpaXXLM/R760Si+3dU8wKDdt+9tDGhl0KwFDS
	 n2Mm2ZpfseCRg==
Date: Mon, 18 Aug 2025 09:54:50 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>, devicetree@vger.kernel.org,
	quic_vbadigan@quicinc.com, linux-kernel@vger.kernel.org,
	quic_mrana@quicinc.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 3/4] dt-bindings: PCI: qcom,pcie-sm8550: Add SM8750
 compatible
Message-ID: <175552888940.1212051.15924500632335799397.robh@kernel.org>
References: <20250809-pakala-v1-0-abf1c416dbaa@oss.qualcomm.com>
 <20250809-pakala-v1-3-abf1c416dbaa@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250809-pakala-v1-3-abf1c416dbaa@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_075452_247149_3839F2B1 
X-CRM114-Status: UNSURE (   8.02  )
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


On Sat, 09 Aug 2025 15:29:18 +0530, Krishna Chaitanya Chundru wrote:
> On the Qualcomm SM8750 platform the PCIe host is compatible with the
> DWC controller present on the SM8550 platorm.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie-sm8550.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
