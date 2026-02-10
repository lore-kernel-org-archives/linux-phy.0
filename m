Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25A12E94622
	for <linux-phy@archiver.kernel.org>; Tue, 10 Feb 2026 00:24:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XlGSzgkMDBfHZNaMKPxrVhZzjLPSS30EVdTjey1d6e0=; b=zTQAks3HJh7KlM
	zSbxkQuJGelx4evfRMRxg4Y0bryh5GNfoIu501uRASsStyIPo0cOviKoVNz6JO4M6z18hFSmJC/tR
	tDFy9DrsWu54upAWW/XQWdtgi/VdE6rkhmkvibBDPQQP6K2jEjUN4UXn3rGCytYsdDG0Zli1ku3gu
	9fjmDJi02mhXjPVgONlEM6DNgsoVLezdwnFzEY6jz15VVB1W1ODKgQPCNxBjyTQarqUMBW9NfujeP
	IUckpn3k14B0bzEG8KNLklkJblIKHRqpmfueVFaH7GuXGMz7GIlPV3d0bnNj87ZJ8eS6UevZJ11AU
	kJP7ZWMkxr8qAnaM7y/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpbYX-0000000GDuZ-1qAz;
	Tue, 10 Feb 2026 00:24:41 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpbYW-0000000GDu7-0fjT;
	Tue, 10 Feb 2026 00:24:40 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 1C87560008;
	Tue, 10 Feb 2026 00:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6702C116C6;
	Tue, 10 Feb 2026 00:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770683077;
	bh=kYDsdy95DgJsymUtNlgSQCwbWq5XH6lAUToKBGJfySI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YE6/vob6Z096raVqRG1E+7JJ+EEUXybPXLWgT04SvE97iSarnH5osCkfGopc7q1eG
	 yoLG33SNgafdaD9sWZNT0S67/sD5DO0udIrqSrhbERLgEpkuQNkoc00vhOTxYq5Gri
	 fWLKct7Bj0RSQFOEROwal/SvRSZ9oqkr0bhYsf4GguMIuOiZkP0+9zPnD078NCgEpW
	 qbwYBdXd7uoDF3Qm74Pt7wexrxIc8OC1KSRlQmc9zRtFS/sAsqKOrEoorLHZBplb6h
	 sbfNUKS19qARxUWB2b3K8nAiJ79531BnOLdMv2/dzKfPvQJ/dvyWFgaVMit1NKAlIN
	 3yh7Ojf/pEiIA==
Date: Mon, 9 Feb 2026 18:24:36 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sean Anderson <sean.anderson@linux.dev>
Cc: Thippeswamy Havalige <thippeswamy.havalige@amd.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Michal Simek <michal.simek@amd.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Radhey Shyam Pandey <radhey.shyam.pandey@amd.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: pci: xilinx-nwl: Add resets
Message-ID: <177068307621.2186902.1439727413310059254.robh@kernel.org>
References: <20260203002128.935842-1-sean.anderson@linux.dev>
 <20260203002128.935842-2-sean.anderson@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260203002128.935842-2-sean.anderson@linux.dev>
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


On Mon, 02 Feb 2026 19:21:21 -0500, Sean Anderson wrote:
> Add resets so we can hold the bridge in reset while we perform phy
> calibration.
> 
> Signed-off-by: Sean Anderson <sean.anderson@linux.dev>
> ---
> 
>  .../devicetree/bindings/pci/xlnx,nwl-pcie.yaml  | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
