Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A08EAC5320E
	for <linux-phy@archiver.kernel.org>; Tue, 27 Aug 2024 06:27:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYhYJS4zCrDTtpAQzORdMtHt3e1aJaS4PkXfh/QAk9A=; b=X06+AkFcCdtJV+
	cuKczFDjww1r2aqzrIojunsJAXDuTrMwl+U2MRYpqer2buDbGCb4WzKrPqoEKOznIZ65hZxqSQFuM
	18WnVIPBGTZv420EzcfmIZlb8b8gj/ynLoePDDXVLDrH0KDwZrDDlqEzFdndYmqnJAw8iGerQTDp5
	lCiHoSDGOVbcpeUZDNI1vXLf1dAdT4ZTLEQVSky4l7sv4CFYx1M8gidAIdg/YEPHzS7eiSASB4f8K
	0WvGj95AI12jM/zfehUQtHSMJsCLtrSsEb2hn+0CkKbCYS96CpnOO3AgwWTAiv8EU+EgmDWkm0PxC
	VpG6pbp7jI6VPcf8JFuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipg9-0000000A0dD-1Som;
	Tue, 27 Aug 2024 06:27:45 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sipg7-0000000A0bZ-087l
	for linux-phy@lists.infradead.org;
	Tue, 27 Aug 2024 06:27:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 54865A41541;
	Tue, 27 Aug 2024 06:27:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 445C1C8B7AC;
	Tue, 27 Aug 2024 06:27:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724740061;
	bh=lq0ooS8TfOdhCz9BfpL7TIlbaqhjsSyuKwzJ4JP4Gkc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gQVmn9YG6XM+90vlPAqRatnRa8LaM8MjhdYi1RMid8R7bTwH8bqqRjoBTjRgAxqx0
	 6VUXAANOS14etlla05mVRcZh9xSlgxENxq2tmWHbILYxzjYmtKsSJowmZSVkWUTVf3
	 E9DJ2/Pnf2QQWQwwhF0XdYbqikonzThvRGsdo6SIyeQOk849JhBE54b27dStDThAgv
	 qd7GawPSXipEwTlaVs6pa4t4UinFw84q/Y+wqtir1NxIVFKJB4XQ8SzFKcq89o2Q0j
	 yUE5OqhT9vBC5x849wEv6MYM01RWs/grcoe3skcxcr5IqxdjwPk0UpvpOwvajFofrr
	 PCOASFcUBcffw==
Date: Tue, 27 Aug 2024 08:27:38 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Sricharan R <quic_srichara@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, dmitry.baryshkov@linaro.org, quic_nsekar@quicinc.com, 
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, robimarko@gmail.com
Subject: Re: [PATCH V2 1/6] dt-bindings: phy: qcom,uniphy-pcie: Document PCIe
 uniphy
Message-ID: <q7s3iv5plsfbk75d3ecjjpcqc7ywwc2ygekfozty52lejvui4z@dpyhwken7a6y>
References: <20240827045757.1101194-1-quic_srichara@quicinc.com>
 <20240827045757.1101194-2-quic_srichara@quicinc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240827045757.1101194-2-quic_srichara@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_232743_152331_EA773748 
X-CRM114-Status: UNSURE (   6.21  )
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

On Tue, Aug 27, 2024 at 10:27:52AM +0530, Sricharan R wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Document the Qualcomm UNIPHY PCIe 28LP present in IPQ5018.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
> [v2]  Fixed filename, title, fixed clock-name, reset-names

OK, I see detailed changelog in commit, not in cover letter, so this
solves my previous comment.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
