Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34E40C83F27
	for <linux-phy@archiver.kernel.org>; Tue, 22 Jul 2025 14:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PY5lUjzUCpmMGqHgNR2W4tXYVj1LjGpbLyqHVEyHHk=; b=ohl8HHtcsU/QpG
	I3uzBmdxgLbYyQXqlKldMWZjuB/w3XhFa3mMHT6+OWM1QcvUjFZyEUlArWoR8+AUeJKWl75nKsd6w
	Edfot4uvFO7Ccd6ESOulJ5KCovdg3AqYdSG0rawyLRdD9wsHVi5sy4ocC70wEIU+ywwjyiDMFVdgi
	gRKWsqr9Y3vz4MCsMhMG9eTeuTjHLTwGFaEM7GWW9Y/emHzQGLQcS+7FK5q6Y+0jQ7yKHeT3LWJlQ
	lqHVQsN1wkDaseovyvwocy7FxeSR8cblkXrnY+UZjhlE9ePAvdbd0gOl23QgHRD1DY3xtmL46px8o
	xE8+cI9+OgNGqZC+bsRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDjU-00000002edy-3eWX;
	Tue, 22 Jul 2025 14:12:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ueDBL-00000002ZFD-3c2Y
	for linux-phy@lists.infradead.org;
	Tue, 22 Jul 2025 13:37:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1BDCF5C620F;
	Tue, 22 Jul 2025 13:37:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9FE8C4CEF6;
	Tue, 22 Jul 2025 13:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753191442;
	bh=7mFmuNX7jxwdHzGeVnnaIEXERSOB5a76i4j3QEz5V3s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=kKdkPJkuEmnkarEbU7yP2kcVVtVeYD16fuqEzyOPzj6lqUhezuwHrh8df/jPb4uG0
	 l8nckVyAl/N/xlaSei/5fId8CvuhOZRqG7MMsRUk8DKSa0ZuEdwlpFzfNLBePFcO6L
	 1JhnEjeu1p1PuOiLmqphvPejZthvPee3YWNrsUQ9bMPyH8Iqj1+7u+zf2sJpubYK3v
	 VNkt3oPkV2AyWXNiybbYW47brnwkqo6td4CPygxVXw8dzT9XAv+B51ebWojnrco66l
	 o7SgqUJ3uOpX/RVIN1XeePA3GoJL1wgzyzGU0p3xGRI3BHc9Lqkk7A/Axk1Ah46DzX
	 KJkWEorqlbHQw==
From: Vinod Koul <vkoul@kernel.org>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org, 
 krzk+dt@kernel.org, conor+dt@kernel.org, jingoohan1@gmail.com, 
 mani@kernel.org, lpieralisi@kernel.org, kwilczynski@kernel.org, 
 bhelgaas@google.com, johan+linaro@kernel.org, kishon@kernel.org, 
 neil.armstrong@linaro.org, abel.vesa@linaro.org, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Ziyue Zhang <ziyue.zhang@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com, 
 quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
In-Reply-To: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
References: <20250703095630.669044-1-ziyue.zhang@oss.qualcomm.com>
Subject: Re: (subset) [PATCH v8 0/3] pci: qcom: Add QCS615 PCIe support
Message-Id: <175319143640.114152.11286071190627190841.b4-ty@kernel.org>
Date: Tue, 22 Jul 2025 19:07:16 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250722_063723_943847_0829FE12 
X-CRM114-Status: UNSURE (   6.15  )
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


On Thu, 03 Jul 2025 02:56:27 -0700, Ziyue Zhang wrote:
> This series adds document, phy, configs support for PCIe in QCS615.
> 
> This series depend on the dt-bindings change
> https://lore.kernel.org/all/20250521-topic-8150_pcie_drop_clocks-v1-0-3d42e84f6453@oss.qualcomm.com/
> 
> 

Applied, thanks!

[1/3] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy: Update pcie phy bindings for QCS615
      commit: dfef90f29811b5b8bc6353e259cac6134a88671f

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
