Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D30E9C83030
	for <linux-phy@archiver.kernel.org>; Thu,  3 Jul 2025 07:19:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bw/uwtthvdwwikDNjQWzPIaQMTQIUvw58nHhfbZhKbI=; b=LMBPzECvXNsSzA
	WLldfE5rwlQepDMawSk4encVirAdDo+kAxJcSIMvA7likDrJ1E8+wAn1YqoK+FUfnftQckEfV1xOy
	RQu1xE99dlQYUSIDROo7ljdpL1AjFr3xzfVkG1kW6uFDiAdhlkJkYTAWQ7kXoEaMvsrd00CE4HktQ
	Uv2MjX7AOSCyr2uGeaMIbMTU60d0dwd+DmwPe4SizcDgB4UoCRiugXR/cW7UsY8Awl6tIC5Ek22/w
	E2hVk+g08U1c3W9UIIrrHrV3yjxY5bC/lNsK9QqAZQsVrfmhUAZU37akvSfiCYJQIUHoZFCAhKNui
	HVB8UXfpnYVw/jUziWLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXEEC-0000000AUdk-2PpC;
	Thu, 03 Jul 2025 07:19:28 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXEEA-0000000AUd1-1aJK
	for linux-phy@lists.infradead.org;
	Thu, 03 Jul 2025 07:19:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 6C0D2A536D8;
	Thu,  3 Jul 2025 07:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 85F2CC4CEE3;
	Thu,  3 Jul 2025 07:19:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751527165;
	bh=7Sa87NwDkUNSqX9iveqSIc+b2HXXnPaRDFnBapNfQb0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GCl5PDXAk6hm0uXI3YNOOYxQ+QItATqV6RKCYpGZLVYmTdWLc28SGZRLDocDJEhkN
	 YPdPK4zFGQMzMRLjfLGu+eFpNgziaxNxOrWpZw6m0pTbjg8SPXqns0lRlvR4TWBbbr
	 pU8DEX+kzlI5SpXyyZHpOFMjryVe1etuO2kmJqb32dBoPbGgtQEgKsUBaAkTSQoo2+
	 WJBo7X+1vW9b8FkTLlz5xSLXAN9JOu7Higf6jw6UsgHAfaqL0oBMwvtttOO03QoNQy
	 EylYywyk+Hr1p7wN59CUkVNOY8e7z+2dDVs3FYsTicN5uicU65KB2/lRhCKPmR+ZIV
	 aSpaGJPcUiwgQ==
Date: Thu, 3 Jul 2025 09:19:22 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org, 
	lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com, 
	johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org, neil.armstrong@linaro.org, 
	abel.vesa@linaro.org, kw@linux.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com, 
	quic_vbadigan@quicinc.com
Subject: Re: [PATCH v7 1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Update pcie phy bindings for QCS615
Message-ID: <20250703-daffy-transparent-dingo-c89faa@krzk-bin>
References: <20250702103549.712039-1-ziyue.zhang@oss.qualcomm.com>
 <20250702103549.712039-2-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250702103549.712039-2-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250703_001926_481828_8403DC29 
X-CRM114-Status: UNSURE (   7.38  )
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

On Wed, Jul 02, 2025 at 06:35:47PM +0800, Ziyue Zhang wrote:
> QCS615 pcie phy only use 5 clocks, which are aux, cfg_ahb, ref,
> ref_gen, pipe. So move "qcom,qcs615-qmp-gen3x1-pcie-phy" compatible
> from 6 clocks' list to 5 clocks' list.
> 
> Fixes: 1e889f2bd837 (dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Document the QCS615 QMP PCIe PHY Gen3 x1)

Please run scripts/checkpatch.pl on the patches and fix reported
warnings. After that, run also 'scripts/checkpatch.pl --strict' on the
patches and (probably) fix more warnings. Some warnings can be ignored,
especially from --strict run, but the code here looks like it needs a
fix. Feel free to get in touch if the warning is not clear.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
