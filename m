Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2947CAC598
	for <linux-phy@archiver.kernel.org>; Wed, 17 Sep 2025 00:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gA4sPhliJQerBl4ogDRAhr3oB/4KsChmyq7dOYKric0=; b=rr24INumrzdiwO
	Oxtwlh2Kbj/9W63ENl2JM0Qf0v7ItHJXLjzCnQnrC7wPTtdnjPhC21lIVwM1fPI4IKSgRW2sZ6cXH
	Mo7fY5TMWv3l1Fgop7yX6w1DFQCePaR4JynIC8atoO3iYBBSvcpnknypETn6J7jJBBMCvPtjirzDR
	49FCcBKaSUkXr22oqo7vNa5NUkuj8SmDs9g0QMfajk44l77OqLbOwQwb2+2pYx33/uYXMY/aokDVi
	4WfPS5+LlWx9Gvg4hM2yRh6jn2Bd2Ec5eNIIVtXu2C500Z1TI5UcU+rT3bEu63pNxwbPVkPcfMals
	JvqdsgFekp4JLt/tV3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uygIM-00000009lII-24lM;
	Wed, 17 Sep 2025 00:45:14 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uygIJ-00000009lHL-3J1P
	for linux-phy@lists.infradead.org;
	Wed, 17 Sep 2025 00:45:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7B1F344CEC;
	Wed, 17 Sep 2025 00:45:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC024C4CEEB;
	Wed, 17 Sep 2025 00:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758069911;
	bh=hM1WsqT6+2Sj1W5hK44iajXZdntKcCchQ0B8FZgONAI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=DqxxfqUxYmrCGdbdHUXGz6b01BEvtztSTI6eC4riOXRCFdi2HtHVYwjArb4Th02JV
	 02vuniBHAA21u3KTEAhVFaOyiBJb00RpbX2B8viOpWzcyLuO9Ekz0adZgd9roctyzH
	 b5yqJjBkseb6PXBbG2dHD08WrjAA3DUxh8OipnCpF7D8qoEVgBJj+3W6g33qnNk8Gq
	 +gsYrSEXXMesEndg/hi3gDa9CZ8pemGs66PubwTh7pCwM8UJu9KHdKYUBCRxMlbrsU
	 +JmJPVZ9E9IMRGfJHizpHK3ZroaMu2bErhiKTg9w0W7AP1ZlhYIWAFmjPK59ZWvIK7
	 ZhkmhWS0VSuyw==
From: Bjorn Andersson <andersson@kernel.org>
To: konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jingoohan1@gmail.com,
	mani@kernel.org,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	bhelgaas@google.com,
	johan+linaro@kernel.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	neil.armstrong@linaro.org,
	abel.vesa@linaro.org,
	Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-phy@lists.infradead.org,
	qiang.yu@oss.qualcomm.com,
	quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com
Subject: Re: (subset) [PATCH v6 0/3] Add Equalization Settings for 8.0 GT/s and 32.0 GT/s and Add PCIe Lane Equalization Preset Properties for 8.0 GT/s and 16.0 GT/s
Date: Tue, 16 Sep 2025 19:45:05 -0500
Message-ID: <175806990240.4070293.6265162511011715762.b4-ty@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
References: <20250904065225.1762793-1-ziyue.zhang@oss.qualcomm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_174511_847975_21C992D3 
X-CRM114-Status: UNSURE (   8.03  )
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


On Thu, 04 Sep 2025 14:52:22 +0800, Ziyue Zhang wrote:
> This series adds add equalization settings for 8.0 GT/s and 32.0 GT/s,
> and add PCIe lane equalization preset properties for 8.0 GT/s and
> 16.0 GT/s for sa8775p ride platform, which fix AER errors.
> 
> While equalization settings for 16 GT/s have already been set, this
> update adds the required equalization settings for PCIe operating at
> 8.0 GT/s and 32.0 GT/s, including the configuration of shadow registers,
> ensuring optimal performance and stability.
> 
> [...]

Applied, thanks!

[3/3] arm64: dts: qcom: lemans: Add PCIe lane equalization preset properties
      commit: b4f745f1d8adad62ba8c2065873c8a857ed4c3da

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
