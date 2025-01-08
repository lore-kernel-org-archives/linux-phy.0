Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25D87E77197
	for <linux-phy@archiver.kernel.org>; Wed,  8 Jan 2025 02:53:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPRRfDnwYOF0mo03bmfV+1/0nhFQrkd9MX4c8ROPjeI=; b=qWUSB80OHl1TAk
	EQ1r6cbgBqHNsb6AOnCni3PRozIZpRABrBzGgCz7umCMaViYLp0l6tCorEzoEXqMwR0nxLvnaYeCN
	zwD0Sw6lGXmx44vxXYxMhxvY6gbu6NPdLP58KLn17Yy68Kh9YY19mWCyWdPkXnJG6CN9KmU7ChTUZ
	vz8wdIkcY7mpT7BKhNzRJ5FxnHfJjIa4RlbuSZ32fhytO2Tk0a2xLQsDDq629dFJTEq51u/hHKEI1
	WUFYHVBAdnQqgAt43hZRfYyDLMuDW3/XVGtjLL4/x10FGe8Mbtf/47Azhe0i1r/DIj2zcHLerq75h
	0UuTvoHS2fFwAKQ2QXJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVMBp-00000006x0h-0bRU;
	Wed, 08 Jan 2025 02:53:01 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVMBm-00000006wzT-1yOh
	for linux-phy@lists.infradead.org;
	Wed, 08 Jan 2025 02:52:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 195E15C4307;
	Wed,  8 Jan 2025 02:52:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 71DA0C4CEE2;
	Wed,  8 Jan 2025 02:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736304777;
	bh=bWk0N/iUuUmPksh/fczOo0wVV/WukZ+Ms8pDNiaGQZE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RyRbOvJF2PC/qT3MNekGSZii9EkGPm8hFQigHKgfapeMtQdVLwzqFpPJDl1PqKj++
	 B0HhCEaG3BJH3a2XCQ+2PjAEsz1x7aXAjqJtc7jaIdr6MwKvQQu4x4/qkE7OYyUEvM
	 vdKYWn5swry8SaDgVnwpbZ6f8616SsgZLDtRKIJkCqXFQIHtSDqx+S6C3RCSO9Yv0l
	 kgW9brB4T6trQAjxLPL75KQhtVNfgFA4AUA74DUpKCVLeFgSDQSf0CcMdlFFaTvafy
	 Cit5jImGFVaaPeKISmUO+M0s4qNds7gxAf+C3Zb/a+2/cZz+DPFAQcX1nPwLxH5fyy
	 CZ/usle2TsF6A==
From: Bjorn Andersson <andersson@kernel.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Xin Liu <quic_liuxin@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	quic_jiegan@quicinc.com,
	quic_aiquny@quicinc.com,
	quic_tingweiz@quicinc.com,
	quic_sayalil@quicinc.com
Subject: Re: (subset) [PATCH v4 0/3] Enable UFS on QCS615
Date: Tue,  7 Jan 2025 20:52:46 -0600
Message-ID: <173630476486.101108.6875505033763914837.b4-ty@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216095439.531357-1-quic_liuxin@quicinc.com>
References: <20241216095439.531357-1-quic_liuxin@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_185258_547157_292235ED 
X-CRM114-Status: UNSURE (   8.52  )
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


On Mon, 16 Dec 2024 17:54:36 +0800, Xin Liu wrote:
> From: Sayali Lokhande <quic_sayalil@quicinc.com>
> 
> Add UFS support to the QCS615 Ride platform. The UFS host controller and
> QMP UFS PHY hardware of QCS615 are derived from SM6115. Include the
> relevant binding documents accordingly. Additionally, configure UFS-related
> clock, power, and interconnect settings in the device tree.
> 
> [...]

Applied, thanks!

[2/3] arm64: dts: qcom: qcs615: add UFS node
      commit: a6a9d10e796957aefbc4c8d53ed7673714e83b31
[3/3] arm64: dts: qcom: qcs615-ride: Enable UFS node
      commit: 4b120ef62ed653f4bc05e5f68832d2d2ac548b60

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
