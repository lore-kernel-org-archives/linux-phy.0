Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA08EC46CD2
	for <linux-phy@archiver.kernel.org>; Thu, 21 Dec 2023 17:16:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=giMGiOCO4ULUKwzF/epVvHVKPGN2UiQDFS2+tD9EXJ0=; b=CxCe0q6eOG66wt
	cskBczfwmqmGcjXYuFsR+OXyFfP7IFaw8JlD3f97f+cXZHwnIwpjtr92QJFS7RfQK4adjP4cWEOXl
	0zc8dz7w3UWMUMIwu9hoo48ct0uWqNkMOTDXFYXeJRK3CmHdXl/3wQ3eZVJFb/6jystylT33iXhXX
	iUo6+rh2SOVvpM3iqWwPWP68XK5PBEVOhedWzH0/3nWZsQoFXPtAGai7R8thoSleGmQhTyXLHCLKD
	ry4FMve5BaUSKMZFVzFWvJr9X4Q6YL6Oe5CEgWltkmCnakvpdh2EFEV61TD56qasYcP+QWTLIiyAt
	B9jGZ5hAF4t3sDpjRngA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMem-003bla-1X;
	Thu, 21 Dec 2023 17:16:24 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGMeh-003bhP-2G
	for linux-phy@lists.infradead.org;
	Thu, 21 Dec 2023 17:16:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 1C9C9B82156;
	Thu, 21 Dec 2023 17:16:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 180C3C433A9;
	Thu, 21 Dec 2023 17:16:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703178977;
	bh=GiGjWiCFjhYD3COXF7UOcoSeBaRUyyIV4TEwJQY0BoA=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=Dd4eOicPTjyKWE5Y7eHNki5GqNBHqoB7XQGi+Z7rv3DgxZZwIWIbvGULCgA5ieKU+
	 XeRWI6ZYdDgr+QkgyZEr2H6A3x3ctfAqsAQyO2/IPaeQVQH3eAg9AxCngSV86MCw6A
	 kSaUxHLKzpnYig2RdnvomB2+FUsz7NvdptMfI451GJLlYFYXhNu0PvZYjW8gmtqDHD
	 NDNPJBQRBtpOkpwJH9MqOWQg6I0Qyh1Zmne+wsIoOomz1g3aF4LcgPPx7Qjgc7fjsl
	 4zLLXGUtmpnqSujBZ2FdCZmac2/haOTYQIsG/xIHEmFM8n/HcYQ1/vkvTBKYoMzMXD
	 b2fPpluog7iyA==
From: Vinod Koul <vkoul@kernel.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
References: <20231122-phy-qualcomm-usb3-uniphy-x1e80100-v3-0-273814c300f8@linaro.org>
Subject: Re: [PATCH v3 0/2] phy: qcom: qmp-usb: Add support for X1E80100
 USB3 PHY
Message-Id: <170317897267.712473.15138229989572768698.b4-ty@kernel.org>
Date: Thu, 21 Dec 2023 22:46:12 +0530
MIME-Version: 1.0
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_091619_872925_9AD23F3F 
X-CRM114-Status: UNSURE (   6.80  )
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


On Thu, 07 Dec 2023 14:34:10 +0200, Abel Vesa wrote:
> This patchset adds support for USB3 PHYs instances found on X1E80100.
> It depends on the v7 register offsets added by the following patchset:
> 
> https://lore.kernel.org/all/20231122-phy-qualcomm-v6-v6-20-v7-new-offsets-v3-0-dfd1c375ef61@linaro.org/
> 
> 

Applied, thanks!

[1/2] dt-bindings: phy: qcom,sc8280xp-qmp-usb3-uni: Add X1E80100 USB PHY binding
      commit: c5ffffd714373e7c6b39d3b005dbfbaadbbb4d2d
[2/2] phy: qcom-qmp-usb: Add Qualcomm X1E80100 USB3 PHY support
      commit: 2daa9555ba9858c29b9734b3a104c338b718feab

Best regards,
-- 
~Vinod



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
