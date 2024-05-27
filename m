Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB34CC25B75
	for <linux-phy@archiver.kernel.org>; Mon, 27 May 2024 03:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qFsoJPlCMcLOgDE1R6S0Hd/NXrZz6hYJbdfcVRj3fF8=; b=47MV8T8x8mZEgh
	I86ncre7CuSDuQajlXIWEyu6HmVcJf4mdZMd/G3JiRhBXNVMlm6IR62U8NfD/3nzFBEReHanAeCca
	FR4xpfBg6DnLrrbr2Tk8O+SH61yTPLG0spTzPy47bVmCiC38v3PtEA/GeePTrUOjvpdY6oIj7NJPs
	/XHtItgTbYmE10QOZlm95e+y8VZNKLlAXGF3ut6Je5hk/9Ao871o6GDHzRmNBhj8i/1gG2ebMqLIF
	5xTBH2FUkSijJeurCQBf8XhQiK4zngBFW0cOPe3G9Gu9VlkgT6yyttPf8Oy0X3IKN8yNek9udm3T0
	EmBkfHaKsf4ephhNpTNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBQbf-0000000DdOa-1gvS;
	Mon, 27 May 2024 03:01:03 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBQbc-0000000DdNV-3JZF
	for linux-phy@lists.infradead.org;
	Mon, 27 May 2024 03:01:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6CC536118B;
	Mon, 27 May 2024 03:00:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB301C4AF07;
	Mon, 27 May 2024 03:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716778858;
	bh=8t++9FGnrunXZmkGxqQTVTc2wu2GvvFL2qx6gtv+rvI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RKdDnoQagxZm+2tSpL3cOBV3UWJXn22DMP9Zk1sJIBS7nd/oeUv/t87gIo2s5eD2I
	 lrV5k7ev0u5rYsQxV7hgGZ8Hc2ukl/+/UFWrPaO6FFMoLXXn3waHCRF+XWzCcD79Ho
	 5EDMcW7Q53tzd20Y+eeq4GhT+nAnzUSIQLcgyTRilo/nfWNxjxbG4hux8oc6eHTvif
	 +5h+trkxjh0KODOGRR9Z43oclXd9IDN+uUrd+10JUBNwwu4Gk88aZP52NdsSVluYa3
	 Eg9XG76/+WwXr9hSZK6jCbtASlJZ63WgSg0h7nLzb5L6keQAnF0B+VLNH3K9NfHDzk
	 8QdZwytY4ChZQ==
From: Bjorn Andersson <andersson@kernel.org>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	cros-qcom-dts-watchers@chromium.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	David Wronek <davidwronek@gmail.com>,
	Andy Gross <andy.gross@linaro.org>,
	Evan Green <evgreen@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Iskren Chernev <me@iskren.info>,
	Luca Weiss <luca.weiss@fairphone.com>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Yassine Oudjana <y.oudjana@protonmail.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: (subset) [PATCH 00/13] arm64: dts: qcom: fix PHY-related warnings
Date: Sun, 26 May 2024 22:00:26 -0500
Message-ID: <171677884215.490947.3851539402371570359.b4-ty@kernel.org>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
References: <20240501-qcom-phy-fixes-v1-0-f1fd15c33fb3@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240526_200101_034487_5A3DFFD5 
X-CRM114-Status: UNSURE (   6.47  )
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


On Wed, 01 May 2024 19:19:26 +0300, Dmitry Baryshkov wrote:
> This series goes over Qualcomm PHY bindings and device DTs and fixes
> obvious errors and warnings reported by dt-validate.
> 
> 

Applied, thanks!

[04/13] arm64: dts: qcom: sc7180: drop extra UFS PHY compat
        commit: 48299f604d27dad1168cc90b89f33853162c6e33
[05/13] arm64: dts: qcom: sc8180x: add power-domain to UFS PHY
        commit: 9a80ecce60bd4919019a3cdb64604c9b183a8518
[06/13] arm64: dts: qcom: sdm845: add power-domain to UFS PHY
        commit: fd39ae8b9bc10419b1e4b849cdbc6755a967ade1
[07/13] arm64: dts: qcom: sm6115: add power-domain to UFS PHY
        commit: a9eb454873a813ddc4578e5c3b37778de6fda472
[08/13] arm64: dts: qcom: sm6350: add power-domain to UFS PHY
        commit: 18c2727282c5264ff5502daac26c43000e8eb202
[09/13] arm64: dts: qcom: sm8250: add power-domain to UFS PHY
        commit: 154ed5ea328d8a97a4ef5d1447e6f06d11fe2bbe
[10/13] arm64: dts: qcom: sm8350: add power-domain to UFS PHY
        commit: 634acc8cea1584b507801315831a330443f819b4
[11/13] arm64: dts: qcom: sm8450: add power-domain to UFS PHY
        commit: 27d3f57cf5a71484ea38770d4bfd10f6ef035cf4
[12/13] arm64: dts: sda660-ifc6560: document missing USB PHY supplies
        commit: 4edbcf264fe2c0167e0b0b0af060bc767e01f9f3
[13/13] arm64: dts: qcom: msm8996-xiaomi-common: drop excton from the USB PHY
        commit: c1aefeae8cb7b71c1bb6d33b1bda7fc322094e16

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
