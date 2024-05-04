Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 865D9C4345F
	for <linux-phy@archiver.kernel.org>; Sat,  4 May 2024 12:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xgYBqDYpxcCv+B5zeUpy6C3i0e+ztsG5VuZFLi/fTD8=; b=nPhnioBdKQrwWw
	CWMPuiU1pjE6Ud2o+eFQP2J2IkdeubuidtCLrICA+SP28v2bzVJFjYFd3KhTK+V4x41kTjAFCeuTj
	xx5D44mx/iavVQEQw5cNYqPIF5vwaAtvTMVRqOKezedz+Wowbw7UXSTwXSL1hOqMKy/sD//fFVJ6T
	Fta2/JUFqu1ToSw0Pp3f0l24kvPqGcjSYnKo3WjZl5fquKKCLuJ0i/6P2vp8suxjTYe780hg30SkT
	2g9hyObljdZcJr0N2dOGd757AoLRjLsB1UGeDOProNTQ+zK1NN1EzFEqvcFJsenleVrm0k3qGygzQ
	8T1yfDblzYvbm/fET4YQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHx-00000001yBP-10AZ;
	Sat, 04 May 2024 12:14:49 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3EHu-00000001y9u-2n2W
	for linux-phy@lists.infradead.org;
	Sat, 04 May 2024 12:14:48 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 70F8B60AE2;
	Sat,  4 May 2024 12:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EF4B7C4AF1B;
	Sat,  4 May 2024 12:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714824884;
	bh=BZotsts8Ss6E1tlPRELTAGgjW4d8FiJLqjJwmNAqcXk=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=NNk+jcmVQkDZTPk1YRdRT+geY1ICaBO5k+04TSF+tAwbvZtvKOyk9+aOpJcb7enN0
	 X/QSa13d/5bzrGns9N10z7n2T5mwNbg1ZqIaKTLRyGrwLXeuuvovoWgZQdVAqLM3Lf
	 bfXW3vpO/lgkIlLa2DRlTZgL/EhQ0sKvMs5L4mhx2AkPuyX/a+gfVI6K2fJPrmYA22
	 q3CVOj4/rWKUj7SsZXS4hg4g9ZzFzwtxRt5VRWVcY11bItjtvlBrGEJ+TGcxXz9Vpw
	 bXadFx7fGjkcDkQs+kCetVW73sU2zKt1i9/gfr7hT8e1olN74poWtXsKp8mI+zGYCH
	 hCoHjD+Uol9VA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Adrien Thierry <athierry@redhat.com>, Mantas Pucka <mantas@8devices.com>, 
 Abel Vesa <abel.vesa@linaro.org>, Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-usb@vger.kernel.org, Bjorn Andersson <quic_bjorande@quicinc.com>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, quic_ppratap@quicinc.com, 
 Jack Pham <quic_jackp@quicinc.com>, 
 Krishna Kurapati PSSNV <quic_kriskura@quicinc.com>
In-Reply-To: <20240502082017.13777-1-quic_kbajaj@quicinc.com>
References: <20240502082017.13777-1-quic_kbajaj@quicinc.com>
Subject: Re: (subset) [PATCH v3 0/4] Add USB Support on Qualcomm's
 QDU/QRU1000 Platform
Message-Id: <171482487453.28322.6906999225104918671.b4-ty@kernel.org>
Date: Sat, 04 May 2024 17:44:34 +0530
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240504_051446_901776_22C7287D 
X-CRM114-Status: UNSURE (   5.78  )
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


On Thu, 02 May 2024 13:50:13 +0530, Komal Bajaj wrote:
> This series adds support of USB3 PHY support for Qualcomm's QDU/QRU1000 Platform.
> 
> ---------
> Changes in v3:
> * Rebased on linux-next
> * Link to v2: https://lore.kernel.org/linux-arm-msm/20240319090729.14674-1-quic_kbajaj@quicinc.com/
> 
> [...]

Applied, thanks!

[1/4] dt-bindings: phy: qcom,usb-snps-femto-v2: Add bindings for QDU1000
      commit: fbd3b6fe36242562bcd70464cfa8ee0fb26882d6
[2/4] dt-bindings: phy: qcom,qmp-usb: Add QDU1000 USB3 PHY
      commit: f75a4b3a6efccfc879d078cc9b5c21ef8a8dc392
[4/4] phy: qcpm-qmp-usb: Add support for QDU1000/QRU1000
      commit: 495341664af1d9ab4bb5a71f3ffcb08659cf8fa7

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
