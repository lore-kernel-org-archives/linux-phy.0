Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0B5BC83F17
	for <linux-phy@archiver.kernel.org>; Fri, 18 Jul 2025 10:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvOuIfCIEqLF8SomJJqYICbEByZLBC+3NJbbAkULGts=; b=BcHKQSASjsodON
	MxdxEo2DhgTL6tVQYpQtdbgPNZbvdwnugBMDS6GlKLdoPGyvlj030Vv7uLQE9z+IGRSZHkC2pIqVU
	Ng5VhBWeEcjyZ53oQ+/lxuaUWAVjFqOrBXelLDkXyCughTsI2PRfIwaZxME1d9FI9N2PgVxAQn8DP
	k+nFh2FCKgHFyidQ0NaKstpsjcSSx4tvVIf1LDBl7Hw4fUbQNUFqULdHNO9veVcDIazghuO4bSmin
	KJfjhnm6xNmSG53n08OKQXZHwh9CEISQ6LkTX3x2HGqA7WInVCL8WcWrz5oZ/CWWyRRJ9fCRqi2PQ
	BRgQQ1YBTPk+s9q0Va9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uciQK-0000000CJRl-1uwK;
	Fri, 18 Jul 2025 10:34:40 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uchvI-0000000CGAt-2b41
	for linux-phy@lists.infradead.org;
	Fri, 18 Jul 2025 10:02:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1446C5C6150;
	Fri, 18 Jul 2025 10:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AACD1C4CEF0;
	Fri, 18 Jul 2025 10:02:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752832955;
	bh=izVYd/HMFuUxuo/j8GTZPX0Fyh4bT8qBFKIOCQk8DJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mY9wjtEGcEzMQ9cN6ycT6j8D5qSq38VD0Kt4BmIJ7F860VNIuQBRrS2txenS6Hlpb
	 iDO3hx23VVOZRGWp88iUyR7BzRiB7uW8xBTgizMDVr6gAh6ukqrMIXKm0jbAouHmky
	 hMo0WPMwFfA8djZRXAAtnV4AvyP5AewHoGiOa3J5zdtIr/bjv9t5rm+1iICs1qdgzX
	 IRMEro02V3lG7O3/MIrea35X4Olh08mn4f/C3DoG/4p5MZJiBDlpOrqFSnCikZ4ztw
	 jbnqoshSQNFfO30hxnwZ9ckhij88vm5iYpKdS/udEjqb27l3Og24ALejkzYyMf5dGR
	 cGqvZJXJ6owfA==
Received: from johan by xi.lan with local (Exim 4.97.1)
	(envelope-from <johan@kernel.org>)
	id 1uchv9-000000007sr-3Unq;
	Fri, 18 Jul 2025 12:02:27 +0200
Date: Fri, 18 Jul 2025 12:02:27 +0200
From: Johan Hovold <johan@kernel.org>
To: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com,
	mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org,
	bhelgaas@google.com, johan+linaro@kernel.org, vkoul@kernel.org,
	kishon@kernel.org, neil.armstrong@linaro.org, abel.vesa@linaro.org,
	kw@linux.com, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: sa8775p: add link_down reset
 for pcie
Message-ID: <aHobs30ZI-I8xLAD@hovoldconsulting.com>
References: <20250718081718.390790-1-ziyue.zhang@oss.qualcomm.com>
 <20250718081718.390790-5-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250718081718.390790-5-ziyue.zhang@oss.qualcomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_030236_693444_F5B15818 
X-CRM114-Status: UNSURE (   6.98  )
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

On Fri, Jul 18, 2025 at 04:17:18PM +0800, Ziyue Zhang wrote:
> SA8775p supports 'link_down' reset on hardware, so add it for both pcie0
> and pcie1, which can provide a better user experience.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
