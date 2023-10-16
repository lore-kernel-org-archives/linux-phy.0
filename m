Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56B3ECDB483
	for <linux-phy@archiver.kernel.org>; Mon, 16 Oct 2023 18:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebO1e6dWmsbXPxZEjNrRHlUte6N1QinMjoO9lkCMVO0=; b=pDkUQ0ef5POf3G
	6x2jCgsIiTxUVn2VPCIvmf4CeshqSysdRlwYYS79dcJeqYXp9dgN9o3bFRQHRGgB0fNidd/A0+R7/
	nHN2cBj/uD6Oa3Z8d61LwMijpNMhq4cwEHQT33vYKD47In9fRb6Gk3MqCy9qtEITzQ1ndg1f0YANV
	hkhJ4ayaDZ9CFxg+eC51FSM6t09RwtYnpVrsKlVclRHVHcfRnKxi3cmQkqv7+WqAI58GG2yGhSybQ
	D0COhJ/sdWMlNqgqlmRsla0DxFJRRSqnajUvlYVnzi4hhFljsEG3PdHXCPOYliPd71jtTa+2YHHjB
	nRcPa/nE25kjWZYLBlGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSEI-00AJof-31;
	Mon, 16 Oct 2023 18:22:14 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsSEF-00AJn1-20
	for linux-phy@lists.infradead.org;
	Mon, 16 Oct 2023 18:22:13 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6F697CE192D;
	Mon, 16 Oct 2023 18:22:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E9A4C433CC;
	Mon, 16 Oct 2023 18:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697480528;
	bh=exthi0CNeGhJZAzUytlzkiBQzqs+H7o+txhy02NswR4=;
	h=From:To:Subject:Date:In-Reply-To:References:From;
	b=rZCSKSLxd6FMwLmL7fkW0cppT0eyC2rww3BMNSNg9uv20qnQHnfHYk2HxDhMVOZgo
	 RiVEg/EuKfdGlUSZa80vmrCM+l6kVF8uxxSvH5FAe+LfrXZzAZhayr9QeiZUXCxXg0
	 QPGLgLphqFGvtP4ptXm2erlQmK438lvpTkBh5qCOLQ7VzXZ03GBHORGCuI+BN+ZjU+
	 06wrs40OsGjU2VhnulMVo0apzgOzHuyB8GMsfvU+/3P/WluNw8UGBSdGqVrqGVnD8d
	 6US1kProb8LRq2bMEZjUiHjNDSzYMvYP3TQytKWxPh0qQmTYh5EcAsTW/aOlwWLa2c
	 5E+o5+VplMbDg==
From: Bjorn Andersson <andersson@kernel.org>
To: agross@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	kishon@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	gregkh@linuxfoundation.org,
	quic_srichara@quicinc.com,
	quic_varada@quicinc.com,
	quic_wcheng@quicinc.com,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Nitheesh Sekar <quic_nsekar@quicinc.com>
Subject: Re: (subset) [PATCH V4 0/4] Enable IPQ5018 USB2 support
Date: Mon, 16 Oct 2023 11:25:50 -0700
Message-ID: <169748074955.1245023.12861217493042461028.b4-ty@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230904063635.24975-1-quic_nsekar@quicinc.com>
References: <20230904063635.24975-1-quic_nsekar@quicinc.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231016_112211_854798_A0F0BAC6 
X-CRM114-Status: UNSURE (   7.07  )
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


On Mon, 04 Sep 2023 12:06:31 +0530, Nitheesh Sekar wrote:
> This patch series adds the relevant phy and controller
> DT configurations for enabling USB2 host mode support
> on IPQ5018.
> 
> Tested with a USB Mass storage device.
> 
> Depends on:
> Link: https://lore.kernel.org/linux-arm-msm/20230831030503.17100-1-quic_nsekar@quicinc.com/
> 
> [...]

Applied, thanks!

[3/4] arm64: dts: qcom: ipq5018: Add USB related nodes
      commit: e7166f2774aafefd29ff26ffbbb7f6d40ac8ea1c
[4/4] arm64: dts: qcom: ipq5018: Enable USB
      commit: 80a438775aa398751229bcaed15459f3acdb645f

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
