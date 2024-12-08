Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5DD7E77181
	for <linux-phy@archiver.kernel.org>; Sun,  8 Dec 2024 17:05:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/TyT6kjj9w5WRFPf/A2qCkd7RWhxMxAT3T7J6hUCqe0=; b=HfTXtdGrYN9fTC
	03GjnxbGF/b/DcNOUvNZCyYR1LrJxzRjMiedB65cu2ftkJSSljs8mjwEWgOOYhynVzUmKmyNtBmww
	bajFY+CKPjrgn3FuG1HacViFdki09j9gSKiQkcVKraZDeHM4ZDfupLMwsysCqH61d0Bvm8zKhUJSm
	CSjkqmUZz5rsgOtyHKFlDmbeQaU5O0zfYhU6wIgV9G+g+O6o++OoS6gZvfGno3oSWn8VDurs1soYL
	SDQnCNZgIJ2zJxdV0gdHW+dtrXIuobVuOZ6IaqKmUpT0+8TIxBugSJm0YI6eZk9D44A0q3IF7E4VJ
	Jtx9N4pkg71wX0WgyGBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKjD-00000005cW0-1zf8;
	Sun, 08 Dec 2024 17:05:55 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKKgh-00000005btF-1a8N
	for linux-phy@lists.infradead.org;
	Sun, 08 Dec 2024 17:03:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4011F5C3F14;
	Sun,  8 Dec 2024 17:02:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B7CAC4CED2;
	Sun,  8 Dec 2024 17:03:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733677398;
	bh=INxFuGsShly/nK8ADXRSaHS4A5KYdvp1EMhC6Mi7d68=;
	h=From:To:In-Reply-To:References:Subject:Date:From;
	b=QFho3fZg4LqMYujPwnsgMlUaay6S9fuhH3MFDxdFeS6lQjK4pZd+3dBcwlyqfYz70
	 nKLSssLsKDYelwBdOpPy+upR+l6Za6sGn6JcrXZAW4OVyRlo83LSFs6SHt5Ke+u3vr
	 Z9lzGHA+qqFioyidXRsZxL7s909RNqcbjf+mkW6BKQzi8eZmF4dWEIAjvdvGKVgIlE
	 ZH+mOGDPFbNRyXVsswSWXuQz6i42rAm7l5ZpggGnZfiI71trkkXTK3wx7jR5vTLpXy
	 aKvPUljc8sUeuYb/5CSAhltz3XMnT8sDHhkV6kZm0eCQVQ9QyBmRMKJIEDucRxcq00
	 gmKdToZWZxDQQ==
From: Vinod Koul <vkoul@kernel.org>
To: kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
 conor+dt@kernel.org, gregkh@linuxfoundation.org, andersson@kernel.org, 
 konradybcio@kernel.org, dmitry.baryshkov@linaro.org, mantas@8devices.com, 
 manivannan.sadhasivam@linaro.org, abel.vesa@linaro.org, 
 quic_kriskura@quicinc.com, quic_rohiagar@quicinc.com, 
 quic_kbajaj@quicinc.com, quic_wcheng@quicinc.com, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Varadarajan Narayanan <quic_varada@quicinc.com>
In-Reply-To: <20241118052839.382431-1-quic_varada@quicinc.com>
References: <20241118052839.382431-1-quic_varada@quicinc.com>
Subject: Re: (subset) [PATCH v4 0/6] Enable IPQ5424 USB support
Message-Id: <173367739170.1042266.14968940115846326756.b4-ty@kernel.org>
Date: Sun, 08 Dec 2024 22:33:11 +0530
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241208_090319_460477_3960FAE1 
X-CRM114-Status: UNSURE (   4.82  )
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


On Mon, 18 Nov 2024 10:58:33 +0530, Varadarajan Narayanan wrote:
> The IPQ5424 SoC has both USB2.0 and USB3.0 controllers. The USB3.0
> can connect to either of USB2.0 or USB3.0 phy and operate in the
> respective mode.
> 
> v4: Fix regulator names to match with other Qualcomm DT files
> 
> v3: Added reviewed-by to one of the patches
>     dts: regulator node names changed
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: phy: qcom,qusb2: Document IPQ5424 compatible
      commit: db4427afa66062b37269f3398fed790d138506c7
[2/6] phy: qcom-qusb2: add QUSB2 support for IPQ5424
      commit: 9c56a1de296e70d16f1daac203d420378743a363
[3/6] dt-bindings: phy: qcom,qmp-usb: Add IPQ5424 USB3 PHY
      commit: d70656aee767090f700edd0de535ff3ffb0b351f
[4/6] phy: qcom: qmp: Enable IPQ5424 support
      commit: b8ef065c13872f5a4155e71c338597fde683cfd6

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
